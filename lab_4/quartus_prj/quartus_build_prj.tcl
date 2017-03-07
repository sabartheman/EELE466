project_open system
load_package flow
if {[catch {execute_module -tool map} result]} {
	puts "\nResult: $result\n"
	puts "ERROR: Analysis & Synthesis failed. See report files.\n"
	exit 1
} else {
	puts "\nINFO: Analysis & Synthesis was successful.\n"
}
export_assignments
source ./qsys_prj/qsys_gen/synthesis/submodules/hps_sdram_p0_pin_assignments.tcl
export_assignments
if {[catch {execute_flow -compile} result]} {
	puts "\nResult: $result\n"
	puts "ERROR: Compilation failed. See report files.\n"
	exit 1
} else {
	puts "\nINFO: Compilation was successful.\n"
}
project_close
if {[catch {qexec "[file join $::quartus(binpath) quartus_cpf] -c system.sof system.rbf"} result]} {
	puts "\nResult: $result\n"
	puts "Warning: RBF Generation failed. See report files.\n"
	exit 0
} else {
	puts "\nINFO: RBF Generation was successful.\n"
}
puts "------------------------------------"
puts "Embedded system build completed."
puts "You may close this shell."
puts "------------------------------------"
