`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Super Mario Bros - Top Module (Matches Lab 6 Block Design)
// GPIO ports: gpio_usb_keycode, gpio_usb_rst, gpio_usb_int
// UPDATED: Now supports 6 simultaneous key presses via both GPIO channels
//////////////////////////////////////////////////////////////////////////////////

module mario_top (
    // Clock and Reset
    input wire sys_clk_p,
    input wire sys_clk_n,
    input wire sys_rst,
    
    // USB SPI Interface
    input wire usb_spi_miso,
    output wire usb_spi_mosi,
    output wire usb_spi_sclk,
    output wire usb_spi_ss,
    
    // USB GPIO
    input wire gpio_usb_int,
    output wire gpio_usb_rst,
    
    // DDR3 Memory
    output wire [12:0] ddr3_addr,
    output wire [2:0] ddr3_ba,
    output wire ddr3_cas_n,
    output wire [0:0] ddr3_ck_n,
    output wire [0:0] ddr3_ck_p,
    output wire [0:0] ddr3_cke,
    output wire [1:0] ddr3_dm,
    inout wire [15:0] ddr3_dq,
    inout wire [1:0] ddr3_dqs_n,
    inout wire [1:0] ddr3_dqs_p,
    output wire [0:0] ddr3_odt,
    output wire ddr3_ras_n,
    output wire ddr3_reset_n,
    output wire ddr3_we_n,
    
    // Status LED
    output wire calib_led,
    
    // UART
    input wire uart_rxd,
    output wire uart_txd,
    
    // HDMI Output
    output wire hdmi_tmds_clk_n,
    output wire hdmi_tmds_clk_p,
    output wire [2:0] hdmi_tmds_data_n,
    output wire [2:0] hdmi_tmds_data_p
);

    // =========================================================================
    // Clock Generation
    // =========================================================================
    
    wire clk_25MHz;
    wire clk_125MHz;
    wire clk_from_mig;
    wire locked;
    wire calib_complete;
    
    clk_wiz_0_1 clk_wiz (
        .clk_out1(clk_25MHz),
        .clk_out2(clk_125MHz),
        .reset(sys_rst),
        .locked(locked),
        .clk_in1(clk_from_mig)
    );
    
    wire system_ready = locked && calib_complete;
    
    // =========================================================================
    // VGA Timing (640x480 @ 60Hz)
    // =========================================================================
    
    reg [9:0] h_count = 0;
    reg [9:0] v_count = 0;
    
    always @(posedge clk_25MHz) begin
        if (!system_ready) begin
            h_count <= 0;
            v_count <= 0;
        end else begin
            if (h_count == 799) begin
                h_count <= 0;
                v_count <= (v_count == 524) ? 0 : v_count + 1;
            end else begin
                h_count <= h_count + 1;
            end
        end
    end
    
    wire hsync = ~((h_count >= 656) && (h_count < 752));
    wire vsync = ~((v_count >= 490) && (v_count < 492));
    wire vde = (h_count < 640) && (v_count < 480);
    
    // =========================================================================
    // Keycode from Lab 6 GPIO - UPDATED FOR 6 SIMULTANEOUS KEYS
    // Channel 1: keycodes[0-3] (4 keys, 32 bits)
    // Channel 2: keycodes[4-5] (2 keys, 16 bits used of 32)
    // =========================================================================
    
    wire [31:0] keycode_channel_1;  // From gpio_usb_keycode channel 1
    wire [31:0] keycode_channel_2;  // From gpio_usb_keycode channel 2
    
    // =========================================================================
    // Sprite Engine - NOW WITH 2-PLAYER SUPPORT
    // =========================================================================
    
    wire [7:0] red, green, blue;
    
    sprite_engine_simple game_engine (
        .clk(clk_25MHz),
        .reset(~system_ready),
        .DrawX(h_count),
        .DrawY(v_count),
        .keycode(keycode_channel_1),   // 32-bit: keycodes 0-3
        .keycode2(keycode_channel_2),  // 32-bit: keycodes 4-5
        .Red(red),
        .Green(green),
        .Blue(blue)
    );
    
    // RGB output
    wire [23:0] rgb_data = vde ? {red, blue, green} : 24'h000000;
    
    // =========================================================================
    // SPI Wires
    // =========================================================================
    
    wire [0:0] ss_o_bus;
    assign usb_spi_ss = ss_o_bus[0];
    
    // =========================================================================
    // GPIO Wires for USB Reset
    // =========================================================================
    
    wire [31:0] gpio_rst_out;
    assign gpio_usb_rst = gpio_rst_out[0];
    
    // =========================================================================
    // Block Design Instance - Using Lab 6 Port Names
    // =========================================================================
    
    bd_mario_wrapper bd_mario_i (
        // System Clock
        .SYS_CLK_0_clk_n(sys_clk_n),
        .SYS_CLK_0_clk_p(sys_clk_p),
        .sys_rst_0(~sys_rst),
        
        // DDR3 Memory
        .DDR3_0_addr(ddr3_addr),
        .DDR3_0_ba(ddr3_ba),
        .DDR3_0_cas_n(ddr3_cas_n),
        .DDR3_0_ck_n(ddr3_ck_n),
        .DDR3_0_ck_p(ddr3_ck_p),
        .DDR3_0_cke(ddr3_cke),
        .DDR3_0_dm(ddr3_dm),
        .DDR3_0_dq(ddr3_dq),
        .DDR3_0_dqs_n(ddr3_dqs_n),
        .DDR3_0_dqs_p(ddr3_dqs_p),
        .DDR3_0_odt(ddr3_odt),
        .DDR3_0_ras_n(ddr3_ras_n),
        .DDR3_0_reset_n(ddr3_reset_n),
        .DDR3_0_we_n(ddr3_we_n),
        
        // MIG Status and Clocks
        .init_calib_complete_0(calib_complete),
        .ui_addn_clk_1_0(clk_from_mig),
        .clk_out1_0(),
        .clk_out2_0(),
        
        // UART
        .uart_rtl_0_rxd(uart_rxd),
        .uart_rtl_0_txd(uart_txd),
        
        // SPI Connections
        .usb_spi_mosi(usb_spi_mosi),
        .usb_spi_miso(usb_spi_miso),
        .usb_spi_sclk(usb_spi_sclk),
        .usb_spi_ss(ss_o_bus),
        
        // USB Keycode GPIO - BOTH CHANNELS ACTIVE
        .gpio_usb_keycode_0_tri_o(keycode_channel_1),  // Channel 1: keycodes 0-3
        .gpio_usb_keycode_1_tri_o(keycode_channel_2),  // Channel 2: keycodes 4-5
        
        // USB Reset GPIO
        .gpio_usb_rst_tri_o(gpio_rst_out),
        
        // USB Interrupt GPIO
        .gpio_usb_int_tri_i(gpio_usb_int),
        
        // Video output
        .PixelClk_0(clk_25MHz),
        .SerialClk_0(clk_125MHz),
        .vid_pData_0(rgb_data),
        .vid_pHSync_0(hsync),
        .vid_pVSync_0(vsync),
        .vid_pVDE_0(vde),
        
        // HDMI TMDS
        .TMDS_Clk_p_0(hdmi_tmds_clk_p),
        .TMDS_Clk_n_0(hdmi_tmds_clk_n),
        .TMDS_Data_p_0(hdmi_tmds_data_p),
        .TMDS_Data_n_0(hdmi_tmds_data_n)
    );
    
    assign calib_led = calib_complete;

endmodule