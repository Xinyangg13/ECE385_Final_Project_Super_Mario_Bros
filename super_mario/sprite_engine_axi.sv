`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Super Mario Bros - AXI Sprite Engine
// Allows MicroBlaze to control sprite positions via AXI registers
// RESTORED VERSION - No Block RAM sprite usage
//////////////////////////////////////////////////////////////////////////////////

module sprite_engine_axi #(
    parameter C_S_AXI_DATA_WIDTH = 32,
    parameter C_S_AXI_ADDR_WIDTH = 8
)(
    // AXI Slave Interface
    input wire S_AXI_ACLK,
    input wire S_AXI_ARESETN,
    
    input wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_AWADDR,
    input wire S_AXI_AWVALID,
    output wire S_AXI_AWREADY,
    
    input wire [C_S_AXI_DATA_WIDTH-1:0] S_AXI_WDATA,
    input wire [(C_S_AXI_DATA_WIDTH/8)-1:0] S_AXI_WSTRB,
    input wire S_AXI_WVALID,
    output wire S_AXI_WREADY,
    
    output wire [1:0] S_AXI_BRESP,
    output wire S_AXI_BVALID,
    input wire S_AXI_BREADY,
    
    input wire [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_ARADDR,
    input wire S_AXI_ARVALID,
    output wire S_AXI_ARREADY,
    
    output wire [C_S_AXI_DATA_WIDTH-1:0] S_AXI_RDATA,
    output wire [1:0] S_AXI_RRESP,
    output wire S_AXI_RVALID,
    input wire S_AXI_RREADY,
    
    // Video Interface (from pixel clock domain)
    input wire pixel_clk,
    input wire [9:0] DrawX,
    input wire [9:0] DrawY,
    output reg [7:0] Red,
    output reg [7:0] Green,
    output reg [7:0] Blue
);

    // =========================================================================
    // AXI Register Map
    // =========================================================================
    // 0x00: Control register
    // 0x04: Mario X position
    // 0x08: Mario Y position
    // 0x0C: Mario state (bits[3:0]=anim, bits[7:4]=direction, bits[11:8]=power)
    // 0x10: Scroll X position
    // 0x14: Scroll Y position
    // 0x18-0x1C: Reserved
    // 0x20-0x9F: Enemy sprites (16 enemies * 8 bytes each)
    //            +0: X position (16 bits) | Type (8 bits) | Active (8 bits)
    //            +4: Y position (16 bits) | Animation (8 bits) | Direction (8 bits)
    // 0xA0-0xBF: Power-up sprites (4 power-ups * 8 bytes each)
    // 0xC0-0xFF: Tile updates (for dynamic blocks)
    
    // =========================================================================
    // AXI Registers
    // =========================================================================
    
    reg [31:0] reg_control;
    reg [31:0] reg_mario_x;
    reg [31:0] reg_mario_y;
    reg [31:0] reg_mario_state;
    reg [31:0] reg_scroll_x;
    reg [31:0] reg_scroll_y;
    
    // Enemy registers (16 enemies)
    reg [31:0] reg_enemy[0:31];  // 2 words per enemy
    
    // Power-up registers (4 power-ups)
    reg [31:0] reg_powerup[0:7];  // 2 words per power-up
    
    // =========================================================================
    // AXI Write Logic
    // =========================================================================
    
    reg aw_ready, w_ready, b_valid;
    reg [C_S_AXI_ADDR_WIDTH-1:0] aw_addr;
    
    assign S_AXI_AWREADY = aw_ready;
    assign S_AXI_WREADY = w_ready;
    assign S_AXI_BRESP = 2'b00;
    assign S_AXI_BVALID = b_valid;
    
    integer i;
    
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            aw_ready <= 1'b1;
            w_ready <= 1'b0;
            b_valid <= 1'b0;
            aw_addr <= 0;
            
            // Initialize registers
            reg_control <= 0;
            reg_mario_x <= 32'd50;
            reg_mario_y <= 32'd400;
            reg_mario_state <= 0;
            reg_scroll_x <= 0;
            reg_scroll_y <= 0;
            
            for (i = 0; i < 32; i = i + 1) reg_enemy[i] <= 0;
            for (i = 0; i < 8; i = i + 1) reg_powerup[i] <= 0;
        end else begin
            // Address phase
            if (aw_ready && S_AXI_AWVALID) begin
                aw_addr <= S_AXI_AWADDR;
                aw_ready <= 1'b0;
                w_ready <= 1'b1;
            end
            
            // Data phase
            if (w_ready && S_AXI_WVALID) begin
                w_ready <= 1'b0;
                b_valid <= 1'b1;
                
                // Write to appropriate register
                case (aw_addr[7:2])
                    6'h00: reg_control <= S_AXI_WDATA;
                    6'h01: reg_mario_x <= S_AXI_WDATA;
                    6'h02: reg_mario_y <= S_AXI_WDATA;
                    6'h03: reg_mario_state <= S_AXI_WDATA;
                    6'h04: reg_scroll_x <= S_AXI_WDATA;
                    6'h05: reg_scroll_y <= S_AXI_WDATA;
                    // Enemies: 0x20-0x9F (addresses 0x08-0x27)
                    default: begin
                        if (aw_addr[7:2] >= 6'h08 && aw_addr[7:2] < 6'h28) begin
                            reg_enemy[aw_addr[6:2] - 5'h08] <= S_AXI_WDATA;
                        end
                    end
                endcase
            end
            
            // Response phase
            if (b_valid && S_AXI_BREADY) begin
                b_valid <= 1'b0;
                aw_ready <= 1'b1;
            end
        end
    end
    
    // =========================================================================
    // AXI Read Logic
    // =========================================================================
    
    reg ar_ready, r_valid;
    reg [31:0] r_data;
    
    assign S_AXI_ARREADY = ar_ready;
    assign S_AXI_RDATA = r_data;
    assign S_AXI_RRESP = 2'b00;
    assign S_AXI_RVALID = r_valid;
    
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            ar_ready <= 1'b1;
            r_valid <= 1'b0;
            r_data <= 0;
        end else begin
            if (ar_ready && S_AXI_ARVALID) begin
                ar_ready <= 1'b0;
                r_valid <= 1'b1;
                
                case (S_AXI_ARADDR[7:2])
                    6'h00: r_data <= reg_control;
                    6'h01: r_data <= reg_mario_x;
                    6'h02: r_data <= reg_mario_y;
                    6'h03: r_data <= reg_mario_state;
                    6'h04: r_data <= reg_scroll_x;
                    6'h05: r_data <= reg_scroll_y;
                    default: r_data <= 32'hDEADBEEF;
                endcase
            end
            
            if (r_valid && S_AXI_RREADY) begin
                r_valid <= 1'b0;
                ar_ready <= 1'b1;
            end
        end
    end
    
    // =========================================================================
    // Cross Clock Domain Synchronization
    // =========================================================================
    
    reg [15:0] mario_x_sync, mario_y_sync;
    reg [15:0] scroll_x_sync;
    reg [11:0] mario_state_sync;
    
    always @(posedge pixel_clk) begin
        mario_x_sync <= reg_mario_x[15:0];
        mario_y_sync <= reg_mario_y[15:0];
        scroll_x_sync <= reg_scroll_x[15:0];
        mario_state_sync <= reg_mario_state[11:0];
    end
    
    // =========================================================================
    // Sprite Rendering (Simple Procedural - No ROM)
    // =========================================================================
    
    // NES-style color palette
    function [23:0] get_color;
        input [3:0] color_index;
        begin
            case (color_index)
                4'h0: get_color = 24'h5C94FC;  // Sky blue
                4'h1: get_color = 24'hB53120;  // Mario red
                4'h2: get_color = 24'hFCBCB0;  // Skin
                4'h3: get_color = 24'h6B4400;  // Brown (hair/shoes)
                4'h4: get_color = 24'h00A800;  // Pipe green
                4'h5: get_color = 24'hFCFC00;  // Yellow (coins/?)
                4'h6: get_color = 24'hE45C10;  // Orange/brick
                4'h7: get_color = 24'hC84C0C;  // Dark brown (ground pattern)
                4'h8: get_color = 24'hFCFCFC;  // White (clouds)
                4'h9: get_color = 24'h503000;  // Dark brown
                4'hA: get_color = 24'h000000;  // Black
                4'hB: get_color = 24'h787878;  // Gray
                4'hC: get_color = 24'h00E8D8;  // Cyan
                4'hD: get_color = 24'hAC7C00;  // Gold
                4'hE: get_color = 24'hD82800;  // Dark red
                4'hF: get_color = 24'hFC7460;  // Light orange
                default: get_color = 24'h000000;
            endcase
        end
    endfunction
    
    // Current pixel coordinates (adjusted for scroll)
    wire [15:0] world_x = DrawX + scroll_x_sync;
    wire [9:0] world_y = DrawY;
    
    // Tile coordinates
    wire [9:0] tile_x = world_x[13:4];  // Divide by 16
    wire [5:0] tile_y = world_y[9:4];
    wire [3:0] tile_px = world_x[3:0];  // Pixel within tile
    wire [3:0] tile_py = world_y[3:0];
    
    // =========================================================================
    // Mario Sprite (16x16) - Simple Procedural
    // =========================================================================
    
    wire [9:0] mario_screen_x = mario_x_sync - scroll_x_sync;
    wire [9:0] mario_screen_y = mario_y_sync;
    
    wire mario_active = (DrawX >= mario_screen_x) && (DrawX < mario_screen_x + 16) &&
                        (DrawY >= mario_screen_y) && (DrawY < mario_screen_y + 16);
    
    wire [3:0] mario_px = DrawX - mario_screen_x;
    wire [3:0] mario_py = DrawY - mario_screen_y;
    
    // Simple Mario sprite pattern (16x16)
    reg [3:0] mario_color;
    
    always @(*) begin
        mario_color = 4'h0;  // Transparent
        
        if (mario_active) begin
            // Simple Mario shape
            // Head area (rows 0-5)
            if (mario_py < 6) begin
                if (mario_px >= 4 && mario_px < 12) begin
                    if (mario_py < 2)
                        mario_color = 4'h1;  // Hat (red)
                    else if (mario_py < 4)
                        mario_color = 4'h2;  // Face (skin)
                    else
                        mario_color = 4'h3;  // Hair (brown)
                end
            end
            // Body area (rows 6-11)
            else if (mario_py < 12) begin
                if (mario_px >= 2 && mario_px < 14) begin
                    if (mario_py < 8)
                        mario_color = 4'h1;  // Shirt (red)
                    else
                        mario_color = 4'h5;  // Overalls (blue - using yellow as placeholder)
                end
            end
            // Legs area (rows 12-15)
            else begin
                if ((mario_px >= 3 && mario_px < 7) || (mario_px >= 9 && mario_px < 13))
                    mario_color = 4'h3;  // Shoes (brown)
            end
        end
    end
    
    // =========================================================================
    // Background Rendering
    // =========================================================================
    
    reg [3:0] bg_color;
    
    // Ground pattern
    wire is_ground = (tile_y >= 28);
    wire ground_pattern = ((tile_px[3] ^ tile_py[3]) == 1'b0);
    
    // Brick pattern
    wire is_brick_row = (tile_y == 22) && 
                        ((tile_x >= 21 && tile_x <= 25) || (tile_x >= 80 && tile_x <= 87));
    wire brick_edge = (tile_px == 0) || (tile_py == 0) || 
                      (tile_py == 8 && tile_px > 7) || (tile_py == 7 && tile_px < 8);
    
    // Question block
    wire is_question = (tile_y == 22) && 
                       (tile_x == 16 || tile_x == 22 || tile_x == 24);
    wire question_border = (tile_px == 0) || (tile_px == 15) || (tile_py == 0) || (tile_py == 15);
    wire question_mark = (tile_py >= 4 && tile_py <= 11) && (tile_px >= 5 && tile_px <= 10);
    
    // Pipe (at x=28-29)
    wire is_pipe_top = (tile_y == 26) && (tile_x >= 28 && tile_x <= 29);
    wire is_pipe_body = (tile_y == 27) && (tile_x >= 28 && tile_x <= 29);
    wire pipe_highlight = (tile_px < 4);
    
    // Cloud pattern
    wire is_cloud = (tile_y >= 4 && tile_y <= 6) && 
                    ((tile_x >= 8 && tile_x <= 11) || (tile_x >= 36 && tile_x <= 39) ||
                     (tile_x >= 56 && tile_x <= 59) || (tile_x >= 80 && tile_x <= 83));
    wire cloud_shape = (tile_py >= 1 && tile_py <= 14) && (tile_px >= 1 && tile_px <= 14);
    
    always @(*) begin
        // Default: Sky blue
        bg_color = 4'h0;
        
        // Clouds
        if (is_cloud && cloud_shape) begin
            bg_color = 4'h8;  // White
        end
        
        // Ground
        if (is_ground) begin
            bg_color = ground_pattern ? 4'h6 : 4'h7;  // Orange/brown pattern
        end
        
        // Bricks
        if (is_brick_row) begin
            bg_color = brick_edge ? 4'hA : 4'h6;  // Black edge, orange center
        end
        
        // Question blocks
        if (is_question) begin
            if (question_border)
                bg_color = 4'hA;  // Black border
            else if (question_mark)
                bg_color = 4'h5;  // Yellow ?
            else
                bg_color = 4'hD;  // Gold background
        end
        
        // Pipes
        if (is_pipe_top || is_pipe_body) begin
            bg_color = pipe_highlight ? 4'hC : 4'h4;  // Cyan highlight, green body
        end
    end
    
    // =========================================================================
    // Final Color Output
    // =========================================================================
    
    wire [23:0] final_color;
    wire [23:0] mario_rgb = get_color(mario_color);
    wire [23:0] bg_rgb = get_color(bg_color);
    
    // Mario on top of background (if not transparent)
    assign final_color = (mario_color != 4'h0) ? mario_rgb : bg_rgb;
    
    always @(posedge pixel_clk) begin
        Red   <= final_color[23:16];
        Green <= final_color[15:8];
        Blue  <= final_color[7:0];
    end

endmodule