`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Audio Controller with Dual-Clock FIFO
//////////////////////////////////////////////////////////////////////////////////

module audio_controller_xess (
    input wire clk,              // 95.14 MHz system clock
    input wire reset,
   
    // Control
    input wire enable_audio,
    output reg audio_playing,
   
    // SD Card Interface
    output reg sd_rd,
    output reg [31:0] sd_addr,
    input wire [7:0] sd_data,
    input wire sd_busy,
    input wire sd_hndshk_out,
    output reg sd_hndshk_in,
    input wire [15:0] sd_error,
   
    // PWM Audio Output
    output wire audio_pwm_left,
    output wire audio_pwm_right
);

    // Audio parameters
    localparam AUDIO_START_BLOCK = 32'd0;
    localparam AUDIO_NUM_BLOCKS = 32'd4096;
    localparam BYTES_PER_BLOCK = 512;
    localparam SAMPLE_DIV = 2157;  // 95.14 MHz / 22,050 Hz
   
    // =========================================
    // SAMPLE RATE CLOCK GENERATOR (22,050 Hz)
    // =========================================
    reg [15:0] sample_counter = 0;
    reg sample_clk = 0;
   
    always @(posedge clk) begin
        if (reset) begin
            sample_counter <= 0;
            sample_clk <= 0;
        end else begin
            if (sample_counter == SAMPLE_DIV - 1) begin
                sample_counter <= 0;
                sample_clk <= ~sample_clk;  // Toggle to create clock
            end else begin
                sample_counter <= sample_counter + 1;
            end
        end
    end
   
    // =========================================
    // STATE MACHINE
    // =========================================
    localparam IDLE = 0;
    localparam INIT_READ = 1;
    localparam WAIT_BUSY = 2;
    localparam READ_BYTE = 3;
    localparam ACK_BYTE = 4;
    localparam NEXT_BLOCK = 5;
   
    reg [2:0] state = IDLE;
    reg [31:0] current_block = 0;
    reg [9:0] byte_count = 0;
   
    // =========================================
    // FIFO SIGNALS
    // =========================================
    wire [7:0] fifo_din;
    wire fifo_wr_en;
    wire fifo_full;
    wire fifo_wr_rst_busy;
   
    wire [7:0] fifo_dout;
    wire fifo_rd_en;
    wire fifo_empty;
    wire fifo_rd_rst_busy;
   
    assign fifo_din = sd_data;
    assign fifo_wr_en = (sd_hndshk_out && !fifo_full && state == READ_BYTE);
   
    // =========================================
    // DUAL-CLOCK FIFO INSTANTIATION
    // =========================================
    audio_fifo_wrapper audio_fifo (
        // Write side (system clock domain)
        .wr_clk(clk),            // 95.14 MHz
        .rst(reset),
        .din(fifo_din),
        .wr_en(fifo_wr_en),
        .full(fifo_full),
        .wr_rst_busy(fifo_wr_rst_busy),
       
        // Read side (sample clock domain)
        .rd_clk(sample_clk),     // 22,050 Hz ? DIFFERENT CLOCK!
        .dout(fifo_dout),
        .rd_en(fifo_rd_en),
        .empty(fifo_empty),
        .rd_rst_busy(fifo_rd_rst_busy)
    );
   
    wire fifo_ready = !fifo_full && !fifo_wr_rst_busy;
   
    // =========================================
    // SD CARD READ FSM (95.14 MHz domain)
    // =========================================
    always @(posedge clk) begin
        if (reset) begin
            state <= IDLE;
            sd_rd <= 0;
            sd_hndshk_in <= 0;
            current_block <= AUDIO_START_BLOCK;
            byte_count <= 0;
            audio_playing <= 0;
        end else begin
            case (state)
                IDLE: begin
                    if (enable_audio && !sd_busy && fifo_ready) begin
                        state <= INIT_READ;
                    end
                end
               
                INIT_READ: begin
                    sd_addr <= current_block;
                    sd_rd <= 1;
                    byte_count <= 0;
                    state <= WAIT_BUSY;
                end
               
                WAIT_BUSY: begin
                    sd_rd <= 0;
                    if (sd_busy) begin
                        state <= READ_BYTE;
                        audio_playing <= 1;
                    end
                end
               
                READ_BYTE: begin
                    if (sd_hndshk_out && !fifo_full) begin
                        sd_hndshk_in <= 1;
                        byte_count <= byte_count + 1;
                        state <= ACK_BYTE;
                    end else if (!sd_busy && byte_count == BYTES_PER_BLOCK) begin
                        state <= NEXT_BLOCK;
                    end
                end
               
                ACK_BYTE: begin
                    if (!sd_hndshk_out) begin
                        sd_hndshk_in <= 0;
                        state <= READ_BYTE;
                    end
                end
               
                NEXT_BLOCK: begin
                    if (current_block >= AUDIO_START_BLOCK + AUDIO_NUM_BLOCKS - 1) begin
                        current_block <= AUDIO_START_BLOCK;
                    end else begin
                        current_block <= current_block + 1;
                    end
                   
                    if (fifo_ready) begin
                        state <= INIT_READ;
                    end else begin
                        state <= IDLE;
                    end
                end
               
                default: state <= IDLE;
            endcase
        end
    end
   
    // =========================================
    // AUDIO READER (22,050 Hz domain)
    // =========================================
    reg [7:0] audio_sample = 8'h80;
    reg sample_valid = 0;
   
    // Read from FIFO on sample clock edge
    assign fifo_rd_en = (!fifo_empty && !fifo_rd_rst_busy);
   
    always @(posedge sample_clk) begin
        if (reset) begin
            audio_sample <= 8'h80;
            sample_valid <= 0;
        end else if (fifo_rd_en) begin
            audio_sample <= fifo_dout;
            sample_valid <= 1;
        end else begin
            sample_valid <= 0;
        end
    end
   
    // =========================================
    // PWM AUDIO OUTPUT (still uses system clock)
    // =========================================
    pwm_audio_output pwm_out (
        .clk(clk),               // PWM runs at 95.14 MHz for resolution
        .reset(reset),
        .audio_sample(audio_sample),
        .sample_valid(sample_valid),
        .sample_ready(),         // Not used anymore
        .pwm_left(audio_pwm_left),
        .pwm_right(audio_pwm_right)
    );

endmodule