history clear
run_tcl -fg C:/Users/Eduard/Documents/GitHub/fpga/counter/counter_impl/launch_synplify.tcl
project -run  
project -run constraint_check 
set_option -num_startend_points 5
set_option -reporting_margin -1.0
set_option -reporting_filename counter_impl_syn.ta
set_option -reporting_output_srm 0
text_select 9 9 13 27
project -save C:/Users/Eduard/Documents/GitHub/fpga/counter/counter_impl/counter_impl_syn.prj 
project -close C:/Users/Eduard/Documents/GitHub/fpga/counter/counter_impl/counter_impl_syn.prj
