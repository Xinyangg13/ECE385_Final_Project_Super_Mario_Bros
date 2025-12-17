# TCL Script to Build Super Mario Bros MicroBlaze System
# For AMD Urbana Board (Spartan-7)
# Run this in Vivado TCL console after creating a project

# Create block design
create_bd_design "super_mario_system"

# Add MicroBlaze processor
create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_0
apply_bd_automation -rule xilinx.com:bd_rule:microblaze -config { \
    axi_intc {1} \
    axi_periph {Enabled} \
    cache {None} \
    clk {New Clocking Wizard} \
    cores {1} \
    debug {Enabled} \
    ecc {None} \
    local_mem {32KB} \
    preset {None} \
} [get_bd_cells microblaze_0]

# Configure Clock Wizard for multiple output clocks
set_property -dict [list \
    CONFIG.CLKOUT2_USED {true} \
    CONFIG.CLKOUT3_USED {true} \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100.000} \
    CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {200.000} \
    CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {25.175} \
    CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
    CONFIG.MMCM_CLKOUT1_DIVIDE {5} \
    CONFIG.MMCM_CLKOUT2_DIVIDE {40} \
    CONFIG.CLKOUT2_JITTER {125.247} \
    CONFIG.CLKOUT3_JITTER {159.371} \
    CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
    CONFIG.CLKOUT3_PHASE_ERROR {98.575} \
] [get_bd_cells clk_wiz_1]

# Add DDR3 Memory Interface Generator (MIG)
create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.2 mig_7series_0
# Configure MIG for Urbana board DDR3
apply_board_connection -board_interface "ddr3_sdram" -ip_intf "mig_7series_0/mig_ddr_interface" -diagram "super_mario_system"

# Add AXI Interconnect for DDR3
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_interconnect
set_property -dict [list CONFIG.NUM_MI {1} CONFIG.NUM_SI {2}] [get_bd_cells axi_mem_interconnect]

# Add VGA Controller (using AXI4-Stream Video Out for now)
create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0
set_property -dict [list \
    CONFIG.C_S_AXIS_VIDEO_FORMAT {2} \
    CONFIG.C_VTG_MASTER_SLAVE {1} \
] [get_bd_cells v_axi4s_vid_out_0]

# Add Video Timing Controller
create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.2 v_tc_0
set_property -dict [list \
    CONFIG.GEN_F0_VFRAME_SIZE {525} \
    CONFIG.GEN_F0_VSYNC_VSTART {490} \
    CONFIG.GEN_F0_VSYNC_VEND {492} \
    CONFIG.GEN_F0_VBLANK_HSTART {640} \
    CONFIG.GEN_F0_VBLANK_HEND {640} \
    CONFIG.GEN_F0_VSYNC_HSTART {0} \
    CONFIG.GEN_F0_VSYNC_HEND {800} \
    CONFIG.GEN_HFRAME_SIZE {800} \
    CONFIG.GEN_HSYNC_START {656} \
    CONFIG.GEN_HSYNC_END {752} \
    CONFIG.GEN_F0_VACTIVE_SIZE {480} \
    CONFIG.GEN_HACTIVE_SIZE {640} \
    CONFIG.HAS_AXI4_LITE {true} \
    CONFIG.enable_detection {false} \
] [get_bd_cells v_tc_0]

# Add GPIO for Game Controller
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_gamepad
set_property -dict [list \
    CONFIG.C_GPIO_WIDTH {8} \
    CONFIG.C_GPIO2_WIDTH {8} \
    CONFIG.C_IS_DUAL {1} \
    CONFIG.C_ALL_INPUTS {1} \
    CONFIG.C_ALL_INPUTS_2 {1} \
] [get_bd_cells axi_gpio_gamepad]

# Add GPIO for LEDs (debug/status)
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_leds
set_property -dict [list \
    CONFIG.C_GPIO_WIDTH {8} \
    CONFIG.C_ALL_OUTPUTS {1} \
] [get_bd_cells axi_gpio_leds]

# Add AXI Timer for game timing
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0
set_property -dict [list CONFIG.mode_64bit {0}] [get_bd_cells axi_timer_0]

# Add AXI UART for debug
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0
set_property -dict [list CONFIG.C_BAUDRATE {115200}] [get_bd_cells axi_uartlite_0]

# Add AXI DMA for efficient memory transfers
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0
set_property -dict [list \
    CONFIG.c_include_sg {0} \
    CONFIG.c_sg_include_stscntrl_strm {0} \
    CONFIG.c_sg_length_width {26} \
] [get_bd_cells axi_dma_0]

# Add BRAM for sprite cache
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0
create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0
set_property -dict [list CONFIG.Memory_Type {True_Dual_Port_RAM}] [get_bd_cells blk_mem_gen_0]

# Connect BRAM controller to BRAM
connect_bd_intf_net [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
connect_bd_intf_net [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTB]

# Run connection automation
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { \
    Clk_master {/clk_wiz_1/clk_out1 (100 MHz)} \
    Clk_slave {Auto} \
    Clk_xbar {Auto} \
    Master {/microblaze_0 (Periph)} \
    Slave {/axi_gpio_gamepad/S_AXI} \
    ddr_seg {Auto} \
    intc_ip {/microblaze_0_axi_periph} \
    master_apm {0} \
} [get_bd_intf_pins axi_gpio_gamepad/S_AXI]

apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { \
    Clk_master {/clk_wiz_1/clk_out1 (100 MHz)} \
    Clk_slave {Auto} \
    Clk_xbar {Auto} \
    Master {/microblaze_0 (Periph)} \
    Slave {/axi_gpio_leds/S_AXI} \
    ddr_seg {Auto} \
    intc_ip {/microblaze_0_axi_periph} \
    master_apm {0} \
} [get_bd_intf_pins axi_gpio_leds/S_AXI]

apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { \
    Clk_master {/clk_wiz_1/clk_out1 (100 MHz)} \
    Clk_slave {Auto} \
    Clk_xbar {Auto} \
    Master {/microblaze_0 (Periph)} \
    Slave {/axi_timer_0/S_AXI} \
    ddr_seg {Auto} \
    intc_ip {/microblaze_0_axi_periph} \
    master_apm {0} \
} [get_bd_intf_pins axi_timer_0/S_AXI]

apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { \
    Clk_master {/clk_wiz_1/clk_out1 (100 MHz)} \
    Clk_slave {Auto} \
    Clk_xbar {Auto} \
    Master {/microblaze_0 (Periph)} \
    Slave {/axi_uartlite_0/S_AXI} \
    ddr_seg {Auto} \
    intc_ip {/microblaze_0_axi_periph} \
    master_apm {0} \
} [get_bd_intf_pins axi_uartlite_0/S_AXI]

apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { \
    Clk_master {/clk_wiz_1/clk_out1 (100 MHz)} \
    Clk_slave {Auto} \
    Clk_xbar {Auto} \
    Master {/microblaze_0 (Periph)} \
    Slave {/axi_bram_ctrl_0/S_AXI} \
    ddr_seg {Auto} \
    intc_ip {/microblaze_0_axi_periph} \
    master_apm {0} \
} [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]

# Connect interrupts
connect_bd_net [get_bd_pins axi_timer_0/interrupt] [get_bd_pins microblaze_0_xlconcat/In0]
connect_bd_net [get_bd_pins axi_dma_0/mm2s_introut] [get_bd_pins microblaze_0_xlconcat/In1]
connect_bd_net [get_bd_pins axi_dma_0/s2mm_introut] [get_bd_pins microblaze_0_xlconcat/In2]
connect_bd_net [get_bd_pins axi_uartlite_0/interrupt] [get_bd_pins microblaze_0_xlconcat/In3]

# Make external connections
make_bd_intf_pins_external [get_bd_intf_pins axi_uartlite_0/UART]
make_bd_pins_external [get_bd_pins axi_gpio_gamepad/gpio_io_i]
make_bd_pins_external [get_bd_pins axi_gpio_gamepad/gpio2_io_i]
make_bd_pins_external [get_bd_pins axi_gpio_leds/gpio_io_o]
make_bd_pins_external [get_bd_pins v_axi4s_vid_out_0/vid_io_out_*]
make_bd_pins_external [get_bd_pins clk_wiz_1/clk_in1]
make_bd_pins_external [get_bd_pins rst_clk_wiz_1_100M/ext_reset_in]

# Rename external ports
set_property name gamepad_dpad [get_bd_ports gpio_io_i_0]
set_property name gamepad_buttons [get_bd_ports gpio2_io_i_0]
set_property name leds [get_bd_ports gpio_io_o_0]
set_property name uart_rtl [get_bd_intf_ports UART_0]
set_property name sys_clock [get_bd_ports clk_in1_0]
set_property name reset [get_bd_ports ext_reset_in_0]

# Assign addresses
assign_bd_address -offset 0x40000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_gamepad/S_AXI/Reg] -force
assign_bd_address -offset 0x40010000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_leds/S_AXI/Reg] -force
assign_bd_address -offset 0x40020000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] -force
assign_bd_address -offset 0x40030000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] -force
assign_bd_address -offset 0x40040000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
assign_bd_address -offset 0x40050000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs v_tc_0/ctrl/Reg] -force
assign_bd_address -offset 0x40060000 -range 0x00010000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_dma_0/S_AXI_LITE/Reg] -force
assign_bd_address -offset 0x80000000 -range 0x08000000 -target_address_space [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force

# Validate and save design
validate_bd_design
save_bd_design

# Generate HDL wrapper
make_wrapper -files [get_files super_mario_system.bd] -top
add_files -norecurse [get_files super_mario_system_wrapper.v]
set_property top super_mario_system_wrapper [current_fileset]

puts "Super Mario Bros MicroBlaze system created successfully!"
puts "Next steps:"
puts "1. Add constraints file (.xdc)"
puts "2. Run Synthesis"
puts "3. Run Implementation" 
puts "4. Generate Bitstream"
puts "5. Export Hardware (with bitstream)"
puts "6. Launch Vitis for software development"
