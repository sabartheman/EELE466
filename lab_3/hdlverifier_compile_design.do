# Create design library
vlib work
vmap altera_mf "C:/Users/s96s544/Desktop/EELE466-master/lab_3/simlib/vhdl_libs/altera_mf"
# Create and open project
project new . compile_project
project open compile_project
# Add source files to project
project addfile "C:/Users/s96s544/Desktop/EELE466-master/lab_3/guess.vhd"
project addfile "C:/Users/s96s544/Desktop/EELE466-master/lab_3/iterations.vhd"
project addfile "C:/Users/s96s544/Desktop/EELE466-master/lab_3/lzc.vhd"
project addfile "C:/Users/s96s544/Desktop/EELE466-master/lab_3/Newtons_method.vhd"
project addfile "C:/Users/s96s544/Desktop/EELE466-master/lab_3/ROM1.vhd"
project addfile "C:/Users/s96s544/Desktop/EELE466-master/lab_3/rsr.vhd"
# Calculate compilation order
project calculateorder
set compcmd [project compileall -n]
# Close project
project close
# Compile all files and report error
if [catch {eval $compcmd}] {
    exit -code 1
}
