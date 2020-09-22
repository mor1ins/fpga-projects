// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Sun Sep 20 00:19:34 2020
//
// Verilog Description of module led
//

module led (clk, leds);   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(5[8:11])
    input clk;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(8[9:12])
    output [7:0]leds;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(9[9:13])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(8[9:12])
    
    wire GND_net, VCC_net, leds_c_7, leds_c_6, leds_c_5, leds_c_4, 
        leds_c_3, leds_c_2, leds_c_1, leds_c_0;
    wire [31:0]count;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(16[18:23])
    wire [32:0]leds_7__N_1;
    
    wire n161, n162, n163, n164, n165, n166, n167, n168, n169, 
        n170, n171, n172, n173, n174, n175, n176;
    
    VHI i2 (.Z(VCC_net));
    OB leds_pad_7 (.I(leds_c_7), .O(leds[7]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(9[9:13])
    GSR GSR_INST (.GSR(VCC_net));
    OB leds_pad_6 (.I(leds_c_6), .O(leds[6]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(9[9:13])
    FD1S3AY count_i1 (.D(leds_7__N_1[1]), .CK(clk_c), .Q(count[1])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i1.GSR = "ENABLED";
    FD1S3AY count_i2 (.D(leds_7__N_1[2]), .CK(clk_c), .Q(count[2])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i2.GSR = "ENABLED";
    FD1S3AY count_i3 (.D(leds_7__N_1[3]), .CK(clk_c), .Q(count[3])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i3.GSR = "ENABLED";
    FD1S3AY count_i4 (.D(leds_7__N_1[4]), .CK(clk_c), .Q(count[4])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i4.GSR = "ENABLED";
    FD1S3AY count_i5 (.D(leds_7__N_1[5]), .CK(clk_c), .Q(count[5])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i5.GSR = "ENABLED";
    FD1S3AY count_i6 (.D(leds_7__N_1[6]), .CK(clk_c), .Q(count[6])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i6.GSR = "ENABLED";
    FD1S3AY count_i7 (.D(leds_7__N_1[7]), .CK(clk_c), .Q(count[7])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i7.GSR = "ENABLED";
    FD1S3AY count_i8 (.D(leds_7__N_1[8]), .CK(clk_c), .Q(count[8])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i8.GSR = "ENABLED";
    FD1S3AY count_i9 (.D(leds_7__N_1[9]), .CK(clk_c), .Q(count[9])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i9.GSR = "ENABLED";
    FD1S3AY count_i10 (.D(leds_7__N_1[10]), .CK(clk_c), .Q(count[10])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i10.GSR = "ENABLED";
    FD1S3AY count_i11 (.D(leds_7__N_1[11]), .CK(clk_c), .Q(count[11])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i11.GSR = "ENABLED";
    FD1S3AY count_i12 (.D(leds_7__N_1[12]), .CK(clk_c), .Q(count[12])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i12.GSR = "ENABLED";
    FD1S3AY count_i13 (.D(leds_7__N_1[13]), .CK(clk_c), .Q(count[13])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i13.GSR = "ENABLED";
    FD1S3AY count_i14 (.D(leds_7__N_1[14]), .CK(clk_c), .Q(count[14])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i14.GSR = "ENABLED";
    FD1S3AY count_i15 (.D(leds_7__N_1[15]), .CK(clk_c), .Q(count[15])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i15.GSR = "ENABLED";
    FD1S3AY count_i16 (.D(leds_7__N_1[16]), .CK(clk_c), .Q(count[16])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i16.GSR = "ENABLED";
    FD1S3AY count_i17 (.D(leds_7__N_1[17]), .CK(clk_c), .Q(count[17])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i17.GSR = "ENABLED";
    FD1S3AY count_i18 (.D(leds_7__N_1[18]), .CK(clk_c), .Q(count[18])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i18.GSR = "ENABLED";
    FD1S3AY count_i19 (.D(leds_7__N_1[19]), .CK(clk_c), .Q(count[19])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i19.GSR = "ENABLED";
    FD1S3AY count_i20 (.D(leds_7__N_1[20]), .CK(clk_c), .Q(count[20])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i20.GSR = "ENABLED";
    FD1S3AY count_i21 (.D(leds_7__N_1[21]), .CK(clk_c), .Q(count[21])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i21.GSR = "ENABLED";
    FD1S3AY count_i22 (.D(leds_7__N_1[22]), .CK(clk_c), .Q(count[22])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i22.GSR = "ENABLED";
    FD1S3AY count_i23 (.D(leds_7__N_1[23]), .CK(clk_c), .Q(count[23])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i23.GSR = "ENABLED";
    FD1S3AY count_i24 (.D(leds_7__N_1[24]), .CK(clk_c), .Q(count[24])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i24.GSR = "ENABLED";
    FD1S3AY count_i25 (.D(leds_7__N_1[25]), .CK(clk_c), .Q(count[25])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i25.GSR = "ENABLED";
    FD1S3AY count_i26 (.D(leds_7__N_1[26]), .CK(clk_c), .Q(count[26])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i26.GSR = "ENABLED";
    FD1S3AY count_i27 (.D(leds_7__N_1[27]), .CK(clk_c), .Q(count[27])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i27.GSR = "ENABLED";
    FD1S3AY count_i28 (.D(leds_7__N_1[28]), .CK(clk_c), .Q(count[28])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i28.GSR = "ENABLED";
    FD1S3AY count_i29 (.D(leds_7__N_1[29]), .CK(clk_c), .Q(count[29])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i29.GSR = "ENABLED";
    FD1S3AY count_i30 (.D(leds_7__N_1[30]), .CK(clk_c), .Q(count[30])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i30.GSR = "ENABLED";
    FD1S3AX count_i31 (.D(leds_7__N_1[31]), .CK(clk_c), .Q(count[31])) /* synthesis lse_init_val=0 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i31.GSR = "ENABLED";
    FD1S3AX leds_i1 (.D(leds_7__N_1[24]), .CK(clk_c), .Q(leds_c_0));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam leds_i1.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    OB leds_pad_5 (.I(leds_c_5), .O(leds[5]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(9[9:13])
    OB leds_pad_4 (.I(leds_c_4), .O(leds[4]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(9[9:13])
    OB leds_pad_3 (.I(leds_c_3), .O(leds[3]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(9[9:13])
    OB leds_pad_2 (.I(leds_c_2), .O(leds[2]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(9[9:13])
    OB leds_pad_1 (.I(leds_c_1), .O(leds[1]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(9[9:13])
    OB leds_pad_0 (.I(leds_c_0), .O(leds[0]));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(9[9:13])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(8[9:12])
    FD1S3AX leds_i2 (.D(leds_7__N_1[25]), .CK(clk_c), .Q(leds_c_1));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam leds_i2.GSR = "ENABLED";
    FD1S3AX leds_i3 (.D(leds_7__N_1[26]), .CK(clk_c), .Q(leds_c_2));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam leds_i3.GSR = "ENABLED";
    FD1S3AX leds_i4 (.D(leds_7__N_1[27]), .CK(clk_c), .Q(leds_c_3));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam leds_i4.GSR = "ENABLED";
    FD1S3AX leds_i5 (.D(leds_7__N_1[28]), .CK(clk_c), .Q(leds_c_4));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam leds_i5.GSR = "ENABLED";
    FD1S3AX leds_i6 (.D(leds_7__N_1[29]), .CK(clk_c), .Q(leds_c_5));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam leds_i6.GSR = "ENABLED";
    FD1S3AX leds_i7 (.D(leds_7__N_1[30]), .CK(clk_c), .Q(leds_c_6));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam leds_i7.GSR = "ENABLED";
    FD1S3AX leds_i8 (.D(leds_7__N_1[31]), .CK(clk_c), .Q(leds_c_7));   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam leds_i8.GSR = "ENABLED";
    CCU2D add_14_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n161), 
          .S1(leds_7__N_1[0]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_1.INIT0 = 16'hF000;
    defparam add_14_1.INIT1 = 16'h5555;
    defparam add_14_1.INJECT1_0 = "NO";
    defparam add_14_1.INJECT1_1 = "NO";
    FD1S3AY count_i0 (.D(leds_7__N_1[0]), .CK(clk_c), .Q(count[0])) /* synthesis lse_init_val=1 */ ;   // c:/users/eduard/documents/github/fpga/counter/counter.vhd(18[9] 21[16])
    defparam count_i0.GSR = "ENABLED";
    CCU2D add_14_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n161), 
          .COUT(n162), .S0(leds_7__N_1[1]), .S1(leds_7__N_1[2]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_3.INIT0 = 16'h5555;
    defparam add_14_3.INIT1 = 16'h5555;
    defparam add_14_3.INJECT1_0 = "NO";
    defparam add_14_3.INJECT1_1 = "NO";
    CCU2D add_14_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n162), 
          .COUT(n163), .S0(leds_7__N_1[3]), .S1(leds_7__N_1[4]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_5.INIT0 = 16'h5555;
    defparam add_14_5.INIT1 = 16'h5555;
    defparam add_14_5.INJECT1_0 = "NO";
    defparam add_14_5.INJECT1_1 = "NO";
    CCU2D add_14_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n163), 
          .COUT(n164), .S0(leds_7__N_1[5]), .S1(leds_7__N_1[6]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_7.INIT0 = 16'h5555;
    defparam add_14_7.INIT1 = 16'h5555;
    defparam add_14_7.INJECT1_0 = "NO";
    defparam add_14_7.INJECT1_1 = "NO";
    CCU2D add_14_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n164), 
          .COUT(n165), .S0(leds_7__N_1[7]), .S1(leds_7__N_1[8]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_9.INIT0 = 16'h5555;
    defparam add_14_9.INIT1 = 16'h5555;
    defparam add_14_9.INJECT1_0 = "NO";
    defparam add_14_9.INJECT1_1 = "NO";
    CCU2D add_14_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n165), .COUT(n166), .S0(leds_7__N_1[9]), .S1(leds_7__N_1[10]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_11.INIT0 = 16'h5555;
    defparam add_14_11.INIT1 = 16'h5555;
    defparam add_14_11.INJECT1_0 = "NO";
    defparam add_14_11.INJECT1_1 = "NO";
    CCU2D add_14_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n166), .COUT(n167), .S0(leds_7__N_1[11]), .S1(leds_7__N_1[12]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_13.INIT0 = 16'h5555;
    defparam add_14_13.INIT1 = 16'h5555;
    defparam add_14_13.INJECT1_0 = "NO";
    defparam add_14_13.INJECT1_1 = "NO";
    CCU2D add_14_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n167), .COUT(n168), .S0(leds_7__N_1[13]), .S1(leds_7__N_1[14]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_15.INIT0 = 16'h5555;
    defparam add_14_15.INIT1 = 16'h5555;
    defparam add_14_15.INJECT1_0 = "NO";
    defparam add_14_15.INJECT1_1 = "NO";
    CCU2D add_14_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n168), .COUT(n169), .S0(leds_7__N_1[15]), .S1(leds_7__N_1[16]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_17.INIT0 = 16'h5555;
    defparam add_14_17.INIT1 = 16'h5555;
    defparam add_14_17.INJECT1_0 = "NO";
    defparam add_14_17.INJECT1_1 = "NO";
    CCU2D add_14_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n169), .COUT(n170), .S0(leds_7__N_1[17]), .S1(leds_7__N_1[18]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_19.INIT0 = 16'h5555;
    defparam add_14_19.INIT1 = 16'h5555;
    defparam add_14_19.INJECT1_0 = "NO";
    defparam add_14_19.INJECT1_1 = "NO";
    CCU2D add_14_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n170), .COUT(n171), .S0(leds_7__N_1[19]), .S1(leds_7__N_1[20]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_21.INIT0 = 16'h5555;
    defparam add_14_21.INIT1 = 16'h5555;
    defparam add_14_21.INJECT1_0 = "NO";
    defparam add_14_21.INJECT1_1 = "NO";
    CCU2D add_14_23 (.A0(count[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n171), .COUT(n172), .S0(leds_7__N_1[21]), .S1(leds_7__N_1[22]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_23.INIT0 = 16'h5555;
    defparam add_14_23.INIT1 = 16'h5555;
    defparam add_14_23.INJECT1_0 = "NO";
    defparam add_14_23.INJECT1_1 = "NO";
    CCU2D add_14_25 (.A0(count[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n172), .COUT(n173), .S0(leds_7__N_1[23]), .S1(leds_7__N_1[24]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_25.INIT0 = 16'h5555;
    defparam add_14_25.INIT1 = 16'h5555;
    defparam add_14_25.INJECT1_0 = "NO";
    defparam add_14_25.INJECT1_1 = "NO";
    CCU2D add_14_27 (.A0(count[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n173), .COUT(n174), .S0(leds_7__N_1[25]), .S1(leds_7__N_1[26]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_27.INIT0 = 16'h5555;
    defparam add_14_27.INIT1 = 16'h5555;
    defparam add_14_27.INJECT1_0 = "NO";
    defparam add_14_27.INJECT1_1 = "NO";
    CCU2D add_14_29 (.A0(count[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n174), .COUT(n175), .S0(leds_7__N_1[27]), .S1(leds_7__N_1[28]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_29.INIT0 = 16'h5555;
    defparam add_14_29.INIT1 = 16'h5555;
    defparam add_14_29.INJECT1_0 = "NO";
    defparam add_14_29.INJECT1_1 = "NO";
    CCU2D add_14_31 (.A0(count[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n175), .COUT(n176), .S0(leds_7__N_1[29]), .S1(leds_7__N_1[30]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_31.INIT0 = 16'h5555;
    defparam add_14_31.INIT1 = 16'h5555;
    defparam add_14_31.INJECT1_0 = "NO";
    defparam add_14_31.INJECT1_1 = "NO";
    CCU2D add_14_33 (.A0(count[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n176), 
          .S0(leds_7__N_1[31]));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/numeric_std.vhd(1308[12:13])
    defparam add_14_33.INIT0 = 16'h5555;
    defparam add_14_33.INIT1 = 16'h0000;
    defparam add_14_33.INJECT1_0 = "NO";
    defparam add_14_33.INJECT1_1 = "NO";
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

