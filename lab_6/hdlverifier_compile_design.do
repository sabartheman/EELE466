# Create design library
vlib work
vmap altera_mf C:/Users/s96s544/Desktop/EELE466-master/simlib/vhdl_libs/altera_mf
# Create and open project
project new . compile_project
project open compile_project
# Add source files to project
project addfile "C:/Users/s96s544/Desktop/EELE466-master/lab_6/wrapper.vhd"
project addfile "C:/Users/s96s544/Desktop/EELE466-master/lab_6/FIFO.vhd"
# Calculate compilation order
project calculateorder
set compcmd [project compileall -n]
# Close project
project close
# Compile all files and report error
if [catch {eval $compcmd}] {
    exit -code 1
}
