`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// VGA Timing Controller - 640x480 @ 60Hz
// Matches Lab 6 vga_controller
//////////////////////////////////////////////////////////////////////////////////

module vga_timing (
    input logic pixel_clk,       // 25 MHz pixel clock
    input logic reset,           // Active high reset
    output logic hs,             // Horizontal sync
    output logic vs,             // Vertical sync  
    output logic active_nblank,  // Active video region (VDE)
    output logic [9:0] drawX,    // Current X coordinate
    output logic [9:0] drawY     // Current Y coordinate
);

    // VGA 640x480 @ 60Hz timing parameters
    parameter H_ACTIVE = 640;    // Horizontal active pixels
    parameter H_FP = 16;          // Horizontal front porch
    parameter H_SYNC = 96;        // Horizontal sync pulse
    parameter H_BP = 48;          // Horizontal back porch
    parameter H_TOTAL = 800;      // Total horizontal pixels
    
    parameter V_ACTIVE = 480;    // Vertical active lines
    parameter V_FP = 10;          // Vertical front porch
    parameter V_SYNC = 2;         // Vertical sync pulse
    parameter V_BP = 33;          // Vertical back porch
    parameter V_TOTAL = 525;      // Total vertical lines
    
    // Internal counters
    logic [9:0] h_count;
    logic [9:0] v_count;
    
    // Horizontal counter
    always_ff @(posedge pixel_clk) begin
        if (reset) begin
            h_count <= 10'b0;
        end
        else begin
            if (h_count == H_TOTAL - 1)
                h_count <= 10'b0;
            else
                h_count <= h_count + 10'b1;
        end
    end
    
    // Vertical counter
    always_ff @(posedge pixel_clk) begin
        if (reset) begin
            v_count <= 10'b0;
        end
        else begin
            if (h_count == H_TOTAL - 1) begin
                if (v_count == V_TOTAL - 1)
                    v_count <= 10'b0;
                else
                    v_count <= v_count + 10'b1;
            end
        end
    end
    
    // Generate sync signals
    always_comb begin
        // Horizontal sync (active low)
        if ((h_count >= H_ACTIVE + H_FP) && 
            (h_count < H_ACTIVE + H_FP + H_SYNC))
            hs = 1'b0;
        else
            hs = 1'b1;
            
        // Vertical sync (active low)
        if ((v_count >= V_ACTIVE + V_FP) && 
            (v_count < V_ACTIVE + V_FP + V_SYNC))
            vs = 1'b0;
        else
            vs = 1'b1;
            
        // Active video region
        if ((h_count < H_ACTIVE) && (v_count < V_ACTIVE))
            active_nblank = 1'b1;
        else
            active_nblank = 1'b0;
    end
    
    // Output pixel coordinates
    assign drawX = (h_count < H_ACTIVE) ? h_count : 10'b0;
    assign drawY = (v_count < V_ACTIVE) ? v_count : 10'b0;

endmodule