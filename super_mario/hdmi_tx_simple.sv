`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Simple HDMI/DVI Transmitter - No Test Pattern, Direct RGB Pass-through
// Converts parallel RGB + sync signals to TMDS for HDMI output
//////////////////////////////////////////////////////////////////////////////////

module hdmi_tx_simple (
    input  wire        pix_clk,        // 25.175 MHz pixel clock
    input  wire        pix_clkx5,      // 125.875 MHz serializer clock (5x pixel)
    input  wire        rst,            // Active high reset
    
    // Video input
    input  wire [7:0]  red,
    input  wire [7:0]  green,
    input  wire [7:0]  blue,
    input  wire        hsync,
    input  wire        vsync,
    input  wire        vde,            // Video data enable (active during visible area)
    
    // TMDS output (directly directly to FPGA pins)
    output wire        TMDS_CLK_P,
    output wire        TMDS_CLK_N,
    output wire [2:0]  TMDS_DATA_P,
    output wire [2:0]  TMDS_DATA_N
);

    // =========================================================================
    // TMDS Encoding
    // =========================================================================
    
    wire [9:0] tmds_red, tmds_green, tmds_blue;
    
    tmds_encoder enc_red (
        .clk(pix_clk),
        .vde(vde),
        .ctrl(2'b00),
        .din(red),
        .dout(tmds_red)
    );
    
    tmds_encoder enc_green (
        .clk(pix_clk),
        .vde(vde),
        .ctrl(2'b00),
        .din(green),
        .dout(tmds_green)
    );
    
    tmds_encoder enc_blue (
        .clk(pix_clk),
        .vde(vde),
        .ctrl({vsync, hsync}),
        .din(blue),
        .dout(tmds_blue)
    );
    
    // =========================================================================
    // 10:1 Serializers (DDR mode, 5 clocks per 10 bits)
    // =========================================================================
    
    wire [2:0] tmds_data_serial;
    wire       tmds_clk_serial;
    
    serializer_10to1 ser_red (
        .pix_clk(pix_clk),
        .pix_clkx5(pix_clkx5),
        .rst(rst),
        .data_in(tmds_red),
        .serial_out(tmds_data_serial[2])
    );
    
    serializer_10to1 ser_green (
        .pix_clk(pix_clk),
        .pix_clkx5(pix_clkx5),
        .rst(rst),
        .data_in(tmds_green),
        .serial_out(tmds_data_serial[1])
    );
    
    serializer_10to1 ser_blue (
        .pix_clk(pix_clk),
        .pix_clkx5(pix_clkx5),
        .rst(rst),
        .data_in(tmds_blue),
        .serial_out(tmds_data_serial[0])
    );
    
    // Clock channel (constant pattern for pixel clock recovery)
    serializer_10to1 ser_clk (
        .pix_clk(pix_clk),
        .pix_clkx5(pix_clkx5),
        .rst(rst),
        .data_in(10'b0000011111),  // Clock pattern
        .serial_out(tmds_clk_serial)
    );
    
    // =========================================================================
    // Differential Output Buffers
    // =========================================================================
    
    OBUFDS #(.IOSTANDARD("TMDS_33")) obuf_clk (
        .I(tmds_clk_serial),
        .O(TMDS_CLK_P),
        .OB(TMDS_CLK_N)
    );
    
    OBUFDS #(.IOSTANDARD("TMDS_33")) obuf_d0 (
        .I(tmds_data_serial[0]),
        .O(TMDS_DATA_P[0]),
        .OB(TMDS_DATA_N[0])
    );
    
    OBUFDS #(.IOSTANDARD("TMDS_33")) obuf_d1 (
        .I(tmds_data_serial[1]),
        .O(TMDS_DATA_P[1]),
        .OB(TMDS_DATA_N[1])
    );
    
    OBUFDS #(.IOSTANDARD("TMDS_33")) obuf_d2 (
        .I(tmds_data_serial[2]),
        .O(TMDS_DATA_P[2]),
        .OB(TMDS_DATA_N[2])
    );

endmodule

//////////////////////////////////////////////////////////////////////////////////
// TMDS Encoder - Converts 8-bit data to 10-bit TMDS
//////////////////////////////////////////////////////////////////////////////////

module tmds_encoder (
    input  wire       clk,
    input  wire       vde,      // Video data enable
    input  wire [1:0] ctrl,     // Control signals (hsync/vsync for blue channel)
    input  wire [7:0] din,      // 8-bit pixel data
    output reg  [9:0] dout      // 10-bit TMDS encoded
);

    // Count ones in input
    wire [3:0] n_ones = din[0] + din[1] + din[2] + din[3] + 
                        din[4] + din[5] + din[6] + din[7];
    
    // First stage: XOR or XNOR based on number of ones
    wire use_xnor = (n_ones > 4) || (n_ones == 4 && din[0] == 0);
    
    wire [8:0] q_m;
    assign q_m[0] = din[0];
    assign q_m[1] = use_xnor ? ~(q_m[0] ^ din[1]) : (q_m[0] ^ din[1]);
    assign q_m[2] = use_xnor ? ~(q_m[1] ^ din[2]) : (q_m[1] ^ din[2]);
    assign q_m[3] = use_xnor ? ~(q_m[2] ^ din[3]) : (q_m[2] ^ din[3]);
    assign q_m[4] = use_xnor ? ~(q_m[3] ^ din[4]) : (q_m[3] ^ din[4]);
    assign q_m[5] = use_xnor ? ~(q_m[4] ^ din[5]) : (q_m[4] ^ din[5]);
    assign q_m[6] = use_xnor ? ~(q_m[5] ^ din[6]) : (q_m[5] ^ din[6]);
    assign q_m[7] = use_xnor ? ~(q_m[6] ^ din[7]) : (q_m[6] ^ din[7]);
    assign q_m[8] = use_xnor ? 1'b0 : 1'b1;
    
    // Count ones in q_m[7:0]
    wire [3:0] n_ones_qm = q_m[0] + q_m[1] + q_m[2] + q_m[3] + 
                           q_m[4] + q_m[5] + q_m[6] + q_m[7];
    
    // DC balance counter
    reg signed [4:0] cnt;
    
    // Control tokens
    wire [9:0] ctrl_token;
    assign ctrl_token = (ctrl == 2'b00) ? 10'b1101010100 :
                        (ctrl == 2'b01) ? 10'b0010101011 :
                        (ctrl == 2'b10) ? 10'b0101010100 :
                                          10'b1010101011;
    
    always @(posedge clk) begin
        if (!vde) begin
            // Blanking period - send control tokens
            dout <= ctrl_token;
            cnt <= 5'sd0;
        end else begin
            // Active video - send encoded data
            if (cnt == 0 || n_ones_qm == 4) begin
                // No DC imbalance or balanced input
                dout[9] <= ~q_m[8];
                dout[8] <= q_m[8];
                dout[7:0] <= q_m[8] ? q_m[7:0] : ~q_m[7:0];
                
                if (q_m[8] == 0)
                    cnt <= cnt + (8 - {1'b0, n_ones_qm, 1'b0} + {1'b0, n_ones_qm});
                else
                    cnt <= cnt - (8 - {1'b0, n_ones_qm, 1'b0} + {1'b0, n_ones_qm});
            end else begin
                if ((cnt > 0 && n_ones_qm > 4) || (cnt < 0 && n_ones_qm < 4)) begin
                    dout[9] <= 1'b1;
                    dout[8] <= q_m[8];
                    dout[7:0] <= ~q_m[7:0];
                    cnt <= cnt + {q_m[8], 1'b0} + (8 - {1'b0, n_ones_qm, 1'b0} + {1'b0, n_ones_qm});
                end else begin
                    dout[9] <= 1'b0;
                    dout[8] <= q_m[8];
                    dout[7:0] <= q_m[7:0];
                    cnt <= cnt - {~q_m[8], 1'b0} - (8 - {1'b0, n_ones_qm, 1'b0} + {1'b0, n_ones_qm});
                end
            end
        end
    end

endmodule

//////////////////////////////////////////////////////////////////////////////////
// 10:1 Serializer using OSERDESE2 (DDR mode)
//////////////////////////////////////////////////////////////////////////////////

module serializer_10to1 (
    input  wire       pix_clk,
    input  wire       pix_clkx5,
    input  wire       rst,
    input  wire [9:0] data_in,
    output wire       serial_out
);

    wire shift1, shift2;
    
    // Master OSERDES - handles bits [3:0] and cascades to slave
    OSERDESE2 #(
        .DATA_RATE_OQ("DDR"),
        .DATA_RATE_TQ("SDR"),
        .DATA_WIDTH(10),
        .SERDES_MODE("MASTER"),
        .TRISTATE_WIDTH(1)
    ) oserdes_master (
        .OQ(serial_out),
        .OFB(),
        .TQ(),
        .TFB(),
        .SHIFTOUT1(),
        .SHIFTOUT2(),
        .CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(data_in[0]),
        .D2(data_in[1]),
        .D3(data_in[2]),
        .D4(data_in[3]),
        .D5(data_in[4]),
        .D6(data_in[5]),
        .D7(data_in[6]),
        .D8(data_in[7]),
        .TCE(1'b0),
        .OCE(1'b1),
        .TBYTEIN(1'b0),
        .TBYTEOUT(),
        .RST(rst),
        .SHIFTIN1(shift1),
        .SHIFTIN2(shift2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0)
    );
    
    // Slave OSERDES - handles bits [9:8] and cascades to master
    OSERDESE2 #(
        .DATA_RATE_OQ("DDR"),
        .DATA_RATE_TQ("SDR"),
        .DATA_WIDTH(10),
        .SERDES_MODE("SLAVE"),
        .TRISTATE_WIDTH(1)
    ) oserdes_slave (
        .OQ(),
        .OFB(),
        .TQ(),
        .TFB(),
        .SHIFTOUT1(shift1),
        .SHIFTOUT2(shift2),
        .CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(data_in[8]),
        .D4(data_in[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .TCE(1'b0),
        .OCE(1'b1),
        .TBYTEIN(1'b0),
        .TBYTEOUT(),
        .RST(rst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0)
    );

endmodule
