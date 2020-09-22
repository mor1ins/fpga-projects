setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Eduard/Documents/GitHub/fpga/counter/counter_simulation/counter_simulation.adf"]} { 
	design create counter_simulation "C:/Users/Eduard/Documents/GitHub/fpga/counter"
  set newDesign 1
}
design open "C:/Users/Eduard/Documents/GitHub/fpga/counter/counter_simulation"
cd "C:/Users/Eduard/Documents/GitHub/fpga/counter"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/Eduard/Documents/GitHub/fpga/counter/counter.vhd"
vlib "C:/Users/Eduard/Documents/GitHub/fpga/counter/counter_simulation/work"
set worklib work
adel -all
vcom -dbg -work work "C:/Users/Eduard/Documents/GitHub/fpga/counter/counter.vhd"
entity led
vsim  +access +r led   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
