#include <orcapp_head>

set design_inst USERNAME

vlog -v2k5 \
$diamond_dir/cae_library/simulation/blackbox/lifmd_black_boxes-aldec.vp \
$diamond_dir/cae_library/simulation/verilog/lifmd/*.v \
$diamond_dir/cae_library/simulation/verilog/pmi/*.v \
../../src/beh_rtl/byte2pixel_beh.v \
../../../../${design_inst}_byte2pixel.v \
../../../../${design_inst}.v \
../../../testbench/${design_inst}_tb.v

# Start the simulator #
vsim +access +r byte2pixel_tb 

# adding the signals to wave window #########
wave /byte2pixel_tb/${design_inst}_inst/*

# run simulation cycles
run -all
