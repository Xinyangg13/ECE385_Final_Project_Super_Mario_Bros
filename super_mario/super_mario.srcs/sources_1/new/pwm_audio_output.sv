`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// PWM Audio Output Module
// Converts 8-bit unsigned audio samples to PWM for 3.5mm stereo output
// Sample rate: 22.05 kHz (100 MHz / 4535 ? 22050 Hz)
//////////////////////////////////////////////////////////////////////////////////

module pwm_audio_output (
    input wire clk,              // 100 MHz system clock
    input wire reset,
   
    // Audio data input (8-bit unsigned, 0-255)
    input wire [7:0] audio_sample,
    input wire sample_valid,
    output reg sample_ready,
   
    // PWM outputs (connect to 3.5mm jack)
    output wire pwm_left,
    output wire pwm_right
);

    // Sample rate divider: 100 MHz / 4535 ? 22.05 kHz
    localparam SAMPLE_DIV = 4315;
   
    reg [15:0] sample_counter = 0;
    reg sample_tick = 0;
   
    always @(posedge clk) begin
        if (reset) begin
            sample_counter <= 0;
            sample_tick <= 0;
        end else begin
            if (sample_counter == SAMPLE_DIV - 1) begin
                sample_counter <= 0;
                sample_tick <= 1;
            end else begin
                sample_counter <= sample_counter + 1;
                sample_tick <= 0;
            end
        end
    end
   
    // Sample buffer (holds current sample)
    reg [7:0] current_sample = 8'h80;  // Start at mid-point (silence)
   
    always @(posedge clk) begin
        if (reset) begin
            current_sample <= 8'h80;
            sample_ready <= 1;
        end else begin
            if (sample_tick) begin
                if (sample_valid) begin
                    current_sample <= audio_sample;
                    sample_ready <= 1;
                end else begin
                    sample_ready <= 1;
                end
            end else begin
                sample_ready <= 0;
            end
        end
    end
   
    // PWM Generator (8-bit resolution)
    // PWM frequency: 100 MHz / 256 = 390.625 kHz (well above audio range)
    reg [7:0] pwm_counter = 0;
   
    always @(posedge clk) begin
        if (reset)
            pwm_counter <= 0;
        else
            pwm_counter <= pwm_counter + 1;
    end
   
    // PWM output (both channels get same signal for mono audio)
    assign pwm_left = (pwm_counter < current_sample);
    assign pwm_right = (pwm_counter < current_sample);

endmodule