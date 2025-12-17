`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Audio FIFO Wrapper - Dual Clock Domain FIFO
// Write clock: 95.14 MHz (system clock for SD card)
// Read clock: 22,050 Hz (audio sample rate)
//////////////////////////////////////////////////////////////////////////////////

module audio_fifo_wrapper (
    // Write side (SD card domain - 95.14 MHz)
    input wire wr_clk,           // 95.14 MHz system clock
    input wire rst,              // Reset (synchronous to wr_clk)
    input wire [7:0] din,        // Data from SD card
    input wire wr_en,            // Write enable
    output wire full,            // FIFO full
    output wire wr_rst_busy,     // Write reset busy
   
    // Read side (Audio sample domain - 22,050 Hz)
    input wire rd_clk,           // Sample rate clock (22,050 Hz)
    input wire [7:0] dout,       // Data to PWM
    input wire rd_en,            // Read enable
    output wire empty,           // FIFO empty
    output wire rd_rst_busy      // Read reset busy
);

    // Instantiate Xilinx FIFO Generator IP (VHDL)
    // Configured for independent clocks (dual-clock FIFO)
    fifo_generator_0 audio_fifo_inst (
        .rst(rst),
        .wr_clk(wr_clk),         // 95.14 MHz
        .rd_clk(rd_clk),         // 22,050 Hz
        .din(din),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .dout(dout),
        .full(full),
        .empty(empty),
        .wr_rst_busy(wr_rst_busy),
        .rd_rst_busy(rd_rst_busy)
    );

endmodule