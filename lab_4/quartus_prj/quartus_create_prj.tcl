project_new system -overwrite
set_global_assignment -name FAMILY "Cyclone V"
set_global_assignment -name DEVICE "5CSEMA4U23C6"
load_package flow
# Run check_ios to ensure we have a valid license
if {[catch {execute_flow -check_ios} result]} {
	puts "\nResult: $result\n"
	puts "ERROR: Quartus license check failed. See report files.\n"
	exit 1
} else {
	puts "\nINFO: Quartus license check was successful.\n"
}
set_global_assignment -name TOP_LEVEL_ENTITY system_soc
set_global_assignment -name QIP_FILE ./qsys_prj/qsys_gen/synthesis/system_soc.qip
source PinConstraints.tcl
project_close
