package require -exact qsys 13.1
load_system system_soc.qsys
set HDLCODERIPINST led_count_ip_0
add_instance ${HDLCODERIPINST} led_count_ip 1.0
add_connection pll_0.outclk0 ${HDLCODERIPINST}.ip_clk
add_connection hps_0.h2f_reset ${HDLCODERIPINST}.ip_rst
add_connection hps_0.h2f_axi_master ${HDLCODERIPINST}.s_axi
set_connection_parameter_value hps_0.h2f_axi_master/${HDLCODERIPINST}.s_axi baseAddress {0x0000_0000}
add_connection pll_0.outclk0 ${HDLCODERIPINST}.axi_clk
add_connection hps_0.h2f_reset ${HDLCODERIPINST}.axi_reset
# connection point ${HDLCODERIPINST}_LED
add_interface ${HDLCODERIPINST}_LED conduit end
set_interface_property ${HDLCODERIPINST}_LED EXPORT_OF ${HDLCODERIPINST}.LED

validate_system
save_system system_soc.qsys
