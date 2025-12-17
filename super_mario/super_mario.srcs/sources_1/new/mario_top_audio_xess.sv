`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Mario Top with Audio - Using Existing XESS SD Card Controller
//////////////////////////////////////////////////////////////////////////////////

module mario_top_audio_xess (
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
    output wire [2:0] hdmi_tmds_data_p,
   
    // SD Card (SPI Mode)
    output wire SD_SCLK,
    output wire SD_MOSI,
    input wire SD_MISO,
    output wire SD_CS,
   
    // 3.5mm Audio Jack
    output wire AUD_PWM_L,
    output wire AUD_PWM_R
);

    // Clock generation
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
    wire clk_100MHz = clk_from_mig;
   
    // VGA Timing
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
   
    // Keycode
    wire [31:0] keycode_channel_1;
    wire [31:0] keycode_channel_2;
   
    // Sprite Engine
    wire [7:0] red, green, blue;
   
    sprite_engine_simple game_engine (
        .clk(clk_25MHz),
        .reset(~system_ready),
        .DrawX(h_count),
        .DrawY(v_count),
        .keycode(keycode_channel_1),
        .keycode2(keycode_channel_2),
        .Red(red),
        .Green(green),
        .Blue(blue)
    );
   
    wire [23:0] rgb_data = vde ? {red, blue, green} : 24'h000000;
   
    // =================================================================
    // XESS SD CARD CONTROLLER (VHDL)
    // =================================================================
   
    wire sd_rd;
    wire [31:0] sd_addr;
    wire [7:0] sd_data_from_card;
    wire sd_busy;
    wire sd_hndshk_out;
    wire sd_hndshk_in;
    wire [15:0] sd_error;
   
    // Instantiate XESS SD Card Controller (VHDL)
    SdCardCtrl #(
        .FREQ_G(95.14),          // 100 MHz clock
        .INIT_SPI_FREQ_G(0.4),   // 400 kHz init
        .SPI_FREQ_G(25.0),       // 25 MHz operational
        .BLOCK_SIZE_G(512),      // 512 bytes per block
        .CARD_TYPE_G(1)          // 0 = SD, 1 = SDHC (change if needed)
    ) sd_card_inst (
        .clk_i(clk_100MHz),
        .reset_i(~system_ready),
        .rd_i(sd_rd),
        .wr_i(1'b0),             // Never write
        .continue_i(1'b0),       // Not using continue mode
        .addr_i(sd_addr),
        .data_i(8'h00),
        .data_o(sd_data_from_card),
        .busy_o(sd_busy),
        .hndShk_o(sd_hndshk_out),
        .hndShk_i(sd_hndshk_in),
        .error_o(sd_error),
        .cs_bo(SD_CS),
        .sclk_o(SD_SCLK),
        .mosi_o(SD_MOSI),
        .miso_i(SD_MISO)
    );
   
    // =================================================================
    // AUDIO CONTROLLER
    // =================================================================
   
    reg audio_enable = 0;
    wire audio_playing;
   
    // Enable audio after initialization delay
    reg [23:0] audio_start_delay = 0;
    always @(posedge clk_100MHz) begin
        if (!system_ready) begin
            audio_enable <= 0;
            audio_start_delay <= 0;
        end else if (audio_start_delay < 24'hFFFFFF) begin
            audio_start_delay <= audio_start_delay + 1;
        end else begin
            audio_enable <= 1;
        end
    end
   
    audio_controller_xess audio_ctrl (
        .clk(clk_100MHz),
        .reset(~system_ready),
        .enable_audio(audio_enable),
        .audio_playing(audio_playing),
        // SD card interface
        .sd_rd(sd_rd),
        .sd_addr(sd_addr),
        .sd_data(sd_data_from_card),
        .sd_busy(sd_busy),
        .sd_hndshk_out(sd_hndshk_out),
        .sd_hndshk_in(sd_hndshk_in),
        .sd_error(sd_error),
        // PWM audio
        .audio_pwm_left(AUD_PWM_L),
        .audio_pwm_right(AUD_PWM_R)
    );
   
    // =================================================================
    // BLOCK DESIGN
    // =================================================================
   
    wire [0:0] ss_o_bus;
    assign usb_spi_ss = ss_o_bus[0];
   
    wire [31:0] gpio_rst_out;
    assign gpio_usb_rst = gpio_rst_out[0];
   
    bd_mario_wrapper bd_mario_i (
        .SYS_CLK_0_clk_n(sys_clk_n),
        .SYS_CLK_0_clk_p(sys_clk_p),
        .sys_rst_0(~sys_rst),
       
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
       
        .init_calib_complete_0(calib_complete),
        .ui_addn_clk_1_0(clk_from_mig),
        .clk_out1_0(),
        .clk_out2_0(),
       
        .uart_rtl_0_rxd(uart_rxd),
        .uart_rtl_0_txd(uart_txd),
       
        .usb_spi_mosi(usb_spi_mosi),
        .usb_spi_miso(usb_spi_miso),
        .usb_spi_sclk(usb_spi_sclk),
        .usb_spi_ss(ss_o_bus),
       
        .gpio_usb_keycode_0_tri_o(keycode_channel_1),
        .gpio_usb_keycode_1_tri_o(keycode_channel_2),
        .gpio_usb_rst_tri_o(gpio_rst_out),
        .gpio_usb_int_tri_i(gpio_usb_int),
       
        .PixelClk_0(clk_25MHz),
        .SerialClk_0(clk_125MHz),
        .vid_pData_0(rgb_data),
        .vid_pHSync_0(hsync),
        .vid_pVSync_0(vsync),
        .vid_pVDE_0(vde),
       
        .TMDS_Clk_p_0(hdmi_tmds_clk_p),
        .TMDS_Clk_n_0(hdmi_tmds_clk_n),
        .TMDS_Data_p_0(hdmi_tmds_data_p),
        .TMDS_Data_n_0(hdmi_tmds_data_n)
    );
   
    assign calib_led = calib_complete;

endmodule