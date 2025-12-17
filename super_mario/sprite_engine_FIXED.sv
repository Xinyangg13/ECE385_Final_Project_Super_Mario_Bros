`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// ECE385 Final Project: Super Mario Bros - FPGA Edition
// Authors: Chen Zeng, Xinyang Liu
// University of Illinois Urbana-Champaign
// All Rights Reserved
//////////////////////////////////////////////////////////////////////////////////

module sprite_engine_simple (
    input wire clk,
    input wire reset,
    input wire [9:0] DrawX,
    input wire [9:0] DrawY,
    input wire [31:0] keycode,
    input wire [31:0] keycode2,
    output reg [7:0] Red,
    output reg [7:0] Green,
    output reg [7:0] Blue
);

    // ===========================================
    // GAME PARAMETERS
    // ===========================================
    localparam GROUND_Y = 416;
    localparam MARIO_W = 16;
    localparam MARIO_H = 24;
    localparam MARIO_H_SQUAT = 14;
    localparam ENEMY_SIZE = 16;
    localparam MOVE_SPEED = 3;
    localparam JUMP_VELOCITY = 14;
    localparam MAX_FALL = 8;
    localparam GRAVITY = 1;
    localparam MAX_PLAYER_DISTANCE = 500;
    
    // Level lengths
    wire [12:0] level_end_x;
    assign level_end_x = (current_level == 0) ? 13'd2800 :
                         (current_level == 1) ? 13'd3500 :
                         (current_level == 2) ? 13'd4200 :
                         (current_level == 3) ? 13'd5000 : 13'd5500;
    
    // Game States
    localparam STATE_TITLE = 3'd0;
    localparam STATE_PLAYERSEL = 3'd1;
    localparam STATE_INSTRUCTIONS = 3'd2;
    localparam STATE_PLAYING = 3'd3;
    localparam STATE_GAMEOVER = 3'd4;
    localparam STATE_WIN = 3'd5;
    localparam STATE_LEVELCLEAR = 3'd6;
    localparam STATE_PAUSED = 3'd7;
    
    // Keycodes
    localparam KEY_W = 8'h1A, KEY_A = 8'h04, KEY_D = 8'h07, KEY_S = 8'h16;
    localparam KEY_SPACE = 8'h2C, KEY_UP = 8'h52, KEY_LEFT = 8'h50;
    localparam KEY_RIGHT = 8'h4F, KEY_DOWN = 8'h51, KEY_ENTER = 8'h28;
    localparam KEY_R = 8'h15, KEY_P = 8'h13, KEY_Q = 8'h14;
    localparam KEY_1 = 8'h1E, KEY_2 = 8'h1F;
    localparam KEY_I = 8'h0C, KEY_L = 8'h0F, KEY_N = 8'h11, KEY_K = 8'h0E;

    // VSync timing
    reg frame_tick;
    reg prev_vblank;
    wire vblank = (DrawY >= 480);
    
    always @(posedge clk) begin
        prev_vblank <= vblank;
        frame_tick <= (vblank && !prev_vblank);
    end
    
    reg [5:0] time_tick;
    reg [7:0] anim_counter;

    // ===========================================
    // SPRITE DATA FUNCTIONS
    // ===========================================
    function [2:0] get_mario_pixel;
        input [3:0] x;
        input [4:0] y;
        reg [2:0] col;
        begin
            col = 3'd0;
            if (y == 0 && x >= 4 && x < 11) col = 3'd1;
            else if (y == 1 && x >= 3 && x < 12) col = 3'd1;
            else if (y == 2 && x >= 2 && x < 13) col = 3'd1;
            else if (y == 3) begin
                if (x >= 2 && x < 5) col = 3'd5;
                if (x >= 5 && x < 11) col = 3'd2;
                if (x >= 11 && x < 14) col = 3'd5;
            end
            else if (y >= 4 && y < 8) begin
                if (x >= 3 && x < 13) col = 3'd2;
                if (y == 5 && x >= 4 && x < 6) col = 3'd3;
                if (y == 5 && x >= 9 && x < 11) col = 3'd3;
                if (y == 6 && x >= 6 && x < 9) col = 3'd2;
                if (y == 6 && x == 7) col = 3'd5;
                if (y == 7 && x >= 4 && x < 12) col = 3'd5;
            end
            else if (y == 8 && x >= 5 && x < 11) col = 3'd2;
            else if (y >= 9 && y < 16) begin
                if (x >= 4 && x < 12) col = 3'd4;
                if (y == 11 && (x == 6 || x == 9)) col = 3'd6;
                if (y >= 9 && y < 12 && (x == 4 || x == 11)) col = 3'd1;
            end
            else if (y >= 10 && y < 14) begin
                if (x >= 2 && x < 4) col = 3'd1;
                if (x >= 12 && x < 14) col = 3'd1;
            end
            else if (y == 14) begin
                if (x >= 1 && x < 4) col = 3'd2;
                if (x >= 12 && x < 15) col = 3'd2;
            end
            else if (y >= 16 && y < 20) begin
                if (x >= 4 && x < 7) col = 3'd4;
                if (x >= 9 && x < 12) col = 3'd4;
            end
            else if (y >= 20 && y < 24) begin
                if (x >= 3 && x < 8) col = 3'd5;
                if (x >= 8 && x < 13) col = 3'd5;
            end
            get_mario_pixel = col;
        end
    endfunction
    
    function [2:0] get_mario_squat_pixel;
        input [3:0] x;
        input [3:0] y;
        reg [2:0] col;
        begin
            col = 3'd0;
            if (y == 0 && x >= 3 && x < 12) col = 3'd1;
            if (y == 1 && x >= 2 && x < 13) col = 3'd1;
            if (y >= 2 && y < 5) begin
                if (x >= 3 && x < 13) col = 3'd2;
                if (y == 3 && x >= 4 && x < 6) col = 3'd3;
                if (y == 3 && x >= 9 && x < 11) col = 3'd3;
                if (y == 4 && x >= 4 && x < 12) col = 3'd5;
            end
            if (y >= 5 && y < 9) begin
                if (x >= 4 && x < 12) col = 3'd4;
                if (x >= 1 && x < 4) col = 3'd1;
                if (x >= 12 && x < 15) col = 3'd1;
            end
            if (y >= 9 && y < 12) begin
                if (x >= 2 && x < 6) col = 3'd4;
                if (x >= 10 && x < 14) col = 3'd4;
            end
            if (y >= 12 && y < 14) begin
                if (x >= 1 && x < 6) col = 3'd5;
                if (x >= 10 && x < 15) col = 3'd5;
            end
            get_mario_squat_pixel = col;
        end
    endfunction
    
    function [2:0] get_goomba_pixel;
        input [3:0] x, y;
        reg [2:0] col;
        begin
            col = 3'd0;
            if (y < 8) begin
                if ((y == 0 && x >= 5 && x < 11) || (y == 1 && x >= 3 && x < 13) ||
                    (y >= 2 && y < 7 && x >= 2 && x < 14) || (y == 7 && x >= 3 && x < 13)) col = 3'd1;
                if (y == 5 && x >= 3 && x < 6) col = 3'd3;
                if (y == 5 && x >= 10 && x < 13) col = 3'd3;
                if (y >= 6 && y < 8 && x >= 4 && x < 6) col = 3'd2;
                if (y >= 6 && y < 8 && x >= 10 && x < 12) col = 3'd2;
                if (y == 6 && (x == 4 || x == 10)) col = 3'd3;
            end
            else if (y >= 8 && y < 12) begin
                if (x >= 4 && x < 12) col = 3'd2;
                if (y == 10 && x >= 6 && x < 10) col = 3'd3;
            end
            else if (y >= 12 && y < 16) begin
                if (x >= 2 && x < 7) col = 3'd1;
                if (x >= 9 && x < 14) col = 3'd1;
            end
            get_goomba_pixel = col;
        end
    endfunction
    
    function [2:0] get_koopa_pixel;
        input [3:0] x;
        input [4:0] y;
        reg [2:0] col;
        begin
            col = 3'd0;
            if (y < 7) begin
                if ((y == 0 && x >= 8 && x < 12) || (y >= 1 && y < 5 && x >= 7 && x < 13) ||
                    (y >= 5 && x >= 8 && x < 12)) col = 3'd1;
                if (y >= 2 && y < 4 && x >= 9 && x < 11) col = 3'd3;
            end
            else if (y >= 7 && y < 19) begin
                if ((y == 7 && x >= 4 && x < 12) || (y >= 8 && y < 17 && x >= 3 && x < 13) ||
                    (y >= 17 && x >= 4 && x < 12)) col = 3'd1;
                if (y >= 9 && y < 16 && x >= 5 && x < 11) col = 3'd2;
            end
            else if (y >= 19 && ((x >= 3 && x < 7) || (x >= 9 && x < 13))) col = 3'd4;
            get_koopa_pixel = col;
        end
    endfunction
    
    function [2:0] get_shell_pixel;
        input [3:0] x, y;
        reg [2:0] col;
        begin
            col = 3'd0;
            if (y >= 2 && y < 14) begin
                if ((y == 2 && x >= 4 && x < 12) || (y >= 3 && y < 13 && x >= 2 && x < 14) ||
                    (y == 13 && x >= 4 && x < 12)) col = 3'd1;
                if (y >= 5 && y < 11 && x >= 5 && x < 11) col = 3'd2;
            end
            get_shell_pixel = col;
        end
    endfunction
    
    function [2:0] get_spiny_pixel;
        input [3:0] x, y;
        reg [2:0] col;
        begin
            col = 3'd0;
            if (y < 5) begin
                if (y == 0 && (x == 2 || x == 7 || x == 13)) col = 3'd4;
                else if (y == 1 && (x == 2 || x == 3 || x == 6 || x == 7 || x == 8 || x == 12 || x == 13)) col = 3'd4;
                else if (y >= 2 && x >= 2 && x < 14) col = (x == 4 || x == 9) ? 3'd4 : 3'd1;
                if (y >= 3 && x >= 3 && x < 13) col = 3'd1;
            end
            else if (y >= 5 && y < 12) begin
                if (x >= 2 && x < 14) col = 3'd1;
                if (y >= 6 && y < 9 && ((x >= 3 && x < 6) || (x >= 10 && x < 13))) col = 3'd2;
                if (y == 7 && (x == 4 || x == 11)) col = 3'd3;
            end
            else begin
                if (y == 12 && x >= 3 && x < 13) col = 3'd1;
                if (y >= 13 && ((x >= 2 && x < 7) || (x >= 9 && x < 14))) col = 3'd5;
            end
            get_spiny_pixel = col;
        end
    endfunction
    
    function [2:0] get_blocker_pixel;
        input [3:0] x, y;
        reg [2:0] col;
        begin
            col = 3'd0;
            if (y >= 2 && y < 14 && x >= 2 && x < 14) begin
                col = 3'd1;
                if (y >= 5 && y < 9 && ((x >= 3 && x < 6) || (x >= 10 && x < 13))) col = 3'd2;
                if (y == 6 && (x == 4 || x == 11)) col = 3'd3;
                if (y >= 10 && y < 12 && x >= 6 && x < 10) col = 3'd3;
            end
            get_blocker_pixel = col;
        end
    endfunction
    
    function [2:0] get_flying_pixel;
        input [3:0] x, y;
        reg [2:0] col;
        begin
            col = 3'd0;
            if (x < 4 && y >= 3 && y < 9) col = 3'd2;
            if (x >= 12 && y >= 3 && y < 9) col = 3'd2;
            if (x >= 4 && x < 12 && y >= 2 && y < 14) begin
                col = 3'd1;
                if (y >= 5 && y < 8 && (x == 5 || x == 10)) col = 3'd3;
            end
            if (y >= 14 && ((x >= 4 && x < 7) || (x >= 9 && x < 12))) col = 3'd4;
            get_flying_pixel = col;
        end
    endfunction

    // ===========================================
    // COLOR FUNCTIONS
    // ===========================================
    function [23:0] mario_color;
        input [2:0] col_idx;
        input is_luigi;
        begin
            case (col_idx)
                3'd1: mario_color = is_luigi ? 24'h20B020 : 24'hE03030;
                3'd2: mario_color = 24'hFFC8A8;
                3'd3: mario_color = 24'h000000;
                3'd4: mario_color = 24'h2040C0;
                3'd5: mario_color = 24'h804020;
                3'd6: mario_color = 24'hFFFF00;
                default: mario_color = 24'h000000;
            endcase
        end
    endfunction
    
    function [23:0] goomba_color;
        input [2:0] col_idx;
        begin
            case (col_idx)
                3'd1: goomba_color = 24'h8B4513;
                3'd2: goomba_color = 24'hDEB887;
                3'd3: goomba_color = 24'h000000;
                default: goomba_color = 24'h000000;
            endcase
        end
    endfunction
    
    function [23:0] koopa_color;
        input [2:0] col_idx;
        begin
            case (col_idx)
                3'd1: koopa_color = 24'h00A000;
                3'd2: koopa_color = 24'h90EE90;
                3'd3: koopa_color = 24'h000000;
                3'd4: koopa_color = 24'hFFD700;
                default: koopa_color = 24'h000000;
            endcase
        end
    endfunction
    
    function [23:0] spiny_color;
        input [2:0] col_idx;
        begin
            case (col_idx)
                3'd1: spiny_color = 24'hC00000;
                3'd2: spiny_color = 24'hFFAAAA;
                3'd3: spiny_color = 24'h000000;
                3'd4: spiny_color = 24'hFFFFFF;
                3'd5: spiny_color = 24'h800000;
                default: spiny_color = 24'h000000;
            endcase
        end
    endfunction
    
    function [23:0] blocker_color;
        input [2:0] col_idx;
        begin
            case (col_idx)
                3'd1: blocker_color = 24'h8000C0;
                3'd2: blocker_color = 24'hFFFFFF;
                3'd3: blocker_color = 24'h000000;
                default: blocker_color = 24'h000000;
            endcase
        end
    endfunction
    
    function [23:0] flying_color;
        input [2:0] col_idx;
        begin
            case (col_idx)
                3'd1: flying_color = 24'hFF8000;
                3'd2: flying_color = 24'hFFFFFF;
                3'd3: flying_color = 24'h000000;
                3'd4: flying_color = 24'hFFD700;
                default: flying_color = 24'h000000;
            endcase
        end
    endfunction

    // ===========================================
    // FONT FUNCTION
    // ===========================================
    function font_pixel;
        input [6:0] char_code;
        input [2:0] px, py;
        reg [7:0] row;
        begin
            row = 8'h00;
            case (char_code)
                7'h30: case(py) 3'd0:row=8'h3C; 3'd1:row=8'h66; 3'd2:row=8'h6E; 3'd3:row=8'h76; 3'd4:row=8'h66; 3'd5:row=8'h66; 3'd6:row=8'h3C; 3'd7:row=8'h00; endcase
                7'h31: case(py) 3'd0:row=8'h18; 3'd1:row=8'h38; 3'd2:row=8'h18; 3'd3:row=8'h18; 3'd4:row=8'h18; 3'd5:row=8'h18; 3'd6:row=8'h7E; 3'd7:row=8'h00; endcase
                7'h32: case(py) 3'd0:row=8'h3C; 3'd1:row=8'h66; 3'd2:row=8'h06; 3'd3:row=8'h0C; 3'd4:row=8'h18; 3'd5:row=8'h30; 3'd6:row=8'h7E; 3'd7:row=8'h00; endcase
                7'h33: case(py) 3'd0:row=8'h3C; 3'd1:row=8'h66; 3'd2:row=8'h06; 3'd3:row=8'h1C; 3'd4:row=8'h06; 3'd5:row=8'h66; 3'd6:row=8'h3C; 3'd7:row=8'h00; endcase
                7'h34: case(py) 3'd0:row=8'h0C; 3'd1:row=8'h1C; 3'd2:row=8'h3C; 3'd3:row=8'h6C; 3'd4:row=8'h7E; 3'd5:row=8'h0C; 3'd6:row=8'h0C; 3'd7:row=8'h00; endcase
                7'h35: case(py) 3'd0:row=8'h7E; 3'd1:row=8'h60; 3'd2:row=8'h7C; 3'd3:row=8'h06; 3'd4:row=8'h06; 3'd5:row=8'h66; 3'd6:row=8'h3C; 3'd7:row=8'h00; endcase
                7'h36: case(py) 3'd0:row=8'h1C; 3'd1:row=8'h30; 3'd2:row=8'h60; 3'd3:row=8'h7C; 3'd4:row=8'h66; 3'd5:row=8'h66; 3'd6:row=8'h3C; 3'd7:row=8'h00; endcase
                7'h37: case(py) 3'd0:row=8'h7E; 3'd1:row=8'h06; 3'd2:row=8'h0C; 3'd3:row=8'h18; 3'd4:row=8'h30; 3'd5:row=8'h30; 3'd6:row=8'h30; 3'd7:row=8'h00; endcase
                7'h38: case(py) 3'd0:row=8'h3C; 3'd1:row=8'h66; 3'd2:row=8'h66; 3'd3:row=8'h3C; 3'd4:row=8'h66; 3'd5:row=8'h66; 3'd6:row=8'h3C; 3'd7:row=8'h00; endcase
                7'h39: case(py) 3'd0:row=8'h3C; 3'd1:row=8'h66; 3'd2:row=8'h66; 3'd3:row=8'h3E; 3'd4:row=8'h06; 3'd5:row=8'h0C; 3'd6:row=8'h38; 3'd7:row=8'h00; endcase
                7'h41: case(py) 3'd0:row=8'h18; 3'd1:row=8'h3C; 3'd2:row=8'h66; 3'd3:row=8'h66; 3'd4:row=8'h7E; 3'd5:row=8'h66; 3'd6:row=8'h66; 3'd7:row=8'h00; endcase
                7'h42: case(py) 3'd0:row=8'h7C; 3'd1:row=8'h66; 3'd2:row=8'h66; 3'd3:row=8'h7C; 3'd4:row=8'h66; 3'd5:row=8'h66; 3'd6:row=8'h7C; 3'd7:row=8'h00; endcase
                7'h43: case(py) 3'd0:row=8'h3C; 3'd1:row=8'h66; 3'd2:row=8'h60; 3'd3:row=8'h60; 3'd4:row=8'h60; 3'd5:row=8'h66; 3'd6:row=8'h3C; 3'd7:row=8'h00; endcase
                7'h44: case(py) 3'd0:row=8'h78; 3'd1:row=8'h6C; 3'd2:row=8'h66; 3'd3:row=8'h66; 3'd4:row=8'h66; 3'd5:row=8'h6C; 3'd6:row=8'h78; 3'd7:row=8'h00; endcase
                7'h45: case(py) 3'd0:row=8'h7E; 3'd1:row=8'h60; 3'd2:row=8'h60; 3'd3:row=8'h7C; 3'd4:row=8'h60; 3'd5:row=8'h60; 3'd6:row=8'h7E; 3'd7:row=8'h00; endcase
                7'h46: case(py) 3'd0:row=8'h7E; 3'd1:row=8'h60; 3'd2:row=8'h60; 3'd3:row=8'h7C; 3'd4:row=8'h60; 3'd5:row=8'h60; 3'd6:row=8'h60; 3'd7:row=8'h00; endcase
                7'h47: case(py) 3'd0:row=8'h3C; 3'd1:row=8'h66; 3'd2:row=8'h60; 3'd3:row=8'h6E; 3'd4:row=8'h66; 3'd5:row=8'h66; 3'd6:row=8'h3E; 3'd7:row=8'h00; endcase
                7'h48: case(py) 3'd0:row=8'h66; 3'd1:row=8'h66; 3'd2:row=8'h66; 3'd3:row=8'h7E; 3'd4:row=8'h66; 3'd5:row=8'h66; 3'd6:row=8'h66; 3'd7:row=8'h00; endcase
                7'h49: case(py) 3'd0:row=8'h3C; 3'd1:row=8'h18; 3'd2:row=8'h18; 3'd3:row=8'h18; 3'd4:row=8'h18; 3'd5:row=8'h18; 3'd6:row=8'h3C; 3'd7:row=8'h00; endcase
                7'h4A: case(py) 3'd0:row=8'h1E; 3'd1:row=8'h0C; 3'd2:row=8'h0C; 3'd3:row=8'h0C; 3'd4:row=8'h6C; 3'd5:row=8'h6C; 3'd6:row=8'h38; 3'd7:row=8'h00; endcase
                7'h4B: case(py) 3'd0:row=8'h66; 3'd1:row=8'h6C; 3'd2:row=8'h78; 3'd3:row=8'h70; 3'd4:row=8'h78; 3'd5:row=8'h6C; 3'd6:row=8'h66; 3'd7:row=8'h00; endcase
                7'h4C: case(py) 3'd0:row=8'h60; 3'd1:row=8'h60; 3'd2:row=8'h60; 3'd3:row=8'h60; 3'd4:row=8'h60; 3'd5:row=8'h60; 3'd6:row=8'h7E; 3'd7:row=8'h00; endcase
                7'h4D: case(py) 3'd0:row=8'h63; 3'd1:row=8'h77; 3'd2:row=8'h7F; 3'd3:row=8'h6B; 3'd4:row=8'h63; 3'd5:row=8'h63; 3'd6:row=8'h63; 3'd7:row=8'h00; endcase
                7'h4E: case(py) 3'd0:row=8'h66; 3'd1:row=8'h76; 3'd2:row=8'h7E; 3'd3:row=8'h7E; 3'd4:row=8'h6E; 3'd5:row=8'h66; 3'd6:row=8'h66; 3'd7:row=8'h00; endcase
                7'h4F: case(py) 3'd0:row=8'h3C; 3'd1:row=8'h66; 3'd2:row=8'h66; 3'd3:row=8'h66; 3'd4:row=8'h66; 3'd5:row=8'h66; 3'd6:row=8'h3C; 3'd7:row=8'h00; endcase
                7'h50: case(py) 3'd0:row=8'h7C; 3'd1:row=8'h66; 3'd2:row=8'h66; 3'd3:row=8'h7C; 3'd4:row=8'h60; 3'd5:row=8'h60; 3'd6:row=8'h60; 3'd7:row=8'h00; endcase
                7'h51: case(py) 3'd0:row=8'h3C; 3'd1:row=8'h66; 3'd2:row=8'h66; 3'd3:row=8'h66; 3'd4:row=8'h6A; 3'd5:row=8'h6C; 3'd6:row=8'h36; 3'd7:row=8'h00; endcase
                7'h52: case(py) 3'd0:row=8'h7C; 3'd1:row=8'h66; 3'd2:row=8'h66; 3'd3:row=8'h7C; 3'd4:row=8'h6C; 3'd5:row=8'h66; 3'd6:row=8'h66; 3'd7:row=8'h00; endcase
                7'h53: case(py) 3'd0:row=8'h3C; 3'd1:row=8'h66; 3'd2:row=8'h60; 3'd3:row=8'h3C; 3'd4:row=8'h06; 3'd5:row=8'h66; 3'd6:row=8'h3C; 3'd7:row=8'h00; endcase
                7'h54: case(py) 3'd0:row=8'h7E; 3'd1:row=8'h18; 3'd2:row=8'h18; 3'd3:row=8'h18; 3'd4:row=8'h18; 3'd5:row=8'h18; 3'd6:row=8'h18; 3'd7:row=8'h00; endcase
                7'h55: case(py) 3'd0:row=8'h66; 3'd1:row=8'h66; 3'd2:row=8'h66; 3'd3:row=8'h66; 3'd4:row=8'h66; 3'd5:row=8'h66; 3'd6:row=8'h3C; 3'd7:row=8'h00; endcase
                7'h56: case(py) 3'd0:row=8'h66; 3'd1:row=8'h66; 3'd2:row=8'h66; 3'd3:row=8'h66; 3'd4:row=8'h66; 3'd5:row=8'h3C; 3'd6:row=8'h18; 3'd7:row=8'h00; endcase
                7'h57: case(py) 3'd0:row=8'h63; 3'd1:row=8'h63; 3'd2:row=8'h63; 3'd3:row=8'h6B; 3'd4:row=8'h7F; 3'd5:row=8'h77; 3'd6:row=8'h63; 3'd7:row=8'h00; endcase
                7'h58: case(py) 3'd0:row=8'h66; 3'd1:row=8'h66; 3'd2:row=8'h3C; 3'd3:row=8'h18; 3'd4:row=8'h3C; 3'd5:row=8'h66; 3'd6:row=8'h66; 3'd7:row=8'h00; endcase
                7'h59: case(py) 3'd0:row=8'h66; 3'd1:row=8'h66; 3'd2:row=8'h66; 3'd3:row=8'h3C; 3'd4:row=8'h18; 3'd5:row=8'h18; 3'd6:row=8'h18; 3'd7:row=8'h00; endcase
                7'h5A: case(py) 3'd0:row=8'h7E; 3'd1:row=8'h06; 3'd2:row=8'h0C; 3'd3:row=8'h18; 3'd4:row=8'h30; 3'd5:row=8'h60; 3'd6:row=8'h7E; 3'd7:row=8'h00; endcase
                7'h3A: case(py) 3'd0:row=8'h00; 3'd1:row=8'h18; 3'd2:row=8'h18; 3'd3:row=8'h00; 3'd4:row=8'h18; 3'd5:row=8'h18; 3'd6:row=8'h00; 3'd7:row=8'h00; endcase
                7'h21: case(py) 3'd0:row=8'h18; 3'd1:row=8'h18; 3'd2:row=8'h18; 3'd3:row=8'h18; 3'd4:row=8'h18; 3'd5:row=8'h00; 3'd6:row=8'h18; 3'd7:row=8'h00; endcase
                7'h2B: case(py) 3'd0:row=8'h00; 3'd1:row=8'h18; 3'd2:row=8'h18; 3'd3:row=8'h7E; 3'd4:row=8'h18; 3'd5:row=8'h18; 3'd6:row=8'h00; 3'd7:row=8'h00; endcase
                7'h2C: case(py) 3'd0:row=8'h00; 3'd1:row=8'h00; 3'd2:row=8'h00; 3'd3:row=8'h00; 3'd4:row=8'h18; 3'd5:row=8'h18; 3'd6:row=8'h30; 3'd7:row=8'h00; endcase
                7'h2D: case(py) 3'd0:row=8'h00; 3'd1:row=8'h00; 3'd2:row=8'h00; 3'd3:row=8'h7E; 3'd4:row=8'h00; 3'd5:row=8'h00; 3'd6:row=8'h00; 3'd7:row=8'h00; endcase
                7'h2E: case(py) 3'd0:row=8'h00; 3'd1:row=8'h00; 3'd2:row=8'h00; 3'd3:row=8'h00; 3'd4:row=8'h00; 3'd5:row=8'h18; 3'd6:row=8'h18; 3'd7:row=8'h00; endcase
                7'h2F: case(py) 3'd0:row=8'h00; 3'd1:row=8'h06; 3'd2:row=8'h0C; 3'd3:row=8'h18; 3'd4:row=8'h30; 3'd5:row=8'h60; 3'd6:row=8'h00; 3'd7:row=8'h00; endcase
                7'h5B: case(py) 3'd0:row=8'h3C; 3'd1:row=8'h30; 3'd2:row=8'h30; 3'd3:row=8'h30; 3'd4:row=8'h30; 3'd5:row=8'h30; 3'd6:row=8'h3C; 3'd7:row=8'h00; endcase
                7'h5D: case(py) 3'd0:row=8'h3C; 3'd1:row=8'h0C; 3'd2:row=8'h0C; 3'd3:row=8'h0C; 3'd4:row=8'h0C; 3'd5:row=8'h0C; 3'd6:row=8'h3C; 3'd7:row=8'h00; endcase
                7'h26: case(py) 3'd0:row=8'h38; 3'd1:row=8'h6C; 3'd2:row=8'h38; 3'd3:row=8'h76; 3'd4:row=8'hDC; 3'd5:row=8'hCC; 3'd6:row=8'h76; 3'd7:row=8'h00; endcase
                default: row = 8'h00;
            endcase
            font_pixel = row[3'd7 - px];
        end
    endfunction
    
    function [6:0] d2c;
        input [3:0] d;
        d2c = 7'h30 + d;
    endfunction

    // ===========================================
    // GAME STATE REGISTERS
    // ===========================================
    reg [2:0] game_state;
    reg [2:0] current_level;
    reg two_player_mode;
    reg [31:0] score;
    reg [15:0] time_left;
    reg [7:0] startup_delay;
    
    // Mario state
    reg [12:0] mario_x;
    reg signed [10:0] mario_y;
    reg signed [7:0] mario_vy;
    reg [2:0] mario_lives;
    reg mario_on_ground, mario_facing_right, mario_squatting;
    reg mario_invincible;
    reg [7:0] invincible_timer;
    reg god_mode;
    reg mario_at_flag;
    
    // Luigi state
    reg [12:0] luigi_x;
    reg signed [10:0] luigi_y;
    reg signed [7:0] luigi_vy;
    reg [2:0] luigi_lives;
    reg luigi_on_ground, luigi_facing_right, luigi_squatting;
    reg luigi_invincible;
    reg [7:0] luigi_invincible_timer;
    reg luigi_at_flag;
    
    // Camera
    reg [12:0] camera_x;
    
    // Enemies
    reg [12:0] goomba_x [0:5];
    reg [9:0] goomba_y [0:5];
    reg goomba_active [0:5];
    reg goomba_dir [0:5];
    
    reg [12:0] koopa_x [0:2];
    reg [9:0] koopa_y [0:2];
    reg koopa_active [0:2];
    reg koopa_dir [0:2];
    reg koopa_is_shell [0:2];
    
    reg [12:0] spiny_x [0:2];
    reg [9:0] spiny_y [0:2];
    reg spiny_active [0:2];
    reg spiny_dir [0:2];
    
    reg [12:0] blocker_x [0:2];
    reg [9:0] blocker_y [0:2];
    reg blocker_active [0:2];
    reg blocker_dir [0:2];
    
    reg [12:0] flying_x [0:2];
    reg [9:0] flying_y [0:2];
    reg flying_active [0:2];
    reg flying_dir [0:2];
    reg signed [7:0] flying_vy [0:2];
    
    // Coins
    reg [12:0] coin_x [0:5];
    reg [9:0] coin_y [0:5];
    reg coin_active [0:5];
    
    // Power-ups
    reg [12:0] mushroom_x;
    reg [9:0] mushroom_y;
    reg mushroom_active, mushroom_dir;
    
    reg [12:0] star_x;
    reg [9:0] star_y;
    reg star_active, star_dir;
    reg signed [7:0] star_vy;
    
    // Platforms - HIGHER positions
    reg [12:0] platform_x [0:7];
    reg [9:0] platform_y [0:7];
    reg [6:0] platform_w [0:7];
    
    // Obstacles - HIGHER positions
    reg [12:0] obstacle_x [0:9];
    reg [9:0] obstacle_y [0:9];
    
    // Q-blocks - HIGHER positions
    reg [12:0] qblock_x [0:4];
    reg [9:0] qblock_y [0:4];
    reg qblock_active [0:4];
    reg [1:0] qblock_content [0:4];
    
    // Decorative pipes
    reg [12:0] pipe_x [0:2];
    reg [9:0] pipe_h [0:2];  // Height of pipe

    // ===========================================
    // KEYBOARD INPUT
    // ===========================================
    wire [7:0] kc0 = keycode[7:0];
    wire [7:0] kc1 = keycode[15:8];
    wire [7:0] kc2 = keycode[23:16];
    wire [7:0] kc3 = keycode[31:24];
    wire [7:0] kc4 = keycode2[7:0];
    wire [7:0] kc5 = keycode2[15:8];
    
    reg [31:0] keycode_prev, keycode_stable;
    reg [31:0] keycode2_prev, keycode2_stable;
    
    wire [7:0] kcs0 = keycode_stable[7:0];
    wire [7:0] kcs1 = keycode_stable[15:8];
    wire [7:0] kcs2 = keycode_stable[23:16];
    wire [7:0] kcs3 = keycode_stable[31:24];
    wire [7:0] kcs4 = keycode2_stable[7:0];
    wire [7:0] kcs5 = keycode2_stable[15:8];
    
    function key_pressed;
        input [7:0] target_key;
        begin
            key_pressed = (kcs0 == target_key) || (kcs1 == target_key) ||
                          (kcs2 == target_key) || (kcs3 == target_key) ||
                          (kcs4 == target_key) || (kcs5 == target_key);
        end
    endfunction
    
    wire any_key = (kc0 != 8'h00) || (kc1 != 8'h00) || (kc2 != 8'h00) ||
                   (kc3 != 8'h00) || (kc4 != 8'h00) || (kc5 != 8'h00);
    
    wire p1_left  = key_pressed(KEY_A);
    wire p1_right = key_pressed(KEY_D);
    wire p1_jump  = key_pressed(KEY_W) || key_pressed(KEY_SPACE);
    wire p1_squat = key_pressed(KEY_S);
    
    wire p2_left  = key_pressed(KEY_LEFT);
    wire p2_right = key_pressed(KEY_RIGHT);
    wire p2_jump  = key_pressed(KEY_UP);
    wire p2_squat = key_pressed(KEY_DOWN);
    
    wire key_enter = key_pressed(KEY_ENTER);
    wire key_r = key_pressed(KEY_R);
    wire key_p = key_pressed(KEY_P);
    wire key_q = key_pressed(KEY_Q);
    wire key_1 = key_pressed(KEY_1);
    wire key_2 = key_pressed(KEY_2);
    wire key_i = key_pressed(KEY_I);
    wire key_l = key_pressed(KEY_L);
    wire key_n = key_pressed(KEY_N);
    wire key_k = key_pressed(KEY_K);
    
    reg key_enter_prev, key_r_prev, key_p_prev, key_q_prev;
    reg key_1_prev, key_2_prev, any_key_prev;
    reg key_i_prev, key_l_prev, key_n_prev, key_k_prev;

    // ===========================================
    // COLLISION FUNCTIONS
    // ===========================================
    function enemy_hits_obstacle;
        input [12:0] ex;
        input [9:0] ey;
        integer i;
        reg result;
        begin
            result = 0;
            for (i = 0; i < 10; i = i + 1)
                if (ex + ENEMY_SIZE > obstacle_x[i] && ex < obstacle_x[i] + 32 &&
                    ey + ENEMY_SIZE > obstacle_y[i] && ey < obstacle_y[i] + 32) result = 1;
            if (ex < 50 || ex > level_end_x - 50) result = 1;
            enemy_hits_obstacle = result;
        end
    endfunction
    
    function player_on_platform;
        input [12:0] px;
        input signed [10:0] py;
        input [4:0] ph;
        integer i;
        reg result;
        begin
            result = 0;
            if (py >= 0) begin
                for (i = 0; i < 8; i = i + 1)
                    if (px + MARIO_W > platform_x[i] && px < platform_x[i] + platform_w[i] &&
                        py + ph >= platform_y[i] && py + ph < platform_y[i] + 8) result = 1;
            end
            player_on_platform = result;
        end
    endfunction
    
    function [9:0] get_platform_top;
        input [12:0] px;
        input signed [10:0] py;
        input [4:0] ph;
        integer i;
        reg [9:0] top_y;
        begin
            top_y = GROUND_Y;
            if (py >= 0) begin
                for (i = 0; i < 8; i = i + 1)
                    if (px + MARIO_W > platform_x[i] && px < platform_x[i] + platform_w[i] &&
                        py + ph >= platform_y[i] && py + ph < platform_y[i] + 16)
                        top_y = platform_y[i];
            end
            get_platform_top = top_y;
        end
    endfunction
    
    function player_hits_obstacle;
        input [12:0] px;
        input signed [10:0] py;
        input [4:0] pw;
        input [4:0] ph;
        integer i;
        reg result;
        begin
            result = 0;
            if (py >= 0) begin
                for (i = 0; i < 10; i = i + 1)
                    if (px + pw > obstacle_x[i] && px < obstacle_x[i] + 32 &&
                        py + ph > obstacle_y[i] && py < obstacle_y[i] + 32) result = 1;
                for (i = 0; i < 8; i = i + 1)
                    if (px + pw > platform_x[i] && px < platform_x[i] + platform_w[i] &&
                        py + ph > platform_y[i] && py < platform_y[i] + 16) result = 1;
                for (i = 0; i < 5; i = i + 1)
                    if (px + pw > qblock_x[i] && px < qblock_x[i] + 24 &&
                        py + ph > qblock_y[i] && py < qblock_y[i] + 24) result = 1;
            end
            player_hits_obstacle = result;
        end
    endfunction
    
    function player_on_obstacle;
        input [12:0] px;
        input signed [10:0] py;
        input [4:0] ph;
        integer i;
        reg result;
        begin
            result = 0;
            if (py >= 0) begin
                for (i = 0; i < 10; i = i + 1)
                    if (px + MARIO_W > obstacle_x[i] && px < obstacle_x[i] + 32 &&
                        py + ph >= obstacle_y[i] && py + ph < obstacle_y[i] + 8) result = 1;
                for (i = 0; i < 5; i = i + 1)
                    if (px + MARIO_W > qblock_x[i] && px < qblock_x[i] + 24 &&
                        py + ph >= qblock_y[i] && py + ph < qblock_y[i] + 8) result = 1;
            end
            player_on_obstacle = result;
        end
    endfunction
    
    function [9:0] get_obstacle_top;
        input [12:0] px;
        input signed [10:0] py;
        input [4:0] ph;
        integer i;
        reg [9:0] top_y;
        begin
            top_y = GROUND_Y;
            if (py >= 0) begin
                for (i = 0; i < 10; i = i + 1)
                    if (px + MARIO_W > obstacle_x[i] && px < obstacle_x[i] + 32 &&
                        py + ph >= obstacle_y[i] && py + ph < obstacle_y[i] + 16)
                        top_y = obstacle_y[i];
                for (i = 0; i < 5; i = i + 1)
                    if (px + MARIO_W > qblock_x[i] && px < qblock_x[i] + 24 &&
                        py + ph >= qblock_y[i] && py + ph < qblock_y[i] + 16)
                        top_y = qblock_y[i];
            end
            get_obstacle_top = top_y;
        end
    endfunction

    // ===========================================
    // LEVEL INITIALIZATION - v4.0: HIGHER positions!
    // ===========================================
    task init_level;
        input [2:0] level;
        integer i;
        begin
            mario_x <= 13'd100; mario_y <= GROUND_Y - MARIO_H;
            mario_vy <= 0; mario_on_ground <= 1; mario_facing_right <= 1;
            mario_squatting <= 0; mario_invincible <= 0; invincible_timer <= 0;
            mario_at_flag <= 0;
            startup_delay <= 30;
            
            if (two_player_mode) begin
                luigi_x <= 13'd140; luigi_y <= GROUND_Y - MARIO_H;
                luigi_vy <= 0; luigi_on_ground <= 1; luigi_facing_right <= 1;
                luigi_squatting <= 0; luigi_invincible <= 0; luigi_invincible_timer <= 0;
                luigi_at_flag <= 0;
            end
            
            camera_x <= 0;
            time_left <= 16'd400 - level * 30;
            
            // Level 0 - Easy intro (HIGHER positions)
            if (level == 0) begin
                // Goombas - positioned BETWEEN obstacles
                for (i = 0; i < 6; i = i + 1) begin
                    goomba_active[i] <= 1;
                    goomba_x[i] <= 13'd500 + i * 400;  // Offset from obstacles
                    goomba_y[i] <= GROUND_Y - ENEMY_SIZE;
                    goomba_dir[i] <= 0;
                end
                
                koopa_active[0] <= 1; koopa_x[0] <= 13'd1500; koopa_y[0] <= GROUND_Y - 24;
                koopa_dir[0] <= 0; koopa_is_shell[0] <= 0;
                koopa_active[1] <= 0; koopa_active[2] <= 0;
                
                for (i = 0; i < 3; i = i + 1) begin
                    spiny_active[i] <= 0; blocker_active[i] <= 0; flying_active[i] <= 0;
                end
                
                // Platforms - floating above ground
                for (i = 0; i < 8; i = i + 1) begin
                    platform_x[i] <= 13'd350 + i * 280;
                    platform_y[i] <= 10'd320 - (i & 1) * 40;
                    platform_w[i] <= 7'd64;
                end
                
                // Obstacles - on ground, spaced apart
                for (i = 0; i < 10; i = i + 1) begin
                    obstacle_x[i] <= 13'd400 + i * 260;
                    obstacle_y[i] <= GROUND_Y - 32;  // On ground
                end
                
                // Q-blocks - floating, reachable by jump
                for (i = 0; i < 5; i = i + 1) begin
                    qblock_x[i] <= 13'd300 + i * 500;
                    qblock_y[i] <= 10'd340;
                    qblock_active[i] <= 1;
                    qblock_content[i] <= (i == 1 || i == 4) ? 2'd1 : 2'd0;
                end
                
                // Coins - above ground
                for (i = 0; i < 6; i = i + 1) begin
                    coin_active[i] <= 1;
                    coin_x[i] <= 13'd450 + i * 400;
                    coin_y[i] <= 10'd300;
                end
                
                // Decorative pipes
                pipe_x[0] <= 13'd600; pipe_h[0] <= 10'd48;
                pipe_x[1] <= 13'd1800; pipe_h[1] <= 10'd64;
                pipe_x[2] <= 13'd2400; pipe_h[2] <= 10'd48;
            end
            // Level 1
            else if (level == 1) begin
                // Goombas - spaced between obstacles
                for (i = 0; i < 6; i = i + 1) begin
                    goomba_active[i] <= 1;
                    goomba_x[i] <= 13'd450 + i * 500;
                    goomba_y[i] <= GROUND_Y - ENEMY_SIZE;
                    goomba_dir[i] <= 0;
                end
                
                koopa_active[0] <= 1; koopa_x[0] <= 13'd1100; koopa_y[0] <= GROUND_Y - 24;
                koopa_dir[0] <= 0; koopa_is_shell[0] <= 0;
                koopa_active[1] <= 1; koopa_x[1] <= 13'd2200; koopa_y[1] <= GROUND_Y - 24;
                koopa_dir[1] <= 0; koopa_is_shell[1] <= 0;
                koopa_active[2] <= 0;
                
                flying_active[0] <= 1; flying_x[0] <= 13'd1500; flying_y[0] <= 10'd280;
                flying_dir[0] <= 0; flying_vy[0] <= 2;
                flying_active[1] <= 0; flying_active[2] <= 0;
                
                for (i = 0; i < 3; i = i + 1) begin
                    spiny_active[i] <= 0; blocker_active[i] <= 0;
                end
                
                // Platforms - floating
                for (i = 0; i < 8; i = i + 1) begin
                    platform_x[i] <= 13'd300 + i * 380;
                    platform_y[i] <= 10'd300 - (i & 1) * 50;
                    platform_w[i] <= 7'd72;
                end
                
                // Obstacles - on ground with good spacing
                for (i = 0; i < 10; i = i + 1) begin
                    obstacle_x[i] <= 13'd350 + i * 300;
                    obstacle_y[i] <= GROUND_Y - 32;
                end
                
                // Q-blocks
                for (i = 0; i < 5; i = i + 1) begin
                    qblock_x[i] <= 13'd500 + i * 600;
                    qblock_y[i] <= 10'd340;
                    qblock_active[i] <= 1;
                    qblock_content[i] <= (i == 1) ? 2'd1 : (i == 3) ? 2'd2 : 2'd0;
                end
                
                for (i = 0; i < 6; i = i + 1) begin
                    coin_active[i] <= 1;
                    coin_x[i] <= 13'd600 + i * 500;
                    coin_y[i] <= 10'd260;
                end
                
                // Pipes for level 1
                pipe_x[0] <= 13'd700; pipe_h[0] <= 10'd48;
                pipe_x[1] <= 13'd1600; pipe_h[1] <= 10'd64;
                pipe_x[2] <= 13'd2600; pipe_h[2] <= 10'd80;
            end
            // Level 2
            else if (level == 2) begin
                for (i = 0; i < 6; i = i + 1) begin
                    goomba_active[i] <= 1;
                    goomba_x[i] <= 13'd400 + i * 600;
                    goomba_y[i] <= GROUND_Y - ENEMY_SIZE;
                    goomba_dir[i] <= 0;
                end
                
                for (i = 0; i < 3; i = i + 1) begin
                    koopa_active[i] <= 1;
                    koopa_x[i] <= 13'd800 + i * 1200;
                    koopa_y[i] <= GROUND_Y - 24;
                    koopa_dir[i] <= 0;
                    koopa_is_shell[i] <= 0;
                    
                    flying_active[i] <= 1;
                    flying_x[i] <= 13'd600 + i * 1300;
                    flying_y[i] <= 10'd240;
                    flying_dir[i] <= 0;
                    flying_vy[i] <= 2;
                end
                
                spiny_active[0] <= 1; spiny_x[0] <= 13'd1200; spiny_y[0] <= GROUND_Y - ENEMY_SIZE;
                spiny_dir[0] <= 0;
                spiny_active[1] <= 0; spiny_active[2] <= 0;
                
                for (i = 0; i < 3; i = i + 1) blocker_active[i] <= 0;
                
                for (i = 0; i < 8; i = i + 1) begin
                    platform_x[i] <= 13'd300 + i * 450;
                    platform_y[i] <= 10'd280 - (i & 1) * 40;
                    platform_w[i] <= 7'd64;
                end
                
                for (i = 0; i < 10; i = i + 1) begin
                    obstacle_x[i] <= 13'd350 + i * 380;
                    obstacle_y[i] <= 10'd290 - (i & 1) * 40;
                end
                
                for (i = 0; i < 5; i = i + 1) begin
                    qblock_x[i] <= 13'd450 + i * 750;
                    qblock_y[i] <= 10'd310;
                    qblock_active[i] <= 1;
                    qblock_content[i] <= (i == 0 || i == 4) ? 2'd1 : (i == 2) ? 2'd2 : 2'd0;
                end
                
                for (i = 0; i < 6; i = i + 1) begin
                    coin_active[i] <= 1;
                    coin_x[i] <= 13'd400 + i * 600;
                    coin_y[i] <= 10'd240;
                end
                
                // Pipes for level 2
                pipe_x[0] <= 13'd900; pipe_h[0] <= 10'd64;
                pipe_x[1] <= 13'd2000; pipe_h[1] <= 10'd80;
                pipe_x[2] <= 13'd3200; pipe_h[2] <= 10'd96;
            end
            // Level 3+
            else begin
                for (i = 0; i < 6; i = i + 1) begin
                    goomba_active[i] <= 1;
                    goomba_x[i] <= 13'd400 + i * 700;
                    goomba_y[i] <= GROUND_Y - ENEMY_SIZE;
                    goomba_dir[i] <= 0;
                end
                
                for (i = 0; i < 3; i = i + 1) begin
                    koopa_active[i] <= 1;
                    koopa_x[i] <= 13'd600 + i * 1400;
                    koopa_y[i] <= GROUND_Y - 24;
                    koopa_dir[i] <= 0;
                    koopa_is_shell[i] <= 0;
                    
                    spiny_active[i] <= 1;
                    spiny_x[i] <= 13'd1200 + i * 1600;
                    spiny_y[i] <= GROUND_Y - ENEMY_SIZE;
                    spiny_dir[i] <= 0;
                    
                    blocker_active[i] <= 1;
                    blocker_x[i] <= 13'd900 + i * 1700;
                    blocker_y[i] <= 10'd320;
                    blocker_dir[i] <= 0;
                    
                    flying_active[i] <= 1;
                    flying_x[i] <= 13'd1500 + i * 1500;
                    flying_y[i] <= 10'd230;
                    flying_dir[i] <= 0;
                    flying_vy[i] <= 3;
                end
                
                for (i = 0; i < 8; i = i + 1) begin
                    platform_x[i] <= 13'd350 + i * 550;
                    platform_y[i] <= 10'd270 - (i & 1) * 50;
                    platform_w[i] <= 7'd80;
                end
                
                for (i = 0; i < 10; i = i + 1) begin
                    obstacle_x[i] <= 13'd300 + i * 450;
                    obstacle_y[i] <= 10'd280 - (i & 1) * 50;
                end
                
                for (i = 0; i < 5; i = i + 1) begin
                    qblock_x[i] <= 13'd500 + i * 900;
                    qblock_y[i] <= 10'd300;
                    qblock_active[i] <= 1;
                    qblock_content[i] <= (i == 0 || i == 3) ? 2'd1 : (i == 1 || i == 4) ? 2'd2 : 2'd0;
                end
                
                for (i = 0; i < 6; i = i + 1) begin
                    coin_active[i] <= 1;
                    coin_x[i] <= 13'd450 + i * 700;
                    coin_y[i] <= 10'd220;
                end
                
                // Pipes for level 3+
                pipe_x[0] <= 13'd1000; pipe_h[0] <= 10'd80;
                pipe_x[1] <= 13'd2500; pipe_h[1] <= 10'd96;
                pipe_x[2] <= 13'd4000; pipe_h[2] <= 10'd64;
            end
            
            mushroom_active <= 0;
            star_active <= 0;
        end
    endtask

    // ===========================================
    // GAME LOGIC - v4.0: Cheat N resets positions!
    // ===========================================
    always @(posedge clk or posedge reset) begin
        integer i;
        reg [12:0] new_x;
        reg [9:0] new_y;
        reg [12:0] next_enemy_x;
        reg [9:0] next_flying_y;
        reg [4:0] mario_current_h;
        reg [4:0] luigi_current_h;
        
        if (reset) begin
            game_state <= STATE_TITLE;
            current_level <= 0; score <= 0;
            mario_lives <= 3; luigi_lives <= 3;
            two_player_mode <= 0; god_mode <= 0;
            anim_counter <= 0; time_tick <= 0;
            mario_at_flag <= 0; luigi_at_flag <= 0;
            key_enter_prev <= 0; key_r_prev <= 0; key_p_prev <= 0; key_q_prev <= 0;
            key_1_prev <= 0; key_2_prev <= 0; any_key_prev <= 0;
            key_i_prev <= 0; key_l_prev <= 0; key_n_prev <= 0; key_k_prev <= 0;
            keycode_prev <= 0; keycode_stable <= 0;
            keycode2_prev <= 0; keycode2_stable <= 0;
        end
        else if (frame_tick) begin
            keycode_prev <= keycode;
            if (keycode == keycode_prev) keycode_stable <= keycode;
            keycode2_prev <= keycode2;
            if (keycode2 == keycode2_prev) keycode2_stable <= keycode2;
            
            anim_counter <= anim_counter + 1;
            
            key_enter_prev <= key_enter; key_r_prev <= key_r;
            key_p_prev <= key_p; key_q_prev <= key_q;
            key_1_prev <= key_1; key_2_prev <= key_2;
            any_key_prev <= any_key;
            key_i_prev <= key_i; key_l_prev <= key_l;
            key_n_prev <= key_n; key_k_prev <= key_k;
            
            case (game_state)
                STATE_TITLE: if (key_enter && !key_enter_prev) game_state <= STATE_PLAYERSEL;
                
                STATE_PLAYERSEL: begin
                    if (key_1 && !key_1_prev) begin two_player_mode <= 0; game_state <= STATE_INSTRUCTIONS; end
                    if (key_2 && !key_2_prev) begin two_player_mode <= 1; game_state <= STATE_INSTRUCTIONS; end
                end
                
                STATE_INSTRUCTIONS: begin
                    if (any_key && !any_key_prev && !key_1 && !key_2) begin
                        current_level <= 0; score <= 0;
                        mario_lives <= 3; luigi_lives <= 3;
                        init_level(0);
                        game_state <= STATE_PLAYING;
                    end
                end
                
                STATE_PLAYING: begin
                    time_tick <= time_tick + 1;
                    if (time_tick >= 59) begin
                        time_tick <= 0;
                        if (time_left > 0) time_left <= time_left - 1;
                    end
                    
                    if (startup_delay > 0) startup_delay <= startup_delay - 1;
                    
                    // Cheats
                    if (key_i && !key_i_prev) god_mode <= ~god_mode;
                    if (key_l && !key_l_prev) begin mario_lives <= 3; luigi_lives <= 3; end
                    // v4.0: Cheat N now properly resets to START of next level!
                    if (key_n && !key_n_prev) begin
                        if (current_level < 4) begin
                            current_level <= current_level + 1;
                            mario_at_flag <= 0; luigi_at_flag <= 0;
                            init_level(current_level + 1);  // This resets positions!
                        end else game_state <= STATE_WIN;
                    end
                    if (key_k && !key_k_prev) begin
                        for (i = 0; i < 6; i = i + 1) goomba_active[i] <= 0;
                        for (i = 0; i < 3; i = i + 1) begin
                            koopa_active[i] <= 0; spiny_active[i] <= 0;
                            blocker_active[i] <= 0; flying_active[i] <= 0;
                        end
                    end
                    
                    if (key_p && !key_p_prev) game_state <= STATE_PAUSED;
                    
                    // Invincibility timers
                    if (mario_invincible && invincible_timer > 0) invincible_timer <= invincible_timer - 1;
                    if (invincible_timer == 0) mario_invincible <= 0;
                    if (luigi_invincible && luigi_invincible_timer > 0) luigi_invincible_timer <= luigi_invincible_timer - 1;
                    if (luigi_invincible_timer == 0) luigi_invincible <= 0;
                    
                    // === MARIO MOVEMENT ===
                    if (p1_squat && mario_on_ground) begin
                        if (!mario_squatting) begin
                            mario_squatting <= 1;
                            mario_y <= mario_y + (MARIO_H - MARIO_H_SQUAT);
                        end
                    end else begin
                        if (mario_squatting) begin
                            mario_squatting <= 0;
                            mario_y <= mario_y - (MARIO_H - MARIO_H_SQUAT);
                        end
                    end
                    
                    mario_current_h = mario_squatting ? MARIO_H_SQUAT : MARIO_H;
                    
                    new_x = mario_x;
                    if (p1_left && mario_x > 4) begin
                        mario_facing_right <= 0;
                        new_x = mario_x - (mario_squatting ? 2 : MOVE_SPEED);
                    end
                    if (p1_right && mario_x < level_end_x - MARIO_W) begin
                        mario_facing_right <= 1;
                        new_x = mario_x + (mario_squatting ? 2 : MOVE_SPEED);
                    end
                    
                    if (two_player_mode && luigi_lives > 0) begin
                        if (new_x > luigi_x + MAX_PLAYER_DISTANCE)
                            new_x = luigi_x + MAX_PLAYER_DISTANCE;
                        else if (new_x + MAX_PLAYER_DISTANCE < luigi_x)
                            new_x = luigi_x - MAX_PLAYER_DISTANCE;
                    end
                    
                    if (!player_hits_obstacle(new_x, mario_y, MARIO_W, mario_current_h))
                        mario_x <= new_x;
                    
                    if (p1_jump && mario_on_ground && startup_delay == 0 && !mario_squatting) begin
                        mario_vy <= -JUMP_VELOCITY;
                        mario_on_ground <= 0;
                    end
                    
                    if (!p1_jump && mario_vy < -4) mario_vy <= -4;
                    
                    if (!mario_on_ground) begin
                        if (mario_vy < MAX_FALL) mario_vy <= mario_vy + GRAVITY;
                    end
                    
                    if (mario_vy < 0) begin
                        if (player_hits_obstacle(mario_x, mario_y + mario_vy, MARIO_W, mario_current_h))
                            mario_vy <= 0;
                        else
                            mario_y <= mario_y + mario_vy;
                        if (mario_y < 0) mario_y <= 0;
                    end
                    else if (mario_vy > 0) begin
                        new_y = mario_y + mario_vy;
                        if (new_y + mario_current_h >= GROUND_Y) begin
                            mario_y <= GROUND_Y - mario_current_h;
                            mario_vy <= 0; mario_on_ground <= 1;
                        end
                        else if (player_on_platform(mario_x, new_y, mario_current_h)) begin
                            mario_y <= get_platform_top(mario_x, new_y, mario_current_h) - mario_current_h;
                            mario_vy <= 0; mario_on_ground <= 1;
                        end
                        else if (player_on_obstacle(mario_x, new_y, mario_current_h)) begin
                            mario_y <= get_obstacle_top(mario_x, new_y, mario_current_h) - mario_current_h;
                            mario_vy <= 0; mario_on_ground <= 1;
                        end
                        else mario_y <= new_y;
                    end
                    else begin
                        if (!player_on_platform(mario_x, mario_y + 1, mario_current_h) &&
                            !player_on_obstacle(mario_x, mario_y + 1, mario_current_h) &&
                            mario_y + mario_current_h < GROUND_Y)
                            mario_on_ground <= 0;
                    end
                    
                    if (mario_y > 450) begin
                        mario_lives <= (mario_lives > 0) ? mario_lives - 1 : 0;
                        if (mario_lives > 1) begin
                            mario_x <= 13'd100; mario_y <= GROUND_Y - MARIO_H;
                            mario_vy <= 0; mario_on_ground <= 1;
                            mario_invincible <= 1; invincible_timer <= 120;
                            camera_x <= 0;
                        end
                    end
                    
                    if (mario_x > camera_x + 320) camera_x <= mario_x - 320;
                    if (mario_x < camera_x + 100 && camera_x > 0)
                        camera_x <= (mario_x > 100) ? mario_x - 100 : 0;
                    
                    // === LUIGI MOVEMENT ===
                    if (two_player_mode && luigi_lives > 0) begin
                        if (p2_squat && luigi_on_ground) begin
                            if (!luigi_squatting) begin
                                luigi_squatting <= 1;
                                luigi_y <= luigi_y + (MARIO_H - MARIO_H_SQUAT);
                            end
                        end else begin
                            if (luigi_squatting) begin
                                luigi_squatting <= 0;
                                luigi_y <= luigi_y - (MARIO_H - MARIO_H_SQUAT);
                            end
                        end
                        
                        luigi_current_h = luigi_squatting ? MARIO_H_SQUAT : MARIO_H;
                        
                        new_x = luigi_x;
                        if (p2_left && luigi_x > 4) begin
                            luigi_facing_right <= 0;
                            new_x = luigi_x - (luigi_squatting ? 2 : MOVE_SPEED);
                        end
                        if (p2_right && luigi_x < level_end_x - MARIO_W) begin
                            luigi_facing_right <= 1;
                            new_x = luigi_x + (luigi_squatting ? 2 : MOVE_SPEED);
                        end
                        
                        if (mario_lives > 0) begin
                            if (new_x > mario_x + MAX_PLAYER_DISTANCE)
                                new_x = mario_x + MAX_PLAYER_DISTANCE;
                            else if (new_x + MAX_PLAYER_DISTANCE < mario_x)
                                new_x = mario_x - MAX_PLAYER_DISTANCE;
                        end
                        
                        if (!player_hits_obstacle(new_x, luigi_y, MARIO_W, luigi_current_h))
                            luigi_x <= new_x;
                        
                        if (p2_jump && luigi_on_ground && startup_delay == 0 && !luigi_squatting) begin
                            luigi_vy <= -JUMP_VELOCITY;
                            luigi_on_ground <= 0;
                        end
                        
                        if (!p2_jump && luigi_vy < -4) luigi_vy <= -4;
                        
                        if (!luigi_on_ground) begin
                            if (luigi_vy < MAX_FALL) luigi_vy <= luigi_vy + GRAVITY;
                        end
                        
                        if (luigi_vy < 0) begin
                            if (player_hits_obstacle(luigi_x, luigi_y + luigi_vy, MARIO_W, luigi_current_h))
                                luigi_vy <= 0;
                            else
                                luigi_y <= luigi_y + luigi_vy;
                            if (luigi_y < 0) luigi_y <= 0;
                        end
                        else if (luigi_vy > 0) begin
                            new_y = luigi_y + luigi_vy;
                            if (new_y + luigi_current_h >= GROUND_Y) begin
                                luigi_y <= GROUND_Y - luigi_current_h;
                                luigi_vy <= 0; luigi_on_ground <= 1;
                            end
                            else if (player_on_platform(luigi_x, new_y, luigi_current_h)) begin
                                luigi_y <= get_platform_top(luigi_x, new_y, luigi_current_h) - luigi_current_h;
                                luigi_vy <= 0; luigi_on_ground <= 1;
                            end
                            else if (player_on_obstacle(luigi_x, new_y, luigi_current_h)) begin
                                luigi_y <= get_obstacle_top(luigi_x, new_y, luigi_current_h) - luigi_current_h;
                                luigi_vy <= 0; luigi_on_ground <= 1;
                            end
                            else luigi_y <= new_y;
                        end
                        else begin
                            if (!player_on_platform(luigi_x, luigi_y + 1, luigi_current_h) &&
                                !player_on_obstacle(luigi_x, luigi_y + 1, luigi_current_h) &&
                                luigi_y + luigi_current_h < GROUND_Y)
                                luigi_on_ground <= 0;
                        end
                        
                        if (luigi_y > 450) begin
                            luigi_lives <= (luigi_lives > 0) ? luigi_lives - 1 : 0;
                            if (luigi_lives > 1) begin
                                luigi_x <= 13'd140; luigi_y <= GROUND_Y - MARIO_H;
                                luigi_vy <= 0; luigi_on_ground <= 1;
                                luigi_invincible <= 1; luigi_invincible_timer <= 120;
                            end
                        end
                    end
                    
                    // === ENEMY AI ===
                    for (i = 0; i < 6; i = i + 1) begin
                        if (goomba_active[i]) begin
                            next_enemy_x = goomba_dir[i] ? goomba_x[i] + 1 : goomba_x[i] - 1;
                            if (enemy_hits_obstacle(next_enemy_x, goomba_y[i]))
                                goomba_dir[i] <= ~goomba_dir[i];
                            else
                                goomba_x[i] <= next_enemy_x;
                        end
                    end
                    
                    for (i = 0; i < 3; i = i + 1) begin
                        if (koopa_active[i]) begin
                            next_enemy_x = koopa_dir[i] ? koopa_x[i] + (koopa_is_shell[i] ? 3 : 1) :
                                                         koopa_x[i] - (koopa_is_shell[i] ? 3 : 1);
                            if (enemy_hits_obstacle(next_enemy_x, koopa_y[i]))
                                koopa_dir[i] <= ~koopa_dir[i];
                            else
                                koopa_x[i] <= next_enemy_x;
                        end
                        
                        if (spiny_active[i]) begin
                            next_enemy_x = spiny_dir[i] ? spiny_x[i] + 1 : spiny_x[i] - 1;
                            if (enemy_hits_obstacle(next_enemy_x, spiny_y[i]))
                                spiny_dir[i] <= ~spiny_dir[i];
                            else
                                spiny_x[i] <= next_enemy_x;
                        end
                        
                        if (blocker_active[i]) begin
                            next_enemy_x = blocker_dir[i] ? blocker_x[i] + 1 : blocker_x[i] - 1;
                            if (enemy_hits_obstacle(next_enemy_x, blocker_y[i]))
                                blocker_dir[i] <= ~blocker_dir[i];
                            else
                                blocker_x[i] <= next_enemy_x;
                        end
                        
                        if (flying_active[i]) begin
                            next_enemy_x = flying_dir[i] ? flying_x[i] + 1 : flying_x[i] - 1;
                            if (next_enemy_x < 50 || next_enemy_x > level_end_x - 50)
                                flying_dir[i] <= ~flying_dir[i];
                            else
                                flying_x[i] <= next_enemy_x;
                            
                            next_flying_y = flying_y[i] + flying_vy[i];
                            if (next_flying_y < 180 || next_flying_y > 320)
                                flying_vy[i] <= -flying_vy[i];
                            else
                                flying_y[i] <= next_flying_y;
                        end
                    end
                    
                    if (mushroom_active) begin
                        next_enemy_x = mushroom_dir ? mushroom_x + 1 : mushroom_x - 1;
                        if (enemy_hits_obstacle(next_enemy_x, mushroom_y))
                            mushroom_dir <= ~mushroom_dir;
                        else
                            mushroom_x <= next_enemy_x;
                    end
                    
                    if (star_active) begin
                        next_enemy_x = star_dir ? star_x + 2 : star_x - 2;
                        if (next_enemy_x < 50 || next_enemy_x > level_end_x - 50)
                            star_dir <= ~star_dir;
                        else
                            star_x <= next_enemy_x;
                        star_y <= star_y + star_vy;
                        if (star_y >= GROUND_Y - ENEMY_SIZE) begin
                            star_y <= GROUND_Y - ENEMY_SIZE;
                            star_vy <= -6;
                        end else star_vy <= star_vy + 1;
                    end
                    
                    // === MARIO COLLISIONS ===
                    for (i = 0; i < 6; i = i + 1) begin
                        if (goomba_active[i] && mario_y >= 0 &&
                            mario_x + MARIO_W > goomba_x[i] && mario_x < goomba_x[i] + ENEMY_SIZE &&
                            mario_y[9:0] + (mario_squatting ? MARIO_H_SQUAT : MARIO_H) > goomba_y[i] &&
                            mario_y[9:0] < goomba_y[i] + ENEMY_SIZE) begin
                            if (mario_vy > 0 && mario_y[9:0] + (mario_squatting ? MARIO_H_SQUAT : MARIO_H) < goomba_y[i] + 8) begin
                                goomba_active[i] <= 0; mario_vy <= -8; score <= score + 100;
                            end else if (!mario_invincible && !god_mode) begin
                                mario_lives <= mario_lives - 1;
                                mario_invincible <= 1; invincible_timer <= 60;
                            end
                        end
                    end
                    
                    for (i = 0; i < 3; i = i + 1) begin
                        if (koopa_active[i] && mario_y >= 0 &&
                            mario_x + MARIO_W > koopa_x[i] && mario_x < koopa_x[i] + ENEMY_SIZE &&
                            mario_y[9:0] + (mario_squatting ? MARIO_H_SQUAT : MARIO_H) > koopa_y[i] &&
                            mario_y[9:0] < koopa_y[i] + (koopa_is_shell[i] ? ENEMY_SIZE : 24)) begin
                            if (mario_vy > 0 && mario_y[9:0] + (mario_squatting ? MARIO_H_SQUAT : MARIO_H) < koopa_y[i] + 8) begin
                                if (!koopa_is_shell[i]) begin
                                    koopa_is_shell[i] <= 1; koopa_y[i] <= GROUND_Y - ENEMY_SIZE;
                                end else koopa_dir[i] <= mario_x < koopa_x[i];
                                mario_vy <= -8; score <= score + 100;
                            end else if (!mario_invincible && !god_mode) begin
                                mario_lives <= mario_lives - 1;
                                mario_invincible <= 1; invincible_timer <= 60;
                            end
                        end
                        
                        if (spiny_active[i] && mario_y >= 0 &&
                            mario_x + MARIO_W > spiny_x[i] && mario_x < spiny_x[i] + ENEMY_SIZE &&
                            mario_y[9:0] + (mario_squatting ? MARIO_H_SQUAT : MARIO_H) > spiny_y[i] &&
                            mario_y[9:0] < spiny_y[i] + ENEMY_SIZE) begin
                            if (!mario_invincible && !god_mode) begin
                                mario_lives <= mario_lives - 1;
                                mario_invincible <= 1; invincible_timer <= 60;
                            end
                        end
                        
                        if (blocker_active[i] && mario_y >= 0 &&
                            mario_x + MARIO_W > blocker_x[i] && mario_x < blocker_x[i] + ENEMY_SIZE &&
                            mario_y[9:0] + (mario_squatting ? MARIO_H_SQUAT : MARIO_H) > blocker_y[i] &&
                            mario_y[9:0] < blocker_y[i] + ENEMY_SIZE) begin
                            if (!mario_squatting || mario_y[9:0] + MARIO_H_SQUAT > blocker_y[i]) begin
                                if (!mario_invincible && !god_mode) begin
                                    mario_lives <= mario_lives - 1;
                                    mario_invincible <= 1; invincible_timer <= 60;
                                end
                            end
                        end
                        
                        if (flying_active[i] && mario_y >= 0 &&
                            mario_x + MARIO_W > flying_x[i] && mario_x < flying_x[i] + ENEMY_SIZE &&
                            mario_y[9:0] + (mario_squatting ? MARIO_H_SQUAT : MARIO_H) > flying_y[i] &&
                            mario_y[9:0] < flying_y[i] + ENEMY_SIZE) begin
                            if (mario_vy > 0 && mario_y[9:0] + (mario_squatting ? MARIO_H_SQUAT : MARIO_H) < flying_y[i] + 8) begin
                                flying_active[i] <= 0; mario_vy <= -10; score <= score + 200;
                            end else if (!mario_invincible && !god_mode) begin
                                mario_lives <= mario_lives - 1;
                                mario_invincible <= 1; invincible_timer <= 60;
                            end
                        end
                    end
                    
                    for (i = 0; i < 6; i = i + 1) begin
                        if (coin_active[i] &&
                            mario_x + MARIO_W > coin_x[i] && mario_x < coin_x[i] + 12 &&
                            mario_y + MARIO_H > coin_y[i] && mario_y < coin_y[i] + 12) begin
                            coin_active[i] <= 0; score <= score + 50;
                        end
                    end
                    
                    if (mushroom_active &&
                        mario_x + MARIO_W > mushroom_x && mario_x < mushroom_x + ENEMY_SIZE &&
                        mario_y + MARIO_H > mushroom_y && mario_y < mushroom_y + ENEMY_SIZE) begin
                        mushroom_active <= 0;
                        mario_lives <= (mario_lives < 5) ? mario_lives + 1 : 5;
                        score <= score + 200;
                    end
                    
                    if (star_active &&
                        mario_x + MARIO_W > star_x && mario_x < star_x + ENEMY_SIZE &&
                        mario_y + MARIO_H > star_y && mario_y < star_y + ENEMY_SIZE) begin
                        star_active <= 0;
                        mario_invincible <= 1; invincible_timer <= 180;
                        score <= score + 500;
                    end
                    
                    for (i = 0; i < 5; i = i + 1) begin
                        // Mario hits Q-block from BELOW: his head touches bottom of block
                        if (qblock_active[i] &&
                            mario_x + MARIO_W > qblock_x[i] && mario_x < qblock_x[i] + 24 &&
                            mario_y >= qblock_y[i] + 16 && mario_y <= qblock_y[i] + 28 && mario_vy < 0) begin
                            qblock_active[i] <= 0;
                            case (qblock_content[i])
                                2'd0: score <= score + 100;
                                2'd1: begin
                                    mushroom_active <= 1; mushroom_x <= qblock_x[i];
                                    mushroom_y <= qblock_y[i] - ENEMY_SIZE; mushroom_dir <= 1;
                                end
                                2'd2: begin
                                    star_active <= 1; star_x <= qblock_x[i];
                                    star_y <= qblock_y[i] - ENEMY_SIZE; star_dir <= 1; star_vy <= -4;
                                end
                            endcase
                        end
                    end
                    
                    // === LUIGI COLLISIONS ===
                    if (two_player_mode && luigi_lives > 0) begin
                        for (i = 0; i < 5; i = i + 1) begin
                            // Luigi hits Q-block from BELOW
                            if (qblock_active[i] &&
                                luigi_x + MARIO_W > qblock_x[i] && luigi_x < qblock_x[i] + 24 &&
                                luigi_y >= qblock_y[i] + 16 && luigi_y <= qblock_y[i] + 28 && luigi_vy < 0) begin
                                qblock_active[i] <= 0;
                                case (qblock_content[i])
                                    2'd0: score <= score + 100;
                                    2'd1: begin
                                        mushroom_active <= 1; mushroom_x <= qblock_x[i];
                                        mushroom_y <= qblock_y[i] - ENEMY_SIZE; mushroom_dir <= 0;
                                    end
                                    2'd2: begin
                                        star_active <= 1; star_x <= qblock_x[i];
                                        star_y <= qblock_y[i] - ENEMY_SIZE; star_dir <= 0; star_vy <= -4;
                                    end
                                endcase
                            end
                        end
                        
                        if (mushroom_active &&
                            luigi_x + MARIO_W > mushroom_x && luigi_x < mushroom_x + ENEMY_SIZE &&
                            luigi_y + MARIO_H > mushroom_y && luigi_y < mushroom_y + ENEMY_SIZE) begin
                            mushroom_active <= 0;
                            luigi_lives <= (luigi_lives < 5) ? luigi_lives + 1 : 5;
                            score <= score + 200;
                        end
                        
                        if (star_active &&
                            luigi_x + MARIO_W > star_x && luigi_x < star_x + ENEMY_SIZE &&
                            luigi_y + MARIO_H > star_y && luigi_y < star_y + ENEMY_SIZE) begin
                            star_active <= 0;
                            luigi_invincible <= 1; luigi_invincible_timer <= 180;
                            score <= score + 500;
                        end
                        
                        for (i = 0; i < 6; i = i + 1) begin
                            if (goomba_active[i] && luigi_y >= 0 &&
                                luigi_x + MARIO_W > goomba_x[i] && luigi_x < goomba_x[i] + ENEMY_SIZE &&
                                luigi_y[9:0] + (luigi_squatting ? MARIO_H_SQUAT : MARIO_H) > goomba_y[i] &&
                                luigi_y[9:0] < goomba_y[i] + ENEMY_SIZE) begin
                                if (luigi_vy > 0 && luigi_y[9:0] + (luigi_squatting ? MARIO_H_SQUAT : MARIO_H) < goomba_y[i] + 8) begin
                                    goomba_active[i] <= 0; luigi_vy <= -8; score <= score + 100;
                                end else if (!luigi_invincible && !god_mode) begin
                                    luigi_lives <= luigi_lives - 1;
                                    luigi_invincible <= 1; luigi_invincible_timer <= 60;
                                end
                            end
                        end
                        
                        for (i = 0; i < 3; i = i + 1) begin
                            if (koopa_active[i] && luigi_y >= 0 &&
                                luigi_x + MARIO_W > koopa_x[i] && luigi_x < koopa_x[i] + ENEMY_SIZE &&
                                luigi_y[9:0] + (luigi_squatting ? MARIO_H_SQUAT : MARIO_H) > koopa_y[i] &&
                                luigi_y[9:0] < koopa_y[i] + (koopa_is_shell[i] ? ENEMY_SIZE : 24)) begin
                                if (luigi_vy > 0 && luigi_y[9:0] + (luigi_squatting ? MARIO_H_SQUAT : MARIO_H) < koopa_y[i] + 8) begin
                                    if (!koopa_is_shell[i]) begin
                                        koopa_is_shell[i] <= 1; koopa_y[i] <= GROUND_Y - ENEMY_SIZE;
                                    end else koopa_dir[i] <= luigi_x < koopa_x[i];
                                    luigi_vy <= -8; score <= score + 100;
                                end else if (!luigi_invincible && !god_mode) begin
                                    luigi_lives <= luigi_lives - 1;
                                    luigi_invincible <= 1; luigi_invincible_timer <= 60;
                                end
                            end
                            
                            if (spiny_active[i] && luigi_y >= 0 &&
                                luigi_x + MARIO_W > spiny_x[i] && luigi_x < spiny_x[i] + ENEMY_SIZE &&
                                luigi_y[9:0] + (luigi_squatting ? MARIO_H_SQUAT : MARIO_H) > spiny_y[i] &&
                                luigi_y[9:0] < spiny_y[i] + ENEMY_SIZE) begin
                                if (!luigi_invincible && !god_mode) begin
                                    luigi_lives <= luigi_lives - 1;
                                    luigi_invincible <= 1; luigi_invincible_timer <= 60;
                                end
                            end
                            
                            if (blocker_active[i] && luigi_y >= 0 &&
                                luigi_x + MARIO_W > blocker_x[i] && luigi_x < blocker_x[i] + ENEMY_SIZE &&
                                luigi_y[9:0] + (luigi_squatting ? MARIO_H_SQUAT : MARIO_H) > blocker_y[i] &&
                                luigi_y[9:0] < blocker_y[i] + ENEMY_SIZE) begin
                                if (!luigi_squatting || luigi_y[9:0] + MARIO_H_SQUAT > blocker_y[i]) begin
                                    if (!luigi_invincible && !god_mode) begin
                                        luigi_lives <= luigi_lives - 1;
                                        luigi_invincible <= 1; luigi_invincible_timer <= 60;
                                    end
                                end
                            end
                            
                            if (flying_active[i] && luigi_y >= 0 &&
                                luigi_x + MARIO_W > flying_x[i] && luigi_x < flying_x[i] + ENEMY_SIZE &&
                                luigi_y[9:0] + (luigi_squatting ? MARIO_H_SQUAT : MARIO_H) > flying_y[i] &&
                                luigi_y[9:0] < flying_y[i] + ENEMY_SIZE) begin
                                if (luigi_vy > 0 && luigi_y[9:0] + (luigi_squatting ? MARIO_H_SQUAT : MARIO_H) < flying_y[i] + 8) begin
                                    flying_active[i] <= 0; luigi_vy <= -10; score <= score + 200;
                                end else if (!luigi_invincible && !god_mode) begin
                                    luigi_lives <= luigi_lives - 1;
                                    luigi_invincible <= 1; luigi_invincible_timer <= 60;
                                end
                            end
                        end
                        
                        for (i = 0; i < 6; i = i + 1) begin
                            if (coin_active[i] &&
                                luigi_x + MARIO_W > coin_x[i] && luigi_x < coin_x[i] + 12 &&
                                luigi_y + MARIO_H > coin_y[i] && luigi_y < coin_y[i] + 12) begin
                                coin_active[i] <= 0; score <= score + 50;
                            end
                        end
                    end
                    
                    // Victory conditions
                    if (mario_x >= level_end_x - 32) mario_at_flag <= 1;
                    if (two_player_mode && luigi_lives > 0 && luigi_x >= level_end_x - 32) luigi_at_flag <= 1;
                    
                    if (two_player_mode) begin
                        if (mario_at_flag && luigi_at_flag) begin
                            if (current_level < 4) begin
                                current_level <= current_level + 1;
                                score <= score + 1000;
                                game_state <= STATE_LEVELCLEAR;
                            end else game_state <= STATE_WIN;
                        end
                    end else begin
                        if (mario_at_flag) begin
                            if (current_level < 4) begin
                                current_level <= current_level + 1;
                                score <= score + 1000;
                                game_state <= STATE_LEVELCLEAR;
                            end else game_state <= STATE_WIN;
                        end
                    end
                    
                    if (two_player_mode) begin
                        if ((mario_lives == 0) || (luigi_lives == 0))
                            game_state <= STATE_GAMEOVER;
                    end else begin
                        if (mario_lives == 0)
                            game_state <= STATE_GAMEOVER;
                    end
                    
                    if (time_left == 0 && !god_mode) game_state <= STATE_GAMEOVER;
                end
                
                STATE_PAUSED: begin
                    if (key_p && !key_p_prev) game_state <= STATE_PLAYING;
                    if (key_q && !key_q_prev) game_state <= STATE_TITLE;
                end
                
                STATE_LEVELCLEAR: begin
                    if (any_key && !any_key_prev) begin
                        mario_at_flag <= 0; luigi_at_flag <= 0;
                        init_level(current_level);
                        game_state <= STATE_PLAYING;
                    end
                end
                
                STATE_GAMEOVER, STATE_WIN: begin
                    if (key_r && !key_r_prev) begin
                        mario_lives <= 3; luigi_lives <= 3;
                        current_level <= 0; score <= 0;
                        mario_at_flag <= 0; luigi_at_flag <= 0;
                        init_level(0);
                        game_state <= STATE_PLAYING;
                    end
                    if (key_q && !key_q_prev) game_state <= STATE_TITLE;
                end
            endcase
        end
    end

    // ===========================================
    // RENDERING - v4.0: Enhanced UI!
    // ===========================================
    wire [3:0] sc0 = score % 10;
    wire [3:0] sc1 = (score / 10) % 10;
    wire [3:0] sc2 = (score / 100) % 10;
    wire [3:0] sc3 = (score / 1000) % 10;
    wire [3:0] sc4 = (score / 10000) % 10;
    wire [3:0] sc5 = (score / 100000) % 10;
    wire [3:0] t0 = time_left % 10;
    wire [3:0] t1 = (time_left / 10) % 10;
    wire [3:0] t2 = (time_left / 100) % 10;
    wire [12:0] world_x = DrawX + camera_x;
    
    wire [7:0] sky_r = (current_level == 0) ? 8'h5C : (current_level == 1) ? 8'h10 : (current_level == 2) ? 8'h87 : 8'h30;
    wire [7:0] sky_g = (current_level == 0) ? 8'h94 : (current_level == 1) ? 8'h10 : (current_level == 2) ? 8'hCE : 8'h20;
    wire [7:0] sky_b = (current_level == 0) ? 8'hFC : (current_level == 1) ? 8'h30 : (current_level == 2) ? 8'hEB : 8'h40;
    wire [7:0] ground_r = (current_level == 0) ? 8'h8B : (current_level == 1) ? 8'h50 : (current_level == 2) ? 8'hCC : 8'h40;
    wire [7:0] ground_g = (current_level == 0) ? 8'h45 : (current_level == 1) ? 8'h50 : (current_level == 2) ? 8'hCC : 8'h30;
    wire [7:0] ground_b = (current_level == 0) ? 8'h13 : (current_level == 1) ? 8'h50 : (current_level == 2) ? 8'hCC : 8'h30;
    wire [7:0] grass_r = (current_level == 0) ? 8'h00 : (current_level == 1) ? 8'h40 : (current_level == 2) ? 8'hFF : 8'hFF;
    wire [7:0] grass_g = (current_level == 0) ? 8'hA0 : (current_level == 1) ? 8'h40 : (current_level == 2) ? 8'hFF : 8'h40;
    wire [7:0] grass_b = (current_level == 0) ? 8'h00 : (current_level == 1) ? 8'h40 : (current_level == 2) ? 8'hFF : 8'h00;
    wire [7:0] brick_r = (current_level == 0) ? 8'hCD : (current_level == 1) ? 8'h80 : (current_level == 2) ? 8'hFF : 8'h60;
    wire [7:0] brick_g = (current_level == 0) ? 8'h85 : (current_level == 1) ? 8'h80 : (current_level == 2) ? 8'hCC : 8'h50;
    wire [7:0] brick_b = (current_level == 0) ? 8'h3F : (current_level == 1) ? 8'h80 : (current_level == 2) ? 8'hAA : 8'h50;
    
    reg [9:0] tx;
    reg [5:0] ci;
    reg [2:0] cpx, cpy;
    reg [6:0] cc;
    reg [3:0] spx;
    reg [4:0] spy;
    reg [2:0] scol;
    reg [23:0] srgb;
    integer ri;

    always @(*) begin
        Red = sky_r; Green = sky_g; Blue = sky_b;
        
        if (game_state == STATE_PLAYING || game_state == STATE_PAUSED) begin
            // Background hills (far)
            if (DrawY >= 320 && DrawY < GROUND_Y) begin
                // Far hills (parallax - move slower)
                if ((((world_x >> 1) + 100) % 600 < 200) && 
                    (DrawY > 380 - (100 - (((world_x >> 1) + 100) % 600 - 100) * (((world_x >> 1) + 100) % 600 - 100) / 100)))
                    begin Red = 8'h40; Green = 8'h80; Blue = 8'h40; end
                // Near hills  
                if (((world_x + 50) % 450 < 180) && 
                    (DrawY > 360 - (80 - ((world_x + 50) % 450 - 90) * ((world_x + 50) % 450 - 90) / 100)))
                    begin Red = 8'h50; Green = 8'hA0; Blue = 8'h50; end
            end
            
            // Background clouds (fluffy)
            if (DrawY >= 60 && DrawY < 140) begin
                // Large clouds
                if (((world_x + 50) % 500 < 80) && DrawY >= 80 && DrawY < 120)
                    begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
                if (((world_x + 70) % 500 < 60) && DrawY >= 70 && DrawY < 110)
                    begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
                if (((world_x + 30) % 500 < 50) && DrawY >= 90 && DrawY < 125)
                    begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
                // Small clouds
                if (((world_x + 300) % 400 < 50) && DrawY >= 100 && DrawY < 130)
                    begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
            
            // Decorative bushes
            if (DrawY >= GROUND_Y - 20 && DrawY < GROUND_Y) begin
                if (((world_x + 150) % 350 < 40))
                    begin Red = 8'h20; Green = 8'h80; Blue = 8'h20; end
            end
            
            // Ground with brick pattern
            if (DrawY >= GROUND_Y) begin
                // Top grass layer
                if ((DrawY - GROUND_Y) < 8) begin
                    Red = grass_r; Green = grass_g; Blue = grass_b;
                    // Grass detail
                    if ((DrawY - GROUND_Y) < 3 && ((world_x + DrawY) & 4) == 0)
                        begin Green = grass_g + 8'h20; end
                end
                // Dirt/brick layer below
                else begin
                    // Brick pattern
                    if ((((DrawY - GROUND_Y) & 7) == 0) || 
                        ((((DrawY - GROUND_Y) & 8) != 0) ? ((world_x & 15) == 0) : ((world_x & 15) == 8)))
                        begin Red = ground_r >> 1; Green = ground_g >> 1; Blue = ground_b >> 1; end
                    else
                        begin Red = ground_r; Green = ground_g; Blue = ground_b; end
                end
            end
            
            // Platforms with grass top and brick sides
            for (ri = 0; ri < 8; ri = ri + 1)
                if (world_x >= platform_x[ri] && world_x < platform_x[ri] + platform_w[ri] &&
                    DrawY >= platform_y[ri] && DrawY < platform_y[ri] + 16) begin
                    spx = world_x - platform_x[ri]; spy = DrawY - platform_y[ri];
                    // Top grass layer
                    if (spy < 5) begin
                        Red = grass_r; Green = grass_g; Blue = grass_b;
                        if (spy < 2 && ((spx + spy) & 3) == 0) Green = grass_g + 8'h20;
                    end
                    // Brick body
                    else begin
                        Red = ground_r; Green = ground_g; Blue = ground_b;
                        // Brick lines
                        if ((spy == 5) || ((spy & 3) == 1 && spx[2:0] == 3'd0))
                            begin Red = ground_r >> 1; Green = ground_g >> 1; Blue = ground_b >> 1; end
                    end
                    // Edge shading
                    if (spx == 0 || spx == platform_w[ri] - 1)
                        begin Red = Red >> 1; Green = Green >> 1; Blue = Blue >> 1; end
                end
            
            // Obstacles with brick texture
            for (ri = 0; ri < 10; ri = ri + 1)
                if (world_x >= obstacle_x[ri] && world_x < obstacle_x[ri] + 32 &&
                    DrawY >= obstacle_y[ri] && DrawY < obstacle_y[ri] + 32) begin
                    spx = world_x - obstacle_x[ri]; spy = DrawY - obstacle_y[ri];
                    // Brick pattern: 8x4 bricks with mortar
                    if ((spy[2:0] == 3'd0) || (spy[3] ? (spx[3:0] == 4'd0) : (spx[3:0] == 4'd8)))
                        begin Red = 8'h80; Green = 8'h80; Blue = 8'h80; end // Mortar
                    else begin
                        Red = brick_r; Green = brick_g; Blue = brick_b;
                        // Brick shading for 3D effect
                        if (spy[2:0] == 3'd1) begin Red = brick_r + 8'h20; Green = brick_g + 8'h10; end
                        else if (spy[2:0] == 3'd7) begin Red = brick_r >> 1; Green = brick_g >> 1; Blue = brick_b >> 1; end
                    end
                end
            
            // Q-blocks with riveted texture
            for (ri = 0; ri < 5; ri = ri + 1)
                if (world_x >= qblock_x[ri] && world_x < qblock_x[ri] + 24 &&
                    DrawY >= qblock_y[ri] && DrawY < qblock_y[ri] + 24) begin
                    spx = world_x - qblock_x[ri]; spy = DrawY - qblock_y[ri];
                    if (qblock_active[ri]) begin
                        // Base gold color
                        Red = 8'hFF; Green = 8'hC0; Blue = 8'h00;
                        // Border - darker
                        if (spx < 2 || spx >= 22 || spy < 2 || spy >= 22)
                            begin Red = 8'hC0; Green = 8'h80; Blue = 8'h00; end
                        // Corner rivets
                        else if ((spx < 5 && spy < 5) || (spx >= 19 && spy < 5) ||
                                 (spx < 5 && spy >= 19) || (spx >= 19 && spy >= 19))
                            begin Red = 8'hA0; Green = 8'h60; Blue = 8'h00; end
                        // ? mark (animated bounce)
                        else if ((spx >= 9 && spx < 15 && spy >= (anim_counter[4] ? 5 : 7) && spy < (anim_counter[4] ? 11 : 13)) ||
                                 (spx >= 10 && spx < 14 && spy >= (anim_counter[4] ? 14 : 16) && spy < (anim_counter[4] ? 16 : 18)))
                            begin Red = 8'h80; Green = 8'h40; Blue = 8'h00; end
                        // Shine spot
                        else if (spx >= 4 && spx < 7 && spy >= 4 && spy < 7)
                            begin Red = 8'hFF; Green = 8'hFF; Blue = 8'h80; end
                    end else begin
                        // Used block - brown with texture
                        Red = 8'h60; Green = 8'h40; Blue = 8'h20;
                        if (spx < 2 || spx >= 22 || spy < 2 || spy >= 22)
                            begin Red = 8'h40; Green = 8'h28; Blue = 8'h10; end
                    end
                end
            
            // Decorative pipes (green warp pipes)
            for (ri = 0; ri < 3; ri = ri + 1) begin
                // Pipe body
                if (world_x >= pipe_x[ri] && world_x < pipe_x[ri] + 32 &&
                    DrawY >= GROUND_Y - pipe_h[ri] && DrawY < GROUND_Y) begin
                    spx = world_x - pipe_x[ri]; spy = DrawY - (GROUND_Y - pipe_h[ri]);
                    // Main body - green
                    Red = 8'h00; Green = 8'h80; Blue = 8'h00;
                    // Left edge highlight
                    if (spx < 4) begin Red = 8'h40; Green = 8'hC0; Blue = 8'h40; end
                    // Right edge shadow
                    else if (spx >= 28) begin Red = 8'h00; Green = 8'h40; Blue = 8'h00; end
                    // Top rim (wider)
                    if (spy < 8) begin
                        if (world_x >= pipe_x[ri] - 4 && world_x < pipe_x[ri] + 36) begin
                            Red = 8'h00; Green = 8'h80; Blue = 8'h00;
                            if ((world_x - pipe_x[ri] + 4) < 4) begin Red = 8'h40; Green = 8'hC0; Blue = 8'h40; end
                            else if ((world_x - pipe_x[ri] + 4) >= 36) begin Red = 8'h00; Green = 8'h40; Blue = 8'h00; end
                        end
                    end
                end
                // Pipe rim extension
                if (world_x >= pipe_x[ri] - 4 && world_x < pipe_x[ri] + 36 &&
                    DrawY >= GROUND_Y - pipe_h[ri] && DrawY < GROUND_Y - pipe_h[ri] + 8) begin
                    spx = world_x - (pipe_x[ri] - 4);
                    Red = 8'h00; Green = 8'h80; Blue = 8'h00;
                    if (spx < 4) begin Red = 8'h40; Green = 8'hC0; Blue = 8'h40; end
                    else if (spx >= 36) begin Red = 8'h00; Green = 8'h40; Blue = 8'h00; end
                end
            end
            
            // Coins with shine effect
            for (ri = 0; ri < 6; ri = ri + 1)
                if (coin_active[ri]) begin
                    spx = world_x - coin_x[ri]; spy = DrawY - coin_y[ri] - (anim_counter[3] ? 0 : 2);
                    // Coin body (animated width for spin effect)
                    if (spx >= (anim_counter[4] ? 4 : 2) && spx < (anim_counter[4] ? 8 : 10) &&
                        spy >= 0 && spy < 12) begin
                        Red = 8'hFF; Green = 8'hD7; Blue = 8'h00;
                        // Inner shine
                        if (spy >= 2 && spy < 5 && spx >= 4 && spx < 7)
                            begin Red = 8'hFF; Green = 8'hFF; Blue = 8'h80; end
                        // Dark edge
                        if (spy == 0 || spy == 11)
                            begin Red = 8'hC0; Green = 8'h80; Blue = 8'h00; end
                    end
                end
            
            // Flag pole and flag
            if (world_x >= level_end_x && world_x < level_end_x + 8 && DrawY >= 120 && DrawY < GROUND_Y) begin
                // Pole
                if (world_x >= level_end_x + 2 && world_x < level_end_x + 6)
                    begin Red = 8'h60; Green = 8'h60; Blue = 8'h60; end
                // Flag (waving animation)
                if (world_x < level_end_x + 2 && DrawY >= 130 && DrawY < 170) begin
                    if (anim_counter[3])
                        begin Red = 8'h00; Green = 8'hC0; Blue = 8'h00; end
                    else
                        begin Red = 8'hFF; Green = 8'h40; Blue = 8'h40; end
                end
            end
            // Flag ball on top
            if (world_x >= level_end_x && world_x < level_end_x + 8 && DrawY >= 115 && DrawY < 125)
                begin Red = 8'hFF; Green = 8'hD7; Blue = 8'h00; end
            
            // Mushroom with white spots
            if (mushroom_active && world_x >= mushroom_x && world_x < mushroom_x + ENEMY_SIZE &&
                DrawY >= mushroom_y && DrawY < mushroom_y + ENEMY_SIZE) begin
                spx = world_x - mushroom_x; spy = DrawY - mushroom_y;
                // Red cap
                if (spy < 10 && spx >= 1 && spx < 15) begin 
                    Red = 8'hFF; Green = 8'h00; Blue = 8'h00;
                    // White spots
                    if ((spx >= 3 && spx < 6 && spy >= 2 && spy < 5) ||
                        (spx >= 10 && spx < 13 && spy >= 2 && spy < 5) ||
                        (spx >= 6 && spx < 10 && spy >= 5 && spy < 8))
                        begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
                end
                // Stem
                if (spy >= 10 && spx >= 4 && spx < 12) 
                    begin Red = 8'hFF; Green = 8'hE0; Blue = 8'hC0; end
            end
            
            // Star
            if (star_active && world_x >= star_x && world_x < star_x + ENEMY_SIZE &&
                DrawY >= star_y && DrawY < star_y + ENEMY_SIZE) begin
                spx = world_x - star_x; spy = DrawY - star_y;
                if ((spx >= 6 && spx < 10) || (spy >= 6 && spy < 10) ||
                    (spx >= 2 && spx < 14 && spy >= 4 && spy < 12)) begin
                    case (anim_counter[2:0])
                        3'd0: begin Red = 8'hFF; Green = 8'h00; Blue = 8'h00; end
                        3'd1: begin Red = 8'hFF; Green = 8'h80; Blue = 8'h00; end
                        3'd2: begin Red = 8'hFF; Green = 8'hFF; Blue = 8'h00; end
                        3'd3: begin Red = 8'h00; Green = 8'hFF; Blue = 8'h00; end
                        3'd4: begin Red = 8'h00; Green = 8'hFF; Blue = 8'hFF; end
                        3'd5: begin Red = 8'h00; Green = 8'h00; Blue = 8'hFF; end
                        3'd6: begin Red = 8'hFF; Green = 8'h00; Blue = 8'hFF; end
                        3'd7: begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
                    endcase
                end
            end
            
            // Enemies
            for (ri = 0; ri < 6; ri = ri + 1)
                if (goomba_active[ri] && world_x >= goomba_x[ri] && world_x < goomba_x[ri] + ENEMY_SIZE &&
                    DrawY >= goomba_y[ri] && DrawY < goomba_y[ri] + ENEMY_SIZE) begin
                    spx = world_x - goomba_x[ri]; spy = DrawY - goomba_y[ri];
                    scol = get_goomba_pixel(spx, spy[3:0]);
                    if (scol != 0) begin srgb = goomba_color(scol); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
                end
            
            for (ri = 0; ri < 3; ri = ri + 1) begin
                if (koopa_active[ri]) begin
                    if (koopa_is_shell[ri] && world_x >= koopa_x[ri] && world_x < koopa_x[ri] + ENEMY_SIZE &&
                        DrawY >= koopa_y[ri] && DrawY < koopa_y[ri] + ENEMY_SIZE) begin
                        spx = world_x - koopa_x[ri]; spy = DrawY - koopa_y[ri];
                        scol = get_shell_pixel(spx, spy[3:0]);
                        if (scol != 0) begin srgb = koopa_color(scol); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
                    end
                    if (!koopa_is_shell[ri] && world_x >= koopa_x[ri] && world_x < koopa_x[ri] + ENEMY_SIZE &&
                        DrawY >= koopa_y[ri] && DrawY < koopa_y[ri] + 24) begin
                        spx = world_x - koopa_x[ri]; spy = DrawY - koopa_y[ri];
                        scol = get_koopa_pixel(spx, spy);
                        if (scol != 0) begin srgb = koopa_color(scol); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
                    end
                end
                
                if (spiny_active[ri] && world_x >= spiny_x[ri] && world_x < spiny_x[ri] + ENEMY_SIZE &&
                    DrawY >= spiny_y[ri] && DrawY < spiny_y[ri] + ENEMY_SIZE) begin
                    spx = world_x - spiny_x[ri]; spy = DrawY - spiny_y[ri];
                    scol = get_spiny_pixel(spx, spy[3:0]);
                    if (scol != 0) begin srgb = spiny_color(scol); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
                end
                
                if (blocker_active[ri] && world_x >= blocker_x[ri] && world_x < blocker_x[ri] + ENEMY_SIZE &&
                    DrawY >= blocker_y[ri] && DrawY < blocker_y[ri] + ENEMY_SIZE) begin
                    spx = world_x - blocker_x[ri]; spy = DrawY - blocker_y[ri];
                    scol = get_blocker_pixel(spx, spy[3:0]);
                    if (scol != 0) begin srgb = blocker_color(scol); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
                end
                
                if (flying_active[ri] && world_x >= flying_x[ri] && world_x < flying_x[ri] + ENEMY_SIZE &&
                    DrawY >= flying_y[ri] && DrawY < flying_y[ri] + ENEMY_SIZE) begin
                    spx = world_x - flying_x[ri]; spy = DrawY - flying_y[ri];
                    scol = get_flying_pixel(spx, spy[3:0]);
                    if (scol != 0) begin srgb = flying_color(scol); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
                end
            end
            
            // Mario
            if (mario_lives > 0 && (!mario_invincible || anim_counter[2]) &&
                DrawX >= mario_x - camera_x && DrawX < mario_x - camera_x + MARIO_W) begin
                if (mario_squatting && DrawY >= mario_y && DrawY < mario_y + MARIO_H_SQUAT) begin
                    spx = mario_facing_right ? (DrawX - (mario_x - camera_x)) : (MARIO_W - 1 - (DrawX - (mario_x - camera_x)));
                    spy = DrawY - mario_y;
                    scol = get_mario_squat_pixel(spx, spy[3:0]);
                    if (scol != 0) begin srgb = mario_color(scol, 1'b0); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
                end
                if (!mario_squatting && DrawY >= mario_y && DrawY < mario_y + MARIO_H) begin
                    spx = mario_facing_right ? (DrawX - (mario_x - camera_x)) : (MARIO_W - 1 - (DrawX - (mario_x - camera_x)));
                    spy = DrawY - mario_y;
                    scol = get_mario_pixel(spx, spy);
                    if (scol != 0) begin srgb = mario_color(scol, 1'b0); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
                end
            end
            
            // Luigi
            if (two_player_mode && luigi_lives > 0 && (!luigi_invincible || anim_counter[2]) &&
                DrawX >= luigi_x - camera_x && DrawX < luigi_x - camera_x + MARIO_W) begin
                if (luigi_squatting && DrawY >= luigi_y && DrawY < luigi_y + MARIO_H_SQUAT) begin
                    spx = luigi_facing_right ? (DrawX - (luigi_x - camera_x)) : (MARIO_W - 1 - (DrawX - (luigi_x - camera_x)));
                    spy = DrawY - luigi_y;
                    scol = get_mario_squat_pixel(spx, spy[3:0]);
                    if (scol != 0) begin srgb = mario_color(scol, 1'b1); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
                end
                if (!luigi_squatting && DrawY >= luigi_y && DrawY < luigi_y + MARIO_H) begin
                    spx = luigi_facing_right ? (DrawX - (luigi_x - camera_x)) : (MARIO_W - 1 - (DrawX - (luigi_x - camera_x)));
                    spy = DrawY - luigi_y;
                    scol = get_mario_pixel(spx, spy);
                    if (scol != 0) begin srgb = mario_color(scol, 1'b1); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
                end
            end
            
            // HUD
            if (DrawY < 40) begin
                Red = Red >> 1; Green = Green >> 1; Blue = Blue >> 1;
                if (DrawY >= 8 && DrawY < 16 && DrawX >= 16 && DrawX < 64) begin
                    tx = DrawX - 16; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 8);
                    case (ci) 0:cc=7'h53; 1:cc=7'h43; 2:cc=7'h4F; 3:cc=7'h52; 4:cc=7'h45; 5:cc=7'h3A; default:cc=7'h20; endcase
                    if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
                end
                if (DrawY >= 8 && DrawY < 16 && DrawX >= 72 && DrawX < 120) begin
                    tx = DrawX - 72; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 8);
                    case (ci) 0:cc=d2c(sc5); 1:cc=d2c(sc4); 2:cc=d2c(sc3); 3:cc=d2c(sc2); 4:cc=d2c(sc1); 5:cc=d2c(sc0); default:cc=7'h20; endcase
                    if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'h00; end
                end
                if (DrawY >= 8 && DrawY < 16 && DrawX >= 520 && DrawX < 568) begin
                    tx = DrawX - 520; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 8);
                    case (ci) 0:cc=7'h54; 1:cc=7'h49; 2:cc=7'h4D; 3:cc=7'h45; 4:cc=7'h3A; default:cc=7'h20; endcase
                    if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
                end
                if (DrawY >= 8 && DrawY < 16 && DrawX >= 576 && DrawX < 600) begin
                    tx = DrawX - 576; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 8);
                    case (ci) 0:cc=d2c(t2); 1:cc=d2c(t1); 2:cc=d2c(t0); default:cc=7'h20; endcase
                    if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'h00; end
                end
                for (ri = 0; ri < 5; ri = ri + 1) begin
                    if (ri < mario_lives && DrawX >= 520 + ri * 16 && DrawX < 532 + ri * 16 && DrawY >= 24 && DrawY < 36)
                        begin Red = 8'hFF; Green = 8'h40; Blue = 8'h40; end
                    if (two_player_mode && ri < luigi_lives && DrawX >= 420 + ri * 16 && DrawX < 432 + ri * 16 && DrawY >= 24 && DrawY < 36)
                        begin Red = 8'h40; Green = 8'hFF; Blue = 8'h40; end
                end
                if (god_mode && DrawX >= 300 && DrawX < 340 && DrawY >= 8 && DrawY < 16) begin
                    tx = DrawX - 300; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 8);
                    case (ci) 0:cc=7'h47; 1:cc=7'h4F; 2:cc=7'h44; default:cc=7'h20; endcase
                    if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'h00; Blue = 8'hFF; end
                end
            end
        end
        
        // ===========================================
        // TITLE SCREEN - v4.0: Enhanced with authors!
        // ===========================================
        else if (game_state == STATE_TITLE) begin
            // Gradient sky background
            Red = 8'h30 + (DrawY >> 3); Green = 8'h60 + (DrawY >> 3); Blue = 8'hD0 - (DrawY >> 4);
            
            // Ground at bottom
            if (DrawY >= 400) begin
                Red = 8'h8B; Green = 8'h45; Blue = 8'h13;
                if (DrawY < 406) begin Red = 8'h00; Green = 8'hA0; Blue = 8'h00; end
            end
            
            // Decorative border
            if ((DrawX < 4 || DrawX >= 636) && DrawY < 400)
                begin Red = 8'hFF; Green = 8'hD7; Blue = 8'h00; end
            
            // Title box with border
            if (DrawY >= 80 && DrawY < 280 && DrawX >= 80 && DrawX < 560) begin
                Red = 8'h20; Green = 8'h40; Blue = 8'hA0;
                // Gold border
                if (DrawX < 84 || DrawX >= 556 || DrawY < 84 || DrawY >= 276)
                    begin Red = 8'hFF; Green = 8'hD7; Blue = 8'h00; end
            end
            
            // SUPER MARIO BROS (2x size)
            if (DrawY >= 100 && DrawY < 116 && DrawX >= 168 && DrawX < 472) begin
                tx = DrawX - 168; ci = tx >> 4; cpx = (tx >> 1) & 7; cpy = ((DrawY - 100) >> 1) & 7;
                case (ci) 0:cc=7'h53; 1:cc=7'h55; 2:cc=7'h50; 3:cc=7'h45; 4:cc=7'h52; 5:cc=7'h20; 6:cc=7'h4D; 7:cc=7'h41; 8:cc=7'h52; 9:cc=7'h49; 10:cc=7'h4F; 11:cc=7'h20; 12:cc=7'h42; 13:cc=7'h52; 14:cc=7'h4F; 15:cc=7'h53; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
            
            // FPGA EDITION
            if (DrawY >= 130 && DrawY < 138 && DrawX >= 248 && DrawX < 392) begin
                tx = DrawX - 248; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 130);
                case (ci) 0:cc=7'h46; 1:cc=7'h50; 2:cc=7'h47; 3:cc=7'h41; 4:cc=7'h20; 5:cc=7'h45; 6:cc=7'h44; 7:cc=7'h49; 8:cc=7'h54; 9:cc=7'h49; 10:cc=7'h4F; 11:cc=7'h4E; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'h80; Green = 8'hFF; Blue = 8'h80; end
            end
            
            // Animated Mario and Luigi sprites (2x size)
            if (DrawX >= 240 && DrawX < 272 && DrawY >= (155 + (anim_counter[4] ? 0 : 4)) && DrawY < (203 + (anim_counter[4] ? 0 : 4))) begin
                spx = (DrawX - 240) >> 1; spy = (DrawY - 155 - (anim_counter[4] ? 0 : 4)) >> 1;
                scol = get_mario_pixel(spx, spy);
                if (scol != 0) begin srgb = mario_color(scol, 1'b0); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
            end
            if (DrawX >= 368 && DrawX < 400 && DrawY >= (155 + (anim_counter[4] ? 4 : 0)) && DrawY < (203 + (anim_counter[4] ? 4 : 0))) begin
                spx = (DrawX - 368) >> 1; spy = (DrawY - 155 - (anim_counter[4] ? 4 : 0)) >> 1;
                scol = get_mario_pixel(spx, spy);
                if (scol != 0) begin srgb = mario_color(scol, 1'b1); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
            end
            
            // Author names: CHEN ZENG & XINYANG LIU
            if (DrawY >= 220 && DrawY < 228 && DrawX >= 176 && DrawX < 464) begin
                tx = DrawX - 176; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 220);
                case (ci) 
                    0:cc=7'h43; 1:cc=7'h48; 2:cc=7'h45; 3:cc=7'h4E; 4:cc=7'h20; 5:cc=7'h5A; 6:cc=7'h45; 7:cc=7'h4E; 8:cc=7'h47; 
                    9:cc=7'h20; 10:cc=7'h26; 11:cc=7'h20; 
                    12:cc=7'h58; 13:cc=7'h49; 14:cc=7'h4E; 15:cc=7'h59; 16:cc=7'h41; 17:cc=7'h4E; 18:cc=7'h47; 19:cc=7'h20; 20:cc=7'h4C; 21:cc=7'h49; 22:cc=7'h55;
                    default:cc=7'h20; 
                endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hD7; Blue = 8'h00; end
            end
            
            // ECE 385 - UIUC
            if (DrawY >= 240 && DrawY < 248 && DrawX >= 232 && DrawX < 408) begin
                tx = DrawX - 232; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 240);
                case (ci) 0:cc=7'h45; 1:cc=7'h43; 2:cc=7'h45; 3:cc=7'h20; 4:cc=7'h33; 5:cc=7'h38; 6:cc=7'h35; 7:cc=7'h20; 8:cc=7'h2D; 9:cc=7'h20; 10:cc=7'h55; 11:cc=7'h49; 12:cc=7'h55; 13:cc=7'h43; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'h80; Blue = 8'h40; end
            end
            
            // Decorative coins
            if (anim_counter[3]) begin
                if (((DrawX >= 120 && DrawX < 132) || (DrawX >= 508 && DrawX < 520)) && DrawY >= 180 && DrawY < 192)
                    begin Red = 8'hFF; Green = 8'hD7; Blue = 8'h00; end
            end
            
            // PRESS ENTER TO START (blinking)
            if (DrawY >= 310 && DrawY < 318 && DrawX >= 192 && DrawX < 448 && anim_counter[4]) begin
                tx = DrawX - 192; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 310);
                case (ci) 0:cc=7'h50; 1:cc=7'h52; 2:cc=7'h45; 3:cc=7'h53; 4:cc=7'h53; 5:cc=7'h20; 6:cc=7'h45; 7:cc=7'h4E; 8:cc=7'h54; 9:cc=7'h45; 10:cc=7'h52; 11:cc=7'h20; 12:cc=7'h54; 13:cc=7'h4F; 14:cc=7'h20; 15:cc=7'h53; 16:cc=7'h54; 17:cc=7'h41; 18:cc=7'h52; 19:cc=7'h54; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'h00; Green = 8'hFF; Blue = 8'h00; end
            end
        end
        
        // ===========================================
        // PLAYER SELECT - v4.0: Enhanced
        // ===========================================
        else if (game_state == STATE_PLAYERSEL) begin
            Red = 8'h20; Green = 8'h40; Blue = 8'h80;
            
            // Selection box with border
            if (DrawY >= 130 && DrawY < 350 && DrawX >= 120 && DrawX < 520) begin
                Red = 8'h30; Green = 8'h50; Blue = 8'hA0;
                if (DrawX < 124 || DrawX >= 516 || DrawY < 134 || DrawY >= 346)
                    begin Red = 8'hFF; Green = 8'hD7; Blue = 8'h00; end
            end
            
            // SELECT MODE
            if (DrawY >= 150 && DrawY < 166 && DrawX >= 224 && DrawX < 416) begin
                tx = DrawX - 224; ci = tx >> 4; cpx = (tx >> 1) & 7; cpy = ((DrawY - 150) >> 1) & 7;
                case (ci) 0:cc=7'h53; 1:cc=7'h45; 2:cc=7'h4C; 3:cc=7'h45; 4:cc=7'h43; 5:cc=7'h54; 6:cc=7'h20; 7:cc=7'h4D; 8:cc=7'h4F; 9:cc=7'h44; 10:cc=7'h45; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
            
            // [1] 1 PLAYER with Mario sprite
            if (DrawY >= 210 && DrawY < 218 && DrawX >= 200 && DrawX < 360) begin
                tx = DrawX - 200; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 210);
                case (ci) 0:cc=7'h5B; 1:cc=7'h31; 2:cc=7'h5D; 3:cc=7'h20; 4:cc=7'h31; 5:cc=7'h20; 6:cc=7'h50; 7:cc=7'h4C; 8:cc=7'h41; 9:cc=7'h59; 10:cc=7'h45; 11:cc=7'h52; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'h80; Blue = 8'h80; end
            end
            // Small Mario
            if (DrawX >= 380 && DrawX < 396 && DrawY >= 200 && DrawY < 224) begin
                spx = DrawX - 380; spy = DrawY - 200;
                scol = get_mario_pixel(spx, spy);
                if (scol != 0) begin srgb = mario_color(scol, 1'b0); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
            end
            
            // [2] 2 PLAYERS with Mario+Luigi sprites
            if (DrawY >= 280 && DrawY < 288 && DrawX >= 200 && DrawX < 368) begin
                tx = DrawX - 200; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 280);
                case (ci) 0:cc=7'h5B; 1:cc=7'h32; 2:cc=7'h5D; 3:cc=7'h20; 4:cc=7'h32; 5:cc=7'h20; 6:cc=7'h50; 7:cc=7'h4C; 8:cc=7'h41; 9:cc=7'h59; 10:cc=7'h45; 11:cc=7'h52; 12:cc=7'h53; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'h80; Green = 8'hFF; Blue = 8'h80; end
            end
            // Small Mario and Luigi
            if (DrawX >= 380 && DrawX < 396 && DrawY >= 270 && DrawY < 294) begin
                spx = DrawX - 380; spy = DrawY - 270;
                scol = get_mario_pixel(spx, spy);
                if (scol != 0) begin srgb = mario_color(scol, 1'b0); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
            end
            if (DrawX >= 400 && DrawX < 416 && DrawY >= 270 && DrawY < 294) begin
                spx = DrawX - 400; spy = DrawY - 270;
                scol = get_mario_pixel(spx, spy);
                if (scol != 0) begin srgb = mario_color(scol, 1'b1); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
            end
        end
        
        // ===========================================
        // INSTRUCTIONS - v4.0: Enhanced
        // ===========================================
        else if (game_state == STATE_INSTRUCTIONS) begin
            Red = 8'h10; Green = 8'h30; Blue = 8'h80;
            
            // Instructions box with border
            if (DrawY >= 60 && DrawY < 420 && DrawX >= 60 && DrawX < 580) begin
                Red = 8'h18; Green = 8'h30; Blue = 8'h60;
                if (DrawX < 64 || DrawX >= 576 || DrawY < 64 || DrawY >= 416)
                    begin Red = 8'hFF; Green = 8'hD7; Blue = 8'h00; end
            end
            
            // HOW TO PLAY (2x)
            if (DrawY >= 80 && DrawY < 96 && DrawX >= 232 && DrawX < 408) begin
                tx = DrawX - 232; ci = tx >> 4; cpx = (tx >> 1) & 7; cpy = ((DrawY - 80) >> 1) & 7;
                case (ci) 0:cc=7'h48; 1:cc=7'h4F; 2:cc=7'h57; 3:cc=7'h20; 4:cc=7'h54; 5:cc=7'h4F; 6:cc=7'h20; 7:cc=7'h50; 8:cc=7'h4C; 9:cc=7'h41; 10:cc=7'h59; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'h00; end
            end
            
            // PLAYER 1
            if (DrawY >= 120 && DrawY < 128 && DrawX >= 100 && DrawX < 180) begin
                tx = DrawX - 100; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 120);
                case (ci) 0:cc=7'h50; 1:cc=7'h31; 2:cc=7'h3A; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'h80; Blue = 8'h80; end
            end
            
            // WASD - MOVE
            if (DrawY >= 145 && DrawY < 153 && DrawX >= 100 && DrawX < 260) begin
                tx = DrawX - 100; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 145);
                case (ci) 0:cc=7'h57; 1:cc=7'h41; 2:cc=7'h53; 3:cc=7'h44; 4:cc=7'h20; 5:cc=7'h2D; 6:cc=7'h20; 7:cc=7'h4D; 8:cc=7'h4F; 9:cc=7'h56; 10:cc=7'h45; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
            
            // W/SPACE - JUMP
            if (DrawY >= 165 && DrawY < 173 && DrawX >= 100 && DrawX < 300) begin
                tx = DrawX - 100; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 165);
                case (ci) 0:cc=7'h57; 1:cc=7'h2F; 2:cc=7'h53; 3:cc=7'h50; 4:cc=7'h41; 5:cc=7'h43; 6:cc=7'h45; 7:cc=7'h20; 8:cc=7'h2D; 9:cc=7'h20; 10:cc=7'h4A; 11:cc=7'h55; 12:cc=7'h4D; 13:cc=7'h50; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
            
            // PLAYER 2
            if (DrawY >= 200 && DrawY < 208 && DrawX >= 100 && DrawX < 180) begin
                tx = DrawX - 100; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 200);
                case (ci) 0:cc=7'h50; 1:cc=7'h32; 2:cc=7'h3A; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'h80; Green = 8'hFF; Blue = 8'h80; end
            end
            
            // ARROWS - MOVE/JUMP
            if (DrawY >= 225 && DrawY < 233 && DrawX >= 100 && DrawX < 340) begin
                tx = DrawX - 100; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 225);
                case (ci) 0:cc=7'h41; 1:cc=7'h52; 2:cc=7'h52; 3:cc=7'h4F; 4:cc=7'h57; 5:cc=7'h53; 6:cc=7'h20; 7:cc=7'h2D; 8:cc=7'h20; 9:cc=7'h4D; 10:cc=7'h4F; 11:cc=7'h56; 12:cc=7'h45; 13:cc=7'h2F; 14:cc=7'h4A; 15:cc=7'h55; 16:cc=7'h4D; 17:cc=7'h50; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
            
            // GENERAL
            if (DrawY >= 270 && DrawY < 278 && DrawX >= 100 && DrawX < 200) begin
                tx = DrawX - 100; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 270);
                case (ci) 0:cc=7'h47; 1:cc=7'h45; 2:cc=7'h4E; 3:cc=7'h45; 4:cc=7'h52; 5:cc=7'h41; 6:cc=7'h4C; 7:cc=7'h3A; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hD7; Blue = 8'h00; end
            end
            
            // P - PAUSE
            if (DrawY >= 295 && DrawY < 303 && DrawX >= 100 && DrawX < 220) begin
                tx = DrawX - 100; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 295);
                case (ci) 0:cc=7'h50; 1:cc=7'h20; 2:cc=7'h2D; 3:cc=7'h20; 4:cc=7'h50; 5:cc=7'h41; 6:cc=7'h55; 7:cc=7'h53; 8:cc=7'h45; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
            
            // Q - QUIT
            if (DrawY >= 315 && DrawY < 323 && DrawX >= 100 && DrawX < 220) begin
                tx = DrawX - 100; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 315);
                case (ci) 0:cc=7'h51; 1:cc=7'h20; 2:cc=7'h2D; 3:cc=7'h20; 4:cc=7'h51; 5:cc=7'h55; 6:cc=7'h49; 7:cc=7'h54; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
            
            // R - RESTART
            if (DrawY >= 335 && DrawY < 343 && DrawX >= 100 && DrawX < 260) begin
                tx = DrawX - 100; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 335);
                case (ci) 0:cc=7'h52; 1:cc=7'h20; 2:cc=7'h2D; 3:cc=7'h20; 4:cc=7'h52; 5:cc=7'h45; 6:cc=7'h53; 7:cc=7'h54; 8:cc=7'h41; 9:cc=7'h52; 10:cc=7'h54; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
            
            // PRESS ANY KEY (blinking)
            if (DrawY >= 385 && DrawY < 393 && DrawX >= 232 && DrawX < 408 && anim_counter[4]) begin
                tx = DrawX - 232; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 385);
                case (ci) 0:cc=7'h50; 1:cc=7'h52; 2:cc=7'h45; 3:cc=7'h53; 4:cc=7'h53; 5:cc=7'h20; 6:cc=7'h41; 7:cc=7'h4E; 8:cc=7'h59; 9:cc=7'h20; 10:cc=7'h4B; 11:cc=7'h45; 12:cc=7'h59; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'h00; Green = 8'hFF; Blue = 8'h00; end
            end
        end
        
        // ===========================================
        // PAUSE SCREEN
        // ===========================================
        else if (game_state == STATE_PAUSED) begin
            Red = sky_r >> 1; Green = sky_g >> 1; Blue = sky_b >> 1;
            
            // Pause box
            if (DrawY >= 150 && DrawY < 330 && DrawX >= 150 && DrawX < 490) begin
                Red = 8'h20; Green = 8'h20; Blue = 8'h60;
                if (DrawX < 154 || DrawX >= 486 || DrawY < 154 || DrawY >= 326)
                    begin Red = 8'hFF; Green = 8'hD7; Blue = 8'h00; end
            end
            
            // PAUSED
            if (DrawY >= 180 && DrawY < 196 && DrawX >= 256 && DrawX < 384) begin
                tx = DrawX - 256; ci = tx >> 4; cpx = (tx >> 1) & 7; cpy = ((DrawY - 180) >> 1) & 7;
                case (ci) 0:cc=7'h50; 1:cc=7'h41; 2:cc=7'h55; 3:cc=7'h53; 4:cc=7'h45; 5:cc=7'h44; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
            
            // [P] RESUME
            if (DrawY >= 230 && DrawY < 238 && DrawX >= 232 && DrawX < 408) begin
                tx = DrawX - 232; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 230);
                case (ci) 0:cc=7'h5B; 1:cc=7'h50; 2:cc=7'h5D; 3:cc=7'h20; 4:cc=7'h52; 5:cc=7'h45; 6:cc=7'h53; 7:cc=7'h55; 8:cc=7'h4D; 9:cc=7'h45; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'h00; Green = 8'hFF; Blue = 8'h00; end
            end
            
            // [Q] QUIT
            if (DrawY >= 260 && DrawY < 268 && DrawX >= 256 && DrawX < 384) begin
                tx = DrawX - 256; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 260);
                case (ci) 0:cc=7'h5B; 1:cc=7'h51; 2:cc=7'h5D; 3:cc=7'h20; 4:cc=7'h51; 5:cc=7'h55; 6:cc=7'h49; 7:cc=7'h54; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'h80; Blue = 8'h80; end
            end
            
            // [R] RESTART
            if (DrawY >= 290 && DrawY < 298 && DrawX >= 240 && DrawX < 400) begin
                tx = DrawX - 240; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 290);
                case (ci) 0:cc=7'h5B; 1:cc=7'h52; 2:cc=7'h5D; 3:cc=7'h20; 4:cc=7'h52; 5:cc=7'h45; 6:cc=7'h53; 7:cc=7'h54; 8:cc=7'h41; 9:cc=7'h52; 10:cc=7'h54; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'h00; end
            end
        end
        
        // ===========================================
        // GAME OVER - v4.0: Enhanced
        // ===========================================
        else if (game_state == STATE_GAMEOVER) begin
            Red = 8'hC0; Green = 8'h40; Blue = 8'h40;
            
            // Dark box
            if (DrawY >= 140 && DrawY < 340 && DrawX >= 120 && DrawX < 520) begin
                Red = 8'h40; Green = 8'h10; Blue = 8'h10;
                if (DrawX < 124 || DrawX >= 516 || DrawY < 144 || DrawY >= 336)
                    begin Red = 8'h80; Green = 8'h00; Blue = 8'h00; end
            end
            
            // GAME OVER (2x)
            if (DrawY >= 170 && DrawY < 186 && DrawX >= 224 && DrawX < 416) begin
                tx = DrawX - 224; ci = tx >> 4; cpx = (tx >> 1) & 7; cpy = ((DrawY - 170) >> 1) & 7;
                case (ci) 0:cc=7'h47; 1:cc=7'h41; 2:cc=7'h4D; 3:cc=7'h45; 4:cc=7'h20; 5:cc=7'h4F; 6:cc=7'h56; 7:cc=7'h45; 8:cc=7'h52; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
            
            // FINAL SCORE:
            if (DrawY >= 220 && DrawY < 228 && DrawX >= 216 && DrawX < 424) begin
                tx = DrawX - 216; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 220);
                case (ci) 0:cc=7'h46; 1:cc=7'h49; 2:cc=7'h4E; 3:cc=7'h41; 4:cc=7'h4C; 5:cc=7'h20; 6:cc=7'h53; 7:cc=7'h43; 8:cc=7'h4F; 9:cc=7'h52; 10:cc=7'h45; 11:cc=7'h3A; 12:cc=7'h20; 
                    13:cc=d2c(sc5); 14:cc=d2c(sc4); 15:cc=d2c(sc3); 16:cc=d2c(sc2); 17:cc=d2c(sc1); 18:cc=d2c(sc0); default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'h00; end
            end
            
            // [R] RESTART
            if (DrawY >= 270 && DrawY < 278 && DrawX >= 240 && DrawX < 400) begin
                tx = DrawX - 240; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 270);
                case (ci) 0:cc=7'h5B; 1:cc=7'h52; 2:cc=7'h5D; 3:cc=7'h20; 4:cc=7'h52; 5:cc=7'h45; 6:cc=7'h53; 7:cc=7'h54; 8:cc=7'h41; 9:cc=7'h52; 10:cc=7'h54; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'h00; Green = 8'hFF; Blue = 8'h00; end
            end
            
            // [Q] MENU
            if (DrawY >= 300 && DrawY < 308 && DrawX >= 256 && DrawX < 384) begin
                tx = DrawX - 256; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 300);
                case (ci) 0:cc=7'h5B; 1:cc=7'h51; 2:cc=7'h5D; 3:cc=7'h20; 4:cc=7'h4D; 5:cc=7'h45; 6:cc=7'h4E; 7:cc=7'h55; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
        end
        
        // ===========================================
        // VICTORY SCREEN - v4.0: Enhanced with credits
        // ===========================================
        else if (game_state == STATE_WIN) begin
            // Rainbow cycling background
            case (anim_counter[4:2])
                3'd0: begin Red = 8'h40; Green = 8'h80; Blue = 8'hFF; end
                3'd1: begin Red = 8'h60; Green = 8'hA0; Blue = 8'hE0; end
                3'd2: begin Red = 8'h80; Green = 8'hC0; Blue = 8'hC0; end
                3'd3: begin Red = 8'hA0; Green = 8'hE0; Blue = 8'hA0; end
                3'd4: begin Red = 8'hC0; Green = 8'hFF; Blue = 8'h80; end
                3'd5: begin Red = 8'hFF; Green = 8'hE0; Blue = 8'h60; end
                3'd6: begin Red = 8'hFF; Green = 8'hC0; Blue = 8'h80; end
                3'd7: begin Red = 8'hE0; Green = 8'hA0; Blue = 8'hC0; end
            endcase
            
            // Victory box
            if (DrawY >= 80 && DrawY < 400 && DrawX >= 100 && DrawX < 540) begin
                Red = 8'h20; Green = 8'h40; Blue = 8'h80;
                if (DrawX < 104 || DrawX >= 536 || DrawY < 84 || DrawY >= 396)
                    begin Red = 8'hFF; Green = 8'hD7; Blue = 8'h00; end
            end
            
            // CONGRATULATIONS! (2x)
            if (DrawY >= 100 && DrawY < 116 && DrawX >= 128 && DrawX < 512) begin
                tx = DrawX - 128; ci = tx >> 4; cpx = (tx >> 1) & 7; cpy = ((DrawY - 100) >> 1) & 7;
                case (ci) 0:cc=7'h43; 1:cc=7'h4F; 2:cc=7'h4E; 3:cc=7'h47; 4:cc=7'h52; 5:cc=7'h41; 6:cc=7'h54; 7:cc=7'h55; 8:cc=7'h4C; 9:cc=7'h41; 10:cc=7'h54; 11:cc=7'h49; 12:cc=7'h4F; 13:cc=7'h4E; 14:cc=7'h53; 15:cc=7'h21; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'h00; end
            end
            
            // YOU WIN!
            if (DrawY >= 135 && DrawY < 151 && DrawX >= 256 && DrawX < 384) begin
                tx = DrawX - 256; ci = tx >> 4; cpx = (tx >> 1) & 7; cpy = ((DrawY - 135) >> 1) & 7;
                case (ci) 0:cc=7'h59; 1:cc=7'h4F; 2:cc=7'h55; 3:cc=7'h20; 4:cc=7'h57; 5:cc=7'h49; 6:cc=7'h4E; 7:cc=7'h21; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
            
            // Animated Mario and Luigi
            if (DrawX >= 220 && DrawX < 252 && DrawY >= (170 + (anim_counter[3] ? 0 : 8)) && DrawY < (218 + (anim_counter[3] ? 0 : 8))) begin
                spx = (DrawX - 220) >> 1; spy = (DrawY - 170 - (anim_counter[3] ? 0 : 8)) >> 1;
                scol = get_mario_pixel(spx, spy);
                if (scol != 0) begin srgb = mario_color(scol, 1'b0); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
            end
            if (DrawX >= 388 && DrawX < 420 && DrawY >= (170 + (anim_counter[3] ? 8 : 0)) && DrawY < (218 + (anim_counter[3] ? 8 : 0))) begin
                spx = (DrawX - 388) >> 1; spy = (DrawY - 170 - (anim_counter[3] ? 8 : 0)) >> 1;
                scol = get_mario_pixel(spx, spy);
                if (scol != 0) begin srgb = mario_color(scol, 1'b1); Red = srgb[23:16]; Green = srgb[15:8]; Blue = srgb[7:0]; end
            end
            
            // FINAL SCORE
            if (DrawY >= 240 && DrawY < 248 && DrawX >= 216 && DrawX < 424) begin
                tx = DrawX - 216; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 240);
                case (ci) 0:cc=7'h46; 1:cc=7'h49; 2:cc=7'h4E; 3:cc=7'h41; 4:cc=7'h4C; 5:cc=7'h20; 6:cc=7'h53; 7:cc=7'h43; 8:cc=7'h4F; 9:cc=7'h52; 10:cc=7'h45; 11:cc=7'h3A; 12:cc=7'h20; 
                    13:cc=d2c(sc5); 14:cc=d2c(sc4); 15:cc=d2c(sc3); 16:cc=d2c(sc2); 17:cc=d2c(sc1); 18:cc=d2c(sc0); default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'h00; end
            end
            
            // --- CREDITS ---
            if (DrawY >= 275 && DrawY < 283 && DrawX >= 240 && DrawX < 400) begin
                tx = DrawX - 240; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 275);
                case (ci) 0:cc=7'h2D; 1:cc=7'h2D; 2:cc=7'h2D; 3:cc=7'h20; 4:cc=7'h43; 5:cc=7'h52; 6:cc=7'h45; 7:cc=7'h44; 8:cc=7'h49; 9:cc=7'h54; 10:cc=7'h53; 11:cc=7'h20; 12:cc=7'h2D; 13:cc=7'h2D; 14:cc=7'h2D; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hD7; Blue = 8'h00; end
            end
            
            // CHEN ZENG
            if (DrawY >= 300 && DrawY < 308 && DrawX >= 256 && DrawX < 384) begin
                tx = DrawX - 256; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 300);
                case (ci) 0:cc=7'h43; 1:cc=7'h48; 2:cc=7'h45; 3:cc=7'h4E; 4:cc=7'h20; 5:cc=7'h5A; 6:cc=7'h45; 7:cc=7'h4E; 8:cc=7'h47; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
            
            // XINYANG LIU
            if (DrawY >= 318 && DrawY < 326 && DrawX >= 248 && DrawX < 392) begin
                tx = DrawX - 248; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 318);
                case (ci) 0:cc=7'h58; 1:cc=7'h49; 2:cc=7'h4E; 3:cc=7'h59; 4:cc=7'h41; 5:cc=7'h4E; 6:cc=7'h47; 7:cc=7'h20; 8:cc=7'h4C; 9:cc=7'h49; 10:cc=7'h55; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
            
            // ECE 385 UIUC
            if (DrawY >= 340 && DrawY < 348 && DrawX >= 232 && DrawX < 408) begin
                tx = DrawX - 232; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 340);
                case (ci) 0:cc=7'h45; 1:cc=7'h43; 2:cc=7'h45; 3:cc=7'h20; 4:cc=7'h33; 5:cc=7'h38; 6:cc=7'h35; 7:cc=7'h20; 8:cc=7'h2D; 9:cc=7'h20; 10:cc=7'h55; 11:cc=7'h49; 12:cc=7'h55; 13:cc=7'h43; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'h80; Blue = 8'h40; end
            end
            
            // [R] PLAY AGAIN
            if (DrawY >= 365 && DrawY < 373 && DrawX >= 224 && DrawX < 416) begin
                tx = DrawX - 224; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 365);
                case (ci) 0:cc=7'h5B; 1:cc=7'h52; 2:cc=7'h5D; 3:cc=7'h20; 4:cc=7'h50; 5:cc=7'h4C; 6:cc=7'h41; 7:cc=7'h59; 8:cc=7'h20; 9:cc=7'h41; 10:cc=7'h47; 11:cc=7'h41; 12:cc=7'h49; 13:cc=7'h4E; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'h00; Green = 8'hFF; Blue = 8'h00; end
            end
        end
        
        // ===========================================
        // LEVEL CLEAR
        // ===========================================
        else if (game_state == STATE_LEVELCLEAR) begin
            Red = 8'h40; Green = 8'h80; Blue = 8'hC0;
            
            // Box
            if (DrawY >= 160 && DrawY < 320 && DrawX >= 140 && DrawX < 500) begin
                Red = 8'h20; Green = 8'h40; Blue = 8'h80;
                if (DrawX < 144 || DrawX >= 496 || DrawY < 164 || DrawY >= 316)
                    begin Red = 8'hFF; Green = 8'hD7; Blue = 8'h00; end
            end
            
            // LEVEL CLEAR! (2x)
            if (DrawY >= 190 && DrawY < 206 && DrawX >= 192 && DrawX < 448) begin
                tx = DrawX - 192; ci = tx >> 4; cpx = (tx >> 1) & 7; cpy = ((DrawY - 190) >> 1) & 7;
                case (ci) 0:cc=7'h4C; 1:cc=7'h45; 2:cc=7'h56; 3:cc=7'h45; 4:cc=7'h4C; 5:cc=7'h20; 6:cc=7'h43; 7:cc=7'h4C; 8:cc=7'h45; 9:cc=7'h41; 10:cc=7'h52; 11:cc=7'h21; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'h00; end
            end
            
            // +1000
            if (DrawY >= 230 && DrawY < 238 && DrawX >= 280 && DrawX < 360) begin
                tx = DrawX - 280; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 230);
                case (ci) 0:cc=7'h2B; 1:cc=7'h31; 2:cc=7'h30; 3:cc=7'h30; 4:cc=7'h30; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'h00; Green = 8'hFF; Blue = 8'h00; end
            end
            
            // PRESS ANY KEY (blinking)
            if (DrawY >= 270 && DrawY < 278 && DrawX >= 232 && DrawX < 408 && anim_counter[4]) begin
                tx = DrawX - 232; ci = tx >> 3; cpx = tx[2:0]; cpy = (DrawY - 270);
                case (ci) 0:cc=7'h50; 1:cc=7'h52; 2:cc=7'h45; 3:cc=7'h53; 4:cc=7'h53; 5:cc=7'h20; 6:cc=7'h41; 7:cc=7'h4E; 8:cc=7'h59; 9:cc=7'h20; 10:cc=7'h4B; 11:cc=7'h45; 12:cc=7'h59; default:cc=7'h20; endcase
                if (font_pixel(cc, cpx, cpy)) begin Red = 8'hFF; Green = 8'hFF; Blue = 8'hFF; end
            end
        end
    end

endmodule