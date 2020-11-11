#=============================================================================
# Eval sim script generated by IPExpress/Clarity   11/11/2020    03:35:42 
# Lattice IP Core Simulation Script for Evaluation (VHDL)                     
# Copyright(c) 2015 Lattice Semiconductor Corporation. All rights reserved.   
#=============================================================================

# WARNING - Changes to this file should be performed by re-running IPexpress or
# modifying the .LPC file and regenerating the core. Other changes may lead to 
# inconsistent simulation and/or implementation results.                       

onbreak {resume} 
quit -sim 
cd "C:/Users/Eduard/Desktop/Dual_CSI-2_Camera_to_HDMI_Bridge_Demo/ECP5_Raw10toParallel/source/clarity/Gamma/gammaCorrector/gamma_eval/gammaCorrector/sim/modelsim/rtl"
#-- Set Diamond SW installation directory -- 
#-- Modify this path for localization of "Diamond" 
set diamond_dir C:/lscc/diamond/3.5 
#-- Simulation work library creation -- 
if {!0} { 
     vlib work 
   } 
#-- Lattice device library support -- 
vmap ecp5um $diamond_dir/cae_library/simulation/vhdl/ecp5u/mti/ecp5u 
vlog -novopt +define+HALF_PERIOD=10 \
     +define+PERIOD=20 \
     +define+RTL_SIM \
     +define+CORE_SIM \
     +define+NUM_PIXELS=2500 \
     "../../../src/params/gammaCorrector_params.v" \
     "../../../src/beh_rtl/ecp5/gamma_core.v" \
     "../../../src/beh_rtl/ecp5/gammaCorrector_beh.v" \
     "../../../../testbench/gamma_tb.v" \
     -y $diamond_dir/cae_library/simulation/verilog/pmi +libext+.v \
     -y $diamond_dir/cae_library/simulation/verilog/ecp5u +libext+.v
#----- Start evaluation test -- 
vsim -novopt -L ecp5um -t 1ps gamma_tb -l gammaCorrector_rtl.log
#----- View the simulation results 
view structure 
view signals 
add wave  sim:/gamma_tb/rstn 
add wave  sim:/gamma_tb/clk 
add wave  sim:/gamma_tb/inpvalid 
add wave  -radix hexadecimal sim:/gamma_tb/din0 
add wave  -radix hexadecimal sim:/gamma_tb/din1 
add wave  -radix hexadecimal sim:/gamma_tb/din2 
add wave  sim:/gamma_tb/outvalid 
add wave  -radix hexadecimal sim:/gamma_tb/dout0 
add wave  -radix hexadecimal sim:/gamma_tb/dout1 
add wave  -radix hexadecimal sim:/gamma_tb/dout2 
run -all 

