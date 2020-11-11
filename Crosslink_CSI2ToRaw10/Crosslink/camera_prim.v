// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.3.469
// Netlist written on Wed Nov 11 00:01:28 2020
//
// Verilog Description of module camera
//

module camera (LUT_FIFO_Data, LUT_FIFO_Q, cross_domain_fifo_Data, cross_domain_fifo_Q, 
            LUT_FIFO_AlmostEmpty, LUT_FIFO_AlmostFull, LUT_FIFO_Empty, 
            LUT_FIFO_Full, LUT_FIFO_RPReset, LUT_FIFO_RdClock, LUT_FIFO_RdEn, 
            LUT_FIFO_Reset, LUT_FIFO_WrClock, LUT_FIFO_WrEn, cross_domain_fifo_AlmostEmpty, 
            cross_domain_fifo_AlmostFull, cross_domain_fifo_Empty, cross_domain_fifo_Full, 
            cross_domain_fifo_RPReset, cross_domain_fifo_RdClock, cross_domain_fifo_RdEn, 
            cross_domain_fifo_Reset, cross_domain_fifo_WrClock, cross_domain_fifo_WrEn, 
            pll_double_CLKI, pll_double_CLKOP, pll_double_CLKOS, pll_double_CLKOS2, 
            pll_double_LOCK, pll_double_RST);   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(12[8:14])
    input [9:0]LUT_FIFO_Data;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(13[11:24])
    output [9:0]LUT_FIFO_Q;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(14[9:19])
    input [31:0]cross_domain_fifo_Data;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    output [31:0]cross_domain_fifo_Q;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    output LUT_FIFO_AlmostEmpty;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(17[9:29])
    output LUT_FIFO_AlmostFull;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(18[9:28])
    output LUT_FIFO_Empty;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(19[9:23])
    output LUT_FIFO_Full;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(20[9:22])
    input LUT_FIFO_RPReset;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(21[9:25])
    input LUT_FIFO_RdClock;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(22[9:25])
    input LUT_FIFO_RdEn;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(23[9:22])
    input LUT_FIFO_Reset;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(24[9:23])
    input LUT_FIFO_WrClock;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(25[9:25])
    input LUT_FIFO_WrEn;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(26[9:22])
    output cross_domain_fifo_AlmostEmpty;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(27[9:38])
    output cross_domain_fifo_AlmostFull;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(28[9:37])
    output cross_domain_fifo_Empty;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(29[9:32])
    output cross_domain_fifo_Full;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(30[9:31])
    input cross_domain_fifo_RPReset;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(31[9:34])
    input cross_domain_fifo_RdClock;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(32[9:34])
    input cross_domain_fifo_RdEn;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(33[9:31])
    input cross_domain_fifo_Reset;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(34[9:32])
    input cross_domain_fifo_WrClock;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(35[9:34])
    input cross_domain_fifo_WrEn;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(36[9:31])
    input pll_double_CLKI;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(37[9:24])
    output pll_double_CLKOP;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(38[9:25])
    output pll_double_CLKOS;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(39[9:25])
    output pll_double_CLKOS2;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(40[9:26])
    output pll_double_LOCK;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(41[9:24])
    input pll_double_RST;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(42[9:23])
    
    wire LUT_FIFO_RdClock_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(22[9:25])
    wire LUT_FIFO_WrClock_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(25[9:25])
    wire cross_domain_fifo_RdClock_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(32[9:34])
    wire cross_domain_fifo_WrClock_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(35[9:34])
    wire pll_double_CLKI_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(37[9:24])
    wire pll_double_CLKOP_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(38[9:25])
    wire pll_double_CLKOS_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(39[9:25])
    wire pll_double_CLKOS2_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(40[9:26])
    
    wire LUT_FIFO_Data_c_9, LUT_FIFO_Data_c_8, LUT_FIFO_Data_c_7, LUT_FIFO_Data_c_6, 
        LUT_FIFO_Data_c_5, LUT_FIFO_Data_c_4, LUT_FIFO_Data_c_3, LUT_FIFO_Data_c_2, 
        LUT_FIFO_Data_c_1, LUT_FIFO_Data_c_0, LUT_FIFO_Q_c_9, LUT_FIFO_Q_c_8, 
        LUT_FIFO_Q_c_7, LUT_FIFO_Q_c_6, LUT_FIFO_Q_c_5, LUT_FIFO_Q_c_4, 
        LUT_FIFO_Q_c_3, LUT_FIFO_Q_c_2, LUT_FIFO_Q_c_1, LUT_FIFO_Q_c_0, 
        cross_domain_fifo_Data_c_31, cross_domain_fifo_Data_c_30, cross_domain_fifo_Data_c_29, 
        cross_domain_fifo_Data_c_28, cross_domain_fifo_Data_c_27, cross_domain_fifo_Data_c_26, 
        cross_domain_fifo_Data_c_25, cross_domain_fifo_Data_c_24, cross_domain_fifo_Data_c_23, 
        cross_domain_fifo_Data_c_22, cross_domain_fifo_Data_c_21, cross_domain_fifo_Data_c_20, 
        cross_domain_fifo_Data_c_19, cross_domain_fifo_Data_c_18, cross_domain_fifo_Data_c_17, 
        cross_domain_fifo_Data_c_16, cross_domain_fifo_Data_c_15, cross_domain_fifo_Data_c_14, 
        cross_domain_fifo_Data_c_13, cross_domain_fifo_Data_c_12, cross_domain_fifo_Data_c_11, 
        cross_domain_fifo_Data_c_10, cross_domain_fifo_Data_c_9, cross_domain_fifo_Data_c_8, 
        cross_domain_fifo_Data_c_7, cross_domain_fifo_Data_c_6, cross_domain_fifo_Data_c_5, 
        cross_domain_fifo_Data_c_4, cross_domain_fifo_Data_c_3, cross_domain_fifo_Data_c_2, 
        cross_domain_fifo_Data_c_1, cross_domain_fifo_Data_c_0, cross_domain_fifo_Q_c_31, 
        cross_domain_fifo_Q_c_30, cross_domain_fifo_Q_c_29, cross_domain_fifo_Q_c_28, 
        cross_domain_fifo_Q_c_27, cross_domain_fifo_Q_c_26, cross_domain_fifo_Q_c_25, 
        cross_domain_fifo_Q_c_24, cross_domain_fifo_Q_c_23, cross_domain_fifo_Q_c_22, 
        cross_domain_fifo_Q_c_21, cross_domain_fifo_Q_c_20, cross_domain_fifo_Q_c_19, 
        cross_domain_fifo_Q_c_18, cross_domain_fifo_Q_c_17, cross_domain_fifo_Q_c_16, 
        cross_domain_fifo_Q_c_15, cross_domain_fifo_Q_c_14, cross_domain_fifo_Q_c_13, 
        cross_domain_fifo_Q_c_12, cross_domain_fifo_Q_c_11, cross_domain_fifo_Q_c_10, 
        cross_domain_fifo_Q_c_9, cross_domain_fifo_Q_c_8, cross_domain_fifo_Q_c_7, 
        cross_domain_fifo_Q_c_6, cross_domain_fifo_Q_c_5, cross_domain_fifo_Q_c_4, 
        cross_domain_fifo_Q_c_3, cross_domain_fifo_Q_c_2, cross_domain_fifo_Q_c_1, 
        cross_domain_fifo_Q_c_0, LUT_FIFO_AlmostEmpty_c, LUT_FIFO_AlmostFull_c, 
        LUT_FIFO_Empty_c, LUT_FIFO_Full_c, LUT_FIFO_RPReset_c, LUT_FIFO_RdEn_c, 
        LUT_FIFO_Reset_c, LUT_FIFO_WrEn_c, cross_domain_fifo_AlmostEmpty_c, 
        cross_domain_fifo_AlmostFull_c, cross_domain_fifo_Empty_c, cross_domain_fifo_Full_c, 
        cross_domain_fifo_RPReset_c, cross_domain_fifo_RdEn_c, cross_domain_fifo_Reset_c, 
        cross_domain_fifo_WrEn_c, pll_double_LOCK_c, pll_double_RST_c, 
        GND_net, VCC_net;
    
    cross_domain_fifo cross_domain_fifo_inst (.cross_domain_fifo_Full_c(cross_domain_fifo_Full_c), 
            .GND_net(GND_net), .cross_domain_fifo_AlmostEmpty_c(cross_domain_fifo_AlmostEmpty_c), 
            .cross_domain_fifo_AlmostFull_c(cross_domain_fifo_AlmostFull_c), 
            .cross_domain_fifo_Data_c_17(cross_domain_fifo_Data_c_17), .cross_domain_fifo_Data_c_16(cross_domain_fifo_Data_c_16), 
            .cross_domain_fifo_Data_c_15(cross_domain_fifo_Data_c_15), .cross_domain_fifo_Data_c_14(cross_domain_fifo_Data_c_14), 
            .cross_domain_fifo_Data_c_13(cross_domain_fifo_Data_c_13), .cross_domain_fifo_Data_c_12(cross_domain_fifo_Data_c_12), 
            .cross_domain_fifo_Data_c_11(cross_domain_fifo_Data_c_11), .cross_domain_fifo_Data_c_10(cross_domain_fifo_Data_c_10), 
            .cross_domain_fifo_Data_c_9(cross_domain_fifo_Data_c_9), .cross_domain_fifo_Data_c_8(cross_domain_fifo_Data_c_8), 
            .cross_domain_fifo_Data_c_7(cross_domain_fifo_Data_c_7), .cross_domain_fifo_Data_c_6(cross_domain_fifo_Data_c_6), 
            .cross_domain_fifo_Data_c_5(cross_domain_fifo_Data_c_5), .cross_domain_fifo_Data_c_4(cross_domain_fifo_Data_c_4), 
            .cross_domain_fifo_Data_c_3(cross_domain_fifo_Data_c_3), .cross_domain_fifo_Data_c_2(cross_domain_fifo_Data_c_2), 
            .cross_domain_fifo_Data_c_1(cross_domain_fifo_Data_c_1), .cross_domain_fifo_Data_c_0(cross_domain_fifo_Data_c_0), 
            .cross_domain_fifo_WrClock_c(cross_domain_fifo_WrClock_c), .cross_domain_fifo_RdClock_c(cross_domain_fifo_RdClock_c), 
            .cross_domain_fifo_Reset_c(cross_domain_fifo_Reset_c), .cross_domain_fifo_Q_c_17(cross_domain_fifo_Q_c_17), 
            .cross_domain_fifo_Q_c_16(cross_domain_fifo_Q_c_16), .cross_domain_fifo_Q_c_15(cross_domain_fifo_Q_c_15), 
            .cross_domain_fifo_Q_c_14(cross_domain_fifo_Q_c_14), .cross_domain_fifo_Q_c_13(cross_domain_fifo_Q_c_13), 
            .cross_domain_fifo_Q_c_12(cross_domain_fifo_Q_c_12), .cross_domain_fifo_Q_c_11(cross_domain_fifo_Q_c_11), 
            .cross_domain_fifo_Q_c_10(cross_domain_fifo_Q_c_10), .cross_domain_fifo_Q_c_9(cross_domain_fifo_Q_c_9), 
            .cross_domain_fifo_Q_c_8(cross_domain_fifo_Q_c_8), .cross_domain_fifo_Q_c_7(cross_domain_fifo_Q_c_7), 
            .cross_domain_fifo_Q_c_6(cross_domain_fifo_Q_c_6), .cross_domain_fifo_Q_c_5(cross_domain_fifo_Q_c_5), 
            .cross_domain_fifo_Q_c_4(cross_domain_fifo_Q_c_4), .cross_domain_fifo_Q_c_3(cross_domain_fifo_Q_c_3), 
            .cross_domain_fifo_Q_c_2(cross_domain_fifo_Q_c_2), .cross_domain_fifo_Q_c_1(cross_domain_fifo_Q_c_1), 
            .cross_domain_fifo_Q_c_0(cross_domain_fifo_Q_c_0), .VCC_net(VCC_net), 
            .cross_domain_fifo_Empty_c(cross_domain_fifo_Empty_c), .cross_domain_fifo_WrEn_c(cross_domain_fifo_WrEn_c), 
            .cross_domain_fifo_RdEn_c(cross_domain_fifo_RdEn_c), .cross_domain_fifo_RPReset_c(cross_domain_fifo_RPReset_c), 
            .cross_domain_fifo_Data_c_31(cross_domain_fifo_Data_c_31), .cross_domain_fifo_Data_c_30(cross_domain_fifo_Data_c_30), 
            .cross_domain_fifo_Data_c_29(cross_domain_fifo_Data_c_29), .cross_domain_fifo_Data_c_28(cross_domain_fifo_Data_c_28), 
            .cross_domain_fifo_Data_c_27(cross_domain_fifo_Data_c_27), .cross_domain_fifo_Data_c_26(cross_domain_fifo_Data_c_26), 
            .cross_domain_fifo_Data_c_25(cross_domain_fifo_Data_c_25), .cross_domain_fifo_Data_c_24(cross_domain_fifo_Data_c_24), 
            .cross_domain_fifo_Data_c_23(cross_domain_fifo_Data_c_23), .cross_domain_fifo_Data_c_22(cross_domain_fifo_Data_c_22), 
            .cross_domain_fifo_Data_c_21(cross_domain_fifo_Data_c_21), .cross_domain_fifo_Data_c_20(cross_domain_fifo_Data_c_20), 
            .cross_domain_fifo_Data_c_19(cross_domain_fifo_Data_c_19), .cross_domain_fifo_Data_c_18(cross_domain_fifo_Data_c_18), 
            .cross_domain_fifo_Q_c_31(cross_domain_fifo_Q_c_31), .cross_domain_fifo_Q_c_30(cross_domain_fifo_Q_c_30), 
            .cross_domain_fifo_Q_c_29(cross_domain_fifo_Q_c_29), .cross_domain_fifo_Q_c_28(cross_domain_fifo_Q_c_28), 
            .cross_domain_fifo_Q_c_27(cross_domain_fifo_Q_c_27), .cross_domain_fifo_Q_c_26(cross_domain_fifo_Q_c_26), 
            .cross_domain_fifo_Q_c_25(cross_domain_fifo_Q_c_25), .cross_domain_fifo_Q_c_24(cross_domain_fifo_Q_c_24), 
            .cross_domain_fifo_Q_c_23(cross_domain_fifo_Q_c_23), .cross_domain_fifo_Q_c_22(cross_domain_fifo_Q_c_22), 
            .cross_domain_fifo_Q_c_21(cross_domain_fifo_Q_c_21), .cross_domain_fifo_Q_c_20(cross_domain_fifo_Q_c_20), 
            .cross_domain_fifo_Q_c_19(cross_domain_fifo_Q_c_19), .cross_domain_fifo_Q_c_18(cross_domain_fifo_Q_c_18)) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    OB LUT_FIFO_Q_pad_6 (.I(LUT_FIFO_Q_c_6), .O(LUT_FIFO_Q[6]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(14[9:19])
    VHI i5 (.Z(VCC_net));
    pll_double pll_double_inst (.pll_double_CLKI_c(pll_double_CLKI_c), .pll_double_RST_c(pll_double_RST_c), 
            .pll_double_CLKOP_c(pll_double_CLKOP_c), .pll_double_CLKOS_c(pll_double_CLKOS_c), 
            .pll_double_CLKOS2_c(pll_double_CLKOS2_c), .pll_double_LOCK_c(pll_double_LOCK_c), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(144[22:42])
    OB LUT_FIFO_Q_pad_7 (.I(LUT_FIFO_Q_c_7), .O(LUT_FIFO_Q[7]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(14[9:19])
    OB LUT_FIFO_Q_pad_3 (.I(LUT_FIFO_Q_c_3), .O(LUT_FIFO_Q[3]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(14[9:19])
    OB LUT_FIFO_Q_pad_8 (.I(LUT_FIFO_Q_c_8), .O(LUT_FIFO_Q[8]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(14[9:19])
    OB LUT_FIFO_Q_pad_9 (.I(LUT_FIFO_Q_c_9), .O(LUT_FIFO_Q[9]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(14[9:19])
    LUT_FIFO LUT_FIFO_inst (.LUT_FIFO_Full_c(LUT_FIFO_Full_c), .GND_net(GND_net), 
            .LUT_FIFO_AlmostEmpty_c(LUT_FIFO_AlmostEmpty_c), .LUT_FIFO_AlmostFull_c(LUT_FIFO_AlmostFull_c), 
            .LUT_FIFO_Data_c_3(LUT_FIFO_Data_c_3), .LUT_FIFO_Data_c_2(LUT_FIFO_Data_c_2), 
            .LUT_FIFO_Data_c_1(LUT_FIFO_Data_c_1), .LUT_FIFO_Data_c_0(LUT_FIFO_Data_c_0), 
            .LUT_FIFO_WrClock_c(LUT_FIFO_WrClock_c), .LUT_FIFO_RdClock_c(LUT_FIFO_RdClock_c), 
            .LUT_FIFO_Reset_c(LUT_FIFO_Reset_c), .LUT_FIFO_Q_c_3(LUT_FIFO_Q_c_3), 
            .LUT_FIFO_Q_c_2(LUT_FIFO_Q_c_2), .LUT_FIFO_Q_c_1(LUT_FIFO_Q_c_1), 
            .LUT_FIFO_Q_c_0(LUT_FIFO_Q_c_0), .VCC_net(VCC_net), .LUT_FIFO_Empty_c(LUT_FIFO_Empty_c), 
            .LUT_FIFO_WrEn_c(LUT_FIFO_WrEn_c), .LUT_FIFO_RdEn_c(LUT_FIFO_RdEn_c), 
            .LUT_FIFO_RPReset_c(LUT_FIFO_RPReset_c), .LUT_FIFO_Data_c_7(LUT_FIFO_Data_c_7), 
            .LUT_FIFO_Data_c_6(LUT_FIFO_Data_c_6), .LUT_FIFO_Data_c_5(LUT_FIFO_Data_c_5), 
            .LUT_FIFO_Data_c_4(LUT_FIFO_Data_c_4), .LUT_FIFO_Q_c_7(LUT_FIFO_Q_c_7), 
            .LUT_FIFO_Q_c_6(LUT_FIFO_Q_c_6), .LUT_FIFO_Q_c_5(LUT_FIFO_Q_c_5), 
            .LUT_FIFO_Q_c_4(LUT_FIFO_Q_c_4), .LUT_FIFO_Data_c_9(LUT_FIFO_Data_c_9), 
            .LUT_FIFO_Data_c_8(LUT_FIFO_Data_c_8), .LUT_FIFO_Q_c_9(LUT_FIFO_Q_c_9), 
            .LUT_FIFO_Q_c_8(LUT_FIFO_Q_c_8)) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    OB LUT_FIFO_Q_pad_4 (.I(LUT_FIFO_Q_c_4), .O(LUT_FIFO_Q[4]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(14[9:19])
    OB LUT_FIFO_Q_pad_5 (.I(LUT_FIFO_Q_c_5), .O(LUT_FIFO_Q[5]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(14[9:19])
    OB LUT_FIFO_Q_pad_2 (.I(LUT_FIFO_Q_c_2), .O(LUT_FIFO_Q[2]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(14[9:19])
    OB LUT_FIFO_Q_pad_1 (.I(LUT_FIFO_Q_c_1), .O(LUT_FIFO_Q[1]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(14[9:19])
    OB LUT_FIFO_Q_pad_0 (.I(LUT_FIFO_Q_c_0), .O(LUT_FIFO_Q[0]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(14[9:19])
    OB cross_domain_fifo_Q_pad_31 (.I(cross_domain_fifo_Q_c_31), .O(cross_domain_fifo_Q[31]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_30 (.I(cross_domain_fifo_Q_c_30), .O(cross_domain_fifo_Q[30]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_29 (.I(cross_domain_fifo_Q_c_29), .O(cross_domain_fifo_Q[29]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_28 (.I(cross_domain_fifo_Q_c_28), .O(cross_domain_fifo_Q[28]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_27 (.I(cross_domain_fifo_Q_c_27), .O(cross_domain_fifo_Q[27]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_26 (.I(cross_domain_fifo_Q_c_26), .O(cross_domain_fifo_Q[26]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_25 (.I(cross_domain_fifo_Q_c_25), .O(cross_domain_fifo_Q[25]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_24 (.I(cross_domain_fifo_Q_c_24), .O(cross_domain_fifo_Q[24]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_23 (.I(cross_domain_fifo_Q_c_23), .O(cross_domain_fifo_Q[23]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_22 (.I(cross_domain_fifo_Q_c_22), .O(cross_domain_fifo_Q[22]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_21 (.I(cross_domain_fifo_Q_c_21), .O(cross_domain_fifo_Q[21]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_20 (.I(cross_domain_fifo_Q_c_20), .O(cross_domain_fifo_Q[20]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_19 (.I(cross_domain_fifo_Q_c_19), .O(cross_domain_fifo_Q[19]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_18 (.I(cross_domain_fifo_Q_c_18), .O(cross_domain_fifo_Q[18]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_17 (.I(cross_domain_fifo_Q_c_17), .O(cross_domain_fifo_Q[17]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_16 (.I(cross_domain_fifo_Q_c_16), .O(cross_domain_fifo_Q[16]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_15 (.I(cross_domain_fifo_Q_c_15), .O(cross_domain_fifo_Q[15]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_14 (.I(cross_domain_fifo_Q_c_14), .O(cross_domain_fifo_Q[14]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_13 (.I(cross_domain_fifo_Q_c_13), .O(cross_domain_fifo_Q[13]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_12 (.I(cross_domain_fifo_Q_c_12), .O(cross_domain_fifo_Q[12]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_11 (.I(cross_domain_fifo_Q_c_11), .O(cross_domain_fifo_Q[11]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_10 (.I(cross_domain_fifo_Q_c_10), .O(cross_domain_fifo_Q[10]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_9 (.I(cross_domain_fifo_Q_c_9), .O(cross_domain_fifo_Q[9]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_8 (.I(cross_domain_fifo_Q_c_8), .O(cross_domain_fifo_Q[8]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_7 (.I(cross_domain_fifo_Q_c_7), .O(cross_domain_fifo_Q[7]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_6 (.I(cross_domain_fifo_Q_c_6), .O(cross_domain_fifo_Q[6]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_5 (.I(cross_domain_fifo_Q_c_5), .O(cross_domain_fifo_Q[5]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_4 (.I(cross_domain_fifo_Q_c_4), .O(cross_domain_fifo_Q[4]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_3 (.I(cross_domain_fifo_Q_c_3), .O(cross_domain_fifo_Q[3]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_2 (.I(cross_domain_fifo_Q_c_2), .O(cross_domain_fifo_Q[2]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_1 (.I(cross_domain_fifo_Q_c_1), .O(cross_domain_fifo_Q[1]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB cross_domain_fifo_Q_pad_0 (.I(cross_domain_fifo_Q_c_0), .O(cross_domain_fifo_Q[0]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(16[9:28])
    OB LUT_FIFO_AlmostEmpty_pad (.I(LUT_FIFO_AlmostEmpty_c), .O(LUT_FIFO_AlmostEmpty));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(17[9:29])
    OB LUT_FIFO_AlmostFull_pad (.I(LUT_FIFO_AlmostFull_c), .O(LUT_FIFO_AlmostFull));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(18[9:28])
    OB LUT_FIFO_Empty_pad (.I(LUT_FIFO_Empty_c), .O(LUT_FIFO_Empty));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(19[9:23])
    OB LUT_FIFO_Full_pad (.I(LUT_FIFO_Full_c), .O(LUT_FIFO_Full));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(20[9:22])
    OB cross_domain_fifo_AlmostEmpty_pad (.I(cross_domain_fifo_AlmostEmpty_c), 
       .O(cross_domain_fifo_AlmostEmpty));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(27[9:38])
    OB cross_domain_fifo_AlmostFull_pad (.I(cross_domain_fifo_AlmostFull_c), 
       .O(cross_domain_fifo_AlmostFull));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(28[9:37])
    OB cross_domain_fifo_Empty_pad (.I(cross_domain_fifo_Empty_c), .O(cross_domain_fifo_Empty));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(29[9:32])
    OB cross_domain_fifo_Full_pad (.I(cross_domain_fifo_Full_c), .O(cross_domain_fifo_Full));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(30[9:31])
    OB pll_double_CLKOP_pad (.I(pll_double_CLKOP_c), .O(pll_double_CLKOP));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(38[9:25])
    OB pll_double_CLKOS_pad (.I(pll_double_CLKOS_c), .O(pll_double_CLKOS));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(39[9:25])
    OB pll_double_CLKOS2_pad (.I(pll_double_CLKOS2_c), .O(pll_double_CLKOS2));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(40[9:26])
    OB pll_double_LOCK_pad (.I(pll_double_LOCK_c), .O(pll_double_LOCK));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(41[9:24])
    IB LUT_FIFO_Data_pad_9 (.I(LUT_FIFO_Data[9]), .O(LUT_FIFO_Data_c_9));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(13[11:24])
    IB LUT_FIFO_Data_pad_8 (.I(LUT_FIFO_Data[8]), .O(LUT_FIFO_Data_c_8));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(13[11:24])
    IB LUT_FIFO_Data_pad_7 (.I(LUT_FIFO_Data[7]), .O(LUT_FIFO_Data_c_7));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(13[11:24])
    IB LUT_FIFO_Data_pad_6 (.I(LUT_FIFO_Data[6]), .O(LUT_FIFO_Data_c_6));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(13[11:24])
    IB LUT_FIFO_Data_pad_5 (.I(LUT_FIFO_Data[5]), .O(LUT_FIFO_Data_c_5));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(13[11:24])
    IB LUT_FIFO_Data_pad_4 (.I(LUT_FIFO_Data[4]), .O(LUT_FIFO_Data_c_4));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(13[11:24])
    IB LUT_FIFO_Data_pad_3 (.I(LUT_FIFO_Data[3]), .O(LUT_FIFO_Data_c_3));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(13[11:24])
    IB LUT_FIFO_Data_pad_2 (.I(LUT_FIFO_Data[2]), .O(LUT_FIFO_Data_c_2));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(13[11:24])
    IB LUT_FIFO_Data_pad_1 (.I(LUT_FIFO_Data[1]), .O(LUT_FIFO_Data_c_1));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(13[11:24])
    IB LUT_FIFO_Data_pad_0 (.I(LUT_FIFO_Data[0]), .O(LUT_FIFO_Data_c_0));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(13[11:24])
    IB cross_domain_fifo_Data_pad_31 (.I(cross_domain_fifo_Data[31]), .O(cross_domain_fifo_Data_c_31));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_30 (.I(cross_domain_fifo_Data[30]), .O(cross_domain_fifo_Data_c_30));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_29 (.I(cross_domain_fifo_Data[29]), .O(cross_domain_fifo_Data_c_29));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_28 (.I(cross_domain_fifo_Data[28]), .O(cross_domain_fifo_Data_c_28));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_27 (.I(cross_domain_fifo_Data[27]), .O(cross_domain_fifo_Data_c_27));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_26 (.I(cross_domain_fifo_Data[26]), .O(cross_domain_fifo_Data_c_26));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_25 (.I(cross_domain_fifo_Data[25]), .O(cross_domain_fifo_Data_c_25));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_24 (.I(cross_domain_fifo_Data[24]), .O(cross_domain_fifo_Data_c_24));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_23 (.I(cross_domain_fifo_Data[23]), .O(cross_domain_fifo_Data_c_23));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_22 (.I(cross_domain_fifo_Data[22]), .O(cross_domain_fifo_Data_c_22));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_21 (.I(cross_domain_fifo_Data[21]), .O(cross_domain_fifo_Data_c_21));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_20 (.I(cross_domain_fifo_Data[20]), .O(cross_domain_fifo_Data_c_20));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_19 (.I(cross_domain_fifo_Data[19]), .O(cross_domain_fifo_Data_c_19));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_18 (.I(cross_domain_fifo_Data[18]), .O(cross_domain_fifo_Data_c_18));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_17 (.I(cross_domain_fifo_Data[17]), .O(cross_domain_fifo_Data_c_17));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_16 (.I(cross_domain_fifo_Data[16]), .O(cross_domain_fifo_Data_c_16));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_15 (.I(cross_domain_fifo_Data[15]), .O(cross_domain_fifo_Data_c_15));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_14 (.I(cross_domain_fifo_Data[14]), .O(cross_domain_fifo_Data_c_14));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_13 (.I(cross_domain_fifo_Data[13]), .O(cross_domain_fifo_Data_c_13));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_12 (.I(cross_domain_fifo_Data[12]), .O(cross_domain_fifo_Data_c_12));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_11 (.I(cross_domain_fifo_Data[11]), .O(cross_domain_fifo_Data_c_11));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_10 (.I(cross_domain_fifo_Data[10]), .O(cross_domain_fifo_Data_c_10));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_9 (.I(cross_domain_fifo_Data[9]), .O(cross_domain_fifo_Data_c_9));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_8 (.I(cross_domain_fifo_Data[8]), .O(cross_domain_fifo_Data_c_8));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_7 (.I(cross_domain_fifo_Data[7]), .O(cross_domain_fifo_Data_c_7));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_6 (.I(cross_domain_fifo_Data[6]), .O(cross_domain_fifo_Data_c_6));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_5 (.I(cross_domain_fifo_Data[5]), .O(cross_domain_fifo_Data_c_5));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_4 (.I(cross_domain_fifo_Data[4]), .O(cross_domain_fifo_Data_c_4));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_3 (.I(cross_domain_fifo_Data[3]), .O(cross_domain_fifo_Data_c_3));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_2 (.I(cross_domain_fifo_Data[2]), .O(cross_domain_fifo_Data_c_2));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_1 (.I(cross_domain_fifo_Data[1]), .O(cross_domain_fifo_Data_c_1));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB cross_domain_fifo_Data_pad_0 (.I(cross_domain_fifo_Data[0]), .O(cross_domain_fifo_Data_c_0));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(15[9:31])
    IB LUT_FIFO_RPReset_pad (.I(LUT_FIFO_RPReset), .O(LUT_FIFO_RPReset_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(21[9:25])
    IB LUT_FIFO_RdClock_pad (.I(LUT_FIFO_RdClock), .O(LUT_FIFO_RdClock_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(22[9:25])
    IB LUT_FIFO_RdEn_pad (.I(LUT_FIFO_RdEn), .O(LUT_FIFO_RdEn_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(23[9:22])
    IB LUT_FIFO_Reset_pad (.I(LUT_FIFO_Reset), .O(LUT_FIFO_Reset_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(24[9:23])
    IB LUT_FIFO_WrClock_pad (.I(LUT_FIFO_WrClock), .O(LUT_FIFO_WrClock_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(25[9:25])
    IB LUT_FIFO_WrEn_pad (.I(LUT_FIFO_WrEn), .O(LUT_FIFO_WrEn_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(26[9:22])
    IB cross_domain_fifo_RPReset_pad (.I(cross_domain_fifo_RPReset), .O(cross_domain_fifo_RPReset_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(31[9:34])
    IB cross_domain_fifo_RdClock_pad (.I(cross_domain_fifo_RdClock), .O(cross_domain_fifo_RdClock_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(32[9:34])
    IB cross_domain_fifo_RdEn_pad (.I(cross_domain_fifo_RdEn), .O(cross_domain_fifo_RdEn_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(33[9:31])
    IB cross_domain_fifo_Reset_pad (.I(cross_domain_fifo_Reset), .O(cross_domain_fifo_Reset_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(34[9:32])
    IB cross_domain_fifo_WrClock_pad (.I(cross_domain_fifo_WrClock), .O(cross_domain_fifo_WrClock_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(35[9:34])
    IB cross_domain_fifo_WrEn_pad (.I(cross_domain_fifo_WrEn), .O(cross_domain_fifo_WrEn_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(36[9:31])
    IB pll_double_CLKI_pad (.I(pll_double_CLKI), .O(pll_double_CLKI_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(37[9:24])
    IB pll_double_RST_pad (.I(pll_double_RST), .O(pll_double_RST_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(42[9:23])
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i4 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module cross_domain_fifo
//

module cross_domain_fifo (cross_domain_fifo_Full_c, GND_net, cross_domain_fifo_AlmostEmpty_c, 
            cross_domain_fifo_AlmostFull_c, cross_domain_fifo_Data_c_17, 
            cross_domain_fifo_Data_c_16, cross_domain_fifo_Data_c_15, cross_domain_fifo_Data_c_14, 
            cross_domain_fifo_Data_c_13, cross_domain_fifo_Data_c_12, cross_domain_fifo_Data_c_11, 
            cross_domain_fifo_Data_c_10, cross_domain_fifo_Data_c_9, cross_domain_fifo_Data_c_8, 
            cross_domain_fifo_Data_c_7, cross_domain_fifo_Data_c_6, cross_domain_fifo_Data_c_5, 
            cross_domain_fifo_Data_c_4, cross_domain_fifo_Data_c_3, cross_domain_fifo_Data_c_2, 
            cross_domain_fifo_Data_c_1, cross_domain_fifo_Data_c_0, cross_domain_fifo_WrClock_c, 
            cross_domain_fifo_RdClock_c, cross_domain_fifo_Reset_c, cross_domain_fifo_Q_c_17, 
            cross_domain_fifo_Q_c_16, cross_domain_fifo_Q_c_15, cross_domain_fifo_Q_c_14, 
            cross_domain_fifo_Q_c_13, cross_domain_fifo_Q_c_12, cross_domain_fifo_Q_c_11, 
            cross_domain_fifo_Q_c_10, cross_domain_fifo_Q_c_9, cross_domain_fifo_Q_c_8, 
            cross_domain_fifo_Q_c_7, cross_domain_fifo_Q_c_6, cross_domain_fifo_Q_c_5, 
            cross_domain_fifo_Q_c_4, cross_domain_fifo_Q_c_3, cross_domain_fifo_Q_c_2, 
            cross_domain_fifo_Q_c_1, cross_domain_fifo_Q_c_0, VCC_net, 
            cross_domain_fifo_Empty_c, cross_domain_fifo_WrEn_c, cross_domain_fifo_RdEn_c, 
            cross_domain_fifo_RPReset_c, cross_domain_fifo_Data_c_31, cross_domain_fifo_Data_c_30, 
            cross_domain_fifo_Data_c_29, cross_domain_fifo_Data_c_28, cross_domain_fifo_Data_c_27, 
            cross_domain_fifo_Data_c_26, cross_domain_fifo_Data_c_25, cross_domain_fifo_Data_c_24, 
            cross_domain_fifo_Data_c_23, cross_domain_fifo_Data_c_22, cross_domain_fifo_Data_c_21, 
            cross_domain_fifo_Data_c_20, cross_domain_fifo_Data_c_19, cross_domain_fifo_Data_c_18, 
            cross_domain_fifo_Q_c_31, cross_domain_fifo_Q_c_30, cross_domain_fifo_Q_c_29, 
            cross_domain_fifo_Q_c_28, cross_domain_fifo_Q_c_27, cross_domain_fifo_Q_c_26, 
            cross_domain_fifo_Q_c_25, cross_domain_fifo_Q_c_24, cross_domain_fifo_Q_c_23, 
            cross_domain_fifo_Q_c_22, cross_domain_fifo_Q_c_21, cross_domain_fifo_Q_c_20, 
            cross_domain_fifo_Q_c_19, cross_domain_fifo_Q_c_18) /* synthesis NGD_DRC_MASK=1 */ ;
    output cross_domain_fifo_Full_c;
    input GND_net;
    output cross_domain_fifo_AlmostEmpty_c;
    output cross_domain_fifo_AlmostFull_c;
    input cross_domain_fifo_Data_c_17;
    input cross_domain_fifo_Data_c_16;
    input cross_domain_fifo_Data_c_15;
    input cross_domain_fifo_Data_c_14;
    input cross_domain_fifo_Data_c_13;
    input cross_domain_fifo_Data_c_12;
    input cross_domain_fifo_Data_c_11;
    input cross_domain_fifo_Data_c_10;
    input cross_domain_fifo_Data_c_9;
    input cross_domain_fifo_Data_c_8;
    input cross_domain_fifo_Data_c_7;
    input cross_domain_fifo_Data_c_6;
    input cross_domain_fifo_Data_c_5;
    input cross_domain_fifo_Data_c_4;
    input cross_domain_fifo_Data_c_3;
    input cross_domain_fifo_Data_c_2;
    input cross_domain_fifo_Data_c_1;
    input cross_domain_fifo_Data_c_0;
    input cross_domain_fifo_WrClock_c;
    input cross_domain_fifo_RdClock_c;
    input cross_domain_fifo_Reset_c;
    output cross_domain_fifo_Q_c_17;
    output cross_domain_fifo_Q_c_16;
    output cross_domain_fifo_Q_c_15;
    output cross_domain_fifo_Q_c_14;
    output cross_domain_fifo_Q_c_13;
    output cross_domain_fifo_Q_c_12;
    output cross_domain_fifo_Q_c_11;
    output cross_domain_fifo_Q_c_10;
    output cross_domain_fifo_Q_c_9;
    output cross_domain_fifo_Q_c_8;
    output cross_domain_fifo_Q_c_7;
    output cross_domain_fifo_Q_c_6;
    output cross_domain_fifo_Q_c_5;
    output cross_domain_fifo_Q_c_4;
    output cross_domain_fifo_Q_c_3;
    output cross_domain_fifo_Q_c_2;
    output cross_domain_fifo_Q_c_1;
    output cross_domain_fifo_Q_c_0;
    input VCC_net;
    output cross_domain_fifo_Empty_c;
    input cross_domain_fifo_WrEn_c;
    input cross_domain_fifo_RdEn_c;
    input cross_domain_fifo_RPReset_c;
    input cross_domain_fifo_Data_c_31;
    input cross_domain_fifo_Data_c_30;
    input cross_domain_fifo_Data_c_29;
    input cross_domain_fifo_Data_c_28;
    input cross_domain_fifo_Data_c_27;
    input cross_domain_fifo_Data_c_26;
    input cross_domain_fifo_Data_c_25;
    input cross_domain_fifo_Data_c_24;
    input cross_domain_fifo_Data_c_23;
    input cross_domain_fifo_Data_c_22;
    input cross_domain_fifo_Data_c_21;
    input cross_domain_fifo_Data_c_20;
    input cross_domain_fifo_Data_c_19;
    input cross_domain_fifo_Data_c_18;
    output cross_domain_fifo_Q_c_31;
    output cross_domain_fifo_Q_c_30;
    output cross_domain_fifo_Q_c_29;
    output cross_domain_fifo_Q_c_28;
    output cross_domain_fifo_Q_c_27;
    output cross_domain_fifo_Q_c_26;
    output cross_domain_fifo_Q_c_25;
    output cross_domain_fifo_Q_c_24;
    output cross_domain_fifo_Q_c_23;
    output cross_domain_fifo_Q_c_22;
    output cross_domain_fifo_Q_c_21;
    output cross_domain_fifo_Q_c_20;
    output cross_domain_fifo_Q_c_19;
    output cross_domain_fifo_Q_c_18;
    
    wire cross_domain_fifo_WrClock_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(35[9:34])
    wire cross_domain_fifo_RdClock_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(32[9:34])
    
    wire invout_1, w_g2b_xor_cluster_1, w_gcount_r21, w_gcount_r22, 
        w_gcount_r23, w_gcount_r24, w_gcount_r27, w_gcount_r28, wcount_r7, 
        w_gcount_r26, wcount_r6, w_gcount_r25, wcount_r4, wcount_r3, 
        wcount_r2, w_g2b_xor_cluster_0, wcount_r1, w_gcount_r20, wcount_r0, 
        r_gcount_w25, r_gcount_w26, r_gcount_w27, r_gcount_w28, r_g2b_xor_cluster_0, 
        r_g2b_xor_cluster_1, r_gcount_w21, r_gcount_w22, r_gcount_w23, 
        r_gcount_w24, rcount_w7, rcount_w6, rcount_w4, rcount_w3, 
        rcount_w2, rcount_w1, r_gcount_w20, rcount_w0, rptr_8, rcount_8, 
        empty_cmp_set, empty_cmp_clr, wptr_8, wcount_8, full_cmp_set, 
        full_cmp_clr, ae_setcount_8, ae_set_cmp_set, ae_set_cmp_clr, 
        ae_clrcount_8, ae_clr_cmp_set, ae_clr_cmp_clr, ae_d, ae_set_d, 
        ae_clr_d, af_setcount_8, af_set_cmp_set, af_set_cmp_clr, af_clrcount_8, 
        af_clr_cmp_set, af_clr_cmp_clr, af_d, af_set, af_clr, wptr_0, 
        wptr_1, wptr_2, wptr_3, wptr_4, wptr_5, wptr_6, wptr_7, 
        rptr_0, rptr_1, rptr_2, rptr_3, rptr_4, rptr_5, rptr_6, 
        rptr_7, rden_i, wren_i, iwcount_1, wcount_1, iwcount_2, 
        wcount_2, iwcount_3, wcount_3, iwcount_4, wcount_4, iwcount_5, 
        wcount_5, iwcount_6, wcount_6, iwcount_7, wcount_7, iwcount_8, 
        w_gdata_0, w_gcount_0, w_gdata_1, w_gcount_1, w_gdata_2, w_gcount_2, 
        w_gdata_3, w_gcount_3, w_gdata_4, w_gcount_4, w_gdata_5, w_gcount_5, 
        w_gdata_6, w_gcount_6, w_gdata_7, w_gcount_7, w_gcount_8, 
        wcount_0, rRst, ircount_0, rcount_0, ircount_1, rcount_1, 
        ircount_2, rcount_2, ircount_3, rcount_3, ircount_4, rcount_4, 
        ircount_5, rcount_5, ircount_6, rcount_6, ircount_7, rcount_7, 
        ircount_8, r_gdata_0, r_gcount_0, r_gdata_1, r_gcount_1, r_gdata_2, 
        r_gcount_2, r_gdata_3, r_gcount_3, r_gdata_4, r_gcount_4, 
        r_gdata_5, r_gcount_5, r_gdata_6, r_gcount_6, r_gdata_7, r_gcount_7, 
        r_gcount_8, w_gcount_r0, w_gcount_r1, w_gcount_r2, w_gcount_r3, 
        w_gcount_r4, w_gcount_r5, w_gcount_r6, w_gcount_r7, w_gcount_r8, 
        r_gcount_w0, r_gcount_w1, r_gcount_w2, r_gcount_w3, r_gcount_w4, 
        r_gcount_w5, r_gcount_w6, r_gcount_w7, r_gcount_w8, empty_d, 
        full_d, iae_setcount_0, ae_setcount_0, iae_setcount_1, ae_setcount_1, 
        iae_setcount_2, ae_setcount_2, iae_setcount_3, ae_setcount_3, 
        iae_setcount_4, ae_setcount_4, iae_setcount_5, ae_setcount_5, 
        iae_setcount_6, ae_setcount_6, iae_setcount_7, ae_setcount_7, 
        iae_setcount_8, iae_clrcount_0, ae_clrcount_0, iae_clrcount_1, 
        ae_clrcount_1, iae_clrcount_2, ae_clrcount_2, iae_clrcount_3, 
        ae_clrcount_3, iae_clrcount_4, ae_clrcount_4, iae_clrcount_5, 
        ae_clrcount_5, iae_clrcount_6, ae_clrcount_6, iae_clrcount_7, 
        ae_clrcount_7, iae_clrcount_8, iaf_setcount_0, af_setcount_0, 
        iaf_setcount_1, af_setcount_1, iaf_setcount_2, af_setcount_2, 
        iaf_setcount_3, af_setcount_3, iaf_setcount_4, af_setcount_4, 
        iaf_setcount_5, af_setcount_5, iaf_setcount_6, af_setcount_6, 
        iaf_setcount_7, af_setcount_7, iaf_setcount_8, iaf_clrcount_0, 
        af_clrcount_0, iaf_clrcount_1, af_clrcount_1, iaf_clrcount_2, 
        af_clrcount_2, iaf_clrcount_3, af_clrcount_3, iaf_clrcount_4, 
        af_clrcount_4, iaf_clrcount_5, af_clrcount_5, iaf_clrcount_6, 
        af_clrcount_6, iaf_clrcount_7, af_clrcount_7, iaf_clrcount_8, 
        w_gctr_ci, iwcount_0, co0, co1, co2, co3, r_gctr_ci, co0_1, 
        co1_1, co2_1, co3_1, cmp_ci, co0_2, co1_2, co2_2, co3_2, 
        empty_d_c, cmp_ci_1, co0_3, co1_3, co2_3, co3_3, full_d_c, 
        ae_set_ctr_ci, co0_4, co1_4, co2_4, co3_4, cmp_ci_2, co0_5, 
        co1_5, co2_5, co3_5, ae_set_d_c, ae_clr_ctr_ci, co0_6, co1_6, 
        co2_6, co3_6, cmp_ci_3, co0_7, co1_7, co2_7, co3_7, ae_clr_d_c, 
        af_set_ctr_ci, co0_8, co1_8, co2_8, co3_8, cmp_ci_4, co0_9, 
        co1_9, co2_9, co3_9, af_set_c, af_clr_ctr_ci, co0_10, co1_10, 
        co2_10, co3_10, cmp_ci_5, co0_11, co1_11, co2_11, co3_11, 
        af_clr_c, invout_0;
    
    INV INV_1 (.A(cross_domain_fifo_Full_c), .Z(invout_1)) /* synthesis LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    ROM16X1A LUT4_30 (.AD0(w_gcount_r24), .AD1(w_gcount_r23), .AD2(w_gcount_r22), 
            .AD3(w_gcount_r21), .DO0(w_g2b_xor_cluster_1)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_30.initval = 16'b0110100110010110;
    ROM16X1A LUT4_29 (.AD0(GND_net), .AD1(GND_net), .AD2(w_gcount_r28), 
            .AD3(w_gcount_r27), .DO0(wcount_r7)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_29.initval = 16'b0110100110010110;
    ROM16X1A LUT4_28 (.AD0(GND_net), .AD1(w_gcount_r28), .AD2(w_gcount_r27), 
            .AD3(w_gcount_r26), .DO0(wcount_r6)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_28.initval = 16'b0110100110010110;
    ROM16X1A LUT4_27 (.AD0(wcount_r7), .AD1(w_gcount_r26), .AD2(w_gcount_r25), 
            .AD3(w_gcount_r24), .DO0(wcount_r4)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_27.initval = 16'b0110100110010110;
    ROM16X1A LUT4_26 (.AD0(wcount_r6), .AD1(w_gcount_r25), .AD2(w_gcount_r24), 
            .AD3(w_gcount_r23), .DO0(wcount_r3)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_26.initval = 16'b0110100110010110;
    ROM16X1A LUT4_25 (.AD0(w_g2b_xor_cluster_0), .AD1(w_gcount_r24), .AD2(w_gcount_r23), 
            .AD3(w_gcount_r22), .DO0(wcount_r2)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_25.initval = 16'b0110100110010110;
    ROM16X1A LUT4_24 (.AD0(GND_net), .AD1(GND_net), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r1)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_24.initval = 16'b0110100110010110;
    ROM16X1A LUT4_23 (.AD0(GND_net), .AD1(w_gcount_r20), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r0)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_23.initval = 16'b0110100110010110;
    ROM16X1A LUT4_22 (.AD0(r_gcount_w28), .AD1(r_gcount_w27), .AD2(r_gcount_w26), 
            .AD3(r_gcount_w25), .DO0(r_g2b_xor_cluster_0)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_22.initval = 16'b0110100110010110;
    ROM16X1A LUT4_21 (.AD0(r_gcount_w24), .AD1(r_gcount_w23), .AD2(r_gcount_w22), 
            .AD3(r_gcount_w21), .DO0(r_g2b_xor_cluster_1)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_21.initval = 16'b0110100110010110;
    ROM16X1A LUT4_20 (.AD0(GND_net), .AD1(GND_net), .AD2(r_gcount_w28), 
            .AD3(r_gcount_w27), .DO0(rcount_w7)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_20.initval = 16'b0110100110010110;
    ROM16X1A LUT4_19 (.AD0(GND_net), .AD1(r_gcount_w28), .AD2(r_gcount_w27), 
            .AD3(r_gcount_w26), .DO0(rcount_w6)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_19.initval = 16'b0110100110010110;
    ROM16X1A LUT4_18 (.AD0(rcount_w7), .AD1(r_gcount_w26), .AD2(r_gcount_w25), 
            .AD3(r_gcount_w24), .DO0(rcount_w4)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_18.initval = 16'b0110100110010110;
    ROM16X1A LUT4_17 (.AD0(rcount_w6), .AD1(r_gcount_w25), .AD2(r_gcount_w24), 
            .AD3(r_gcount_w23), .DO0(rcount_w3)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_17.initval = 16'b0110100110010110;
    ROM16X1A LUT4_16 (.AD0(r_g2b_xor_cluster_0), .AD1(r_gcount_w24), .AD2(r_gcount_w23), 
            .AD3(r_gcount_w22), .DO0(rcount_w2)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_16.initval = 16'b0110100110010110;
    ROM16X1A LUT4_15 (.AD0(GND_net), .AD1(GND_net), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w1)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_15.initval = 16'b0110100110010110;
    ROM16X1A LUT4_14 (.AD0(GND_net), .AD1(r_gcount_w20), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w0)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_14.initval = 16'b0110100110010110;
    ROM16X1A LUT4_13 (.AD0(GND_net), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(rptr_8), .DO0(empty_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_13.initval = 16'b0000010000010000;
    ROM16X1A LUT4_12 (.AD0(GND_net), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(rptr_8), .DO0(empty_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_12.initval = 16'b0001000000000100;
    ROM16X1A LUT4_11 (.AD0(GND_net), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(wptr_8), .DO0(full_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_11.initval = 16'b0000000101000000;
    ROM16X1A LUT4_10 (.AD0(GND_net), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(wptr_8), .DO0(full_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_10.initval = 16'b0100000000000001;
    ROM16X1A LUT4_9 (.AD0(rptr_8), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(ae_setcount_8), .DO0(ae_set_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_9.initval = 16'b0001001111001000;
    ROM16X1A LUT4_8 (.AD0(rptr_8), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(ae_setcount_8), .DO0(ae_set_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_8.initval = 16'b0010000000000100;
    ROM16X1A LUT4_7 (.AD0(rptr_8), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(ae_clrcount_8), .DO0(ae_clr_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_7.initval = 16'b0001001111001000;
    ROM16X1A LUT4_6 (.AD0(rptr_8), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(ae_clrcount_8), .DO0(ae_clr_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_6.initval = 16'b0010000000000100;
    ROM16X1A LUT4_5 (.AD0(GND_net), .AD1(ae_clr_d), .AD2(ae_set_d), .AD3(cross_domain_fifo_AlmostEmpty_c), 
            .DO0(ae_d)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_5.initval = 16'b0100010001010000;
    ROM16X1A LUT4_4 (.AD0(wptr_8), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(af_setcount_8), .DO0(af_set_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_4.initval = 16'b0100110000110010;
    ROM16X1A LUT4_3 (.AD0(wptr_8), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(af_setcount_8), .DO0(af_set_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_3.initval = 16'b1000000000000001;
    ROM16X1A LUT4_2 (.AD0(wptr_8), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(af_clrcount_8), .DO0(af_clr_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_2.initval = 16'b0100110000110010;
    ROM16X1A LUT4_1 (.AD0(wptr_8), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(af_clrcount_8), .DO0(af_clr_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_1.initval = 16'b1000000000000001;
    ROM16X1A LUT4_0 (.AD0(GND_net), .AD1(af_clr), .AD2(af_set), .AD3(cross_domain_fifo_AlmostFull_c), 
            .DO0(af_d)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_0.initval = 16'b0100010001010000;
    PDPW8KE pdp_ram_0_0_1 (.DI0(cross_domain_fifo_Data_c_0), .DI1(cross_domain_fifo_Data_c_1), 
            .DI2(cross_domain_fifo_Data_c_2), .DI3(cross_domain_fifo_Data_c_3), 
            .DI4(cross_domain_fifo_Data_c_4), .DI5(cross_domain_fifo_Data_c_5), 
            .DI6(cross_domain_fifo_Data_c_6), .DI7(cross_domain_fifo_Data_c_7), 
            .DI8(cross_domain_fifo_Data_c_8), .DI9(cross_domain_fifo_Data_c_9), 
            .DI10(cross_domain_fifo_Data_c_10), .DI11(cross_domain_fifo_Data_c_11), 
            .DI12(cross_domain_fifo_Data_c_12), .DI13(cross_domain_fifo_Data_c_13), 
            .DI14(cross_domain_fifo_Data_c_14), .DI15(cross_domain_fifo_Data_c_15), 
            .DI16(cross_domain_fifo_Data_c_16), .DI17(cross_domain_fifo_Data_c_17), 
            .ADW0(wptr_0), .ADW1(wptr_1), .ADW2(wptr_2), .ADW3(wptr_3), 
            .ADW4(wptr_4), .ADW5(wptr_5), .ADW6(wptr_6), .ADW7(wptr_7), 
            .ADW8(GND_net), .BE0(VCC_net), .BE1(VCC_net), .CEW(wren_i), 
            .CLKW(cross_domain_fifo_WrClock_c), .CSW0(VCC_net), .CSW1(GND_net), 
            .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), .ADR2(GND_net), 
            .ADR3(GND_net), .ADR4(rptr_0), .ADR5(rptr_1), .ADR6(rptr_2), 
            .ADR7(rptr_3), .ADR8(rptr_4), .ADR9(rptr_5), .ADR10(rptr_6), 
            .ADR11(rptr_7), .ADR12(GND_net), .CER(rden_i), .OCER(rden_i), 
            .CLKR(cross_domain_fifo_RdClock_c), .CSR0(GND_net), .CSR1(GND_net), 
            .CSR2(GND_net), .RST(cross_domain_fifo_Reset_c), .DO0(cross_domain_fifo_Q_c_9), 
            .DO1(cross_domain_fifo_Q_c_10), .DO2(cross_domain_fifo_Q_c_11), 
            .DO3(cross_domain_fifo_Q_c_12), .DO4(cross_domain_fifo_Q_c_13), 
            .DO5(cross_domain_fifo_Q_c_14), .DO6(cross_domain_fifo_Q_c_15), 
            .DO7(cross_domain_fifo_Q_c_16), .DO8(cross_domain_fifo_Q_c_17), 
            .DO9(cross_domain_fifo_Q_c_0), .DO10(cross_domain_fifo_Q_c_1), 
            .DO11(cross_domain_fifo_Q_c_2), .DO12(cross_domain_fifo_Q_c_3), 
            .DO13(cross_domain_fifo_Q_c_4), .DO14(cross_domain_fifo_Q_c_5), 
            .DO15(cross_domain_fifo_Q_c_6), .DO16(cross_domain_fifo_Q_c_7), 
            .DO17(cross_domain_fifo_Q_c_8)) /* synthesis syn_black_box=true, MEM_LPC_FILE="cross_domain_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam pdp_ram_0_0_1.DATA_WIDTH_W = 18;
    defparam pdp_ram_0_0_1.DATA_WIDTH_R = 18;
    defparam pdp_ram_0_0_1.REGMODE = "NOREG";
    defparam pdp_ram_0_0_1.CSDECODE_W = "0b001";
    defparam pdp_ram_0_0_1.CSDECODE_R = "0b000";
    defparam pdp_ram_0_0_1.GSR = "ENABLED";
    defparam pdp_ram_0_0_1.RESETMODE = "ASYNC";
    defparam pdp_ram_0_0_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_0_1.INIT_DATA = "STATIC";
    defparam pdp_ram_0_0_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    FD1P3DX FF_128 (.D(iwcount_1), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(773[13:20])
    defparam FF_128.GSR = "ENABLED";
    FD1P3DX FF_127 (.D(iwcount_2), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(777[13:20])
    defparam FF_127.GSR = "ENABLED";
    FD1P3DX FF_126 (.D(iwcount_3), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(781[13:20])
    defparam FF_126.GSR = "ENABLED";
    FD1P3DX FF_125 (.D(iwcount_4), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(785[13:20])
    defparam FF_125.GSR = "ENABLED";
    FD1P3DX FF_124 (.D(iwcount_5), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(789[13:20])
    defparam FF_124.GSR = "ENABLED";
    FD1P3DX FF_123 (.D(iwcount_6), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(793[13:20])
    defparam FF_123.GSR = "ENABLED";
    FD1P3DX FF_122 (.D(iwcount_7), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(797[13:20])
    defparam FF_122.GSR = "ENABLED";
    FD1P3DX FF_121 (.D(iwcount_8), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(801[13:20])
    defparam FF_121.GSR = "ENABLED";
    FD1P3DX FF_120 (.D(w_gdata_0), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(w_gcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(805[13:20])
    defparam FF_120.GSR = "ENABLED";
    FD1P3DX FF_119 (.D(w_gdata_1), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(w_gcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(809[13:20])
    defparam FF_119.GSR = "ENABLED";
    FD1P3DX FF_118 (.D(w_gdata_2), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(w_gcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(813[13:20])
    defparam FF_118.GSR = "ENABLED";
    FD1P3DX FF_117 (.D(w_gdata_3), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(w_gcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(817[13:20])
    defparam FF_117.GSR = "ENABLED";
    FD1P3DX FF_116 (.D(w_gdata_4), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(w_gcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(821[13:20])
    defparam FF_116.GSR = "ENABLED";
    FD1P3DX FF_115 (.D(w_gdata_5), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(w_gcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(825[13:20])
    defparam FF_115.GSR = "ENABLED";
    FD1P3DX FF_114 (.D(w_gdata_6), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(w_gcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(829[13:20])
    defparam FF_114.GSR = "ENABLED";
    FD1P3DX FF_113 (.D(w_gdata_7), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(w_gcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(833[13:20])
    defparam FF_113.GSR = "ENABLED";
    FD1P3DX FF_112 (.D(wcount_8), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(w_gcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(837[13:20])
    defparam FF_112.GSR = "ENABLED";
    FD1P3DX FF_111 (.D(wcount_0), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wptr_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(841[13:20])
    defparam FF_111.GSR = "ENABLED";
    FD1P3DX FF_110 (.D(wcount_1), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wptr_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(845[13:20])
    defparam FF_110.GSR = "ENABLED";
    FD1P3DX FF_109 (.D(wcount_2), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wptr_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(849[13:20])
    defparam FF_109.GSR = "ENABLED";
    FD1P3DX FF_108 (.D(wcount_3), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wptr_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(853[13:20])
    defparam FF_108.GSR = "ENABLED";
    FD1P3DX FF_107 (.D(wcount_4), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wptr_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(857[13:20])
    defparam FF_107.GSR = "ENABLED";
    FD1P3DX FF_106 (.D(wcount_5), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wptr_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(861[13:20])
    defparam FF_106.GSR = "ENABLED";
    FD1P3DX FF_105 (.D(wcount_6), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wptr_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(865[13:20])
    defparam FF_105.GSR = "ENABLED";
    FD1P3DX FF_104 (.D(wcount_7), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wptr_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(869[13:20])
    defparam FF_104.GSR = "ENABLED";
    FD1P3DX FF_103 (.D(wcount_8), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(wptr_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(873[13:20])
    defparam FF_103.GSR = "ENABLED";
    FD1P3BX FF_102 (.D(ircount_0), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .PD(rRst), .Q(rcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(877[13:20])
    defparam FF_102.GSR = "ENABLED";
    FD1P3DX FF_101 (.D(ircount_1), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(881[13:20])
    defparam FF_101.GSR = "ENABLED";
    FD1P3DX FF_100 (.D(ircount_2), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(885[13:20])
    defparam FF_100.GSR = "ENABLED";
    FD1P3DX FF_99 (.D(ircount_3), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(889[12:19])
    defparam FF_99.GSR = "ENABLED";
    FD1P3DX FF_98 (.D(ircount_4), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(893[12:19])
    defparam FF_98.GSR = "ENABLED";
    FD1P3DX FF_97 (.D(ircount_5), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(897[12:19])
    defparam FF_97.GSR = "ENABLED";
    FD1P3DX FF_96 (.D(ircount_6), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(901[12:19])
    defparam FF_96.GSR = "ENABLED";
    FD1P3DX FF_95 (.D(ircount_7), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(905[12:19])
    defparam FF_95.GSR = "ENABLED";
    FD1P3DX FF_94 (.D(ircount_8), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(909[12:19])
    defparam FF_94.GSR = "ENABLED";
    FD1P3DX FF_93 (.D(r_gdata_0), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(r_gcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(913[12:19])
    defparam FF_93.GSR = "ENABLED";
    FD1P3DX FF_92 (.D(r_gdata_1), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(r_gcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(917[12:19])
    defparam FF_92.GSR = "ENABLED";
    FD1P3DX FF_91 (.D(r_gdata_2), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(r_gcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(921[12:19])
    defparam FF_91.GSR = "ENABLED";
    FD1P3DX FF_90 (.D(r_gdata_3), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(r_gcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(925[12:19])
    defparam FF_90.GSR = "ENABLED";
    FD1P3DX FF_89 (.D(r_gdata_4), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(r_gcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(929[12:19])
    defparam FF_89.GSR = "ENABLED";
    FD1P3DX FF_88 (.D(r_gdata_5), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(r_gcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(933[12:19])
    defparam FF_88.GSR = "ENABLED";
    FD1P3DX FF_87 (.D(r_gdata_6), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(r_gcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(937[12:19])
    defparam FF_87.GSR = "ENABLED";
    FD1P3DX FF_86 (.D(r_gdata_7), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(r_gcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(941[12:19])
    defparam FF_86.GSR = "ENABLED";
    FD1P3DX FF_85 (.D(rcount_8), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(r_gcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(945[12:19])
    defparam FF_85.GSR = "ENABLED";
    FD1P3DX FF_84 (.D(rcount_0), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rptr_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(949[12:19])
    defparam FF_84.GSR = "ENABLED";
    FD1P3DX FF_83 (.D(rcount_1), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rptr_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(953[12:19])
    defparam FF_83.GSR = "ENABLED";
    FD1P3DX FF_82 (.D(rcount_2), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rptr_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(957[12:19])
    defparam FF_82.GSR = "ENABLED";
    FD1P3DX FF_81 (.D(rcount_3), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rptr_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(961[12:19])
    defparam FF_81.GSR = "ENABLED";
    FD1P3DX FF_80 (.D(rcount_4), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rptr_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(965[12:19])
    defparam FF_80.GSR = "ENABLED";
    FD1P3DX FF_79 (.D(rcount_5), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rptr_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(969[12:19])
    defparam FF_79.GSR = "ENABLED";
    FD1P3DX FF_78 (.D(rcount_6), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rptr_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(973[12:19])
    defparam FF_78.GSR = "ENABLED";
    FD1P3DX FF_77 (.D(rcount_7), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rptr_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(977[12:19])
    defparam FF_77.GSR = "ENABLED";
    FD1P3DX FF_76 (.D(rcount_8), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(rptr_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(981[12:19])
    defparam FF_76.GSR = "ENABLED";
    FD1S3DX FF_75 (.D(w_gcount_0), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(985[12:19])
    defparam FF_75.GSR = "ENABLED";
    FD1S3DX FF_74 (.D(w_gcount_1), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(988[12:19])
    defparam FF_74.GSR = "ENABLED";
    FD1S3DX FF_73 (.D(w_gcount_2), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(991[12:19])
    defparam FF_73.GSR = "ENABLED";
    FD1S3DX FF_72 (.D(w_gcount_3), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(994[12:19])
    defparam FF_72.GSR = "ENABLED";
    FD1S3DX FF_71 (.D(w_gcount_4), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(997[12:19])
    defparam FF_71.GSR = "ENABLED";
    FD1S3DX FF_70 (.D(w_gcount_5), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1000[12:19])
    defparam FF_70.GSR = "ENABLED";
    FD1S3DX FF_69 (.D(w_gcount_6), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1003[12:19])
    defparam FF_69.GSR = "ENABLED";
    FD1S3DX FF_68 (.D(w_gcount_7), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1006[12:19])
    defparam FF_68.GSR = "ENABLED";
    FD1S3DX FF_67 (.D(w_gcount_8), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1009[12:19])
    defparam FF_67.GSR = "ENABLED";
    FD1S3DX FF_66 (.D(r_gcount_0), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1012[12:19])
    defparam FF_66.GSR = "ENABLED";
    FD1S3DX FF_65 (.D(r_gcount_1), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1015[12:19])
    defparam FF_65.GSR = "ENABLED";
    FD1S3DX FF_64 (.D(r_gcount_2), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1018[12:19])
    defparam FF_64.GSR = "ENABLED";
    FD1S3DX FF_63 (.D(r_gcount_3), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1021[12:19])
    defparam FF_63.GSR = "ENABLED";
    FD1S3DX FF_62 (.D(r_gcount_4), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1024[12:19])
    defparam FF_62.GSR = "ENABLED";
    FD1S3DX FF_61 (.D(r_gcount_5), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1027[12:19])
    defparam FF_61.GSR = "ENABLED";
    FD1S3DX FF_60 (.D(r_gcount_6), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1030[12:19])
    defparam FF_60.GSR = "ENABLED";
    FD1S3DX FF_59 (.D(r_gcount_7), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1033[12:19])
    defparam FF_59.GSR = "ENABLED";
    FD1S3DX FF_58 (.D(r_gcount_8), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1036[12:19])
    defparam FF_58.GSR = "ENABLED";
    FD1S3DX FF_57 (.D(w_gcount_r0), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r20)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1039[12:19])
    defparam FF_57.GSR = "ENABLED";
    FD1S3DX FF_56 (.D(w_gcount_r1), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r21)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1043[12:19])
    defparam FF_56.GSR = "ENABLED";
    FD1S3DX FF_55 (.D(w_gcount_r2), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r22)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1047[12:19])
    defparam FF_55.GSR = "ENABLED";
    FD1S3DX FF_54 (.D(w_gcount_r3), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r23)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1051[12:19])
    defparam FF_54.GSR = "ENABLED";
    FD1S3DX FF_53 (.D(w_gcount_r4), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r24)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1055[12:19])
    defparam FF_53.GSR = "ENABLED";
    FD1S3DX FF_52 (.D(w_gcount_r5), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r25)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1059[12:19])
    defparam FF_52.GSR = "ENABLED";
    FD1S3DX FF_51 (.D(w_gcount_r6), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r26)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1063[12:19])
    defparam FF_51.GSR = "ENABLED";
    FD1S3DX FF_50 (.D(w_gcount_r7), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r27)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1067[12:19])
    defparam FF_50.GSR = "ENABLED";
    FD1S3DX FF_49 (.D(w_gcount_r8), .CK(cross_domain_fifo_RdClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(w_gcount_r28)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1071[12:19])
    defparam FF_49.GSR = "ENABLED";
    FD1S3DX FF_48 (.D(r_gcount_w0), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w20)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1075[12:19])
    defparam FF_48.GSR = "ENABLED";
    FD1S3DX FF_47 (.D(r_gcount_w1), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w21)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1078[12:19])
    defparam FF_47.GSR = "ENABLED";
    FD1S3DX FF_46 (.D(r_gcount_w2), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w22)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1081[12:19])
    defparam FF_46.GSR = "ENABLED";
    FD1S3DX FF_45 (.D(r_gcount_w3), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w23)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1084[12:19])
    defparam FF_45.GSR = "ENABLED";
    FD1S3DX FF_44 (.D(r_gcount_w4), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w24)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1087[12:19])
    defparam FF_44.GSR = "ENABLED";
    FD1S3DX FF_43 (.D(r_gcount_w5), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w25)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1090[12:19])
    defparam FF_43.GSR = "ENABLED";
    FD1S3DX FF_42 (.D(r_gcount_w6), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w26)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1093[12:19])
    defparam FF_42.GSR = "ENABLED";
    FD1S3DX FF_41 (.D(r_gcount_w7), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w27)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1096[12:19])
    defparam FF_41.GSR = "ENABLED";
    FD1S3DX FF_40 (.D(r_gcount_w8), .CK(cross_domain_fifo_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w28)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1099[12:19])
    defparam FF_40.GSR = "ENABLED";
    FD1S3BX FF_39 (.D(empty_d), .CK(cross_domain_fifo_RdClock_c), .PD(rRst), 
            .Q(cross_domain_fifo_Empty_c)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1102[12:19])
    defparam FF_39.GSR = "ENABLED";
    FD1S3DX FF_38 (.D(full_d), .CK(cross_domain_fifo_WrClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(cross_domain_fifo_Full_c)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1105[12:19])
    defparam FF_38.GSR = "ENABLED";
    FD1P3BX FF_37 (.D(iae_setcount_0), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .PD(rRst), .Q(ae_setcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1108[12:19])
    defparam FF_37.GSR = "ENABLED";
    FD1P3BX FF_36 (.D(iae_setcount_1), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .PD(rRst), .Q(ae_setcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1112[12:19])
    defparam FF_36.GSR = "ENABLED";
    FD1P3DX FF_35 (.D(iae_setcount_2), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(ae_setcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1116[12:19])
    defparam FF_35.GSR = "ENABLED";
    FD1P3BX FF_34 (.D(iae_setcount_3), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .PD(rRst), .Q(ae_setcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1120[12:19])
    defparam FF_34.GSR = "ENABLED";
    FD1P3DX FF_33 (.D(iae_setcount_4), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(ae_setcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1124[12:19])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(iae_setcount_5), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(ae_setcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1128[12:19])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(iae_setcount_6), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(ae_setcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1132[12:19])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(iae_setcount_7), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(ae_setcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1136[12:19])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(iae_setcount_8), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(ae_setcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1140[12:19])
    defparam FF_29.GSR = "ENABLED";
    FD1P3BX FF_28 (.D(iae_clrcount_0), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .PD(rRst), .Q(ae_clrcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1144[12:19])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(iae_clrcount_1), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(ae_clrcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1148[12:19])
    defparam FF_27.GSR = "ENABLED";
    FD1P3BX FF_26 (.D(iae_clrcount_2), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .PD(rRst), .Q(ae_clrcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1152[12:19])
    defparam FF_26.GSR = "ENABLED";
    FD1P3BX FF_25 (.D(iae_clrcount_3), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .PD(rRst), .Q(ae_clrcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1156[12:19])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(iae_clrcount_4), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(ae_clrcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1160[12:19])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(iae_clrcount_5), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(ae_clrcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1164[12:19])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(iae_clrcount_6), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(ae_clrcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1168[12:19])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(iae_clrcount_7), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(ae_clrcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1172[12:19])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(iae_clrcount_8), .SP(rden_i), .CK(cross_domain_fifo_RdClock_c), 
            .CD(rRst), .Q(ae_clrcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1176[12:19])
    defparam FF_20.GSR = "ENABLED";
    FD1S3BX FF_19 (.D(ae_d), .CK(cross_domain_fifo_RdClock_c), .PD(rRst), 
            .Q(cross_domain_fifo_AlmostEmpty_c)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1180[12:19])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(iaf_setcount_0), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(af_setcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1183[12:19])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(iaf_setcount_1), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(af_setcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1187[12:19])
    defparam FF_17.GSR = "ENABLED";
    FD1P3BX FF_16 (.D(iaf_setcount_2), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .PD(cross_domain_fifo_Reset_c), .Q(af_setcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1191[12:19])
    defparam FF_16.GSR = "ENABLED";
    FD1P3BX FF_15 (.D(iaf_setcount_3), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .PD(cross_domain_fifo_Reset_c), .Q(af_setcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1195[12:19])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(iaf_setcount_4), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(af_setcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1199[12:19])
    defparam FF_14.GSR = "ENABLED";
    FD1P3BX FF_13 (.D(iaf_setcount_5), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .PD(cross_domain_fifo_Reset_c), .Q(af_setcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1203[12:19])
    defparam FF_13.GSR = "ENABLED";
    FD1P3BX FF_12 (.D(iaf_setcount_6), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .PD(cross_domain_fifo_Reset_c), .Q(af_setcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1207[12:19])
    defparam FF_12.GSR = "ENABLED";
    FD1P3BX FF_11 (.D(iaf_setcount_7), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .PD(cross_domain_fifo_Reset_c), .Q(af_setcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1211[12:19])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(iaf_setcount_8), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(af_setcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1215[12:19])
    defparam FF_10.GSR = "ENABLED";
    FD1P3BX FF_9 (.D(iaf_clrcount_0), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .PD(cross_domain_fifo_Reset_c), .Q(af_clrcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1219[11:18])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(iaf_clrcount_1), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(af_clrcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1223[11:18])
    defparam FF_8.GSR = "ENABLED";
    FD1P3BX FF_7 (.D(iaf_clrcount_2), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .PD(cross_domain_fifo_Reset_c), .Q(af_clrcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1227[11:18])
    defparam FF_7.GSR = "ENABLED";
    FD1P3BX FF_6 (.D(iaf_clrcount_3), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .PD(cross_domain_fifo_Reset_c), .Q(af_clrcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1231[11:18])
    defparam FF_6.GSR = "ENABLED";
    FD1P3BX FF_5 (.D(iaf_clrcount_4), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .PD(cross_domain_fifo_Reset_c), .Q(af_clrcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1235[11:18])
    defparam FF_5.GSR = "ENABLED";
    FD1P3BX FF_4 (.D(iaf_clrcount_5), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .PD(cross_domain_fifo_Reset_c), .Q(af_clrcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1239[11:18])
    defparam FF_4.GSR = "ENABLED";
    FD1P3BX FF_3 (.D(iaf_clrcount_6), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .PD(cross_domain_fifo_Reset_c), .Q(af_clrcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1243[11:18])
    defparam FF_3.GSR = "ENABLED";
    FD1P3BX FF_2 (.D(iaf_clrcount_7), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .PD(cross_domain_fifo_Reset_c), .Q(af_clrcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1247[11:18])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(iaf_clrcount_8), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .CD(cross_domain_fifo_Reset_c), .Q(af_clrcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1251[11:18])
    defparam FF_1.GSR = "ENABLED";
    FD1S3DX FF_0 (.D(af_d), .CK(cross_domain_fifo_WrClock_c), .CD(cross_domain_fifo_Reset_c), 
            .Q(cross_domain_fifo_AlmostFull_c)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1255[11:18])
    defparam FF_0.GSR = "ENABLED";
    CCU2C w_gctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(w_gctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1258[17:22])
    defparam w_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam w_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam w_gctr_cia.INJECT1_0 = "NO";
    defparam w_gctr_cia.INJECT1_1 = "NO";
    CCU2C w_gctr_0 (.A0(wcount_0), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_1), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(w_gctr_ci), 
          .COUT(co0), .S0(iwcount_0), .S1(iwcount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1265[15:20])
    defparam w_gctr_0.INIT0 = 16'b0110011010101010;
    defparam w_gctr_0.INIT1 = 16'b0110011010101010;
    defparam w_gctr_0.INJECT1_0 = "NO";
    defparam w_gctr_0.INJECT1_1 = "NO";
    CCU2C w_gctr_1 (.A0(wcount_2), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_3), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co0), 
          .COUT(co1), .S0(iwcount_2), .S1(iwcount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1273[15:20])
    defparam w_gctr_1.INIT0 = 16'b0110011010101010;
    defparam w_gctr_1.INIT1 = 16'b0110011010101010;
    defparam w_gctr_1.INJECT1_0 = "NO";
    defparam w_gctr_1.INJECT1_1 = "NO";
    CCU2C w_gctr_2 (.A0(wcount_4), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_5), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co1), 
          .COUT(co2), .S0(iwcount_4), .S1(iwcount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1281[15:20])
    defparam w_gctr_2.INIT0 = 16'b0110011010101010;
    defparam w_gctr_2.INIT1 = 16'b0110011010101010;
    defparam w_gctr_2.INJECT1_0 = "NO";
    defparam w_gctr_2.INJECT1_1 = "NO";
    CCU2C w_gctr_3 (.A0(wcount_6), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_7), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co2), 
          .COUT(co3), .S0(iwcount_6), .S1(iwcount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1289[15:20])
    defparam w_gctr_3.INIT0 = 16'b0110011010101010;
    defparam w_gctr_3.INIT1 = 16'b0110011010101010;
    defparam w_gctr_3.INJECT1_0 = "NO";
    defparam w_gctr_3.INJECT1_1 = "NO";
    CCU2C w_gctr_4 (.A0(wcount_8), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co3), 
          .S0(iwcount_8)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1297[15:20])
    defparam w_gctr_4.INIT0 = 16'b0110011010101010;
    defparam w_gctr_4.INIT1 = 16'b0110011010101010;
    defparam w_gctr_4.INJECT1_0 = "NO";
    defparam w_gctr_4.INJECT1_1 = "NO";
    CCU2C r_gctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(r_gctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1304[17:22])
    defparam r_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam r_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam r_gctr_cia.INJECT1_0 = "NO";
    defparam r_gctr_cia.INJECT1_1 = "NO";
    CCU2C r_gctr_0 (.A0(rcount_0), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_1), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(r_gctr_ci), 
          .COUT(co0_1), .S0(ircount_0), .S1(ircount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1311[15:20])
    defparam r_gctr_0.INIT0 = 16'b0110011010101010;
    defparam r_gctr_0.INIT1 = 16'b0110011010101010;
    defparam r_gctr_0.INJECT1_0 = "NO";
    defparam r_gctr_0.INJECT1_1 = "NO";
    CCU2C r_gctr_1 (.A0(rcount_2), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_3), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co0_1), 
          .COUT(co1_1), .S0(ircount_2), .S1(ircount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1319[15:20])
    defparam r_gctr_1.INIT0 = 16'b0110011010101010;
    defparam r_gctr_1.INIT1 = 16'b0110011010101010;
    defparam r_gctr_1.INJECT1_0 = "NO";
    defparam r_gctr_1.INJECT1_1 = "NO";
    CCU2C r_gctr_2 (.A0(rcount_4), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_5), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co1_1), 
          .COUT(co2_1), .S0(ircount_4), .S1(ircount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1327[15:20])
    defparam r_gctr_2.INIT0 = 16'b0110011010101010;
    defparam r_gctr_2.INIT1 = 16'b0110011010101010;
    defparam r_gctr_2.INJECT1_0 = "NO";
    defparam r_gctr_2.INJECT1_1 = "NO";
    CCU2C r_gctr_3 (.A0(rcount_6), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_7), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co2_1), 
          .COUT(co3_1), .S0(ircount_6), .S1(ircount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1335[15:20])
    defparam r_gctr_3.INIT0 = 16'b0110011010101010;
    defparam r_gctr_3.INIT1 = 16'b0110011010101010;
    defparam r_gctr_3.INJECT1_0 = "NO";
    defparam r_gctr_3.INJECT1_1 = "NO";
    CCU2C r_gctr_4 (.A0(rcount_8), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co3_1), 
          .S0(ircount_8)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1343[15:20])
    defparam r_gctr_4.INIT0 = 16'b0110011010101010;
    defparam r_gctr_4.INIT1 = 16'b0110011010101010;
    defparam r_gctr_4.INJECT1_0 = "NO";
    defparam r_gctr_4.INJECT1_1 = "NO";
    CCU2C empty_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rden_i), .B1(rden_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1351[21:26])
    defparam empty_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INJECT1_0 = "NO";
    defparam empty_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C empty_cmp_0 (.A0(rcount_0), .B0(wcount_r0), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_1), .B1(wcount_r1), .C1(VCC_net), .D1(VCC_net), 
          .CIN(cmp_ci), .COUT(co0_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1358[18:23])
    defparam empty_cmp_0.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_0.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_0.INJECT1_0 = "NO";
    defparam empty_cmp_0.INJECT1_1 = "NO";
    CCU2C empty_cmp_1 (.A0(rcount_2), .B0(wcount_r2), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_3), .B1(wcount_r3), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co0_2), .COUT(co1_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1365[18:23])
    defparam empty_cmp_1.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_1.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_1.INJECT1_0 = "NO";
    defparam empty_cmp_1.INJECT1_1 = "NO";
    CCU2C empty_cmp_2 (.A0(rcount_4), .B0(wcount_r4), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_5), .B1(w_g2b_xor_cluster_0), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co1_2), .COUT(co2_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1372[18:23])
    defparam empty_cmp_2.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_2.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_2.INJECT1_0 = "NO";
    defparam empty_cmp_2.INJECT1_1 = "NO";
    CCU2C empty_cmp_3 (.A0(rcount_6), .B0(wcount_r6), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_7), .B1(wcount_r7), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co2_2), .COUT(co3_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1380[18:23])
    defparam empty_cmp_3.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_3.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_3.INJECT1_0 = "NO";
    defparam empty_cmp_3.INJECT1_1 = "NO";
    CCU2C empty_cmp_4 (.A0(empty_cmp_set), .B0(empty_cmp_clr), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3_2), .COUT(empty_d_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1387[18:23])
    defparam empty_cmp_4.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_4.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_4.INJECT1_0 = "NO";
    defparam empty_cmp_4.INJECT1_1 = "NO";
    CCU2C a0 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(empty_d_c), 
          .S0(empty_d)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1395[9:14])
    defparam a0.INIT0 = 16'b0110011010101010;
    defparam a0.INIT1 = 16'b0110011010101010;
    defparam a0.INJECT1_0 = "NO";
    defparam a0.INJECT1_1 = "NO";
    CCU2C full_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wren_i), .B1(wren_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1403[20:25])
    defparam full_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INJECT1_0 = "NO";
    defparam full_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C full_cmp_0 (.A0(wcount_0), .B0(rcount_w0), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_1), .B1(rcount_w1), .C1(VCC_net), .D1(VCC_net), 
          .CIN(cmp_ci_1), .COUT(co0_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1410[17:22])
    defparam full_cmp_0.INIT0 = 16'b1001100110101010;
    defparam full_cmp_0.INIT1 = 16'b1001100110101010;
    defparam full_cmp_0.INJECT1_0 = "NO";
    defparam full_cmp_0.INJECT1_1 = "NO";
    CCU2C full_cmp_1 (.A0(wcount_2), .B0(rcount_w2), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_3), .B1(rcount_w3), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co0_3), .COUT(co1_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1418[17:22])
    defparam full_cmp_1.INIT0 = 16'b1001100110101010;
    defparam full_cmp_1.INIT1 = 16'b1001100110101010;
    defparam full_cmp_1.INJECT1_0 = "NO";
    defparam full_cmp_1.INJECT1_1 = "NO";
    CCU2C full_cmp_2 (.A0(wcount_4), .B0(rcount_w4), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_5), .B1(r_g2b_xor_cluster_0), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co1_3), .COUT(co2_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1425[17:22])
    defparam full_cmp_2.INIT0 = 16'b1001100110101010;
    defparam full_cmp_2.INIT1 = 16'b1001100110101010;
    defparam full_cmp_2.INJECT1_0 = "NO";
    defparam full_cmp_2.INJECT1_1 = "NO";
    CCU2C full_cmp_3 (.A0(wcount_6), .B0(rcount_w6), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_7), .B1(rcount_w7), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co2_3), .COUT(co3_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1433[17:22])
    defparam full_cmp_3.INIT0 = 16'b1001100110101010;
    defparam full_cmp_3.INIT1 = 16'b1001100110101010;
    defparam full_cmp_3.INJECT1_0 = "NO";
    defparam full_cmp_3.INJECT1_1 = "NO";
    CCU2C full_cmp_4 (.A0(full_cmp_set), .B0(full_cmp_clr), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3_3), .COUT(full_d_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1440[17:22])
    defparam full_cmp_4.INIT0 = 16'b1001100110101010;
    defparam full_cmp_4.INIT1 = 16'b1001100110101010;
    defparam full_cmp_4.INJECT1_0 = "NO";
    defparam full_cmp_4.INJECT1_1 = "NO";
    CCU2C a1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(full_d_c), 
          .S0(full_d)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1448[9:14])
    defparam a1.INIT0 = 16'b0110011010101010;
    defparam a1.INIT1 = 16'b0110011010101010;
    defparam a1.INJECT1_0 = "NO";
    defparam a1.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(ae_set_ctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1456[21:26])
    defparam ae_set_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_cia.INJECT1_0 = "NO";
    defparam ae_set_ctr_cia.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_0 (.A0(ae_setcount_0), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_1), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(ae_set_ctr_ci), .COUT(co0_4), .S0(iae_setcount_0), 
          .S1(iae_setcount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1464[19:24])
    defparam ae_set_ctr_0.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_0.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_0.INJECT1_0 = "NO";
    defparam ae_set_ctr_0.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_1 (.A0(ae_setcount_2), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_3), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_4), .COUT(co1_4), .S0(iae_setcount_2), 
          .S1(iae_setcount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1472[19:24])
    defparam ae_set_ctr_1.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_1.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_1.INJECT1_0 = "NO";
    defparam ae_set_ctr_1.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_2 (.A0(ae_setcount_4), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_5), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_4), .COUT(co2_4), .S0(iae_setcount_4), 
          .S1(iae_setcount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1480[19:24])
    defparam ae_set_ctr_2.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_2.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_2.INJECT1_0 = "NO";
    defparam ae_set_ctr_2.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_3 (.A0(ae_setcount_6), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_7), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_4), .COUT(co3_4), .S0(iae_setcount_6), 
          .S1(iae_setcount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1488[19:24])
    defparam ae_set_ctr_3.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_3.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_3.INJECT1_0 = "NO";
    defparam ae_set_ctr_3.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_4 (.A0(ae_setcount_8), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3_4), .S0(iae_setcount_8)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1496[19:24])
    defparam ae_set_ctr_4.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_4.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_4.INJECT1_0 = "NO";
    defparam ae_set_ctr_4.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rden_i), .B1(rden_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1504[22:27])
    defparam ae_set_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INJECT1_0 = "NO";
    defparam ae_set_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_0 (.A0(ae_setcount_0), .B0(wcount_r0), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_1), .B1(wcount_r1), .C1(VCC_net), 
          .D1(VCC_net), .CIN(cmp_ci_2), .COUT(co0_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1511[19:24])
    defparam ae_set_cmp_0.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INJECT1_0 = "NO";
    defparam ae_set_cmp_0.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_1 (.A0(ae_setcount_2), .B0(wcount_r2), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_3), .B1(wcount_r3), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_5), .COUT(co1_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1519[19:24])
    defparam ae_set_cmp_1.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INJECT1_0 = "NO";
    defparam ae_set_cmp_1.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_2 (.A0(ae_setcount_4), .B0(wcount_r4), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_5), .B1(w_g2b_xor_cluster_0), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co1_5), .COUT(co2_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1526[19:24])
    defparam ae_set_cmp_2.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INJECT1_0 = "NO";
    defparam ae_set_cmp_2.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_3 (.A0(ae_setcount_6), .B0(wcount_r6), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_7), .B1(wcount_r7), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_5), .COUT(co3_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1534[19:24])
    defparam ae_set_cmp_3.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INJECT1_0 = "NO";
    defparam ae_set_cmp_3.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_4 (.A0(ae_set_cmp_set), .B0(ae_set_cmp_clr), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3_5), .COUT(ae_set_d_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1541[19:24])
    defparam ae_set_cmp_4.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INJECT1_0 = "NO";
    defparam ae_set_cmp_4.INJECT1_1 = "NO";
    CCU2C a2 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(ae_set_d_c), 
          .S0(ae_set_d)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1549[9:14])
    defparam a2.INIT0 = 16'b0110011010101010;
    defparam a2.INIT1 = 16'b0110011010101010;
    defparam a2.INJECT1_0 = "NO";
    defparam a2.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(ae_clr_ctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1557[21:26])
    defparam ae_clr_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_cia.INJECT1_0 = "NO";
    defparam ae_clr_ctr_cia.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_0 (.A0(ae_clrcount_0), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_1), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(ae_clr_ctr_ci), .COUT(co0_6), .S0(iae_clrcount_0), 
          .S1(iae_clrcount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1565[19:24])
    defparam ae_clr_ctr_0.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_0.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_0.INJECT1_0 = "NO";
    defparam ae_clr_ctr_0.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_1 (.A0(ae_clrcount_2), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_3), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_6), .COUT(co1_6), .S0(iae_clrcount_2), 
          .S1(iae_clrcount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1573[19:24])
    defparam ae_clr_ctr_1.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_1.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_1.INJECT1_0 = "NO";
    defparam ae_clr_ctr_1.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_2 (.A0(ae_clrcount_4), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_5), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_6), .COUT(co2_6), .S0(iae_clrcount_4), 
          .S1(iae_clrcount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1581[19:24])
    defparam ae_clr_ctr_2.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_2.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_2.INJECT1_0 = "NO";
    defparam ae_clr_ctr_2.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_3 (.A0(ae_clrcount_6), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_7), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_6), .COUT(co3_6), .S0(iae_clrcount_6), 
          .S1(iae_clrcount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1589[19:24])
    defparam ae_clr_ctr_3.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_3.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_3.INJECT1_0 = "NO";
    defparam ae_clr_ctr_3.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_4 (.A0(ae_clrcount_8), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3_6), .S0(iae_clrcount_8)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1597[19:24])
    defparam ae_clr_ctr_4.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_4.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_4.INJECT1_0 = "NO";
    defparam ae_clr_ctr_4.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rden_i), .B1(rden_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1605[22:27])
    defparam ae_clr_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam ae_clr_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam ae_clr_cmp_ci_a.INJECT1_0 = "NO";
    defparam ae_clr_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_0 (.A0(ae_clrcount_0), .B0(wcount_r0), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_1), .B1(wcount_r1), .C1(VCC_net), 
          .D1(VCC_net), .CIN(cmp_ci_3), .COUT(co0_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1612[19:24])
    defparam ae_clr_cmp_0.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_0.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_0.INJECT1_0 = "NO";
    defparam ae_clr_cmp_0.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_1 (.A0(ae_clrcount_2), .B0(wcount_r2), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_3), .B1(wcount_r3), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_7), .COUT(co1_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1620[19:24])
    defparam ae_clr_cmp_1.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_1.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_1.INJECT1_0 = "NO";
    defparam ae_clr_cmp_1.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_2 (.A0(ae_clrcount_4), .B0(wcount_r4), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_5), .B1(w_g2b_xor_cluster_0), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co1_7), .COUT(co2_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1627[19:24])
    defparam ae_clr_cmp_2.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_2.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_2.INJECT1_0 = "NO";
    defparam ae_clr_cmp_2.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_3 (.A0(ae_clrcount_6), .B0(wcount_r6), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_7), .B1(wcount_r7), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_7), .COUT(co3_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1635[19:24])
    defparam ae_clr_cmp_3.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_3.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_3.INJECT1_0 = "NO";
    defparam ae_clr_cmp_3.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_4 (.A0(ae_clr_cmp_set), .B0(ae_clr_cmp_clr), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3_7), .COUT(ae_clr_d_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1642[19:24])
    defparam ae_clr_cmp_4.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_4.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_4.INJECT1_0 = "NO";
    defparam ae_clr_cmp_4.INJECT1_1 = "NO";
    CCU2C a3 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(ae_clr_d_c), 
          .S0(ae_clr_d)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1650[9:14])
    defparam a3.INIT0 = 16'b0110011010101010;
    defparam a3.INIT1 = 16'b0110011010101010;
    defparam a3.INJECT1_0 = "NO";
    defparam a3.INJECT1_1 = "NO";
    CCU2C af_set_ctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(af_set_ctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1658[21:26])
    defparam af_set_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_cia.INJECT1_0 = "NO";
    defparam af_set_ctr_cia.INJECT1_1 = "NO";
    CCU2C af_set_ctr_0 (.A0(af_setcount_0), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_1), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(af_set_ctr_ci), .COUT(co0_8), .S0(iaf_setcount_0), 
          .S1(iaf_setcount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1666[19:24])
    defparam af_set_ctr_0.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_0.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_0.INJECT1_0 = "NO";
    defparam af_set_ctr_0.INJECT1_1 = "NO";
    CCU2C af_set_ctr_1 (.A0(af_setcount_2), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_3), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_8), .COUT(co1_8), .S0(iaf_setcount_2), 
          .S1(iaf_setcount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1674[19:24])
    defparam af_set_ctr_1.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_1.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_1.INJECT1_0 = "NO";
    defparam af_set_ctr_1.INJECT1_1 = "NO";
    CCU2C af_set_ctr_2 (.A0(af_setcount_4), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_5), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_8), .COUT(co2_8), .S0(iaf_setcount_4), 
          .S1(iaf_setcount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1682[19:24])
    defparam af_set_ctr_2.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_2.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_2.INJECT1_0 = "NO";
    defparam af_set_ctr_2.INJECT1_1 = "NO";
    CCU2C af_set_ctr_3 (.A0(af_setcount_6), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_7), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_8), .COUT(co3_8), .S0(iaf_setcount_6), 
          .S1(iaf_setcount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1690[19:24])
    defparam af_set_ctr_3.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_3.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_3.INJECT1_0 = "NO";
    defparam af_set_ctr_3.INJECT1_1 = "NO";
    CCU2C af_set_ctr_4 (.A0(af_setcount_8), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3_8), .S0(iaf_setcount_8)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1698[19:24])
    defparam af_set_ctr_4.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_4.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_4.INJECT1_0 = "NO";
    defparam af_set_ctr_4.INJECT1_1 = "NO";
    CCU2C af_set_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wren_i), .B1(wren_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci_4)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1706[22:27])
    defparam af_set_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam af_set_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam af_set_cmp_ci_a.INJECT1_0 = "NO";
    defparam af_set_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C af_set_cmp_0 (.A0(af_setcount_0), .B0(rcount_w0), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_1), .B1(rcount_w1), .C1(VCC_net), 
          .D1(VCC_net), .CIN(cmp_ci_4), .COUT(co0_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1713[19:24])
    defparam af_set_cmp_0.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_0.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_0.INJECT1_0 = "NO";
    defparam af_set_cmp_0.INJECT1_1 = "NO";
    CCU2C af_set_cmp_1 (.A0(af_setcount_2), .B0(rcount_w2), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_3), .B1(rcount_w3), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_9), .COUT(co1_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1721[19:24])
    defparam af_set_cmp_1.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_1.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_1.INJECT1_0 = "NO";
    defparam af_set_cmp_1.INJECT1_1 = "NO";
    CCU2C af_set_cmp_2 (.A0(af_setcount_4), .B0(rcount_w4), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_5), .B1(r_g2b_xor_cluster_0), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co1_9), .COUT(co2_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1728[19:24])
    defparam af_set_cmp_2.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_2.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_2.INJECT1_0 = "NO";
    defparam af_set_cmp_2.INJECT1_1 = "NO";
    CCU2C af_set_cmp_3 (.A0(af_setcount_6), .B0(rcount_w6), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_7), .B1(rcount_w7), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_9), .COUT(co3_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1736[19:24])
    defparam af_set_cmp_3.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_3.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_3.INJECT1_0 = "NO";
    defparam af_set_cmp_3.INJECT1_1 = "NO";
    CCU2C af_set_cmp_4 (.A0(af_set_cmp_set), .B0(af_set_cmp_clr), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3_9), .COUT(af_set_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1743[19:24])
    defparam af_set_cmp_4.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_4.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_4.INJECT1_0 = "NO";
    defparam af_set_cmp_4.INJECT1_1 = "NO";
    CCU2C a4 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(af_set_c), 
          .S0(af_set)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1751[9:14])
    defparam a4.INIT0 = 16'b0110011010101010;
    defparam a4.INIT1 = 16'b0110011010101010;
    defparam a4.INJECT1_0 = "NO";
    defparam a4.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(af_clr_ctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1759[21:26])
    defparam af_clr_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_cia.INJECT1_0 = "NO";
    defparam af_clr_ctr_cia.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_0 (.A0(af_clrcount_0), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_1), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(af_clr_ctr_ci), .COUT(co0_10), .S0(iaf_clrcount_0), 
          .S1(iaf_clrcount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1767[19:24])
    defparam af_clr_ctr_0.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_0.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_0.INJECT1_0 = "NO";
    defparam af_clr_ctr_0.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_1 (.A0(af_clrcount_2), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_3), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_10), .COUT(co1_10), .S0(iaf_clrcount_2), 
          .S1(iaf_clrcount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1775[19:24])
    defparam af_clr_ctr_1.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_1.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_1.INJECT1_0 = "NO";
    defparam af_clr_ctr_1.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_2 (.A0(af_clrcount_4), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_5), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_10), .COUT(co2_10), .S0(iaf_clrcount_4), 
          .S1(iaf_clrcount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1783[19:24])
    defparam af_clr_ctr_2.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_2.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_2.INJECT1_0 = "NO";
    defparam af_clr_ctr_2.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_3 (.A0(af_clrcount_6), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_7), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_10), .COUT(co3_10), .S0(iaf_clrcount_6), 
          .S1(iaf_clrcount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1791[19:24])
    defparam af_clr_ctr_3.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_3.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_3.INJECT1_0 = "NO";
    defparam af_clr_ctr_3.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_4 (.A0(af_clrcount_8), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3_10), .S0(iaf_clrcount_8)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1799[19:24])
    defparam af_clr_ctr_4.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_4.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_4.INJECT1_0 = "NO";
    defparam af_clr_ctr_4.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wren_i), .B1(wren_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1807[22:27])
    defparam af_clr_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam af_clr_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam af_clr_cmp_ci_a.INJECT1_0 = "NO";
    defparam af_clr_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_0 (.A0(af_clrcount_0), .B0(rcount_w0), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_1), .B1(rcount_w1), .C1(VCC_net), 
          .D1(VCC_net), .CIN(cmp_ci_5), .COUT(co0_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1814[19:24])
    defparam af_clr_cmp_0.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_0.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_0.INJECT1_0 = "NO";
    defparam af_clr_cmp_0.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_1 (.A0(af_clrcount_2), .B0(rcount_w2), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_3), .B1(rcount_w3), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_11), .COUT(co1_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1822[19:24])
    defparam af_clr_cmp_1.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_1.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_1.INJECT1_0 = "NO";
    defparam af_clr_cmp_1.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_2 (.A0(af_clrcount_4), .B0(rcount_w4), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_5), .B1(r_g2b_xor_cluster_0), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co1_11), .COUT(co2_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1829[19:24])
    defparam af_clr_cmp_2.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_2.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_2.INJECT1_0 = "NO";
    defparam af_clr_cmp_2.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_3 (.A0(af_clrcount_6), .B0(rcount_w6), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_7), .B1(rcount_w7), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_11), .COUT(co3_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1837[19:24])
    defparam af_clr_cmp_3.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_3.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_3.INJECT1_0 = "NO";
    defparam af_clr_cmp_3.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_4 (.A0(af_clr_cmp_set), .B0(af_clr_cmp_clr), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3_11), .COUT(af_clr_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1844[19:24])
    defparam af_clr_cmp_4.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_4.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_4.INJECT1_0 = "NO";
    defparam af_clr_cmp_4.INJECT1_1 = "NO";
    CCU2C a5 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(af_clr_c), 
          .S0(af_clr)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1858[9:14])
    defparam a5.INIT0 = 16'b0110011010101010;
    defparam a5.INIT1 = 16'b0110011010101010;
    defparam a5.INJECT1_0 = "NO";
    defparam a5.INJECT1_1 = "NO";
    AND2 AND2_t18 (.A(cross_domain_fifo_WrEn_c), .B(invout_1), .Z(wren_i)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(492[15:19])
    AND2 AND2_t17 (.A(cross_domain_fifo_RdEn_c), .B(invout_0), .Z(rden_i)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(498[15:19])
    INV INV_0 (.A(cross_domain_fifo_Empty_c), .Z(invout_0)) /* synthesis LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    OR2 OR2_t16 (.A(cross_domain_fifo_Reset_c), .B(cross_domain_fifo_RPReset_c), 
        .Z(rRst)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(504[14:17])
    XOR2 XOR2_t15 (.A(wcount_0), .B(wcount_1), .Z(w_gdata_0)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(507[15:19])
    XOR2 XOR2_t14 (.A(wcount_1), .B(wcount_2), .Z(w_gdata_1)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(510[15:19])
    XOR2 XOR2_t13 (.A(wcount_2), .B(wcount_3), .Z(w_gdata_2)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(513[15:19])
    XOR2 XOR2_t12 (.A(wcount_3), .B(wcount_4), .Z(w_gdata_3)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(516[15:19])
    XOR2 XOR2_t11 (.A(wcount_4), .B(wcount_5), .Z(w_gdata_4)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(519[15:19])
    XOR2 XOR2_t10 (.A(wcount_5), .B(wcount_6), .Z(w_gdata_5)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(522[15:19])
    XOR2 XOR2_t9 (.A(wcount_6), .B(wcount_7), .Z(w_gdata_6)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(525[14:18])
    XOR2 XOR2_t8 (.A(wcount_7), .B(wcount_8), .Z(w_gdata_7)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(528[14:18])
    XOR2 XOR2_t7 (.A(rcount_0), .B(rcount_1), .Z(r_gdata_0)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(531[14:18])
    XOR2 XOR2_t6 (.A(rcount_1), .B(rcount_2), .Z(r_gdata_1)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(534[14:18])
    XOR2 XOR2_t5 (.A(rcount_2), .B(rcount_3), .Z(r_gdata_2)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(537[14:18])
    XOR2 XOR2_t4 (.A(rcount_3), .B(rcount_4), .Z(r_gdata_3)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(540[14:18])
    XOR2 XOR2_t3 (.A(rcount_4), .B(rcount_5), .Z(r_gdata_4)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(543[14:18])
    XOR2 XOR2_t2 (.A(rcount_5), .B(rcount_6), .Z(r_gdata_5)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(546[14:18])
    XOR2 XOR2_t1 (.A(rcount_6), .B(rcount_7), .Z(r_gdata_6)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(549[14:18])
    XOR2 XOR2_t0 (.A(rcount_7), .B(rcount_8), .Z(r_gdata_7)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(552[14:18])
    ROM16X1A LUT4_31 (.AD0(w_gcount_r28), .AD1(w_gcount_r27), .AD2(w_gcount_r26), 
            .AD3(w_gcount_r25), .DO0(w_g2b_xor_cluster_0)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam LUT4_31.initval = 16'b0110100110010110;
    PDPW8KE pdp_ram_0_1_0 (.DI0(cross_domain_fifo_Data_c_18), .DI1(cross_domain_fifo_Data_c_19), 
            .DI2(cross_domain_fifo_Data_c_20), .DI3(cross_domain_fifo_Data_c_21), 
            .DI4(cross_domain_fifo_Data_c_22), .DI5(cross_domain_fifo_Data_c_23), 
            .DI6(cross_domain_fifo_Data_c_24), .DI7(cross_domain_fifo_Data_c_25), 
            .DI8(cross_domain_fifo_Data_c_26), .DI9(cross_domain_fifo_Data_c_27), 
            .DI10(cross_domain_fifo_Data_c_28), .DI11(cross_domain_fifo_Data_c_29), 
            .DI12(cross_domain_fifo_Data_c_30), .DI13(cross_domain_fifo_Data_c_31), 
            .DI14(GND_net), .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), 
            .ADW0(wptr_0), .ADW1(wptr_1), .ADW2(wptr_2), .ADW3(wptr_3), 
            .ADW4(wptr_4), .ADW5(wptr_5), .ADW6(wptr_6), .ADW7(wptr_7), 
            .ADW8(GND_net), .BE0(VCC_net), .BE1(VCC_net), .CEW(wren_i), 
            .CLKW(cross_domain_fifo_WrClock_c), .CSW0(VCC_net), .CSW1(GND_net), 
            .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), .ADR2(GND_net), 
            .ADR3(GND_net), .ADR4(rptr_0), .ADR5(rptr_1), .ADR6(rptr_2), 
            .ADR7(rptr_3), .ADR8(rptr_4), .ADR9(rptr_5), .ADR10(rptr_6), 
            .ADR11(rptr_7), .ADR12(GND_net), .CER(rden_i), .OCER(rden_i), 
            .CLKR(cross_domain_fifo_RdClock_c), .CSR0(GND_net), .CSR1(GND_net), 
            .CSR2(GND_net), .RST(cross_domain_fifo_Reset_c), .DO0(cross_domain_fifo_Q_c_27), 
            .DO1(cross_domain_fifo_Q_c_28), .DO2(cross_domain_fifo_Q_c_29), 
            .DO3(cross_domain_fifo_Q_c_30), .DO4(cross_domain_fifo_Q_c_31), 
            .DO9(cross_domain_fifo_Q_c_18), .DO10(cross_domain_fifo_Q_c_19), 
            .DO11(cross_domain_fifo_Q_c_20), .DO12(cross_domain_fifo_Q_c_21), 
            .DO13(cross_domain_fifo_Q_c_22), .DO14(cross_domain_fifo_Q_c_23), 
            .DO15(cross_domain_fifo_Q_c_24), .DO16(cross_domain_fifo_Q_c_25), 
            .DO17(cross_domain_fifo_Q_c_26)) /* synthesis syn_black_box=true, MEM_LPC_FILE="cross_domain_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(108[29:56])
    defparam pdp_ram_0_1_0.DATA_WIDTH_W = 18;
    defparam pdp_ram_0_1_0.DATA_WIDTH_R = 18;
    defparam pdp_ram_0_1_0.REGMODE = "NOREG";
    defparam pdp_ram_0_1_0.CSDECODE_W = "0b001";
    defparam pdp_ram_0_1_0.CSDECODE_R = "0b000";
    defparam pdp_ram_0_1_0.GSR = "ENABLED";
    defparam pdp_ram_0_1_0.RESETMODE = "ASYNC";
    defparam pdp_ram_0_1_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_1_0.INIT_DATA = "STATIC";
    defparam pdp_ram_0_1_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    FD1P3BX FF_129 (.D(iwcount_0), .SP(wren_i), .CK(cross_domain_fifo_WrClock_c), 
            .PD(cross_domain_fifo_Reset_c), .Q(wcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=29, LSE_RCOL=56, LSE_LLINE=108, LSE_RLINE=108 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(769[13:20])
    defparam FF_129.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module pll_double
//

module pll_double (pll_double_CLKI_c, pll_double_RST_c, pll_double_CLKOP_c, 
            pll_double_CLKOS_c, pll_double_CLKOS2_c, pll_double_LOCK_c, 
            GND_net) /* synthesis NGD_DRC_MASK=1 */ ;
    input pll_double_CLKI_c;
    input pll_double_RST_c;
    output pll_double_CLKOP_c;
    output pll_double_CLKOS_c;
    output pll_double_CLKOS2_c;
    output pll_double_LOCK_c;
    input GND_net;
    
    wire pll_double_CLKI_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(37[9:24])
    wire pll_double_CLKOP_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(38[9:25])
    wire pll_double_CLKOS_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(39[9:25])
    wire pll_double_CLKOS2_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(40[9:26])
    
    EHXPLLM PLLInst_0 (.CLKI(pll_double_CLKI_c), .CLKFB(pll_double_CLKOP_c), 
            .PHASESEL0(GND_net), .PHASESEL1(GND_net), .PHASEDIR(GND_net), 
            .PHASESTEP(GND_net), .PHASELOADREG(GND_net), .USRSTDBY(GND_net), 
            .PLLWAKESYNC(GND_net), .RST(pll_double_RST_c), .ENCLKOP(GND_net), 
            .ENCLKOS(GND_net), .ENCLKOS2(GND_net), .ENCLKOS3(GND_net), 
            .CLKOP(pll_double_CLKOP_c), .CLKOS(pll_double_CLKOS_c), .CLKOS2(pll_double_CLKOS2_c), 
            .LOCK(pll_double_LOCK_c)) /* synthesis syn_black_box=true, FREQUENCY_PIN_CLKOS2="90.000000", FREQUENCY_PIN_CLKOS="288.000000", FREQUENCY_PIN_CLKOP="288.000000", FREQUENCY_PIN_CLKI="90.000000", ICP_CURRENT="6", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=22, LSE_RCOL=42, LSE_LLINE=144, LSE_RLINE=144 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(144[22:42])
    defparam PLLInst_0.FIN = "100.0000";
    defparam PLLInst_0.CLKI_DIV = 5;
    defparam PLLInst_0.CLKFB_DIV = 16;
    defparam PLLInst_0.CLKOP_DIV = 3;
    defparam PLLInst_0.CLKOS_DIV = 3;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 2;
    defparam PLLInst_0.CLKOS_CPHASE = 2;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 6;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC = "REFCLK";
    defparam PLLInst_0.OUTDIVIDER_MUXD = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.PLL_LOCK_DELAY = 200;
    defparam PLLInst_0.REFIN_RESET = "DISABLED";
    defparam PLLInst_0.SYNC_ENABLE = "DISABLED";
    defparam PLLInst_0.INT_LOCK_STICKY = "ENABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "ENABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module LUT_FIFO
//

module LUT_FIFO (LUT_FIFO_Full_c, GND_net, LUT_FIFO_AlmostEmpty_c, LUT_FIFO_AlmostFull_c, 
            LUT_FIFO_Data_c_3, LUT_FIFO_Data_c_2, LUT_FIFO_Data_c_1, LUT_FIFO_Data_c_0, 
            LUT_FIFO_WrClock_c, LUT_FIFO_RdClock_c, LUT_FIFO_Reset_c, 
            LUT_FIFO_Q_c_3, LUT_FIFO_Q_c_2, LUT_FIFO_Q_c_1, LUT_FIFO_Q_c_0, 
            VCC_net, LUT_FIFO_Empty_c, LUT_FIFO_WrEn_c, LUT_FIFO_RdEn_c, 
            LUT_FIFO_RPReset_c, LUT_FIFO_Data_c_7, LUT_FIFO_Data_c_6, 
            LUT_FIFO_Data_c_5, LUT_FIFO_Data_c_4, LUT_FIFO_Q_c_7, LUT_FIFO_Q_c_6, 
            LUT_FIFO_Q_c_5, LUT_FIFO_Q_c_4, LUT_FIFO_Data_c_9, LUT_FIFO_Data_c_8, 
            LUT_FIFO_Q_c_9, LUT_FIFO_Q_c_8) /* synthesis NGD_DRC_MASK=1 */ ;
    output LUT_FIFO_Full_c;
    input GND_net;
    output LUT_FIFO_AlmostEmpty_c;
    output LUT_FIFO_AlmostFull_c;
    input LUT_FIFO_Data_c_3;
    input LUT_FIFO_Data_c_2;
    input LUT_FIFO_Data_c_1;
    input LUT_FIFO_Data_c_0;
    input LUT_FIFO_WrClock_c;
    input LUT_FIFO_RdClock_c;
    input LUT_FIFO_Reset_c;
    output LUT_FIFO_Q_c_3;
    output LUT_FIFO_Q_c_2;
    output LUT_FIFO_Q_c_1;
    output LUT_FIFO_Q_c_0;
    input VCC_net;
    output LUT_FIFO_Empty_c;
    input LUT_FIFO_WrEn_c;
    input LUT_FIFO_RdEn_c;
    input LUT_FIFO_RPReset_c;
    input LUT_FIFO_Data_c_7;
    input LUT_FIFO_Data_c_6;
    input LUT_FIFO_Data_c_5;
    input LUT_FIFO_Data_c_4;
    output LUT_FIFO_Q_c_7;
    output LUT_FIFO_Q_c_6;
    output LUT_FIFO_Q_c_5;
    output LUT_FIFO_Q_c_4;
    input LUT_FIFO_Data_c_9;
    input LUT_FIFO_Data_c_8;
    output LUT_FIFO_Q_c_9;
    output LUT_FIFO_Q_c_8;
    
    wire LUT_FIFO_WrClock_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(25[9:25])
    wire LUT_FIFO_RdClock_c /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(22[9:25])
    
    wire invout_1, w_g2b_xor_cluster_1, w_gcount_r24, w_gcount_r25, 
        w_gcount_r26, w_gcount_r27, w_g2b_xor_cluster_2, w_gcount_r20, 
        w_gcount_r21, w_gcount_r22, w_gcount_r23, w_gcount_r210, w_gcount_r211, 
        wcount_r10, w_gcount_r29, wcount_r9, w_gcount_r28, wcount_r7, 
        wcount_r6, wcount_r5, w_g2b_xor_cluster_0, wcount_r4, wcount_r3, 
        wcount_r2, w_g2b_xor_cluster_2_1, wcount_r1, wcount_r0, r_gcount_w28, 
        r_gcount_w29, r_gcount_w210, r_gcount_w211, r_g2b_xor_cluster_0, 
        r_g2b_xor_cluster_1, r_gcount_w24, r_gcount_w25, r_gcount_w26, 
        r_gcount_w27, r_g2b_xor_cluster_2, r_gcount_w20, r_gcount_w21, 
        r_gcount_w22, r_gcount_w23, rcount_w10, rcount_w9, rcount_w7, 
        rcount_w6, rcount_w5, rcount_w4, rcount_w3, rcount_w2, r_g2b_xor_cluster_2_1, 
        rcount_w1, rcount_w0, rptr_11, rcount_11, empty_cmp_set, empty_cmp_clr, 
        wptr_11, wcount_11, full_cmp_set, full_cmp_clr, ae_setcount_11, 
        ae_set_cmp_set, ae_set_cmp_clr, ae_clrcount_11, ae_clr_cmp_set, 
        ae_clr_cmp_clr, ae_d, ae_set_d, ae_clr_d, af_setcount_11, 
        af_set_cmp_set, af_set_cmp_clr, af_clrcount_11, af_clr_cmp_set, 
        af_clr_cmp_clr, af_d, af_set, af_clr, wptr_0, wptr_1, wptr_2, 
        wptr_3, wptr_4, wptr_5, wptr_6, wptr_7, wptr_8, wptr_9, 
        wptr_10, rptr_0, rptr_1, rptr_2, rptr_3, rptr_4, rptr_5, 
        rptr_6, rptr_7, rptr_8, rptr_9, rptr_10, rden_i, wren_i, 
        iwcount_1, wcount_1, iwcount_2, wcount_2, iwcount_3, wcount_3, 
        iwcount_4, wcount_4, iwcount_5, wcount_5, iwcount_6, wcount_6, 
        iwcount_7, wcount_7, iwcount_8, wcount_8, iwcount_9, wcount_9, 
        iwcount_10, wcount_10, iwcount_11, w_gdata_0, w_gcount_0, 
        w_gdata_1, w_gcount_1, w_gdata_2, w_gcount_2, w_gdata_3, w_gcount_3, 
        w_gdata_4, w_gcount_4, w_gdata_5, w_gcount_5, w_gdata_6, w_gcount_6, 
        w_gdata_7, w_gcount_7, w_gdata_8, w_gcount_8, w_gdata_9, w_gcount_9, 
        w_gdata_10, w_gcount_10, w_gcount_11, wcount_0, rRst, ircount_0, 
        rcount_0, ircount_1, rcount_1, ircount_2, rcount_2, ircount_3, 
        rcount_3, ircount_4, rcount_4, ircount_5, rcount_5, ircount_6, 
        rcount_6, ircount_7, rcount_7, ircount_8, rcount_8, ircount_9, 
        rcount_9, ircount_10, rcount_10, ircount_11, r_gdata_0, r_gcount_0, 
        r_gdata_1, r_gcount_1, r_gdata_2, r_gcount_2, r_gdata_3, r_gcount_3, 
        r_gdata_4, r_gcount_4, r_gdata_5, r_gcount_5, r_gdata_6, r_gcount_6, 
        r_gdata_7, r_gcount_7, r_gdata_8, r_gcount_8, r_gdata_9, r_gcount_9, 
        r_gdata_10, r_gcount_10, r_gcount_11, w_gcount_r0, w_gcount_r1, 
        w_gcount_r2, w_gcount_r3, w_gcount_r4, w_gcount_r5, w_gcount_r6, 
        w_gcount_r7, w_gcount_r8, w_gcount_r9, w_gcount_r10, w_gcount_r11, 
        r_gcount_w0, r_gcount_w1, r_gcount_w2, r_gcount_w3, r_gcount_w4, 
        r_gcount_w5, r_gcount_w6, r_gcount_w7, r_gcount_w8, r_gcount_w9, 
        r_gcount_w10, r_gcount_w11, empty_d, full_d, iae_setcount_0, 
        ae_setcount_0, iae_setcount_1, ae_setcount_1, iae_setcount_2, 
        ae_setcount_2, iae_setcount_3, ae_setcount_3, iae_setcount_4, 
        ae_setcount_4, iae_setcount_5, ae_setcount_5, iae_setcount_6, 
        ae_setcount_6, iae_setcount_7, ae_setcount_7, iae_setcount_8, 
        ae_setcount_8, iae_setcount_9, ae_setcount_9, iae_setcount_10, 
        ae_setcount_10, iae_setcount_11, iae_clrcount_0, ae_clrcount_0, 
        iae_clrcount_1, ae_clrcount_1, iae_clrcount_2, ae_clrcount_2, 
        iae_clrcount_3, ae_clrcount_3, iae_clrcount_4, ae_clrcount_4, 
        iae_clrcount_5, ae_clrcount_5, iae_clrcount_6, ae_clrcount_6, 
        iae_clrcount_7, ae_clrcount_7, iae_clrcount_8, ae_clrcount_8, 
        iae_clrcount_9, ae_clrcount_9, iae_clrcount_10, ae_clrcount_10, 
        iae_clrcount_11, iaf_setcount_0, af_setcount_0, iaf_setcount_1, 
        af_setcount_1, iaf_setcount_2, af_setcount_2, iaf_setcount_3, 
        af_setcount_3, iaf_setcount_4, af_setcount_4, iaf_setcount_5, 
        af_setcount_5, iaf_setcount_6, af_setcount_6, iaf_setcount_7, 
        af_setcount_7, iaf_setcount_8, af_setcount_8, iaf_setcount_9, 
        af_setcount_9, iaf_setcount_10, af_setcount_10, iaf_setcount_11, 
        iaf_clrcount_0, af_clrcount_0, iaf_clrcount_1, af_clrcount_1, 
        iaf_clrcount_2, af_clrcount_2, iaf_clrcount_3, af_clrcount_3, 
        iaf_clrcount_4, af_clrcount_4, iaf_clrcount_5, af_clrcount_5, 
        iaf_clrcount_6, af_clrcount_6, iaf_clrcount_7, af_clrcount_7, 
        iaf_clrcount_8, af_clrcount_8, iaf_clrcount_9, af_clrcount_9, 
        iaf_clrcount_10, af_clrcount_10, iaf_clrcount_11, w_gctr_ci, 
        iwcount_0, co0, co1, co2, co3, co4, r_gctr_ci, co0_1, 
        co1_1, co2_1, co3_1, co4_1, cmp_ci, co0_2, co1_2, co2_2, 
        co3_2, co4_2, empty_d_c, cmp_ci_1, co0_3, co1_3, co2_3, 
        co3_3, co4_3, full_d_c, ae_set_ctr_ci, co0_4, co1_4, co2_4, 
        co3_4, co4_4, cmp_ci_2, co0_5, co1_5, co2_5, co3_5, co4_5, 
        ae_set_d_c, ae_clr_ctr_ci, co0_6, co1_6, co2_6, co3_6, co4_6, 
        cmp_ci_3, co0_7, co1_7, co2_7, co3_7, co4_7, ae_clr_d_c, 
        af_set_ctr_ci, co0_8, co1_8, co2_8, co3_8, co4_8, cmp_ci_4, 
        co0_9, co1_9, co2_9, co3_9, co4_9, af_set_c, af_clr_ctr_ci, 
        co0_10, co1_10, co2_10, co3_10, co4_10, cmp_ci_5, co0_11, 
        co1_11, co2_11, co3_11, co4_11, af_clr_c, invout_0;
    
    INV INV_1 (.A(LUT_FIFO_Full_c), .Z(invout_1)) /* synthesis LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    ROM16X1A LUT4_40 (.AD0(w_gcount_r27), .AD1(w_gcount_r26), .AD2(w_gcount_r25), 
            .AD3(w_gcount_r24), .DO0(w_g2b_xor_cluster_1)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_40.initval = 16'b0110100110010110;
    ROM16X1A LUT4_39 (.AD0(w_gcount_r23), .AD1(w_gcount_r22), .AD2(w_gcount_r21), 
            .AD3(w_gcount_r20), .DO0(w_g2b_xor_cluster_2)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_39.initval = 16'b0110100110010110;
    ROM16X1A LUT4_38 (.AD0(GND_net), .AD1(GND_net), .AD2(w_gcount_r211), 
            .AD3(w_gcount_r210), .DO0(wcount_r10)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_38.initval = 16'b0110100110010110;
    ROM16X1A LUT4_37 (.AD0(GND_net), .AD1(w_gcount_r211), .AD2(w_gcount_r210), 
            .AD3(w_gcount_r29), .DO0(wcount_r9)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_37.initval = 16'b0110100110010110;
    ROM16X1A LUT4_36 (.AD0(wcount_r10), .AD1(w_gcount_r29), .AD2(w_gcount_r28), 
            .AD3(w_gcount_r27), .DO0(wcount_r7)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_36.initval = 16'b0110100110010110;
    ROM16X1A LUT4_35 (.AD0(wcount_r9), .AD1(w_gcount_r28), .AD2(w_gcount_r27), 
            .AD3(w_gcount_r26), .DO0(wcount_r6)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_35.initval = 16'b0110100110010110;
    ROM16X1A LUT4_34 (.AD0(w_g2b_xor_cluster_0), .AD1(w_gcount_r27), .AD2(w_gcount_r26), 
            .AD3(w_gcount_r25), .DO0(wcount_r5)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_34.initval = 16'b0110100110010110;
    ROM16X1A LUT4_33 (.AD0(GND_net), .AD1(GND_net), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r4)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_33.initval = 16'b0110100110010110;
    ROM16X1A LUT4_32 (.AD0(GND_net), .AD1(w_gcount_r23), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r3)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_32.initval = 16'b0110100110010110;
    ROM16X1A LUT4_31 (.AD0(w_gcount_r23), .AD1(w_gcount_r22), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r2)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_31.initval = 16'b0110100110010110;
    ROM16X1A LUT4_30 (.AD0(GND_net), .AD1(w_gcount_r23), .AD2(w_gcount_r22), 
            .AD3(w_gcount_r21), .DO0(w_g2b_xor_cluster_2_1)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_30.initval = 16'b0110100110010110;
    ROM16X1A LUT4_29 (.AD0(GND_net), .AD1(w_g2b_xor_cluster_2_1), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r1)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_29.initval = 16'b0110100110010110;
    ROM16X1A LUT4_28 (.AD0(GND_net), .AD1(w_g2b_xor_cluster_2), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r0)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_28.initval = 16'b0110100110010110;
    ROM16X1A LUT4_27 (.AD0(r_gcount_w211), .AD1(r_gcount_w210), .AD2(r_gcount_w29), 
            .AD3(r_gcount_w28), .DO0(r_g2b_xor_cluster_0)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_27.initval = 16'b0110100110010110;
    ROM16X1A LUT4_26 (.AD0(r_gcount_w27), .AD1(r_gcount_w26), .AD2(r_gcount_w25), 
            .AD3(r_gcount_w24), .DO0(r_g2b_xor_cluster_1)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_26.initval = 16'b0110100110010110;
    ROM16X1A LUT4_25 (.AD0(r_gcount_w23), .AD1(r_gcount_w22), .AD2(r_gcount_w21), 
            .AD3(r_gcount_w20), .DO0(r_g2b_xor_cluster_2)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_25.initval = 16'b0110100110010110;
    ROM16X1A LUT4_24 (.AD0(GND_net), .AD1(GND_net), .AD2(r_gcount_w211), 
            .AD3(r_gcount_w210), .DO0(rcount_w10)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_24.initval = 16'b0110100110010110;
    ROM16X1A LUT4_23 (.AD0(GND_net), .AD1(r_gcount_w211), .AD2(r_gcount_w210), 
            .AD3(r_gcount_w29), .DO0(rcount_w9)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_23.initval = 16'b0110100110010110;
    ROM16X1A LUT4_22 (.AD0(rcount_w10), .AD1(r_gcount_w29), .AD2(r_gcount_w28), 
            .AD3(r_gcount_w27), .DO0(rcount_w7)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_22.initval = 16'b0110100110010110;
    ROM16X1A LUT4_21 (.AD0(rcount_w9), .AD1(r_gcount_w28), .AD2(r_gcount_w27), 
            .AD3(r_gcount_w26), .DO0(rcount_w6)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_21.initval = 16'b0110100110010110;
    ROM16X1A LUT4_20 (.AD0(r_g2b_xor_cluster_0), .AD1(r_gcount_w27), .AD2(r_gcount_w26), 
            .AD3(r_gcount_w25), .DO0(rcount_w5)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_20.initval = 16'b0110100110010110;
    ROM16X1A LUT4_19 (.AD0(GND_net), .AD1(GND_net), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w4)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_19.initval = 16'b0110100110010110;
    ROM16X1A LUT4_18 (.AD0(GND_net), .AD1(r_gcount_w23), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w3)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_18.initval = 16'b0110100110010110;
    ROM16X1A LUT4_17 (.AD0(r_gcount_w23), .AD1(r_gcount_w22), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w2)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_17.initval = 16'b0110100110010110;
    ROM16X1A LUT4_16 (.AD0(GND_net), .AD1(r_gcount_w23), .AD2(r_gcount_w22), 
            .AD3(r_gcount_w21), .DO0(r_g2b_xor_cluster_2_1)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_16.initval = 16'b0110100110010110;
    ROM16X1A LUT4_15 (.AD0(GND_net), .AD1(r_g2b_xor_cluster_2_1), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w1)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_15.initval = 16'b0110100110010110;
    ROM16X1A LUT4_14 (.AD0(GND_net), .AD1(r_g2b_xor_cluster_2), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w0)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_14.initval = 16'b0110100110010110;
    ROM16X1A LUT4_13 (.AD0(GND_net), .AD1(w_gcount_r211), .AD2(rcount_11), 
            .AD3(rptr_11), .DO0(empty_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_13.initval = 16'b0000010000010000;
    ROM16X1A LUT4_12 (.AD0(GND_net), .AD1(w_gcount_r211), .AD2(rcount_11), 
            .AD3(rptr_11), .DO0(empty_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_12.initval = 16'b0001000000000100;
    ROM16X1A LUT4_11 (.AD0(GND_net), .AD1(r_gcount_w211), .AD2(wcount_11), 
            .AD3(wptr_11), .DO0(full_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_11.initval = 16'b0000000101000000;
    ROM16X1A LUT4_10 (.AD0(GND_net), .AD1(r_gcount_w211), .AD2(wcount_11), 
            .AD3(wptr_11), .DO0(full_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_10.initval = 16'b0100000000000001;
    ROM16X1A LUT4_9 (.AD0(rptr_11), .AD1(w_gcount_r211), .AD2(rcount_11), 
            .AD3(ae_setcount_11), .DO0(ae_set_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_9.initval = 16'b0001001111001000;
    ROM16X1A LUT4_8 (.AD0(rptr_11), .AD1(w_gcount_r211), .AD2(rcount_11), 
            .AD3(ae_setcount_11), .DO0(ae_set_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_8.initval = 16'b0010000000000100;
    ROM16X1A LUT4_7 (.AD0(rptr_11), .AD1(w_gcount_r211), .AD2(rcount_11), 
            .AD3(ae_clrcount_11), .DO0(ae_clr_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_7.initval = 16'b0001001111001000;
    ROM16X1A LUT4_6 (.AD0(rptr_11), .AD1(w_gcount_r211), .AD2(rcount_11), 
            .AD3(ae_clrcount_11), .DO0(ae_clr_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_6.initval = 16'b0010000000000100;
    ROM16X1A LUT4_5 (.AD0(GND_net), .AD1(ae_clr_d), .AD2(ae_set_d), .AD3(LUT_FIFO_AlmostEmpty_c), 
            .DO0(ae_d)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_5.initval = 16'b0100010001010000;
    ROM16X1A LUT4_4 (.AD0(wptr_11), .AD1(r_gcount_w211), .AD2(wcount_11), 
            .AD3(af_setcount_11), .DO0(af_set_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_4.initval = 16'b0100110000110010;
    ROM16X1A LUT4_3 (.AD0(wptr_11), .AD1(r_gcount_w211), .AD2(wcount_11), 
            .AD3(af_setcount_11), .DO0(af_set_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_3.initval = 16'b1000000000000001;
    ROM16X1A LUT4_2 (.AD0(wptr_11), .AD1(r_gcount_w211), .AD2(wcount_11), 
            .AD3(af_clrcount_11), .DO0(af_clr_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_2.initval = 16'b0100110000110010;
    ROM16X1A LUT4_1 (.AD0(wptr_11), .AD1(r_gcount_w211), .AD2(wcount_11), 
            .AD3(af_clrcount_11), .DO0(af_clr_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_1.initval = 16'b1000000000000001;
    ROM16X1A LUT4_0 (.AD0(GND_net), .AD1(af_clr), .AD2(af_set), .AD3(LUT_FIFO_AlmostFull_c), 
            .DO0(af_d)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_0.initval = 16'b0100010001010000;
    DP8KE pdp_ram_0_0_2 (.DIA0(LUT_FIFO_Data_c_0), .DIA1(LUT_FIFO_Data_c_1), 
          .DIA2(LUT_FIFO_Data_c_2), .DIA3(LUT_FIFO_Data_c_3), .DIA4(GND_net), 
          .DIA5(GND_net), .DIA6(GND_net), .DIA7(GND_net), .DIA8(GND_net), 
          .ADA0(GND_net), .ADA1(GND_net), .ADA2(wptr_0), .ADA3(wptr_1), 
          .ADA4(wptr_2), .ADA5(wptr_3), .ADA6(wptr_4), .ADA7(wptr_5), 
          .ADA8(wptr_6), .ADA9(wptr_7), .ADA10(wptr_8), .ADA11(wptr_9), 
          .ADA12(wptr_10), .CEA(wren_i), .OCEA(wren_i), .CLKA(LUT_FIFO_WrClock_c), 
          .WEA(VCC_net), .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), 
          .RSTA(LUT_FIFO_Reset_c), .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), 
          .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), 
          .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), .ADB1(GND_net), 
          .ADB2(rptr_0), .ADB3(rptr_1), .ADB4(rptr_2), .ADB5(rptr_3), 
          .ADB6(rptr_4), .ADB7(rptr_5), .ADB8(rptr_6), .ADB9(rptr_7), 
          .ADB10(rptr_8), .ADB11(rptr_9), .ADB12(rptr_10), .CEB(rden_i), 
          .OCEB(rden_i), .CLKB(LUT_FIFO_RdClock_c), .WEB(GND_net), .CSB0(GND_net), 
          .CSB1(GND_net), .CSB2(GND_net), .RSTB(LUT_FIFO_Reset_c), .DOB0(LUT_FIFO_Q_c_0), 
          .DOB1(LUT_FIFO_Q_c_1), .DOB2(LUT_FIFO_Q_c_2), .DOB3(LUT_FIFO_Q_c_3)) /* synthesis syn_black_box=true, MEM_LPC_FILE="LUT_FIFO.lpc", MEM_INIT_FILE="", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam pdp_ram_0_0_2.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_0_2.DATA_WIDTH_B = 4;
    defparam pdp_ram_0_0_2.REGMODE_A = "NOREG";
    defparam pdp_ram_0_0_2.REGMODE_B = "NOREG";
    defparam pdp_ram_0_0_2.CSDECODE_A = "0b000";
    defparam pdp_ram_0_0_2.CSDECODE_B = "0b000";
    defparam pdp_ram_0_0_2.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_0_2.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_0_2.GSR = "ENABLED";
    defparam pdp_ram_0_0_2.RESETMODE = "ASYNC";
    defparam pdp_ram_0_0_2.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_0_2.INIT_DATA = "STATIC";
    defparam pdp_ram_0_0_2.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_2.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    FD1P3DX FF_170 (.D(iwcount_1), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1011[13:20])
    defparam FF_170.GSR = "ENABLED";
    FD1P3DX FF_169 (.D(iwcount_2), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1015[13:20])
    defparam FF_169.GSR = "ENABLED";
    FD1P3DX FF_168 (.D(iwcount_3), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1019[13:20])
    defparam FF_168.GSR = "ENABLED";
    FD1P3DX FF_167 (.D(iwcount_4), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1023[13:20])
    defparam FF_167.GSR = "ENABLED";
    FD1P3DX FF_166 (.D(iwcount_5), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1027[13:20])
    defparam FF_166.GSR = "ENABLED";
    FD1P3DX FF_165 (.D(iwcount_6), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1031[13:20])
    defparam FF_165.GSR = "ENABLED";
    FD1P3DX FF_164 (.D(iwcount_7), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1035[13:20])
    defparam FF_164.GSR = "ENABLED";
    FD1P3DX FF_163 (.D(iwcount_8), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1039[13:20])
    defparam FF_163.GSR = "ENABLED";
    FD1P3DX FF_162 (.D(iwcount_9), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wcount_9)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1043[13:20])
    defparam FF_162.GSR = "ENABLED";
    FD1P3DX FF_161 (.D(iwcount_10), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wcount_10)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1047[13:20])
    defparam FF_161.GSR = "ENABLED";
    FD1P3DX FF_160 (.D(iwcount_11), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wcount_11)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1051[13:20])
    defparam FF_160.GSR = "ENABLED";
    FD1P3DX FF_159 (.D(w_gdata_0), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(w_gcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1055[13:20])
    defparam FF_159.GSR = "ENABLED";
    FD1P3DX FF_158 (.D(w_gdata_1), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(w_gcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1059[13:20])
    defparam FF_158.GSR = "ENABLED";
    FD1P3DX FF_157 (.D(w_gdata_2), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(w_gcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1063[13:20])
    defparam FF_157.GSR = "ENABLED";
    FD1P3DX FF_156 (.D(w_gdata_3), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(w_gcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1067[13:20])
    defparam FF_156.GSR = "ENABLED";
    FD1P3DX FF_155 (.D(w_gdata_4), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(w_gcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1071[13:20])
    defparam FF_155.GSR = "ENABLED";
    FD1P3DX FF_154 (.D(w_gdata_5), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(w_gcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1075[13:20])
    defparam FF_154.GSR = "ENABLED";
    FD1P3DX FF_153 (.D(w_gdata_6), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(w_gcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1079[13:20])
    defparam FF_153.GSR = "ENABLED";
    FD1P3DX FF_152 (.D(w_gdata_7), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(w_gcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1083[13:20])
    defparam FF_152.GSR = "ENABLED";
    FD1P3DX FF_151 (.D(w_gdata_8), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(w_gcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1087[13:20])
    defparam FF_151.GSR = "ENABLED";
    FD1P3DX FF_150 (.D(w_gdata_9), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(w_gcount_9)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1091[13:20])
    defparam FF_150.GSR = "ENABLED";
    FD1P3DX FF_149 (.D(w_gdata_10), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(w_gcount_10)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1095[13:20])
    defparam FF_149.GSR = "ENABLED";
    FD1P3DX FF_148 (.D(wcount_11), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(w_gcount_11)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1099[13:20])
    defparam FF_148.GSR = "ENABLED";
    FD1P3DX FF_147 (.D(wcount_0), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wptr_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1103[13:20])
    defparam FF_147.GSR = "ENABLED";
    FD1P3DX FF_146 (.D(wcount_1), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wptr_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1107[13:20])
    defparam FF_146.GSR = "ENABLED";
    FD1P3DX FF_145 (.D(wcount_2), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wptr_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1111[13:20])
    defparam FF_145.GSR = "ENABLED";
    FD1P3DX FF_144 (.D(wcount_3), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wptr_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1115[13:20])
    defparam FF_144.GSR = "ENABLED";
    FD1P3DX FF_143 (.D(wcount_4), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wptr_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1119[13:20])
    defparam FF_143.GSR = "ENABLED";
    FD1P3DX FF_142 (.D(wcount_5), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wptr_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1123[13:20])
    defparam FF_142.GSR = "ENABLED";
    FD1P3DX FF_141 (.D(wcount_6), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wptr_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1127[13:20])
    defparam FF_141.GSR = "ENABLED";
    FD1P3DX FF_140 (.D(wcount_7), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wptr_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1131[13:20])
    defparam FF_140.GSR = "ENABLED";
    FD1P3DX FF_139 (.D(wcount_8), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wptr_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1135[13:20])
    defparam FF_139.GSR = "ENABLED";
    FD1P3DX FF_138 (.D(wcount_9), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wptr_9)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1139[13:20])
    defparam FF_138.GSR = "ENABLED";
    FD1P3DX FF_137 (.D(wcount_10), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wptr_10)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1143[13:20])
    defparam FF_137.GSR = "ENABLED";
    FD1P3DX FF_136 (.D(wcount_11), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(wptr_11)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1147[13:20])
    defparam FF_136.GSR = "ENABLED";
    FD1P3BX FF_135 (.D(ircount_0), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .PD(rRst), .Q(rcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1151[13:20])
    defparam FF_135.GSR = "ENABLED";
    FD1P3DX FF_134 (.D(ircount_1), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1155[13:20])
    defparam FF_134.GSR = "ENABLED";
    FD1P3DX FF_133 (.D(ircount_2), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1159[13:20])
    defparam FF_133.GSR = "ENABLED";
    FD1P3DX FF_132 (.D(ircount_3), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1163[13:20])
    defparam FF_132.GSR = "ENABLED";
    FD1P3DX FF_131 (.D(ircount_4), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1167[13:20])
    defparam FF_131.GSR = "ENABLED";
    FD1P3DX FF_130 (.D(ircount_5), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1171[13:20])
    defparam FF_130.GSR = "ENABLED";
    FD1P3DX FF_129 (.D(ircount_6), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1175[13:20])
    defparam FF_129.GSR = "ENABLED";
    FD1P3DX FF_128 (.D(ircount_7), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1179[13:20])
    defparam FF_128.GSR = "ENABLED";
    FD1P3DX FF_127 (.D(ircount_8), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1183[13:20])
    defparam FF_127.GSR = "ENABLED";
    FD1P3DX FF_126 (.D(ircount_9), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rcount_9)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1187[13:20])
    defparam FF_126.GSR = "ENABLED";
    FD1P3DX FF_125 (.D(ircount_10), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rcount_10)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1191[13:20])
    defparam FF_125.GSR = "ENABLED";
    FD1P3DX FF_124 (.D(ircount_11), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rcount_11)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1195[13:20])
    defparam FF_124.GSR = "ENABLED";
    FD1P3DX FF_123 (.D(r_gdata_0), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(r_gcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1199[13:20])
    defparam FF_123.GSR = "ENABLED";
    FD1P3DX FF_122 (.D(r_gdata_1), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(r_gcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1203[13:20])
    defparam FF_122.GSR = "ENABLED";
    FD1P3DX FF_121 (.D(r_gdata_2), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(r_gcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1207[13:20])
    defparam FF_121.GSR = "ENABLED";
    FD1P3DX FF_120 (.D(r_gdata_3), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(r_gcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1211[13:20])
    defparam FF_120.GSR = "ENABLED";
    FD1P3DX FF_119 (.D(r_gdata_4), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(r_gcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1215[13:20])
    defparam FF_119.GSR = "ENABLED";
    FD1P3DX FF_118 (.D(r_gdata_5), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(r_gcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1219[13:20])
    defparam FF_118.GSR = "ENABLED";
    FD1P3DX FF_117 (.D(r_gdata_6), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(r_gcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1223[13:20])
    defparam FF_117.GSR = "ENABLED";
    FD1P3DX FF_116 (.D(r_gdata_7), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(r_gcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1227[13:20])
    defparam FF_116.GSR = "ENABLED";
    FD1P3DX FF_115 (.D(r_gdata_8), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(r_gcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1231[13:20])
    defparam FF_115.GSR = "ENABLED";
    FD1P3DX FF_114 (.D(r_gdata_9), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(r_gcount_9)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1235[13:20])
    defparam FF_114.GSR = "ENABLED";
    FD1P3DX FF_113 (.D(r_gdata_10), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(r_gcount_10)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1239[13:20])
    defparam FF_113.GSR = "ENABLED";
    FD1P3DX FF_112 (.D(rcount_11), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(r_gcount_11)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1243[13:20])
    defparam FF_112.GSR = "ENABLED";
    FD1P3DX FF_111 (.D(rcount_0), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rptr_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1247[13:20])
    defparam FF_111.GSR = "ENABLED";
    FD1P3DX FF_110 (.D(rcount_1), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rptr_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1251[13:20])
    defparam FF_110.GSR = "ENABLED";
    FD1P3DX FF_109 (.D(rcount_2), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rptr_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1255[13:20])
    defparam FF_109.GSR = "ENABLED";
    FD1P3DX FF_108 (.D(rcount_3), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rptr_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1259[13:20])
    defparam FF_108.GSR = "ENABLED";
    FD1P3DX FF_107 (.D(rcount_4), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rptr_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1263[13:20])
    defparam FF_107.GSR = "ENABLED";
    FD1P3DX FF_106 (.D(rcount_5), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rptr_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1267[13:20])
    defparam FF_106.GSR = "ENABLED";
    FD1P3DX FF_105 (.D(rcount_6), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rptr_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1271[13:20])
    defparam FF_105.GSR = "ENABLED";
    FD1P3DX FF_104 (.D(rcount_7), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rptr_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1275[13:20])
    defparam FF_104.GSR = "ENABLED";
    FD1P3DX FF_103 (.D(rcount_8), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rptr_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1279[13:20])
    defparam FF_103.GSR = "ENABLED";
    FD1P3DX FF_102 (.D(rcount_9), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rptr_9)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1283[13:20])
    defparam FF_102.GSR = "ENABLED";
    FD1P3DX FF_101 (.D(rcount_10), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rptr_10)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1287[13:20])
    defparam FF_101.GSR = "ENABLED";
    FD1P3DX FF_100 (.D(rcount_11), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(rptr_11)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1291[13:20])
    defparam FF_100.GSR = "ENABLED";
    FD1S3DX FF_99 (.D(w_gcount_0), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1295[12:19])
    defparam FF_99.GSR = "ENABLED";
    FD1S3DX FF_98 (.D(w_gcount_1), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1298[12:19])
    defparam FF_98.GSR = "ENABLED";
    FD1S3DX FF_97 (.D(w_gcount_2), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1301[12:19])
    defparam FF_97.GSR = "ENABLED";
    FD1S3DX FF_96 (.D(w_gcount_3), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1304[12:19])
    defparam FF_96.GSR = "ENABLED";
    FD1S3DX FF_95 (.D(w_gcount_4), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1307[12:19])
    defparam FF_95.GSR = "ENABLED";
    FD1S3DX FF_94 (.D(w_gcount_5), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1310[12:19])
    defparam FF_94.GSR = "ENABLED";
    FD1S3DX FF_93 (.D(w_gcount_6), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1313[12:19])
    defparam FF_93.GSR = "ENABLED";
    FD1S3DX FF_92 (.D(w_gcount_7), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1316[12:19])
    defparam FF_92.GSR = "ENABLED";
    FD1S3DX FF_91 (.D(w_gcount_8), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1319[12:19])
    defparam FF_91.GSR = "ENABLED";
    FD1S3DX FF_90 (.D(w_gcount_9), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r9)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1322[12:19])
    defparam FF_90.GSR = "ENABLED";
    FD1S3DX FF_89 (.D(w_gcount_10), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r10)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1325[12:19])
    defparam FF_89.GSR = "ENABLED";
    FD1S3DX FF_88 (.D(w_gcount_11), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r11)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1329[12:19])
    defparam FF_88.GSR = "ENABLED";
    FD1S3DX FF_87 (.D(r_gcount_0), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1333[12:19])
    defparam FF_87.GSR = "ENABLED";
    FD1S3DX FF_86 (.D(r_gcount_1), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1336[12:19])
    defparam FF_86.GSR = "ENABLED";
    FD1S3DX FF_85 (.D(r_gcount_2), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1339[12:19])
    defparam FF_85.GSR = "ENABLED";
    FD1S3DX FF_84 (.D(r_gcount_3), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1342[12:19])
    defparam FF_84.GSR = "ENABLED";
    FD1S3DX FF_83 (.D(r_gcount_4), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1345[12:19])
    defparam FF_83.GSR = "ENABLED";
    FD1S3DX FF_82 (.D(r_gcount_5), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1348[12:19])
    defparam FF_82.GSR = "ENABLED";
    FD1S3DX FF_81 (.D(r_gcount_6), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1351[12:19])
    defparam FF_81.GSR = "ENABLED";
    FD1S3DX FF_80 (.D(r_gcount_7), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1354[12:19])
    defparam FF_80.GSR = "ENABLED";
    FD1S3DX FF_79 (.D(r_gcount_8), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1357[12:19])
    defparam FF_79.GSR = "ENABLED";
    FD1S3DX FF_78 (.D(r_gcount_9), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w9)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1360[12:19])
    defparam FF_78.GSR = "ENABLED";
    FD1S3DX FF_77 (.D(r_gcount_10), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w10)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1363[12:19])
    defparam FF_77.GSR = "ENABLED";
    FD1S3DX FF_76 (.D(r_gcount_11), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w11)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1366[12:19])
    defparam FF_76.GSR = "ENABLED";
    FD1S3DX FF_75 (.D(w_gcount_r0), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r20)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1369[12:19])
    defparam FF_75.GSR = "ENABLED";
    FD1S3DX FF_74 (.D(w_gcount_r1), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r21)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1373[12:19])
    defparam FF_74.GSR = "ENABLED";
    FD1S3DX FF_73 (.D(w_gcount_r2), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r22)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1377[12:19])
    defparam FF_73.GSR = "ENABLED";
    FD1S3DX FF_72 (.D(w_gcount_r3), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r23)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1381[12:19])
    defparam FF_72.GSR = "ENABLED";
    FD1S3DX FF_71 (.D(w_gcount_r4), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r24)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1385[12:19])
    defparam FF_71.GSR = "ENABLED";
    FD1S3DX FF_70 (.D(w_gcount_r5), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r25)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1389[12:19])
    defparam FF_70.GSR = "ENABLED";
    FD1S3DX FF_69 (.D(w_gcount_r6), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r26)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1393[12:19])
    defparam FF_69.GSR = "ENABLED";
    FD1S3DX FF_68 (.D(w_gcount_r7), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r27)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1397[12:19])
    defparam FF_68.GSR = "ENABLED";
    FD1S3DX FF_67 (.D(w_gcount_r8), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r28)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1401[12:19])
    defparam FF_67.GSR = "ENABLED";
    FD1S3DX FF_66 (.D(w_gcount_r9), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r29)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1405[12:19])
    defparam FF_66.GSR = "ENABLED";
    FD1S3DX FF_65 (.D(w_gcount_r10), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r210)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1409[12:19])
    defparam FF_65.GSR = "ENABLED";
    FD1S3DX FF_64 (.D(w_gcount_r11), .CK(LUT_FIFO_RdClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(w_gcount_r211)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1413[12:19])
    defparam FF_64.GSR = "ENABLED";
    FD1S3DX FF_63 (.D(r_gcount_w0), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w20)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1417[12:19])
    defparam FF_63.GSR = "ENABLED";
    FD1S3DX FF_62 (.D(r_gcount_w1), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w21)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1420[12:19])
    defparam FF_62.GSR = "ENABLED";
    FD1S3DX FF_61 (.D(r_gcount_w2), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w22)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1423[12:19])
    defparam FF_61.GSR = "ENABLED";
    FD1S3DX FF_60 (.D(r_gcount_w3), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w23)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1426[12:19])
    defparam FF_60.GSR = "ENABLED";
    FD1S3DX FF_59 (.D(r_gcount_w4), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w24)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1429[12:19])
    defparam FF_59.GSR = "ENABLED";
    FD1S3DX FF_58 (.D(r_gcount_w5), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w25)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1432[12:19])
    defparam FF_58.GSR = "ENABLED";
    FD1S3DX FF_57 (.D(r_gcount_w6), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w26)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1435[12:19])
    defparam FF_57.GSR = "ENABLED";
    FD1S3DX FF_56 (.D(r_gcount_w7), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w27)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1438[12:19])
    defparam FF_56.GSR = "ENABLED";
    FD1S3DX FF_55 (.D(r_gcount_w8), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w28)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1441[12:19])
    defparam FF_55.GSR = "ENABLED";
    FD1S3DX FF_54 (.D(r_gcount_w9), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w29)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1444[12:19])
    defparam FF_54.GSR = "ENABLED";
    FD1S3DX FF_53 (.D(r_gcount_w10), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w210)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1447[12:19])
    defparam FF_53.GSR = "ENABLED";
    FD1S3DX FF_52 (.D(r_gcount_w11), .CK(LUT_FIFO_WrClock_c), .CD(rRst), 
            .Q(r_gcount_w211)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1451[12:19])
    defparam FF_52.GSR = "ENABLED";
    FD1S3BX FF_51 (.D(empty_d), .CK(LUT_FIFO_RdClock_c), .PD(rRst), .Q(LUT_FIFO_Empty_c)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1455[12:19])
    defparam FF_51.GSR = "ENABLED";
    FD1S3DX FF_50 (.D(full_d), .CK(LUT_FIFO_WrClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(LUT_FIFO_Full_c)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1458[12:19])
    defparam FF_50.GSR = "ENABLED";
    FD1P3BX FF_49 (.D(iae_setcount_0), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .PD(rRst), .Q(ae_setcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1461[12:19])
    defparam FF_49.GSR = "ENABLED";
    FD1P3BX FF_48 (.D(iae_setcount_1), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .PD(rRst), .Q(ae_setcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1465[12:19])
    defparam FF_48.GSR = "ENABLED";
    FD1P3DX FF_47 (.D(iae_setcount_2), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_setcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1469[12:19])
    defparam FF_47.GSR = "ENABLED";
    FD1P3BX FF_46 (.D(iae_setcount_3), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .PD(rRst), .Q(ae_setcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1473[12:19])
    defparam FF_46.GSR = "ENABLED";
    FD1P3DX FF_45 (.D(iae_setcount_4), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_setcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1477[12:19])
    defparam FF_45.GSR = "ENABLED";
    FD1P3DX FF_44 (.D(iae_setcount_5), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_setcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1481[12:19])
    defparam FF_44.GSR = "ENABLED";
    FD1P3DX FF_43 (.D(iae_setcount_6), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_setcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1485[12:19])
    defparam FF_43.GSR = "ENABLED";
    FD1P3DX FF_42 (.D(iae_setcount_7), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_setcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1489[12:19])
    defparam FF_42.GSR = "ENABLED";
    FD1P3DX FF_41 (.D(iae_setcount_8), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_setcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1493[12:19])
    defparam FF_41.GSR = "ENABLED";
    FD1P3DX FF_40 (.D(iae_setcount_9), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_setcount_9)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1497[12:19])
    defparam FF_40.GSR = "ENABLED";
    FD1P3DX FF_39 (.D(iae_setcount_10), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_setcount_10)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1501[12:19])
    defparam FF_39.GSR = "ENABLED";
    FD1P3DX FF_38 (.D(iae_setcount_11), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_setcount_11)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1505[12:19])
    defparam FF_38.GSR = "ENABLED";
    FD1P3BX FF_37 (.D(iae_clrcount_0), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .PD(rRst), .Q(ae_clrcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1509[12:19])
    defparam FF_37.GSR = "ENABLED";
    FD1P3DX FF_36 (.D(iae_clrcount_1), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_clrcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1513[12:19])
    defparam FF_36.GSR = "ENABLED";
    FD1P3BX FF_35 (.D(iae_clrcount_2), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .PD(rRst), .Q(ae_clrcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1517[12:19])
    defparam FF_35.GSR = "ENABLED";
    FD1P3BX FF_34 (.D(iae_clrcount_3), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .PD(rRst), .Q(ae_clrcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1521[12:19])
    defparam FF_34.GSR = "ENABLED";
    FD1P3DX FF_33 (.D(iae_clrcount_4), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_clrcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1525[12:19])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(iae_clrcount_5), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_clrcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1529[12:19])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(iae_clrcount_6), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_clrcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1533[12:19])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(iae_clrcount_7), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_clrcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1537[12:19])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(iae_clrcount_8), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_clrcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1541[12:19])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(iae_clrcount_9), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_clrcount_9)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1545[12:19])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(iae_clrcount_10), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_clrcount_10)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1549[12:19])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(iae_clrcount_11), .SP(rden_i), .CK(LUT_FIFO_RdClock_c), 
            .CD(rRst), .Q(ae_clrcount_11)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1553[12:19])
    defparam FF_26.GSR = "ENABLED";
    FD1S3BX FF_25 (.D(ae_d), .CK(LUT_FIFO_RdClock_c), .PD(rRst), .Q(LUT_FIFO_AlmostEmpty_c)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1557[12:19])
    defparam FF_25.GSR = "ENABLED";
    FD1P3BX FF_24 (.D(iaf_setcount_0), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .PD(LUT_FIFO_Reset_c), .Q(af_setcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1560[12:19])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(iaf_setcount_1), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(af_setcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1564[12:19])
    defparam FF_23.GSR = "ENABLED";
    FD1P3BX FF_22 (.D(iaf_setcount_2), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .PD(LUT_FIFO_Reset_c), .Q(af_setcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1568[12:19])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(iaf_setcount_3), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(af_setcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1572[12:19])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(iaf_setcount_4), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(af_setcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1576[12:19])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(iaf_setcount_5), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(af_setcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1580[12:19])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(iaf_setcount_6), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(af_setcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1584[12:19])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(iaf_setcount_7), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(af_setcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1588[12:19])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(iaf_setcount_8), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(af_setcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1592[12:19])
    defparam FF_16.GSR = "ENABLED";
    FD1P3BX FF_15 (.D(iaf_setcount_9), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .PD(LUT_FIFO_Reset_c), .Q(af_setcount_9)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1596[12:19])
    defparam FF_15.GSR = "ENABLED";
    FD1P3BX FF_14 (.D(iaf_setcount_10), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .PD(LUT_FIFO_Reset_c), .Q(af_setcount_10)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1600[12:19])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(iaf_setcount_11), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(af_setcount_11)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1604[12:19])
    defparam FF_13.GSR = "ENABLED";
    FD1P3BX FF_12 (.D(iaf_clrcount_0), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .PD(LUT_FIFO_Reset_c), .Q(af_clrcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1608[12:19])
    defparam FF_12.GSR = "ENABLED";
    FD1P3BX FF_11 (.D(iaf_clrcount_1), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .PD(LUT_FIFO_Reset_c), .Q(af_clrcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1612[12:19])
    defparam FF_11.GSR = "ENABLED";
    FD1P3BX FF_10 (.D(iaf_clrcount_2), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .PD(LUT_FIFO_Reset_c), .Q(af_clrcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1616[12:19])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(iaf_clrcount_3), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(af_clrcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1620[11:18])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(iaf_clrcount_4), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(af_clrcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1624[11:18])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(iaf_clrcount_5), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(af_clrcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1628[11:18])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(iaf_clrcount_6), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(af_clrcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1632[11:18])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(iaf_clrcount_7), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(af_clrcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1636[11:18])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(iaf_clrcount_8), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(af_clrcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1640[11:18])
    defparam FF_4.GSR = "ENABLED";
    FD1P3BX FF_3 (.D(iaf_clrcount_9), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .PD(LUT_FIFO_Reset_c), .Q(af_clrcount_9)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1644[11:18])
    defparam FF_3.GSR = "ENABLED";
    FD1P3BX FF_2 (.D(iaf_clrcount_10), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .PD(LUT_FIFO_Reset_c), .Q(af_clrcount_10)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1648[11:18])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(iaf_clrcount_11), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .CD(LUT_FIFO_Reset_c), .Q(af_clrcount_11)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1652[11:18])
    defparam FF_1.GSR = "ENABLED";
    FD1S3DX FF_0 (.D(af_d), .CK(LUT_FIFO_WrClock_c), .CD(LUT_FIFO_Reset_c), 
            .Q(LUT_FIFO_AlmostFull_c)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1656[11:18])
    defparam FF_0.GSR = "ENABLED";
    CCU2C w_gctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(w_gctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1659[17:22])
    defparam w_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam w_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam w_gctr_cia.INJECT1_0 = "NO";
    defparam w_gctr_cia.INJECT1_1 = "NO";
    CCU2C w_gctr_0 (.A0(wcount_0), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_1), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(w_gctr_ci), 
          .COUT(co0), .S0(iwcount_0), .S1(iwcount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1666[15:20])
    defparam w_gctr_0.INIT0 = 16'b0110011010101010;
    defparam w_gctr_0.INIT1 = 16'b0110011010101010;
    defparam w_gctr_0.INJECT1_0 = "NO";
    defparam w_gctr_0.INJECT1_1 = "NO";
    CCU2C w_gctr_1 (.A0(wcount_2), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_3), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co0), 
          .COUT(co1), .S0(iwcount_2), .S1(iwcount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1674[15:20])
    defparam w_gctr_1.INIT0 = 16'b0110011010101010;
    defparam w_gctr_1.INIT1 = 16'b0110011010101010;
    defparam w_gctr_1.INJECT1_0 = "NO";
    defparam w_gctr_1.INJECT1_1 = "NO";
    CCU2C w_gctr_2 (.A0(wcount_4), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_5), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co1), 
          .COUT(co2), .S0(iwcount_4), .S1(iwcount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1682[15:20])
    defparam w_gctr_2.INIT0 = 16'b0110011010101010;
    defparam w_gctr_2.INIT1 = 16'b0110011010101010;
    defparam w_gctr_2.INJECT1_0 = "NO";
    defparam w_gctr_2.INJECT1_1 = "NO";
    CCU2C w_gctr_3 (.A0(wcount_6), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_7), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co2), 
          .COUT(co3), .S0(iwcount_6), .S1(iwcount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1690[15:20])
    defparam w_gctr_3.INIT0 = 16'b0110011010101010;
    defparam w_gctr_3.INIT1 = 16'b0110011010101010;
    defparam w_gctr_3.INJECT1_0 = "NO";
    defparam w_gctr_3.INJECT1_1 = "NO";
    CCU2C w_gctr_4 (.A0(wcount_8), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_9), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co3), 
          .COUT(co4), .S0(iwcount_8), .S1(iwcount_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1698[15:20])
    defparam w_gctr_4.INIT0 = 16'b0110011010101010;
    defparam w_gctr_4.INIT1 = 16'b0110011010101010;
    defparam w_gctr_4.INJECT1_0 = "NO";
    defparam w_gctr_4.INJECT1_1 = "NO";
    CCU2C w_gctr_5 (.A0(wcount_10), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_11), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co4), .S0(iwcount_10), .S1(iwcount_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1706[15:20])
    defparam w_gctr_5.INIT0 = 16'b0110011010101010;
    defparam w_gctr_5.INIT1 = 16'b0110011010101010;
    defparam w_gctr_5.INJECT1_0 = "NO";
    defparam w_gctr_5.INJECT1_1 = "NO";
    CCU2C r_gctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(r_gctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1714[17:22])
    defparam r_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam r_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam r_gctr_cia.INJECT1_0 = "NO";
    defparam r_gctr_cia.INJECT1_1 = "NO";
    CCU2C r_gctr_0 (.A0(rcount_0), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_1), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(r_gctr_ci), 
          .COUT(co0_1), .S0(ircount_0), .S1(ircount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1721[15:20])
    defparam r_gctr_0.INIT0 = 16'b0110011010101010;
    defparam r_gctr_0.INIT1 = 16'b0110011010101010;
    defparam r_gctr_0.INJECT1_0 = "NO";
    defparam r_gctr_0.INJECT1_1 = "NO";
    CCU2C r_gctr_1 (.A0(rcount_2), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_3), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co0_1), 
          .COUT(co1_1), .S0(ircount_2), .S1(ircount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1729[15:20])
    defparam r_gctr_1.INIT0 = 16'b0110011010101010;
    defparam r_gctr_1.INIT1 = 16'b0110011010101010;
    defparam r_gctr_1.INJECT1_0 = "NO";
    defparam r_gctr_1.INJECT1_1 = "NO";
    CCU2C r_gctr_2 (.A0(rcount_4), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_5), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co1_1), 
          .COUT(co2_1), .S0(ircount_4), .S1(ircount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1737[15:20])
    defparam r_gctr_2.INIT0 = 16'b0110011010101010;
    defparam r_gctr_2.INIT1 = 16'b0110011010101010;
    defparam r_gctr_2.INJECT1_0 = "NO";
    defparam r_gctr_2.INJECT1_1 = "NO";
    CCU2C r_gctr_3 (.A0(rcount_6), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_7), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co2_1), 
          .COUT(co3_1), .S0(ircount_6), .S1(ircount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1745[15:20])
    defparam r_gctr_3.INIT0 = 16'b0110011010101010;
    defparam r_gctr_3.INIT1 = 16'b0110011010101010;
    defparam r_gctr_3.INJECT1_0 = "NO";
    defparam r_gctr_3.INJECT1_1 = "NO";
    CCU2C r_gctr_4 (.A0(rcount_8), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_9), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co3_1), 
          .COUT(co4_1), .S0(ircount_8), .S1(ircount_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1753[15:20])
    defparam r_gctr_4.INIT0 = 16'b0110011010101010;
    defparam r_gctr_4.INIT1 = 16'b0110011010101010;
    defparam r_gctr_4.INJECT1_0 = "NO";
    defparam r_gctr_4.INJECT1_1 = "NO";
    CCU2C r_gctr_5 (.A0(rcount_10), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_11), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co4_1), .S0(ircount_10), .S1(ircount_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1761[15:20])
    defparam r_gctr_5.INIT0 = 16'b0110011010101010;
    defparam r_gctr_5.INIT1 = 16'b0110011010101010;
    defparam r_gctr_5.INJECT1_0 = "NO";
    defparam r_gctr_5.INJECT1_1 = "NO";
    CCU2C empty_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rden_i), .B1(rden_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1769[21:26])
    defparam empty_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INJECT1_0 = "NO";
    defparam empty_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C empty_cmp_0 (.A0(rcount_0), .B0(wcount_r0), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_1), .B1(wcount_r1), .C1(VCC_net), .D1(VCC_net), 
          .CIN(cmp_ci), .COUT(co0_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1776[18:23])
    defparam empty_cmp_0.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_0.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_0.INJECT1_0 = "NO";
    defparam empty_cmp_0.INJECT1_1 = "NO";
    CCU2C empty_cmp_1 (.A0(rcount_2), .B0(wcount_r2), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_3), .B1(wcount_r3), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co0_2), .COUT(co1_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1783[18:23])
    defparam empty_cmp_1.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_1.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_1.INJECT1_0 = "NO";
    defparam empty_cmp_1.INJECT1_1 = "NO";
    CCU2C empty_cmp_2 (.A0(rcount_4), .B0(wcount_r4), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_5), .B1(wcount_r5), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co1_2), .COUT(co2_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1790[18:23])
    defparam empty_cmp_2.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_2.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_2.INJECT1_0 = "NO";
    defparam empty_cmp_2.INJECT1_1 = "NO";
    CCU2C empty_cmp_3 (.A0(rcount_6), .B0(wcount_r6), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_7), .B1(wcount_r7), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co2_2), .COUT(co3_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1797[18:23])
    defparam empty_cmp_3.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_3.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_3.INJECT1_0 = "NO";
    defparam empty_cmp_3.INJECT1_1 = "NO";
    CCU2C empty_cmp_4 (.A0(rcount_8), .B0(w_g2b_xor_cluster_0), .C0(VCC_net), 
          .D0(VCC_net), .A1(rcount_9), .B1(wcount_r9), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co3_2), .COUT(co4_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1804[18:23])
    defparam empty_cmp_4.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_4.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_4.INJECT1_0 = "NO";
    defparam empty_cmp_4.INJECT1_1 = "NO";
    CCU2C empty_cmp_5 (.A0(rcount_10), .B0(wcount_r10), .C0(VCC_net), 
          .D0(VCC_net), .A1(empty_cmp_set), .B1(empty_cmp_clr), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co4_2), .COUT(empty_d_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1811[18:23])
    defparam empty_cmp_5.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_5.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_5.INJECT1_0 = "NO";
    defparam empty_cmp_5.INJECT1_1 = "NO";
    CCU2C a0 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(empty_d_c), 
          .S0(empty_d)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1819[9:14])
    defparam a0.INIT0 = 16'b0110011010101010;
    defparam a0.INIT1 = 16'b0110011010101010;
    defparam a0.INJECT1_0 = "NO";
    defparam a0.INJECT1_1 = "NO";
    CCU2C full_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wren_i), .B1(wren_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1827[20:25])
    defparam full_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INJECT1_0 = "NO";
    defparam full_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C full_cmp_0 (.A0(wcount_0), .B0(rcount_w0), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_1), .B1(rcount_w1), .C1(VCC_net), .D1(VCC_net), 
          .CIN(cmp_ci_1), .COUT(co0_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1834[17:22])
    defparam full_cmp_0.INIT0 = 16'b1001100110101010;
    defparam full_cmp_0.INIT1 = 16'b1001100110101010;
    defparam full_cmp_0.INJECT1_0 = "NO";
    defparam full_cmp_0.INJECT1_1 = "NO";
    CCU2C full_cmp_1 (.A0(wcount_2), .B0(rcount_w2), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_3), .B1(rcount_w3), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co0_3), .COUT(co1_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1842[17:22])
    defparam full_cmp_1.INIT0 = 16'b1001100110101010;
    defparam full_cmp_1.INIT1 = 16'b1001100110101010;
    defparam full_cmp_1.INJECT1_0 = "NO";
    defparam full_cmp_1.INJECT1_1 = "NO";
    CCU2C full_cmp_2 (.A0(wcount_4), .B0(rcount_w4), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_5), .B1(rcount_w5), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co1_3), .COUT(co2_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1849[17:22])
    defparam full_cmp_2.INIT0 = 16'b1001100110101010;
    defparam full_cmp_2.INIT1 = 16'b1001100110101010;
    defparam full_cmp_2.INJECT1_0 = "NO";
    defparam full_cmp_2.INJECT1_1 = "NO";
    CCU2C full_cmp_3 (.A0(wcount_6), .B0(rcount_w6), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_7), .B1(rcount_w7), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co2_3), .COUT(co3_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1856[17:22])
    defparam full_cmp_3.INIT0 = 16'b1001100110101010;
    defparam full_cmp_3.INIT1 = 16'b1001100110101010;
    defparam full_cmp_3.INJECT1_0 = "NO";
    defparam full_cmp_3.INJECT1_1 = "NO";
    CCU2C full_cmp_4 (.A0(wcount_8), .B0(r_g2b_xor_cluster_0), .C0(VCC_net), 
          .D0(VCC_net), .A1(wcount_9), .B1(rcount_w9), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co3_3), .COUT(co4_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1863[17:22])
    defparam full_cmp_4.INIT0 = 16'b1001100110101010;
    defparam full_cmp_4.INIT1 = 16'b1001100110101010;
    defparam full_cmp_4.INJECT1_0 = "NO";
    defparam full_cmp_4.INJECT1_1 = "NO";
    CCU2C full_cmp_5 (.A0(wcount_10), .B0(rcount_w10), .C0(VCC_net), .D0(VCC_net), 
          .A1(full_cmp_set), .B1(full_cmp_clr), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co4_3), .COUT(full_d_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1870[17:22])
    defparam full_cmp_5.INIT0 = 16'b1001100110101010;
    defparam full_cmp_5.INIT1 = 16'b1001100110101010;
    defparam full_cmp_5.INJECT1_0 = "NO";
    defparam full_cmp_5.INJECT1_1 = "NO";
    CCU2C a1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(full_d_c), 
          .S0(full_d)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1878[9:14])
    defparam a1.INIT0 = 16'b0110011010101010;
    defparam a1.INIT1 = 16'b0110011010101010;
    defparam a1.INJECT1_0 = "NO";
    defparam a1.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(ae_set_ctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1886[21:26])
    defparam ae_set_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_cia.INJECT1_0 = "NO";
    defparam ae_set_ctr_cia.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_0 (.A0(ae_setcount_0), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_1), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(ae_set_ctr_ci), .COUT(co0_4), .S0(iae_setcount_0), 
          .S1(iae_setcount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1894[19:24])
    defparam ae_set_ctr_0.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_0.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_0.INJECT1_0 = "NO";
    defparam ae_set_ctr_0.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_1 (.A0(ae_setcount_2), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_3), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_4), .COUT(co1_4), .S0(iae_setcount_2), 
          .S1(iae_setcount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1902[19:24])
    defparam ae_set_ctr_1.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_1.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_1.INJECT1_0 = "NO";
    defparam ae_set_ctr_1.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_2 (.A0(ae_setcount_4), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_5), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_4), .COUT(co2_4), .S0(iae_setcount_4), 
          .S1(iae_setcount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1910[19:24])
    defparam ae_set_ctr_2.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_2.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_2.INJECT1_0 = "NO";
    defparam ae_set_ctr_2.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_3 (.A0(ae_setcount_6), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_7), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_4), .COUT(co3_4), .S0(iae_setcount_6), 
          .S1(iae_setcount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1918[19:24])
    defparam ae_set_ctr_3.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_3.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_3.INJECT1_0 = "NO";
    defparam ae_set_ctr_3.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_4 (.A0(ae_setcount_8), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_9), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co3_4), .COUT(co4_4), .S0(iae_setcount_8), 
          .S1(iae_setcount_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1926[19:24])
    defparam ae_set_ctr_4.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_4.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_4.INJECT1_0 = "NO";
    defparam ae_set_ctr_4.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_5 (.A0(ae_setcount_10), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_11), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co4_4), .S0(iae_setcount_10), .S1(iae_setcount_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1934[19:24])
    defparam ae_set_ctr_5.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_5.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_5.INJECT1_0 = "NO";
    defparam ae_set_ctr_5.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rden_i), .B1(rden_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1942[22:27])
    defparam ae_set_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INJECT1_0 = "NO";
    defparam ae_set_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_0 (.A0(ae_setcount_0), .B0(wcount_r0), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_1), .B1(wcount_r1), .C1(VCC_net), 
          .D1(VCC_net), .CIN(cmp_ci_2), .COUT(co0_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1949[19:24])
    defparam ae_set_cmp_0.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INJECT1_0 = "NO";
    defparam ae_set_cmp_0.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_1 (.A0(ae_setcount_2), .B0(wcount_r2), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_3), .B1(wcount_r3), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_5), .COUT(co1_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1957[19:24])
    defparam ae_set_cmp_1.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INJECT1_0 = "NO";
    defparam ae_set_cmp_1.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_2 (.A0(ae_setcount_4), .B0(wcount_r4), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_5), .B1(wcount_r5), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_5), .COUT(co2_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1964[19:24])
    defparam ae_set_cmp_2.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INJECT1_0 = "NO";
    defparam ae_set_cmp_2.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_3 (.A0(ae_setcount_6), .B0(wcount_r6), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_7), .B1(wcount_r7), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_5), .COUT(co3_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1971[19:24])
    defparam ae_set_cmp_3.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INJECT1_0 = "NO";
    defparam ae_set_cmp_3.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_4 (.A0(ae_setcount_8), .B0(w_g2b_xor_cluster_0), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_setcount_9), .B1(wcount_r9), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co3_5), .COUT(co4_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1978[19:24])
    defparam ae_set_cmp_4.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INJECT1_0 = "NO";
    defparam ae_set_cmp_4.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_5 (.A0(ae_setcount_10), .B0(wcount_r10), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_set_cmp_set), .B1(ae_set_cmp_clr), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co4_5), .COUT(ae_set_d_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1986[19:24])
    defparam ae_set_cmp_5.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_5.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_5.INJECT1_0 = "NO";
    defparam ae_set_cmp_5.INJECT1_1 = "NO";
    CCU2C a2 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(ae_set_d_c), 
          .S0(ae_set_d)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1994[9:14])
    defparam a2.INIT0 = 16'b0110011010101010;
    defparam a2.INIT1 = 16'b0110011010101010;
    defparam a2.INJECT1_0 = "NO";
    defparam a2.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(ae_clr_ctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2002[21:26])
    defparam ae_clr_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_cia.INJECT1_0 = "NO";
    defparam ae_clr_ctr_cia.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_0 (.A0(ae_clrcount_0), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_1), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(ae_clr_ctr_ci), .COUT(co0_6), .S0(iae_clrcount_0), 
          .S1(iae_clrcount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2010[19:24])
    defparam ae_clr_ctr_0.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_0.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_0.INJECT1_0 = "NO";
    defparam ae_clr_ctr_0.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_1 (.A0(ae_clrcount_2), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_3), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_6), .COUT(co1_6), .S0(iae_clrcount_2), 
          .S1(iae_clrcount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2018[19:24])
    defparam ae_clr_ctr_1.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_1.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_1.INJECT1_0 = "NO";
    defparam ae_clr_ctr_1.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_2 (.A0(ae_clrcount_4), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_5), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_6), .COUT(co2_6), .S0(iae_clrcount_4), 
          .S1(iae_clrcount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2026[19:24])
    defparam ae_clr_ctr_2.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_2.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_2.INJECT1_0 = "NO";
    defparam ae_clr_ctr_2.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_3 (.A0(ae_clrcount_6), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_7), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_6), .COUT(co3_6), .S0(iae_clrcount_6), 
          .S1(iae_clrcount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2034[19:24])
    defparam ae_clr_ctr_3.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_3.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_3.INJECT1_0 = "NO";
    defparam ae_clr_ctr_3.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_4 (.A0(ae_clrcount_8), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_9), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co3_6), .COUT(co4_6), .S0(iae_clrcount_8), 
          .S1(iae_clrcount_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2042[19:24])
    defparam ae_clr_ctr_4.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_4.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_4.INJECT1_0 = "NO";
    defparam ae_clr_ctr_4.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_5 (.A0(ae_clrcount_10), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_11), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co4_6), .S0(iae_clrcount_10), .S1(iae_clrcount_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2050[19:24])
    defparam ae_clr_ctr_5.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_5.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_5.INJECT1_0 = "NO";
    defparam ae_clr_ctr_5.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rden_i), .B1(rden_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2058[22:27])
    defparam ae_clr_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam ae_clr_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam ae_clr_cmp_ci_a.INJECT1_0 = "NO";
    defparam ae_clr_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_0 (.A0(ae_clrcount_0), .B0(wcount_r0), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_1), .B1(wcount_r1), .C1(VCC_net), 
          .D1(VCC_net), .CIN(cmp_ci_3), .COUT(co0_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2065[19:24])
    defparam ae_clr_cmp_0.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_0.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_0.INJECT1_0 = "NO";
    defparam ae_clr_cmp_0.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_1 (.A0(ae_clrcount_2), .B0(wcount_r2), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_3), .B1(wcount_r3), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_7), .COUT(co1_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2073[19:24])
    defparam ae_clr_cmp_1.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_1.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_1.INJECT1_0 = "NO";
    defparam ae_clr_cmp_1.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_2 (.A0(ae_clrcount_4), .B0(wcount_r4), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_5), .B1(wcount_r5), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_7), .COUT(co2_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2080[19:24])
    defparam ae_clr_cmp_2.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_2.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_2.INJECT1_0 = "NO";
    defparam ae_clr_cmp_2.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_3 (.A0(ae_clrcount_6), .B0(wcount_r6), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_7), .B1(wcount_r7), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_7), .COUT(co3_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2087[19:24])
    defparam ae_clr_cmp_3.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_3.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_3.INJECT1_0 = "NO";
    defparam ae_clr_cmp_3.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_4 (.A0(ae_clrcount_8), .B0(w_g2b_xor_cluster_0), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clrcount_9), .B1(wcount_r9), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co3_7), .COUT(co4_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2094[19:24])
    defparam ae_clr_cmp_4.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_4.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_4.INJECT1_0 = "NO";
    defparam ae_clr_cmp_4.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_5 (.A0(ae_clrcount_10), .B0(wcount_r10), .C0(VCC_net), 
          .D0(VCC_net), .A1(ae_clr_cmp_set), .B1(ae_clr_cmp_clr), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co4_7), .COUT(ae_clr_d_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2102[19:24])
    defparam ae_clr_cmp_5.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_5.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_5.INJECT1_0 = "NO";
    defparam ae_clr_cmp_5.INJECT1_1 = "NO";
    CCU2C a3 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(ae_clr_d_c), 
          .S0(ae_clr_d)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2110[9:14])
    defparam a3.INIT0 = 16'b0110011010101010;
    defparam a3.INIT1 = 16'b0110011010101010;
    defparam a3.INJECT1_0 = "NO";
    defparam a3.INJECT1_1 = "NO";
    CCU2C af_set_ctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(af_set_ctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2118[21:26])
    defparam af_set_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_cia.INJECT1_0 = "NO";
    defparam af_set_ctr_cia.INJECT1_1 = "NO";
    CCU2C af_set_ctr_0 (.A0(af_setcount_0), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_1), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(af_set_ctr_ci), .COUT(co0_8), .S0(iaf_setcount_0), 
          .S1(iaf_setcount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2126[19:24])
    defparam af_set_ctr_0.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_0.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_0.INJECT1_0 = "NO";
    defparam af_set_ctr_0.INJECT1_1 = "NO";
    CCU2C af_set_ctr_1 (.A0(af_setcount_2), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_3), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_8), .COUT(co1_8), .S0(iaf_setcount_2), 
          .S1(iaf_setcount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2134[19:24])
    defparam af_set_ctr_1.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_1.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_1.INJECT1_0 = "NO";
    defparam af_set_ctr_1.INJECT1_1 = "NO";
    CCU2C af_set_ctr_2 (.A0(af_setcount_4), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_5), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_8), .COUT(co2_8), .S0(iaf_setcount_4), 
          .S1(iaf_setcount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2142[19:24])
    defparam af_set_ctr_2.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_2.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_2.INJECT1_0 = "NO";
    defparam af_set_ctr_2.INJECT1_1 = "NO";
    CCU2C af_set_ctr_3 (.A0(af_setcount_6), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_7), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_8), .COUT(co3_8), .S0(iaf_setcount_6), 
          .S1(iaf_setcount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2150[19:24])
    defparam af_set_ctr_3.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_3.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_3.INJECT1_0 = "NO";
    defparam af_set_ctr_3.INJECT1_1 = "NO";
    CCU2C af_set_ctr_4 (.A0(af_setcount_8), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_9), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co3_8), .COUT(co4_8), .S0(iaf_setcount_8), 
          .S1(iaf_setcount_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2158[19:24])
    defparam af_set_ctr_4.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_4.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_4.INJECT1_0 = "NO";
    defparam af_set_ctr_4.INJECT1_1 = "NO";
    CCU2C af_set_ctr_5 (.A0(af_setcount_10), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_11), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co4_8), .S0(iaf_setcount_10), .S1(iaf_setcount_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2166[19:24])
    defparam af_set_ctr_5.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_5.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_5.INJECT1_0 = "NO";
    defparam af_set_ctr_5.INJECT1_1 = "NO";
    CCU2C af_set_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wren_i), .B1(wren_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci_4)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2174[22:27])
    defparam af_set_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam af_set_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam af_set_cmp_ci_a.INJECT1_0 = "NO";
    defparam af_set_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C af_set_cmp_0 (.A0(af_setcount_0), .B0(rcount_w0), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_1), .B1(rcount_w1), .C1(VCC_net), 
          .D1(VCC_net), .CIN(cmp_ci_4), .COUT(co0_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2181[19:24])
    defparam af_set_cmp_0.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_0.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_0.INJECT1_0 = "NO";
    defparam af_set_cmp_0.INJECT1_1 = "NO";
    CCU2C af_set_cmp_1 (.A0(af_setcount_2), .B0(rcount_w2), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_3), .B1(rcount_w3), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_9), .COUT(co1_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2189[19:24])
    defparam af_set_cmp_1.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_1.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_1.INJECT1_0 = "NO";
    defparam af_set_cmp_1.INJECT1_1 = "NO";
    CCU2C af_set_cmp_2 (.A0(af_setcount_4), .B0(rcount_w4), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_5), .B1(rcount_w5), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_9), .COUT(co2_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2196[19:24])
    defparam af_set_cmp_2.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_2.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_2.INJECT1_0 = "NO";
    defparam af_set_cmp_2.INJECT1_1 = "NO";
    CCU2C af_set_cmp_3 (.A0(af_setcount_6), .B0(rcount_w6), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_7), .B1(rcount_w7), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_9), .COUT(co3_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2203[19:24])
    defparam af_set_cmp_3.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_3.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_3.INJECT1_0 = "NO";
    defparam af_set_cmp_3.INJECT1_1 = "NO";
    CCU2C af_set_cmp_4 (.A0(af_setcount_8), .B0(r_g2b_xor_cluster_0), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_setcount_9), .B1(rcount_w9), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co3_9), .COUT(co4_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2210[19:24])
    defparam af_set_cmp_4.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_4.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_4.INJECT1_0 = "NO";
    defparam af_set_cmp_4.INJECT1_1 = "NO";
    CCU2C af_set_cmp_5 (.A0(af_setcount_10), .B0(rcount_w10), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_set_cmp_set), .B1(af_set_cmp_clr), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co4_9), .COUT(af_set_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2218[19:24])
    defparam af_set_cmp_5.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_5.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_5.INJECT1_0 = "NO";
    defparam af_set_cmp_5.INJECT1_1 = "NO";
    CCU2C a4 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(af_set_c), 
          .S0(af_set)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2226[9:14])
    defparam a4.INIT0 = 16'b0110011010101010;
    defparam a4.INIT1 = 16'b0110011010101010;
    defparam a4.INJECT1_0 = "NO";
    defparam a4.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(af_clr_ctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2234[21:26])
    defparam af_clr_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_cia.INJECT1_0 = "NO";
    defparam af_clr_ctr_cia.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_0 (.A0(af_clrcount_0), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_1), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(af_clr_ctr_ci), .COUT(co0_10), .S0(iaf_clrcount_0), 
          .S1(iaf_clrcount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2242[19:24])
    defparam af_clr_ctr_0.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_0.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_0.INJECT1_0 = "NO";
    defparam af_clr_ctr_0.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_1 (.A0(af_clrcount_2), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_3), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_10), .COUT(co1_10), .S0(iaf_clrcount_2), 
          .S1(iaf_clrcount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2250[19:24])
    defparam af_clr_ctr_1.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_1.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_1.INJECT1_0 = "NO";
    defparam af_clr_ctr_1.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_2 (.A0(af_clrcount_4), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_5), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_10), .COUT(co2_10), .S0(iaf_clrcount_4), 
          .S1(iaf_clrcount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2258[19:24])
    defparam af_clr_ctr_2.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_2.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_2.INJECT1_0 = "NO";
    defparam af_clr_ctr_2.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_3 (.A0(af_clrcount_6), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_7), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_10), .COUT(co3_10), .S0(iaf_clrcount_6), 
          .S1(iaf_clrcount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2266[19:24])
    defparam af_clr_ctr_3.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_3.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_3.INJECT1_0 = "NO";
    defparam af_clr_ctr_3.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_4 (.A0(af_clrcount_8), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_9), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co3_10), .COUT(co4_10), .S0(iaf_clrcount_8), 
          .S1(iaf_clrcount_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2274[19:24])
    defparam af_clr_ctr_4.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_4.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_4.INJECT1_0 = "NO";
    defparam af_clr_ctr_4.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_5 (.A0(af_clrcount_10), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_11), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co4_10), .S0(iaf_clrcount_10), .S1(iaf_clrcount_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2282[19:24])
    defparam af_clr_ctr_5.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_5.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_5.INJECT1_0 = "NO";
    defparam af_clr_ctr_5.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wren_i), .B1(wren_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2290[22:27])
    defparam af_clr_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam af_clr_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam af_clr_cmp_ci_a.INJECT1_0 = "NO";
    defparam af_clr_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_0 (.A0(af_clrcount_0), .B0(rcount_w0), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_1), .B1(rcount_w1), .C1(VCC_net), 
          .D1(VCC_net), .CIN(cmp_ci_5), .COUT(co0_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2297[19:24])
    defparam af_clr_cmp_0.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_0.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_0.INJECT1_0 = "NO";
    defparam af_clr_cmp_0.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_1 (.A0(af_clrcount_2), .B0(rcount_w2), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_3), .B1(rcount_w3), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_11), .COUT(co1_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2305[19:24])
    defparam af_clr_cmp_1.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_1.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_1.INJECT1_0 = "NO";
    defparam af_clr_cmp_1.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_2 (.A0(af_clrcount_4), .B0(rcount_w4), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_5), .B1(rcount_w5), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co1_11), .COUT(co2_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2312[19:24])
    defparam af_clr_cmp_2.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_2.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_2.INJECT1_0 = "NO";
    defparam af_clr_cmp_2.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_3 (.A0(af_clrcount_6), .B0(rcount_w6), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_7), .B1(rcount_w7), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co2_11), .COUT(co3_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2319[19:24])
    defparam af_clr_cmp_3.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_3.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_3.INJECT1_0 = "NO";
    defparam af_clr_cmp_3.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_4 (.A0(af_clrcount_8), .B0(r_g2b_xor_cluster_0), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clrcount_9), .B1(rcount_w9), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co3_11), .COUT(co4_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2326[19:24])
    defparam af_clr_cmp_4.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_4.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_4.INJECT1_0 = "NO";
    defparam af_clr_cmp_4.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_5 (.A0(af_clrcount_10), .B0(rcount_w10), .C0(VCC_net), 
          .D0(VCC_net), .A1(af_clr_cmp_set), .B1(af_clr_cmp_clr), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co4_11), .COUT(af_clr_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2334[19:24])
    defparam af_clr_cmp_5.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_5.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_5.INJECT1_0 = "NO";
    defparam af_clr_cmp_5.INJECT1_1 = "NO";
    CCU2C a5 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(af_clr_c), 
          .S0(af_clr)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(2348[9:14])
    defparam a5.INIT0 = 16'b0110011010101010;
    defparam a5.INIT1 = 16'b0110011010101010;
    defparam a5.INJECT1_0 = "NO";
    defparam a5.INJECT1_1 = "NO";
    AND2 AND2_t24 (.A(LUT_FIFO_WrEn_c), .B(invout_1), .Z(wren_i)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(624[15:19])
    AND2 AND2_t23 (.A(LUT_FIFO_RdEn_c), .B(invout_0), .Z(rden_i)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(630[15:19])
    INV INV_0 (.A(LUT_FIFO_Empty_c), .Z(invout_0)) /* synthesis LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    OR2 OR2_t22 (.A(LUT_FIFO_Reset_c), .B(LUT_FIFO_RPReset_c), .Z(rRst)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(636[14:17])
    XOR2 XOR2_t21 (.A(wcount_0), .B(wcount_1), .Z(w_gdata_0)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(639[15:19])
    XOR2 XOR2_t20 (.A(wcount_1), .B(wcount_2), .Z(w_gdata_1)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(642[15:19])
    XOR2 XOR2_t19 (.A(wcount_2), .B(wcount_3), .Z(w_gdata_2)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(645[15:19])
    XOR2 XOR2_t18 (.A(wcount_3), .B(wcount_4), .Z(w_gdata_3)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(648[15:19])
    XOR2 XOR2_t17 (.A(wcount_4), .B(wcount_5), .Z(w_gdata_4)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(651[15:19])
    XOR2 XOR2_t16 (.A(wcount_5), .B(wcount_6), .Z(w_gdata_5)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(654[15:19])
    XOR2 XOR2_t15 (.A(wcount_6), .B(wcount_7), .Z(w_gdata_6)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(657[15:19])
    XOR2 XOR2_t14 (.A(wcount_7), .B(wcount_8), .Z(w_gdata_7)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(660[15:19])
    XOR2 XOR2_t13 (.A(wcount_8), .B(wcount_9), .Z(w_gdata_8)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(663[15:19])
    XOR2 XOR2_t12 (.A(wcount_9), .B(wcount_10), .Z(w_gdata_9)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(666[15:19])
    XOR2 XOR2_t11 (.A(wcount_10), .B(wcount_11), .Z(w_gdata_10)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(669[15:19])
    XOR2 XOR2_t10 (.A(rcount_0), .B(rcount_1), .Z(r_gdata_0)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(672[15:19])
    XOR2 XOR2_t9 (.A(rcount_1), .B(rcount_2), .Z(r_gdata_1)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(675[14:18])
    XOR2 XOR2_t8 (.A(rcount_2), .B(rcount_3), .Z(r_gdata_2)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(678[14:18])
    XOR2 XOR2_t7 (.A(rcount_3), .B(rcount_4), .Z(r_gdata_3)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(681[14:18])
    XOR2 XOR2_t6 (.A(rcount_4), .B(rcount_5), .Z(r_gdata_4)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(684[14:18])
    XOR2 XOR2_t5 (.A(rcount_5), .B(rcount_6), .Z(r_gdata_5)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(687[14:18])
    XOR2 XOR2_t4 (.A(rcount_6), .B(rcount_7), .Z(r_gdata_6)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(690[14:18])
    XOR2 XOR2_t3 (.A(rcount_7), .B(rcount_8), .Z(r_gdata_7)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(693[14:18])
    XOR2 XOR2_t2 (.A(rcount_8), .B(rcount_9), .Z(r_gdata_8)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(696[14:18])
    XOR2 XOR2_t1 (.A(rcount_9), .B(rcount_10), .Z(r_gdata_9)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(699[14:18])
    XOR2 XOR2_t0 (.A(rcount_10), .B(rcount_11), .Z(r_gdata_10)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(702[14:18])
    ROM16X1A LUT4_41 (.AD0(w_gcount_r211), .AD1(w_gcount_r210), .AD2(w_gcount_r29), 
            .AD3(w_gcount_r28), .DO0(w_g2b_xor_cluster_0)) /* synthesis syn_black_box=true, syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam LUT4_41.initval = 16'b0110100110010110;
    DP8KE pdp_ram_0_1_1 (.DIA0(LUT_FIFO_Data_c_4), .DIA1(LUT_FIFO_Data_c_5), 
          .DIA2(LUT_FIFO_Data_c_6), .DIA3(LUT_FIFO_Data_c_7), .DIA4(GND_net), 
          .DIA5(GND_net), .DIA6(GND_net), .DIA7(GND_net), .DIA8(GND_net), 
          .ADA0(GND_net), .ADA1(GND_net), .ADA2(wptr_0), .ADA3(wptr_1), 
          .ADA4(wptr_2), .ADA5(wptr_3), .ADA6(wptr_4), .ADA7(wptr_5), 
          .ADA8(wptr_6), .ADA9(wptr_7), .ADA10(wptr_8), .ADA11(wptr_9), 
          .ADA12(wptr_10), .CEA(wren_i), .OCEA(wren_i), .CLKA(LUT_FIFO_WrClock_c), 
          .WEA(VCC_net), .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), 
          .RSTA(LUT_FIFO_Reset_c), .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), 
          .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), 
          .DIB7(GND_net), .DIB8(GND_net), .ADB0(GND_net), .ADB1(GND_net), 
          .ADB2(rptr_0), .ADB3(rptr_1), .ADB4(rptr_2), .ADB5(rptr_3), 
          .ADB6(rptr_4), .ADB7(rptr_5), .ADB8(rptr_6), .ADB9(rptr_7), 
          .ADB10(rptr_8), .ADB11(rptr_9), .ADB12(rptr_10), .CEB(rden_i), 
          .OCEB(rden_i), .CLKB(LUT_FIFO_RdClock_c), .WEB(GND_net), .CSB0(GND_net), 
          .CSB1(GND_net), .CSB2(GND_net), .RSTB(LUT_FIFO_Reset_c), .DOB0(LUT_FIFO_Q_c_4), 
          .DOB1(LUT_FIFO_Q_c_5), .DOB2(LUT_FIFO_Q_c_6), .DOB3(LUT_FIFO_Q_c_7)) /* synthesis syn_black_box=true, MEM_LPC_FILE="LUT_FIFO.lpc", MEM_INIT_FILE="", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam pdp_ram_0_1_1.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_1_1.DATA_WIDTH_B = 4;
    defparam pdp_ram_0_1_1.REGMODE_A = "NOREG";
    defparam pdp_ram_0_1_1.REGMODE_B = "NOREG";
    defparam pdp_ram_0_1_1.CSDECODE_A = "0b000";
    defparam pdp_ram_0_1_1.CSDECODE_B = "0b000";
    defparam pdp_ram_0_1_1.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_1_1.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_1_1.GSR = "ENABLED";
    defparam pdp_ram_0_1_1.RESETMODE = "ASYNC";
    defparam pdp_ram_0_1_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_1_1.INIT_DATA = "STATIC";
    defparam pdp_ram_0_1_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    DP8KE pdp_ram_0_2_0 (.DIA0(LUT_FIFO_Data_c_8), .DIA1(LUT_FIFO_Data_c_9), 
          .DIA2(GND_net), .DIA3(GND_net), .DIA4(GND_net), .DIA5(GND_net), 
          .DIA6(GND_net), .DIA7(GND_net), .DIA8(GND_net), .ADA0(GND_net), 
          .ADA1(GND_net), .ADA2(wptr_0), .ADA3(wptr_1), .ADA4(wptr_2), 
          .ADA5(wptr_3), .ADA6(wptr_4), .ADA7(wptr_5), .ADA8(wptr_6), 
          .ADA9(wptr_7), .ADA10(wptr_8), .ADA11(wptr_9), .ADA12(wptr_10), 
          .CEA(wren_i), .OCEA(wren_i), .CLKA(LUT_FIFO_WrClock_c), .WEA(VCC_net), 
          .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), .RSTA(LUT_FIFO_Reset_c), 
          .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), 
          .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), 
          .DIB8(GND_net), .ADB0(GND_net), .ADB1(GND_net), .ADB2(rptr_0), 
          .ADB3(rptr_1), .ADB4(rptr_2), .ADB5(rptr_3), .ADB6(rptr_4), 
          .ADB7(rptr_5), .ADB8(rptr_6), .ADB9(rptr_7), .ADB10(rptr_8), 
          .ADB11(rptr_9), .ADB12(rptr_10), .CEB(rden_i), .OCEB(rden_i), 
          .CLKB(LUT_FIFO_RdClock_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
          .CSB2(GND_net), .RSTB(LUT_FIFO_Reset_c), .DOB0(LUT_FIFO_Q_c_8), 
          .DOB1(LUT_FIFO_Q_c_9)) /* synthesis syn_black_box=true, MEM_LPC_FILE="LUT_FIFO.lpc", MEM_INIT_FILE="", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/camera.vhd(98[20:38])
    defparam pdp_ram_0_2_0.DATA_WIDTH_A = 4;
    defparam pdp_ram_0_2_0.DATA_WIDTH_B = 4;
    defparam pdp_ram_0_2_0.REGMODE_A = "NOREG";
    defparam pdp_ram_0_2_0.REGMODE_B = "NOREG";
    defparam pdp_ram_0_2_0.CSDECODE_A = "0b000";
    defparam pdp_ram_0_2_0.CSDECODE_B = "0b000";
    defparam pdp_ram_0_2_0.WRITEMODE_A = "NORMAL";
    defparam pdp_ram_0_2_0.WRITEMODE_B = "NORMAL";
    defparam pdp_ram_0_2_0.GSR = "ENABLED";
    defparam pdp_ram_0_2_0.RESETMODE = "ASYNC";
    defparam pdp_ram_0_2_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_2_0.INIT_DATA = "STATIC";
    defparam pdp_ram_0_2_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_2_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    FD1P3BX FF_171 (.D(iwcount_0), .SP(wren_i), .CK(LUT_FIFO_WrClock_c), 
            .PD(LUT_FIFO_Reset_c), .Q(wcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=32, LSE_LCOL=20, LSE_RCOL=38, LSE_LLINE=98, LSE_RLINE=98 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/lut_fifo/lut_fifo.vhd(1007[13:20])
    defparam FF_171.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

