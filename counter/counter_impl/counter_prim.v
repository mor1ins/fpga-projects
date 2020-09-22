// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Sat Sep 19 20:03:37 2020
//
// Verilog Description of module counter
//

module counter (leds);   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(4[8:15])
    output [7:0]leds;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(6[9:13])
    
    
    wire GND_net, VCC_net;
    
    VHI i2 (.Z(VCC_net));
    OB leds_pad_6 (.I(VCC_net), .O(leds[6]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(6[9:13])
    OB leds_pad_7 (.I(GND_net), .O(leds[7]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(6[9:13])
    OB leds_pad_5 (.I(GND_net), .O(leds[5]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(6[9:13])
    OB leds_pad_4 (.I(VCC_net), .O(leds[4]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(6[9:13])
    OB leds_pad_3 (.I(GND_net), .O(leds[3]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(6[9:13])
    OB leds_pad_2 (.I(VCC_net), .O(leds[2]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(6[9:13])
    OB leds_pad_1 (.I(GND_net), .O(leds[1]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(6[9:13])
    OB leds_pad_0 (.I(VCC_net), .O(leds[0]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(6[9:13])
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

