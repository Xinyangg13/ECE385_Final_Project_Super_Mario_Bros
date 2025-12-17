# Super Mario Game - Constraints File Template
# Update pin locations based on your specific FPGA board

## Clock Signal (100 MHz input)
set_property PACKAGE_PIN E3 [get_ports sys_clock]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clock]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports sys_clock]

## Reset Button (Active Low)
set_property PACKAGE_PIN C12 [get_ports reset_n]
set_property IOSTANDARD LVCMOS33 [get_ports reset_n]

## VGA Connector Pins
# VGA Red
set_property PACKAGE_PIN A3 [get_ports {vga_red[0]}]
set_property PACKAGE_PIN B4 [get_ports {vga_red[1]}]
set_property PACKAGE_PIN C5 [get_ports {vga_red[2]}]
set_property PACKAGE_PIN A4 [get_ports {vga_red[3]}]
set_property PACKAGE_PIN C6 [get_ports {vga_red[4]}]
set_property PACKAGE_PIN A5 [get_ports {vga_red[5]}]
set_property PACKAGE_PIN B6 [get_ports {vga_red[6]}]
set_property PACKAGE_PIN A6 [get_ports {vga_red[7]}]

# VGA Green
set_property PACKAGE_PIN B7 [get_ports {vga_green[0]}]
set_property PACKAGE_PIN C7 [get_ports {vga_green[1]}]
set_property PACKAGE_PIN D7 [get_ports {vga_green[2]}]
set_property PACKAGE_PIN D8 [get_ports {vga_green[3]}]
set_property PACKAGE_PIN A8 [get_ports {vga_green[4]}]
set_property PACKAGE_PIN B9 [get_ports {vga_green[5]}]
set_property PACKAGE_PIN C9 [get_ports {vga_green[6]}]
set_property PACKAGE_PIN D9 [get_ports {vga_green[7]}]

# VGA Blue
set_property PACKAGE_PIN B10 [get_ports {vga_blue[0]}]
set_property PACKAGE_PIN A10 [get_ports {vga_blue[1]}]
set_property PACKAGE_PIN C11 [get_ports {vga_blue[2]}]
set_property PACKAGE_PIN B11 [get_ports {vga_blue[3]}]
set_property PACKAGE_PIN A11 [get_ports {vga_blue[4]}]
set_property PACKAGE_PIN B12 [get_ports {vga_blue[5]}]
set_property PACKAGE_PIN D12 [get_ports {vga_blue[6]}]
set_property PACKAGE_PIN E12 [get_ports {vga_blue[7]}]

# VGA Sync signals
set_property PACKAGE_PIN B11 [get_ports vga_hsync]
set_property PACKAGE_PIN B12 [get_ports vga_vsync]

set_property IOSTANDARD LVCMOS33 [get_ports vga_*]

## HDMI Output (if available on your board)
# Uncomment and modify if using HDMI
# set_property PACKAGE_PIN xxx [get_ports hdmi_clk]
# set_property PACKAGE_PIN xxx [get_ports hdmi_hsync]
# set_property PACKAGE_PIN xxx [get_ports hdmi_vsync]
# set_property PACKAGE_PIN xxx [get_ports hdmi_de]
# set_property PACKAGE_PIN xxx [get_ports {hdmi_red[0]}]
# ... (continue for all HDMI pins)
# set_property IOSTANDARD TMDS_33 [get_ports hdmi_*]

## UART Signals
set_property PACKAGE_PIN D10 [get_ports uart_txd]
set_property PACKAGE_PIN A9 [get_ports uart_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_*]

## USB Keyboard Interface
# If using USB Host controller IP
# set_property PACKAGE_PIN xxx [get_ports usb_dp]
# set_property PACKAGE_PIN xxx [get_ports usb_dm]
# set_property IOSTANDARD LVCMOS33 [get_ports usb_*]

# If using PS/2 keyboard (alternative)
# set_property PACKAGE_PIN F4 [get_ports ps2_clk]
# set_property PACKAGE_PIN B2 [get_ports ps2_data]
# set_property IOSTANDARD LVCMOS33 [get_ports ps2_*]

## Configuration options
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## Bitstream settings
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

## Timing constraints
# Create clock for pixel clock (25.175 MHz)
create_generated_clock -name clk_pixel -source [get_pins clk_wiz_0/clk_in1] \
    -multiply_by 2517500 -divide_by 100000000 [get_pins clk_wiz_0/clk_out2]

# Set false paths between clock domains
set_clock_groups -asynchronous \
    -group [get_clocks sys_clk_pin] \
    -group [get_clocks clk_pixel]

# Input/Output delays for VGA (based on 25.175 MHz pixel clock)
set_output_delay -clock clk_pixel -min -1.000 [get_ports vga_*]
set_output_delay -clock clk_pixel -max 2.000 [get_ports vga_*]

# UART timing
set_input_delay -clock sys_clk_pin -min 0.000 [get_ports uart_rxd]
set_input_delay -clock sys_clk_pin -max 5.000 [get_ports uart_rxd]
set_output_delay -clock sys_clk_pin -min 0.000 [get_ports uart_txd]
set_output_delay -clock sys_clk_pin -max 5.000 [get_ports uart_txd]

## Additional constraints for better timing closure
# If you experience timing failures, uncomment these:
# set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sys_clock_IBUF]
# set_max_delay -from [get_clocks sys_clk_pin] -to [get_clocks clk_pixel] 5.000
# set_max_delay -from [get_clocks clk_pixel] -to [get_clocks sys_clk_pin] 10.000
