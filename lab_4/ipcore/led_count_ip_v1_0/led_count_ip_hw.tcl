# request TCL package from ACDS 13.1
package require -exact qsys 13.1

# module led_count_ip
set_module_property DESCRIPTION ""
set_module_property NAME led_count_ip
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "HDL Coder Generated IP"
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME led_count_ip
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false

# documentation
set docprefix file:///
add_documentation_link "DATASHEET" [append docprefix [get_module_property MODULE_DIRECTORY] /doc/hdlcoder_led_blinking_4bit_ip_core_report.html]

# file sets
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL led_count_ip
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file led_count_ip_src_led_counter_pkg.vhd VHDL PATH hdl/led_count_ip_src_led_counter_pkg.vhd 
add_fileset_file led_count_ip_src_led_counter.vhd VHDL PATH hdl/led_count_ip_src_led_counter.vhd 
add_fileset_file led_count_ip_dut.vhd VHDL PATH hdl/led_count_ip_dut.vhd 
add_fileset_file led_count_ip_SimpleDualPortRAM_16x32b.vhd VHDL PATH hdl/led_count_ip_SimpleDualPortRAM_16x32b.vhd 
add_fileset_file led_count_ip_rdfifo_data_classic_ram_16x32b.vhd VHDL PATH hdl/led_count_ip_rdfifo_data_classic_ram_16x32b.vhd 
add_fileset_file led_count_ip_rdfifo_data_classic.vhd VHDL PATH hdl/led_count_ip_rdfifo_data_classic.vhd 
add_fileset_file led_count_ip_rdfifo_data.vhd VHDL PATH hdl/led_count_ip_rdfifo_data.vhd 
add_fileset_file led_count_ip_SimpleDualPortRAM_16x1b.vhd VHDL PATH hdl/led_count_ip_SimpleDualPortRAM_16x1b.vhd 
add_fileset_file led_count_ip_rdfifo_last_classic_ram_16x1b.vhd VHDL PATH hdl/led_count_ip_rdfifo_last_classic_ram_16x1b.vhd 
add_fileset_file led_count_ip_rdfifo_last_classic.vhd VHDL PATH hdl/led_count_ip_rdfifo_last_classic.vhd 
add_fileset_file led_count_ip_rdfifo_last.vhd VHDL PATH hdl/led_count_ip_rdfifo_last.vhd 
add_fileset_file led_count_ip_axi4_module.vhd VHDL PATH hdl/led_count_ip_axi4_module.vhd 
add_fileset_file led_count_ip_addr_decoder.vhd VHDL PATH hdl/led_count_ip_addr_decoder.vhd 
add_fileset_file led_count_ip_axi4.vhd VHDL PATH hdl/led_count_ip_axi4.vhd 
add_fileset_file led_count_ip.vhd VHDL PATH hdl/led_count_ip.vhd TOP_LEVEL_FILE

# connection point ip_clk
add_interface ip_clk clock end
set_interface_property ip_clk clockRate 0
set_interface_property ip_clk ENABLED true
set_interface_property ip_clk EXPORT_OF ""
set_interface_property ip_clk PORT_NAME_MAP ""
set_interface_property ip_clk CMSIS_SVD_VARIABLES ""
set_interface_property ip_clk SVD_ADDRESS_GROUP ""
add_interface_port ip_clk IPCORE_CLK clk Input 1

# connection point ip_rst
add_interface ip_rst reset end
set_interface_property ip_rst associatedClock ip_clk
set_interface_property ip_rst synchronousEdges DEASSERT
set_interface_property ip_rst ENABLED true
set_interface_property ip_rst EXPORT_OF ""
set_interface_property ip_rst PORT_NAME_MAP ""
set_interface_property ip_rst CMSIS_SVD_VARIABLES ""
set_interface_property ip_rst SVD_ADDRESS_GROUP ""
add_interface_port ip_rst IPCORE_RESETN reset_n Input 1

## AXI4 Bus
# connection point axi_clk
add_interface axi_clk clock end
set_interface_property axi_clk clockRate 0
set_interface_property axi_clk ENABLED true
set_interface_property axi_clk EXPORT_OF ""
set_interface_property axi_clk PORT_NAME_MAP ""
set_interface_property axi_clk CMSIS_SVD_VARIABLES ""
set_interface_property axi_clk SVD_ADDRESS_GROUP ""
add_interface_port axi_clk AXI4_ACLK clk Input 1

# connection point axi_reset
add_interface axi_reset reset end
set_interface_property axi_reset associatedClock axi_clk
set_interface_property axi_reset synchronousEdges DEASSERT
set_interface_property axi_reset ENABLED true
set_interface_property axi_reset EXPORT_OF ""
set_interface_property axi_reset PORT_NAME_MAP ""
set_interface_property axi_reset CMSIS_SVD_VARIABLES ""
set_interface_property axi_reset SVD_ADDRESS_GROUP ""
add_interface_port axi_reset AXI4_ARESETN reset_n Input 1

# connection point s_axi
add_interface s_axi axi4 end
set_interface_property s_axi associatedClock axi_clk
set_interface_property s_axi associatedReset axi_reset
set_interface_property s_axi readAcceptanceCapability 1
set_interface_property s_axi writeAcceptanceCapability 1
set_interface_property s_axi combinedAcceptanceCapability 1
set_interface_property s_axi readDataReorderingDepth 1
set_interface_property s_axi bridgesToMaster ""
set_interface_property s_axi ENABLED true
set_interface_property s_axi EXPORT_OF ""
set_interface_property s_axi PORT_NAME_MAP ""
set_interface_property s_axi CMSIS_SVD_VARIABLES ""
set_interface_property s_axi SVD_ADDRESS_GROUP ""
add_interface_port s_axi AXI4_AWID awid Input 12
add_interface_port s_axi AXI4_AWADDR awaddr Input 16
add_interface_port s_axi AXI4_AWLEN awlen Input 8
add_interface_port s_axi AXI4_AWSIZE awsize Input 3
add_interface_port s_axi AXI4_AWBURST awburst Input 2
add_interface_port s_axi AXI4_AWLOCK awlock Input 1
add_interface_port s_axi AXI4_AWCACHE awcache Input 4
add_interface_port s_axi AXI4_AWPROT awprot Input 3
add_interface_port s_axi AXI4_AWVALID awvalid Input 1
add_interface_port s_axi AXI4_WDATA wdata Input 32
add_interface_port s_axi AXI4_WSTRB wstrb Input 4
add_interface_port s_axi AXI4_WLAST wlast Input 1
add_interface_port s_axi AXI4_WVALID wvalid Input 1
add_interface_port s_axi AXI4_BREADY bready Input 1
add_interface_port s_axi AXI4_ARID arid Input 12
add_interface_port s_axi AXI4_ARADDR araddr Input 16
add_interface_port s_axi AXI4_ARLEN arlen Input 8
add_interface_port s_axi AXI4_ARSIZE arsize Input 3
add_interface_port s_axi AXI4_ARBURST arburst Input 2
add_interface_port s_axi AXI4_ARLOCK arlock Input 1
add_interface_port s_axi AXI4_ARCACHE arcache Input 4
add_interface_port s_axi AXI4_ARPROT arprot Input 3
add_interface_port s_axi AXI4_ARVALID arvalid Input 1
add_interface_port s_axi AXI4_RREADY rready Input 1
add_interface_port s_axi AXI4_AWREADY awready Output 1
add_interface_port s_axi AXI4_WREADY wready Output 1
add_interface_port s_axi AXI4_BID bid Output 12
add_interface_port s_axi AXI4_BRESP bresp Output 2
add_interface_port s_axi AXI4_BVALID bvalid Output 1
add_interface_port s_axi AXI4_ARREADY arready Output 1
add_interface_port s_axi AXI4_RID rid Output 12
add_interface_port s_axi AXI4_RDATA rdata Output 32
add_interface_port s_axi AXI4_RRESP rresp Output 2
add_interface_port s_axi AXI4_RLAST rlast Output 1
add_interface_port s_axi AXI4_RVALID rvalid Output 1

## External Ports
# connection point LED
add_interface LED conduit end
set_interface_property LED associatedClock ip_clk
set_interface_property LED associatedReset ip_rst
set_interface_property LED ENABLED true
set_interface_property LED EXPORT_OF ""
set_interface_property LED PORT_NAME_MAP ""
set_interface_property LED CMSIS_SVD_VARIABLES ""
set_interface_property LED SVD_ADDRESS_GROUP ""
add_interface_port LED LED pin Output 8

