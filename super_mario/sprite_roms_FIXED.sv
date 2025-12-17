`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// ECE385 Final Project: Super Mario Bros - COMPLETE BRAM SPRITE ROMS
// Authors: Chen Zeng, Xinyang Liu

module mario_sprite_rom (
    input  wire        clk,
    input  wire [12:0] addr,
    output reg  [3:0]  data
);
    (* ram_style = "block" *) reg [3:0] rom [0:8191];
    
    initial begin
        integer x, y, frame, squat, dir;
        // Initialize all to transparent
        for (integer i = 0; i < 8192; i = i + 1) rom[i] = 4'd0;
        
     
        
        for (dir = 0; dir < 2; dir = dir + 1) begin
            for (squat = 0; squat < 2; squat = squat + 1) begin
                for (frame = 0; frame < 4; frame = frame + 1) begin
                    
                    if (squat == 0) begin
                        // 
                        // Row 0-1: Hat top
                        for (x = 5; x <= 10; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd0, x[3:0]}] = 4'd1;
                        for (x = 4; x <= 11; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd1, x[3:0]}] = 4'd1;
                        // Row 2-3: Hat wide
                        for (y = 2; y <= 3; y = y + 1)
                            for (x = 3; x <= 12; x = x + 1) 
                                rom[{dir[0], 1'b0, frame[1:0], y[4:0], x[3:0]}] = 4'd1;
                        // Row 4: Hat brim
                        for (x = 4; x <= 11; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd4, x[3:0]}] = 4'd1;
                        // Row 5: Hair + Face
                        for (x = 3; x <= 5; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd5, x[3:0]}] = 4'd3;  // Hair
                        for (x = 6; x <= 10; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd5, x[3:0]}] = 4'd2; // Face
                        for (x = 11; x <= 12; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd5, x[3:0]}] = 4'd3; // Hair
                        // Row 6: Hair + Face
                        for (x = 2; x <= 4; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd6, x[3:0]}] = 4'd3;
                        for (x = 5; x <= 11; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd6, x[3:0]}] = 4'd2;
                        rom[{dir[0], 1'b0, frame[1:0], 5'd6, 4'd12}] = 4'd3;
                        // Row 7-8: Face
                        for (y = 7; y <= 8; y = y + 1)
                            for (x = 4; x <= 11; x = x + 1) 
                                rom[{dir[0], 1'b0, frame[1:0], y[4:0], x[3:0]}] = 4'd2;
                        // Row 9: Neck
                        for (x = 5; x <= 10; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd9, x[3:0]}] = 4'd2;
                        // Row 10: Shirt wide
                        for (x = 2; x <= 13; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd10, x[3:0]}] = 4'd1;
                        // Row 11: Arms + Shirt
                        for (x = 1; x <= 3; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd11, x[3:0]}] = 4'd2;  // Left arm
                        for (x = 4; x <= 11; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd11, x[3:0]}] = 4'd1; // Shirt
                        for (x = 12; x <= 14; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd11, x[3:0]}] = 4'd2; // Right arm
                        // Row 12: Shirt
                        for (x = 4; x <= 11; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd12, x[3:0]}] = 4'd1;
                        // Row 13-14: Overalls
                        for (x = 3; x <= 12; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd13, x[3:0]}] = 4'd4;
                        for (x = 3; x <= 12; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd14, x[3:0]}] = 4'd4;
                        // Row 15: Overalls with buttons
                        for (x = 4; x <= 5; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd15, x[3:0]}] = 4'd4;
                        rom[{dir[0], 1'b0, frame[1:0], 5'd15, 4'd6}] = 4'd6;  // Gold button
                        for (x = 7; x <= 8; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd15, x[3:0]}] = 4'd4;
                        rom[{dir[0], 1'b0, frame[1:0], 5'd15, 4'd9}] = 4'd6;  // Gold button
                        for (x = 10; x <= 11; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd15, x[3:0]}] = 4'd4;
                        // Row 16: Overalls
                        for (x = 3; x <= 12; x = x + 1) 
                            rom[{dir[0], 1'b0, frame[1:0], 5'd16, x[3:0]}] = 4'd4;
                        // Row 17-20: Legs with animation
                        for (y = 17; y <= 20; y = y + 1) begin
                            for (x = 2; x <= 6; x = x + 1) 
                                rom[{dir[0], 1'b0, frame[1:0], y[4:0], x[3:0]}] = 4'd4;
                            for (x = 9; x <= 13; x = x + 1) 
                                rom[{dir[0], 1'b0, frame[1:0], y[4:0], x[3:0]}] = 4'd4;
                        end
                        // Row 21-23: Shoes
                        for (y = 21; y <= 23; y = y + 1) begin
                            for (x = 1; x <= 6; x = x + 1) 
                                rom[{dir[0], 1'b0, frame[1:0], y[4:0], x[3:0]}] = 4'd5;
                            for (x = 9; x <= 14; x = x + 1) 
                                rom[{dir[0], 1'b0, frame[1:0], y[4:0], x[3:0]}] = 4'd5;
                        end
                    end
                    else begin
                        // 
                        // Row 0: Hat top
                        for (x = 5; x <= 10; x = x + 1) 
                            rom[{dir[0], 1'b1, frame[1:0], 5'd0, x[3:0]}] = 4'd1;
                        // Row 1: Hat
                        for (x = 4; x <= 11; x = x + 1) 
                            rom[{dir[0], 1'b1, frame[1:0], 5'd1, x[3:0]}] = 4'd1;
                        // Row 2: Hat wide
                        for (x = 3; x <= 12; x = x + 1) 
                            rom[{dir[0], 1'b1, frame[1:0], 5'd2, x[3:0]}] = 4'd1;
                        // Row 3: Hair + Face
                        for (x = 3; x <= 4; x = x + 1) 
                            rom[{dir[0], 1'b1, frame[1:0], 5'd3, x[3:0]}] = 4'd3;
                        for (x = 5; x <= 10; x = x + 1) 
                            rom[{dir[0], 1'b1, frame[1:0], 5'd3, x[3:0]}] = 4'd2;
                        for (x = 11; x <= 12; x = x + 1) 
                            rom[{dir[0], 1'b1, frame[1:0], 5'd3, x[3:0]}] = 4'd3;
                        // Row 4: Face
                        for (x = 4; x <= 11; x = x + 1) 
                            rom[{dir[0], 1'b1, frame[1:0], 5'd4, x[3:0]}] = 4'd2;
                        // Row 5-9: Overalls (crouched body)
                        for (y = 5; y <= 9; y = y + 1)
                            for (x = 3; x <= 12; x = x + 1) 
                                rom[{dir[0], 1'b1, frame[1:0], y[4:0], x[3:0]}] = 4'd4;
                        // Row 10-13: Shoes
                        for (y = 10; y <= 13; y = y + 1) begin
                            for (x = 2; x <= 5; x = x + 1) 
                                rom[{dir[0], 1'b1, frame[1:0], y[4:0], x[3:0]}] = 4'd5;
                            for (x = 10; x <= 13; x = x + 1) 
                                rom[{dir[0], 1'b1, frame[1:0], y[4:0], x[3:0]}] = 4'd5;
                        end
                    end
                end
            end
        end
    end
    
    always @(posedge clk) begin
        data <= rom[addr];
    end
endmodule

module enemy_sprite_rom (
    input  wire        clk,
    input  wire [11:0] addr,
    output reg  [3:0]  data
);
    (* ram_style = "block" *) reg [3:0] rom [0:4095];
    
    initial begin
        integer x, y, frame;
        // Initialize all to transparent
        for (integer i = 0; i < 4096; i = i + 1) rom[i] = 4'd0;
        
        // 
        for (frame = 0; frame < 2; frame = frame + 1) begin
            // Row 0: Brown dome top
            for (x = 5; x <= 10; x = x + 1) 
                rom[{3'd0, frame[0], 4'd0, x[3:0]}] = 4'd1;
            // Row 1: Dome wider
            for (x = 3; x <= 12; x = x + 1) 
                rom[{3'd0, frame[0], 4'd1, x[3:0]}] = 4'd1;
            // Row 2-4: Dome full
            for (y = 2; y <= 4; y = y + 1)
                for (x = 2; x <= 13; x = x + 1) 
                    rom[{3'd0, frame[0], y[3:0], x[3:0]}] = 4'd1;
            // Row 5: Dome widest
            for (x = 1; x <= 14; x = x + 1) 
                rom[{3'd0, frame[0], 4'd5, x[3:0]}] = 4'd1;
            // Row 6: Face with eyes (white areas)
            for (x = 1; x <= 14; x = x + 1) begin
                if ((x >= 3 && x <= 5) || (x >= 10 && x <= 12))
                    rom[{3'd0, frame[0], 4'd6, x[3:0]}] = 4'd3;  // White eyes
                else
                    rom[{3'd0, frame[0], 4'd6, x[3:0]}] = 4'd2;  // Tan face
            end
            // Row 7: Face with pupils
            for (x = 1; x <= 14; x = x + 1) begin
                if (x == 4 || x == 11)
                    rom[{3'd0, frame[0], 4'd7, x[3:0]}] = 4'd4;  // Black pupils
                else if ((x >= 3 && x <= 5) || (x >= 10 && x <= 12))
                    rom[{3'd0, frame[0], 4'd7, x[3:0]}] = 4'd3;  // White eyes
                else
                    rom[{3'd0, frame[0], 4'd7, x[3:0]}] = 4'd2;  // Tan face
            end
            // Row 8: Tan face
            for (x = 1; x <= 14; x = x + 1) 
                rom[{3'd0, frame[0], 4'd8, x[3:0]}] = 4'd2;
            // Row 9: Face with mouth
            for (x = 2; x <= 13; x = x + 1) begin
                if (x >= 5 && x <= 10)
                    rom[{3'd0, frame[0], 4'd9, x[3:0]}] = 4'd4;  // Black mouth
                else
                    rom[{3'd0, frame[0], 4'd9, x[3:0]}] = 4'd2;
            end
            // Row 10-11: Tan face narrow
            for (x = 3; x <= 12; x = x + 1) 
                rom[{3'd0, frame[0], 4'd10, x[3:0]}] = 4'd2;
            for (x = 4; x <= 11; x = x + 1) 
                rom[{3'd0, frame[0], 4'd11, x[3:0]}] = 4'd2;
            // Row 12-15: Feet (animated)
            if (frame == 0) begin
                for (y = 12; y <= 15; y = y + 1) begin
                    for (x = 1; x <= 6; x = x + 1) 
                        rom[{3'd0, 1'b0, y[3:0], x[3:0]}] = 4'd5;
                    for (x = 9; x <= 14; x = x + 1) 
                        rom[{3'd0, 1'b0, y[3:0], x[3:0]}] = 4'd5;
                end
            end else begin
                for (y = 12; y <= 15; y = y + 1) begin
                    for (x = 0; x <= 5; x = x + 1) 
                        rom[{3'd0, 1'b1, y[3:0], x[3:0]}] = 4'd5;
                    for (x = 10; x <= 15; x = x + 1) 
                        rom[{3'd0, 1'b1, y[3:0], x[3:0]}] = 4'd5;
                end
            end
        end
        
        // 
        for (frame = 0; frame < 2; frame = frame + 1) begin
            // Row 0-1: Head top (tan/yellow)
            for (x = 5; x <= 10; x = x + 1) 
                rom[{3'd1, frame[0], 4'd0, x[3:0]}] = 4'd2;
            for (x = 4; x <= 11; x = x + 1) 
                rom[{3'd1, frame[0], 4'd1, x[3:0]}] = 4'd2;
            // Row 2-3: Head with eyes
            for (x = 3; x <= 12; x = x + 1) 
                rom[{3'd1, frame[0], 4'd2, x[3:0]}] = 4'd2;
            for (x = 3; x <= 12; x = x + 1) begin
                if (x == 5 || x == 10)
                    rom[{3'd1, frame[0], 4'd3, x[3:0]}] = 4'd4;  // Eyes (black)
                else
                    rom[{3'd1, frame[0], 4'd3, x[3:0]}] = 4'd2;
            end
            // Row 4: Neck
            for (x = 5; x <= 10; x = x + 1) 
                rom[{3'd1, frame[0], 4'd4, x[3:0]}] = 4'd2;
            // Row 5-6: Shell top (green)
            for (x = 3; x <= 12; x = x + 1) 
                rom[{3'd1, frame[0], 4'd5, x[3:0]}] = 4'd1;
            for (x = 2; x <= 13; x = x + 1) 
                rom[{3'd1, frame[0], 4'd6, x[3:0]}] = 4'd1;
            // Row 7-8: Shell body with lighter stripe
            for (x = 1; x <= 14; x = x + 1) begin
                if (x >= 5 && x <= 10)
                    rom[{3'd1, frame[0], 4'd7, x[3:0]}] = 4'd3;  // Light green stripe
                else
                    rom[{3'd1, frame[0], 4'd7, x[3:0]}] = 4'd1;
            end
            for (x = 1; x <= 14; x = x + 1) begin
                if (x >= 6 && x <= 9)
                    rom[{3'd1, frame[0], 4'd8, x[3:0]}] = 4'd3;
                else
                    rom[{3'd1, frame[0], 4'd8, x[3:0]}] = 4'd1;
            end
            // Row 9-10: Shell bottom
            for (x = 2; x <= 13; x = x + 1) 
                rom[{3'd1, frame[0], 4'd9, x[3:0]}] = 4'd1;
            for (x = 3; x <= 12; x = x + 1) 
                rom[{3'd1, frame[0], 4'd10, x[3:0]}] = 4'd1;
            // Row 11: Shell edge
            for (x = 4; x <= 11; x = x + 1) 
                rom[{3'd1, frame[0], 4'd11, x[3:0]}] = 4'd5;  // Dark edge
            // Row 12-15: Feet (animated)
            if (frame == 0) begin
                for (y = 12; y <= 15; y = y + 1) begin
                    for (x = 2; x <= 5; x = x + 1) 
                        rom[{3'd1, 1'b0, y[3:0], x[3:0]}] = 4'd6;  // Orange feet
                    for (x = 10; x <= 13; x = x + 1) 
                        rom[{3'd1, 1'b0, y[3:0], x[3:0]}] = 4'd6;
                end
            end else begin
                for (y = 12; y <= 15; y = y + 1) begin
                    for (x = 1; x <= 4; x = x + 1) 
                        rom[{3'd1, 1'b1, y[3:0], x[3:0]}] = 4'd6;
                    for (x = 11; x <= 14; x = x + 1) 
                        rom[{3'd1, 1'b1, y[3:0], x[3:0]}] = 4'd6;
                end
            end
        end
        
        // 
        for (frame = 0; frame < 2; frame = frame + 1) begin
            // Row 0-1: Shell dome top
            for (x = 5; x <= 10; x = x + 1) 
                rom[{3'd2, frame[0], 4'd0, x[3:0]}] = 4'd1;
            for (x = 3; x <= 12; x = x + 1) 
                rom[{3'd2, frame[0], 4'd1, x[3:0]}] = 4'd1;
            // Row 2-3: Shell expanding
            for (x = 2; x <= 13; x = x + 1) 
                rom[{3'd2, frame[0], 4'd2, x[3:0]}] = 4'd1;
            for (x = 1; x <= 14; x = x + 1) 
                rom[{3'd2, frame[0], 4'd3, x[3:0]}] = 4'd1;
            // Row 4-5: Shell body with stripe
            for (x = 1; x <= 14; x = x + 1) begin
                if (x >= 5 && x <= 10)
                    rom[{3'd2, frame[0], 4'd4, x[3:0]}] = 4'd3;  // Light stripe
                else
                    rom[{3'd2, frame[0], 4'd4, x[3:0]}] = 4'd1;
            end
            for (x = 1; x <= 14; x = x + 1) begin
                if (x >= 6 && x <= 9)
                    rom[{3'd2, frame[0], 4'd5, x[3:0]}] = 4'd3;
                else
                    rom[{3'd2, frame[0], 4'd5, x[3:0]}] = 4'd1;
            end
            // Row 6-8: Shell main body
            for (y = 6; y <= 8; y = y + 1)
                for (x = 1; x <= 14; x = x + 1) 
                    rom[{3'd2, frame[0], y[3:0], x[3:0]}] = 4'd1;
            // Row 9-10: Shell narrowing
            for (x = 2; x <= 13; x = x + 1) 
                rom[{3'd2, frame[0], 4'd9, x[3:0]}] = 4'd1;
            for (x = 3; x <= 12; x = x + 1) 
                rom[{3'd2, frame[0], 4'd10, x[3:0]}] = 4'd1;
            // Row 11-12: Shell bottom
            for (x = 4; x <= 11; x = x + 1) 
                rom[{3'd2, frame[0], 4'd11, x[3:0]}] = 4'd5;  // Dark bottom
            for (x = 5; x <= 10; x = x + 1) 
                rom[{3'd2, frame[0], 4'd12, x[3:0]}] = 4'd5;
        end
        
        // 
        for (frame = 0; frame < 2; frame = frame + 1) begin
            // Spikes on top (yellow)
            rom[{3'd3, frame[0], 4'd0, 4'd2}] = 4'd2;
            rom[{3'd3, frame[0], 4'd0, 4'd7}] = 4'd2;
            rom[{3'd3, frame[0], 4'd0, 4'd8}] = 4'd2;
            rom[{3'd3, frame[0], 4'd0, 4'd13}] = 4'd2;
            rom[{3'd3, frame[0], 4'd1, 4'd2}] = 4'd2;
            rom[{3'd3, frame[0], 4'd1, 4'd3}] = 4'd2;
            rom[{3'd3, frame[0], 4'd1, 4'd7}] = 4'd2;
            rom[{3'd3, frame[0], 4'd1, 4'd8}] = 4'd2;
            rom[{3'd3, frame[0], 4'd1, 4'd12}] = 4'd2;
            rom[{3'd3, frame[0], 4'd1, 4'd13}] = 4'd2;
            // Row 2-3: Spike rows
            for (y = 2; y <= 3; y = y + 1) begin
                for (x = 1; x <= 4; x = x + 1) 
                    rom[{3'd3, frame[0], y[3:0], x[3:0]}] = 4'd2;
                for (x = 6; x <= 9; x = x + 1) 
                    rom[{3'd3, frame[0], y[3:0], x[3:0]}] = 4'd2;
                for (x = 11; x <= 14; x = x + 1) 
                    rom[{3'd3, frame[0], y[3:0], x[3:0]}] = 4'd2;
            end
            // Row 4-5: Red body starts
            for (x = 2; x <= 13; x = x + 1) 
                rom[{3'd3, frame[0], 4'd4, x[3:0]}] = 4'd1;
            for (x = 1; x <= 14; x = x + 1) 
                rom[{3'd3, frame[0], 4'd5, x[3:0]}] = 4'd1;
            // Row 6-7: Eyes on red body
            for (x = 1; x <= 14; x = x + 1) begin
                if ((x >= 3 && x <= 5) || (x >= 10 && x <= 12))
                    rom[{3'd3, frame[0], 4'd6, x[3:0]}] = 4'd3;  // White eyes
                else
                    rom[{3'd3, frame[0], 4'd6, x[3:0]}] = 4'd1;
            end
            for (x = 1; x <= 14; x = x + 1) begin
                if (x == 4 || x == 11)
                    rom[{3'd3, frame[0], 4'd7, x[3:0]}] = 4'd4;  // Black pupils
                else if ((x >= 3 && x <= 5) || (x >= 10 && x <= 12))
                    rom[{3'd3, frame[0], 4'd7, x[3:0]}] = 4'd3;
                else
                    rom[{3'd3, frame[0], 4'd7, x[3:0]}] = 4'd1;
            end
            // Row 8-11: Red body
            for (y = 8; y <= 9; y = y + 1)
                for (x = 1; x <= 14; x = x + 1) 
                    rom[{3'd3, frame[0], y[3:0], x[3:0]}] = 4'd1;
            for (x = 2; x <= 13; x = x + 1) 
                rom[{3'd3, frame[0], 4'd10, x[3:0]}] = 4'd1;
            for (x = 3; x <= 12; x = x + 1) 
                rom[{3'd3, frame[0], 4'd11, x[3:0]}] = 4'd1;
            // Row 12-14: Dark red feet
            for (y = 12; y <= 14; y = y + 1) begin
                for (x = 1; x <= 5; x = x + 1) 
                    rom[{3'd3, frame[0], y[3:0], x[3:0]}] = 4'd4;
                for (x = 10; x <= 14; x = x + 1) 
                    rom[{3'd3, frame[0], y[3:0], x[3:0]}] = 4'd4;
            end
        end
        
        // 
        for (frame = 0; frame < 2; frame = frame + 1) begin
            // Row 0-1: Top spikes
            for (x = 2; x <= 4; x = x + 1) 
                rom[{3'd4, frame[0], 4'd0, x[3:0]}] = 4'd1;
            for (x = 7; x <= 8; x = x + 1) 
                rom[{3'd4, frame[0], 4'd0, x[3:0]}] = 4'd1;
            for (x = 11; x <= 13; x = x + 1) 
                rom[{3'd4, frame[0], 4'd0, x[3:0]}] = 4'd1;
            for (x = 1; x <= 14; x = x + 1) 
                rom[{3'd4, frame[0], 4'd1, x[3:0]}] = 4'd1;
            // Row 2-3: Body top
            for (y = 2; y <= 3; y = y + 1)
                for (x = 1; x <= 14; x = x + 1) 
                    rom[{3'd4, frame[0], y[3:0], x[3:0]}] = 4'd1;
            // Row 4-5: Eyes row
            for (x = 1; x <= 14; x = x + 1) begin
                if ((x >= 3 && x <= 5) || (x >= 10 && x <= 12))
                    rom[{3'd4, frame[0], 4'd4, x[3:0]}] = 4'd3;  // White eyes
                else
                    rom[{3'd4, frame[0], 4'd4, x[3:0]}] = 4'd1;
            end
            for (x = 1; x <= 14; x = x + 1) begin
                if (x == 4 || x == 11)
                    rom[{3'd4, frame[0], 4'd5, x[3:0]}] = 4'd4;  // Black pupils
                else if ((x >= 3 && x <= 5) || (x >= 10 && x <= 12))
                    rom[{3'd4, frame[0], 4'd5, x[3:0]}] = 4'd3;
                else
                    rom[{3'd4, frame[0], 4'd5, x[3:0]}] = 4'd1;
            end
            // Row 6: Angry eyebrows
            for (x = 1; x <= 14; x = x + 1) begin
                if ((x >= 2 && x <= 6) || (x >= 9 && x <= 13))
                    rom[{3'd4, frame[0], 4'd6, x[3:0]}] = 4'd4;  // Dark eyebrows
                else
                    rom[{3'd4, frame[0], 4'd6, x[3:0]}] = 4'd1;
            end
            // Row 7-9: Body with stripe
            for (x = 1; x <= 14; x = x + 1) 
                rom[{3'd4, frame[0], 4'd7, x[3:0]}] = 4'd1;
            for (y = 8; y <= 9; y = y + 1)
                for (x = 1; x <= 14; x = x + 1) 
                    rom[{3'd4, frame[0], y[3:0], x[3:0]}] = 4'd2;  // Light stripe
            // Row 10-11: Body
            for (y = 10; y <= 11; y = y + 1)
                for (x = 1; x <= 14; x = x + 1) 
                    rom[{3'd4, frame[0], y[3:0], x[3:0]}] = 4'd1;
            // Row 12-13: Bottom narrowing
            for (x = 2; x <= 13; x = x + 1) 
                rom[{3'd4, frame[0], 4'd12, x[3:0]}] = 4'd1;
            for (x = 3; x <= 12; x = x + 1) 
                rom[{3'd4, frame[0], 4'd13, x[3:0]}] = 4'd1;
            // Row 14-15: Bottom spikes
            for (x = 2; x <= 4; x = x + 1) 
                rom[{3'd4, frame[0], 4'd14, x[3:0]}] = 4'd1;
            for (x = 7; x <= 8; x = x + 1) 
                rom[{3'd4, frame[0], 4'd14, x[3:0]}] = 4'd1;
            for (x = 11; x <= 13; x = x + 1) 
                rom[{3'd4, frame[0], 4'd14, x[3:0]}] = 4'd1;
            for (x = 3; x <= 3; x = x + 1) 
                rom[{3'd4, frame[0], 4'd15, x[3:0]}] = 4'd1;
            for (x = 7; x <= 8; x = x + 1) 
                rom[{3'd4, frame[0], 4'd15, x[3:0]}] = 4'd1;
            for (x = 12; x <= 12; x = x + 1) 
                rom[{3'd4, frame[0], 4'd15, x[3:0]}] = 4'd1;
        end
        
        for (frame = 0; frame < 2; frame = frame + 1) begin
            // Wings first (so body draws over them where needed)
            if (frame == 0) begin
                // Wings up
                for (y = 0; y <= 3; y = y + 1) begin
                    for (x = 0; x <= 2; x = x + 1) 
                        rom[{3'd5, 1'b0, y[3:0], x[3:0]}] = 4'd4;  // White wings
                    for (x = 13; x <= 15; x = x + 1) 
                        rom[{3'd5, 1'b0, y[3:0], x[3:0]}] = 4'd4;
                end
            end else begin
                // Wings down
                for (y = 6; y <= 9; y = y + 1) begin
                    for (x = 0; x <= 1; x = x + 1) 
                        rom[{3'd5, 1'b1, y[3:0], x[3:0]}] = 4'd4;
                    for (x = 14; x <= 15; x = x + 1) 
                        rom[{3'd5, 1'b1, y[3:0], x[3:0]}] = 4'd4;
                end
            end
            
            // Orange body (similar to goomba)
            for (x = 5; x <= 10; x = x + 1) 
                rom[{3'd5, frame[0], 4'd2, x[3:0]}] = 4'd1;
            for (x = 3; x <= 12; x = x + 1) 
                rom[{3'd5, frame[0], 4'd3, x[3:0]}] = 4'd1;
            for (x = 2; x <= 13; x = x + 1) 
                rom[{3'd5, frame[0], 4'd4, x[3:0]}] = 4'd1;
            // Eyes
            for (x = 2; x <= 13; x = x + 1) begin
                if ((x >= 4 && x <= 5) || (x >= 10 && x <= 11))
                    rom[{3'd5, frame[0], 4'd5, x[3:0]}] = 4'd3;  // White eyes
                else
                    rom[{3'd5, frame[0], 4'd5, x[3:0]}] = 4'd1;
            end
            for (x = 2; x <= 13; x = x + 1) 
                rom[{3'd5, frame[0], 4'd6, x[3:0]}] = 4'd1;
            // Tan face
            for (y = 7; y <= 9; y = y + 1)
                for (x = 3; x <= 12; x = x + 1) 
                    rom[{3'd5, frame[0], y[3:0], x[3:0]}] = 4'd2;
            // Feet
            for (y = 10; y <= 11; y = y + 1) begin
                for (x = 2; x <= 5; x = x + 1) 
                    rom[{3'd5, frame[0], y[3:0], x[3:0]}] = 4'd5;
                for (x = 10; x <= 13; x = x + 1) 
                    rom[{3'd5, frame[0], y[3:0], x[3:0]}] = 4'd5;
            end
            for (x = 3; x <= 4; x = x + 1) 
                rom[{3'd5, frame[0], 4'd12, x[3:0]}] = 4'd5;
            for (x = 11; x <= 12; x = x + 1) 
                rom[{3'd5, frame[0], 4'd12, x[3:0]}] = 4'd5;
        end
    end
    
    always @(posedge clk) begin
        data <= rom[addr];
    end
endmodule


module tile_sprite_rom (
    input  wire        clk,
    input  wire [10:0] addr,
    output reg  [3:0]  data
);
    (* ram_style = "block" *) reg [3:0] rom [0:2047];
    
    initial begin
        integer x, y;
        // Initialize all to transparent
        for (integer i = 0; i < 2048; i = i + 1) rom[i] = 4'd0;
        
        // Grass top (rows 0-1)
        for (y = 0; y <= 1; y = y + 1)
            for (x = 0; x < 16; x = x + 1) 
                rom[{3'd1, y[3:0], x[3:0]}] = 4'd3;  // Green
        // Brown brick below
        for (y = 2; y < 16; y = y + 1) begin
            for (x = 0; x < 16; x = x + 1) begin
                // Horizontal mortar lines
                if (y == 2 || y == 6 || y == 10 || y == 14)
                    rom[{3'd1, y[3:0], x[3:0]}] = 4'd2;  // Dark grout
                // Vertical mortar (staggered)
                else if ((y >= 3 && y <= 5 && (x == 0 || x == 8)) ||
                         (y >= 7 && y <= 9 && (x == 4 || x == 12)) ||
                         (y >= 11 && y <= 13 && (x == 0 || x == 8)))
                    rom[{3'd1, y[3:0], x[3:0]}] = 4'd2;
                else
                    rom[{3'd1, y[3:0], x[3:0]}] = 4'd1;  // Brown brick
            end
        end
        
        // 
        for (y = 0; y < 16; y = y + 1) begin
            for (x = 0; x < 16; x = x + 1) begin
                // Horizontal mortar
                if (y == 0 || y == 8)
                    rom[{3'd2, y[3:0], x[3:0]}] = 4'd2;
                // Vertical mortar (staggered)
                else if ((y < 8 && (x == 0 || x == 8)) || (y >= 8 && (x == 4 || x == 12)))
                    rom[{3'd2, y[3:0], x[3:0]}] = 4'd2;
                else
                    rom[{3'd2, y[3:0], x[3:0]}] = 4'd1;
            end
        end
        
        // 
        for (y = 0; y < 16; y = y + 1) begin
            for (x = 0; x < 16; x = x + 1) begin
                // Border
                if (x == 0 || x == 15 || y == 0 || y == 15)
                    rom[{3'd3, y[3:0], x[3:0]}] = 4'd2;  // Dark orange border
                // Inner highlight (top-left)
                else if ((x == 1 && y >= 1 && y <= 14) || (y == 1 && x >= 1 && x <= 14))
                    rom[{3'd3, y[3:0], x[3:0]}] = 4'd3;  // Light orange highlight
                // Inner shadow (bottom-right)
                else if ((x == 14 && y >= 1 && y <= 14) || (y == 14 && x >= 1 && x <= 14))
                    rom[{3'd3, y[3:0], x[3:0]}] = 4'd5;  // Shadow
                else
                    rom[{3'd3, y[3:0], x[3:0]}] = 4'd1;  // Orange fill
            end
        end
        // Question mark in center
        for (x = 6; x <= 9; x = x + 1) rom[{3'd3, 4'd4, x[3:0]}] = 4'd4;
        for (x = 6; x <= 9; x = x + 1) rom[{3'd3, 4'd5, x[3:0]}] = 4'd4;
        for (x = 8; x <= 9; x = x + 1) rom[{3'd3, 4'd6, x[3:0]}] = 4'd4;
        for (x = 7; x <= 8; x = x + 1) rom[{3'd3, 4'd7, x[3:0]}] = 4'd4;
        for (x = 7; x <= 8; x = x + 1) rom[{3'd3, 4'd8, x[3:0]}] = 4'd4;
        // Dot below
        for (x = 7; x <= 8; x = x + 1) rom[{3'd3, 4'd10, x[3:0]}] = 4'd4;
        for (x = 7; x <= 8; x = x + 1) rom[{3'd3, 4'd11, x[3:0]}] = 4'd4;
        
        // 
        for (y = 0; y < 16; y = y + 1) begin
            for (x = 0; x < 16; x = x + 1) begin
                if (y < 4) begin
                    // Lip (wider top)
                    if (x >= 1 && x <= 14) begin
                        if (x <= 3) 
                            rom[{3'd4, y[3:0], x[3:0]}] = 4'd3;  // Light green highlight
                        else if (x >= 12) 
                            rom[{3'd4, y[3:0], x[3:0]}] = 4'd2;  // Dark green shadow
                        else 
                            rom[{3'd4, y[3:0], x[3:0]}] = 4'd1;  // Green
                    end
                end else begin
                    // Body 
                    if (x >= 3 && x <= 12) begin
                        if (x <= 4) 
                            rom[{3'd4, y[3:0], x[3:0]}] = 4'd3;  // Light
                        else if (x >= 11) 
                            rom[{3'd4, y[3:0], x[3:0]}] = 4'd2;  // Dark
                        else 
                            rom[{3'd4, y[3:0], x[3:0]}] = 4'd1;  // Green
                    end
                end
            end
        end
        
        // 
        for (y = 0; y < 16; y = y + 1) begin
            for (x = 0; x < 16; x = x + 1) begin
                // Grid pattern for stone
                if (y == 0 || y == 8 || (y < 8 && (x == 0 || x == 8)) || (y >= 8 && (x == 4 || x == 12)))
                    rom[{3'd5, y[3:0], x[3:0]}] = 4'd5;  // Dark lines
                else
                    rom[{3'd5, y[3:0], x[3:0]}] = 4'd6;  // Stone color
            end
        end
        
        // 
        for (y = 0; y < 16; y = y + 1) begin
            // Pole in center
            for (x = 6; x <= 9; x = x + 1) 
                rom[{3'd6, y[3:0], x[3:0]}] = 4'd7;  // Gray pole
            // Highlight on left
            rom[{3'd6, y[3:0], 4'd6}] = 4'd8;  // Light gray
        end
        // Ball on top (first few rows)
        for (y = 0; y <= 3; y = y + 1)
            for (x = 5; x <= 10; x = x + 1) 
                rom[{3'd6, y[3:0], x[3:0]}] = 4'd9;  // Gold ball
    end
    
    always @(posedge clk) begin
        data <= rom[addr];
    end
endmodule


module color_palette_rom (
    input  wire        clk,
    input  wire [6:0]  addr,
    output reg  [23:0] rgb
);
    (* ram_style = "block" *) reg [23:0] rom [0:127];
    
    initial begin
        // Initialize all to transparent/black
        for (integer i = 0; i < 128; i = i + 1) rom[i] = 24'h000000;
        
        // 
        rom[{3'd0, 4'd0}] = 24'h000000;  // 0: Transparent
        rom[{3'd0, 4'd1}] = 24'hE82828;  // 1: Red (hat/shirt)
        rom[{3'd0, 4'd2}] = 24'hFFC888;  // 2: Skin tone
        rom[{3'd0, 4'd3}] = 24'h683808;  // 3: Hair (brown)
        rom[{3'd0, 4'd4}] = 24'h2828E8;  // 4: Blue (overalls)
        rom[{3'd0, 4'd5}] = 24'h884808;  // 5: Shoes (brown)
        rom[{3'd0, 4'd6}] = 24'hFFD700;  // 6: Gold (buttons)
        
        //
        rom[{3'd1, 4'd0}] = 24'h000000;  // 0: Transparent
        rom[{3'd1, 4'd1}] = 24'h28E828;  // 1: Green (hat/shirt)
        rom[{3'd1, 4'd2}] = 24'hFFC888;  // 2: Skin tone
        rom[{3'd1, 4'd3}] = 24'h683808;  // 3: Hair (brown)
        rom[{3'd1, 4'd4}] = 24'h2828E8;  // 4: Blue (overalls)
        rom[{3'd1, 4'd5}] = 24'h884808;  // 5: Shoes (brown)
        rom[{3'd1, 4'd6}] = 24'hFFD700;  // 6: Gold (buttons)
        
        // 
        // Used by enemy_sprite_rom type 0 (goomba)
        rom[{3'd2, 4'd0}] = 24'h000000;  // 0: Transparent
        rom[{3'd2, 4'd1}] = 24'hA05010;  // 1: Brown (body/cap)
        rom[{3'd2, 4'd2}] = 24'hF0C898;  // 2: Tan (face)
        rom[{3'd2, 4'd3}] = 24'hFFFFFF;  // 3: White (eyes)
        rom[{3'd2, 4'd4}] = 24'h201000;  // 4: Black (pupils/mouth)
        rom[{3'd2, 4'd5}] = 24'h603010;  // 5: Dark brown (feet)
        
        // 
        // Used by enemy_sprite_rom types 1,2 (koopa walk/shell)
        rom[{3'd3, 4'd0}] = 24'h000000;  // 0: Transparent
        rom[{3'd3, 4'd1}] = 24'h00A800;  // 1: Green (shell)
        rom[{3'd3, 4'd2}] = 24'hF8D870;  // 2: Yellow/tan (head)
        rom[{3'd3, 4'd3}] = 24'h58F858;  // 3: Light green (shell stripe)
        rom[{3'd3, 4'd4}] = 24'h000000;  // 4: Black (eyes)
        rom[{3'd3, 4'd5}] = 24'h005800;  // 5: Dark green (shell edge)
        rom[{3'd3, 4'd6}] = 24'hE86818;  // 6: Orange (feet)
        
        // 
        // Used by enemy_sprite_rom type 3 (spiny)
        rom[{3'd4, 4'd0}] = 24'h000000;  // 0: Transparent
        rom[{3'd4, 4'd1}] = 24'hE03020;  // 1: Red (body)
        rom[{3'd4, 4'd2}] = 24'hFFFF60;  // 2: Yellow (spikes)
        rom[{3'd4, 4'd3}] = 24'hFFFFFF;  // 3: White (eyes)
        rom[{3'd4, 4'd4}] = 24'h801010;  // 4: Dark red (feet/pupils)
        
        // 
        // Used by enemy_sprite_rom type 4 (blocker)
        rom[{3'd5, 4'd0}] = 24'h000000;  // 0: Transparent
        rom[{3'd5, 4'd1}] = 24'h6068A8;  // 1: Blue-gray (body)
        rom[{3'd5, 4'd2}] = 24'h9098D0;  // 2: Light blue stripe
        rom[{3'd5, 4'd3}] = 24'hFFFFFF;  // 3: White (eyes)
        rom[{3'd5, 4'd4}] = 24'h202040;  // 4: Dark (pupils/eyebrows)
        
        // 
        // Used by enemy_sprite_rom type 5 (flying)
        rom[{3'd6, 4'd0}] = 24'h000000;  // 0: Transparent
        rom[{3'd6, 4'd1}] = 24'hE86828;  // 1: Orange (body)
        rom[{3'd6, 4'd2}] = 24'hF8C888;  // 2: Tan (face)
        rom[{3'd6, 4'd3}] = 24'hFFFFFF;  // 3: White (eyes)
        rom[{3'd6, 4'd4}] = 24'hFFFFFF;  // 4: White (wings)
        rom[{3'd6, 4'd5}] = 24'h884808;  // 5: Brown (feet)
        
        //
        // Used by tile_sprite_rom
        rom[{3'd7, 4'd0}] = 24'h000000;  // 0: Transparent
        rom[{3'd7, 4'd1}] = 24'hC84810;  // 1: Brown (brick)
        rom[{3'd7, 4'd2}] = 24'h803000;  // 2: Dark brown (grout)
        rom[{3'd7, 4'd3}] = 24'h00B800;  // 3: Green (grass/pipe highlight)
        rom[{3'd7, 4'd4}] = 24'hFFFFFF;  // 4: White (Q-mark)
        rom[{3'd7, 4'd5}] = 24'h503010;  // 5: Shadow/dark
        rom[{3'd7, 4'd6}] = 24'h908060;  // 6: Stone color
        rom[{3'd7, 4'd7}] = 24'h707070;  // 7: Gray (flagpole)
        rom[{3'd7, 4'd8}] = 24'hA0A0A0;  // 8: Light gray
        rom[{3'd7, 4'd9}] = 24'hFFD700;  // 9: Gold (flag ball)
    end
    
    always @(posedge clk) begin
        rgb <= rom[addr];
    end
endmodule