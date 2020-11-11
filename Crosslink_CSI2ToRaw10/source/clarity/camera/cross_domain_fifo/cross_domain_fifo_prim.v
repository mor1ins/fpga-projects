// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.3.469
// Netlist written on Tue Nov 10 23:57:05 2020
//
// Verilog Description of module cross_domain_fifo
//

module cross_domain_fifo (Data, WrClock, RdClock, WrEn, RdEn, Reset, 
            RPReset, Q, Empty, Full, AlmostEmpty, AlmostFull) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(12[8:25])
    input [31:0]Data;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(14[9:13])
    input WrClock;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(15[9:16])
    input RdClock;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(16[9:16])
    input WrEn;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(17[9:13])
    input RdEn;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(18[9:13])
    input Reset;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(19[9:14])
    input RPReset;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(20[9:16])
    output [31:0]Q;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(21[9:10])
    output Empty;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(22[9:14])
    output Full;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(23[9:13])
    output AlmostEmpty;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(24[9:20])
    output AlmostFull;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(25[9:19])
    
    wire WrClock /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(15[9:16])
    wire RdClock /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(16[9:16])
    
    wire invout_1, invout_0, w_g2b_xor_cluster_1, r_g2b_xor_cluster_1, 
        w_gdata_0, w_gdata_1, w_gdata_2, w_gdata_3, w_gdata_4, w_gdata_5, 
        w_gdata_6, w_gdata_7, wptr_0, wptr_1, wptr_2, wptr_3, wptr_4, 
        wptr_5, wptr_6, wptr_7, wptr_8, r_gdata_0, r_gdata_1, r_gdata_2, 
        r_gdata_3, r_gdata_4, r_gdata_5, r_gdata_6, r_gdata_7, rptr_0, 
        rptr_1, rptr_2, rptr_3, rptr_4, rptr_5, rptr_6, rptr_7, 
        rptr_8, w_gcount_0, w_gcount_1, w_gcount_2, w_gcount_3, w_gcount_4, 
        w_gcount_5, w_gcount_6, w_gcount_7, w_gcount_8, r_gcount_0, 
        r_gcount_1, r_gcount_2, r_gcount_3, r_gcount_4, r_gcount_5, 
        r_gcount_6, r_gcount_7, r_gcount_8, w_gcount_r20, w_gcount_r0, 
        w_gcount_r21, w_gcount_r1, w_gcount_r22, w_gcount_r2, w_gcount_r23, 
        w_gcount_r3, w_gcount_r24, w_gcount_r4, w_gcount_r25, w_gcount_r5, 
        w_gcount_r26, w_gcount_r6, w_gcount_r27, w_gcount_r7, w_gcount_r28, 
        w_gcount_r8, r_gcount_w20, r_gcount_w0, r_gcount_w21, r_gcount_w1, 
        r_gcount_w22, r_gcount_w2, r_gcount_w23, r_gcount_w3, r_gcount_w24, 
        r_gcount_w4, r_gcount_w25, r_gcount_w5, r_gcount_w26, r_gcount_w6, 
        r_gcount_w27, r_gcount_w7, r_gcount_w28, r_gcount_w8, rRst, 
        ae_d, af_d, iwcount_0, iwcount_1, w_gctr_ci, iwcount_2, 
        iwcount_3, co0, iwcount_4, iwcount_5, co1, iwcount_6, iwcount_7, 
        co2, iwcount_8, co3, wcount_8, ircount_0, ircount_1, r_gctr_ci, 
        ircount_2, ircount_3, co0_1, ircount_4, ircount_5, co1_1, 
        ircount_6, ircount_7, co2_1, ircount_8, co3_1, rcount_8, 
        cmp_ci, rcount_0, rcount_1, co0_2, rcount_2, rcount_3, co1_2, 
        rcount_4, rcount_5, co2_2, rcount_6, rcount_7, co3_2, empty_cmp_clr, 
        empty_cmp_set, empty_d, empty_d_c, cmp_ci_1, wcount_0, wcount_1, 
        co0_3, wcount_2, wcount_3, co1_3, wcount_4, wcount_5, co2_3, 
        wcount_6, wcount_7, co3_3, full_cmp_clr, full_cmp_set, full_d, 
        full_d_c, iae_setcount_0, iae_setcount_1, ae_set_ctr_ci, iae_setcount_2, 
        iae_setcount_3, co0_4, iae_setcount_4, iae_setcount_5, co1_4, 
        iae_setcount_6, iae_setcount_7, co2_4, iae_setcount_8, co3_4, 
        ae_setcount_8, cmp_ci_2, ae_setcount_0, ae_setcount_1, co0_5, 
        ae_setcount_2, ae_setcount_3, co1_5, ae_setcount_4, ae_setcount_5, 
        co2_5, ae_setcount_6, ae_setcount_7, co3_5, ae_set_cmp_clr, 
        ae_set_cmp_set, ae_set_d, ae_set_d_c, iae_clrcount_0, iae_clrcount_1, 
        ae_clr_ctr_ci, iae_clrcount_2, iae_clrcount_3, co0_6, iae_clrcount_4, 
        iae_clrcount_5, co1_6, iae_clrcount_6, iae_clrcount_7, co2_6, 
        iae_clrcount_8, co3_6, ae_clrcount_8, rden_i, cmp_ci_3, wcount_r0, 
        wcount_r1, ae_clrcount_0, ae_clrcount_1, co0_7, wcount_r2, 
        wcount_r3, ae_clrcount_2, ae_clrcount_3, co1_7, wcount_r4, 
        w_g2b_xor_cluster_0, ae_clrcount_4, ae_clrcount_5, co2_7, wcount_r6, 
        wcount_r7, ae_clrcount_6, ae_clrcount_7, co3_7, ae_clr_cmp_clr, 
        ae_clr_cmp_set, ae_clr_d, ae_clr_d_c, iaf_setcount_0, iaf_setcount_1, 
        af_set_ctr_ci, iaf_setcount_2, iaf_setcount_3, co0_8, iaf_setcount_4, 
        iaf_setcount_5, co1_8, iaf_setcount_6, iaf_setcount_7, co2_8, 
        iaf_setcount_8, co3_8, af_setcount_8, cmp_ci_4, af_setcount_0, 
        af_setcount_1, co0_9, af_setcount_2, af_setcount_3, co1_9, 
        af_setcount_4, af_setcount_5, co2_9, af_setcount_6, af_setcount_7, 
        co3_9, af_set_cmp_clr, af_set_cmp_set, af_set, af_set_c, iaf_clrcount_0, 
        iaf_clrcount_1, af_clr_ctr_ci, iaf_clrcount_2, iaf_clrcount_3, 
        co0_10, iaf_clrcount_4, iaf_clrcount_5, co1_10, iaf_clrcount_6, 
        iaf_clrcount_7, co2_10, iaf_clrcount_8, co3_10, af_clrcount_8, 
        wren_i, cmp_ci_5, rcount_w0, rcount_w1, af_clrcount_0, af_clrcount_1, 
        co0_11, rcount_w2, rcount_w3, af_clrcount_2, af_clrcount_3, 
        co1_11, rcount_w4, r_g2b_xor_cluster_0, af_clrcount_4, af_clrcount_5, 
        co2_11, rcount_w6, rcount_w7, af_clrcount_6, af_clrcount_7, 
        co3_11, af_clr_cmp_clr, af_clr_cmp_set, af_clr, scuba_vhi, 
        scuba_vlo, af_clr_c;
    
    AND2 AND2_t18 (.A(WrEn), .B(invout_1), .Z(wren_i)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(492[15:19])
    ROM16X1A LUT4_30 (.AD0(w_gcount_r24), .AD1(w_gcount_r23), .AD2(w_gcount_r22), 
            .AD3(w_gcount_r21), .DO0(w_g2b_xor_cluster_1)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_30.initval = 16'b0110100110010110;
    ROM16X1A LUT4_29 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_gcount_r28), 
            .AD3(w_gcount_r27), .DO0(wcount_r7)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_29.initval = 16'b0110100110010110;
    ROM16X1A LUT4_28 (.AD0(scuba_vlo), .AD1(w_gcount_r28), .AD2(w_gcount_r27), 
            .AD3(w_gcount_r26), .DO0(wcount_r6)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_28.initval = 16'b0110100110010110;
    ROM16X1A LUT4_27 (.AD0(wcount_r7), .AD1(w_gcount_r26), .AD2(w_gcount_r25), 
            .AD3(w_gcount_r24), .DO0(wcount_r4)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_27.initval = 16'b0110100110010110;
    ROM16X1A LUT4_26 (.AD0(wcount_r6), .AD1(w_gcount_r25), .AD2(w_gcount_r24), 
            .AD3(w_gcount_r23), .DO0(wcount_r3)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_26.initval = 16'b0110100110010110;
    ROM16X1A LUT4_25 (.AD0(w_g2b_xor_cluster_0), .AD1(w_gcount_r24), .AD2(w_gcount_r23), 
            .AD3(w_gcount_r22), .DO0(wcount_r2)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_25.initval = 16'b0110100110010110;
    ROM16X1A LUT4_24 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r1)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_24.initval = 16'b0110100110010110;
    ROM16X1A LUT4_23 (.AD0(scuba_vlo), .AD1(w_gcount_r20), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r0)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_23.initval = 16'b0110100110010110;
    ROM16X1A LUT4_22 (.AD0(r_gcount_w28), .AD1(r_gcount_w27), .AD2(r_gcount_w26), 
            .AD3(r_gcount_w25), .DO0(r_g2b_xor_cluster_0)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_22.initval = 16'b0110100110010110;
    ROM16X1A LUT4_21 (.AD0(r_gcount_w24), .AD1(r_gcount_w23), .AD2(r_gcount_w22), 
            .AD3(r_gcount_w21), .DO0(r_g2b_xor_cluster_1)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_21.initval = 16'b0110100110010110;
    ROM16X1A LUT4_20 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_gcount_w28), 
            .AD3(r_gcount_w27), .DO0(rcount_w7)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_20.initval = 16'b0110100110010110;
    ROM16X1A LUT4_19 (.AD0(scuba_vlo), .AD1(r_gcount_w28), .AD2(r_gcount_w27), 
            .AD3(r_gcount_w26), .DO0(rcount_w6)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_19.initval = 16'b0110100110010110;
    ROM16X1A LUT4_18 (.AD0(rcount_w7), .AD1(r_gcount_w26), .AD2(r_gcount_w25), 
            .AD3(r_gcount_w24), .DO0(rcount_w4)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_18.initval = 16'b0110100110010110;
    ROM16X1A LUT4_17 (.AD0(rcount_w6), .AD1(r_gcount_w25), .AD2(r_gcount_w24), 
            .AD3(r_gcount_w23), .DO0(rcount_w3)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_17.initval = 16'b0110100110010110;
    ROM16X1A LUT4_16 (.AD0(r_g2b_xor_cluster_0), .AD1(r_gcount_w24), .AD2(r_gcount_w23), 
            .AD3(r_gcount_w22), .DO0(rcount_w2)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_16.initval = 16'b0110100110010110;
    ROM16X1A LUT4_15 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w1)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_15.initval = 16'b0110100110010110;
    ROM16X1A LUT4_14 (.AD0(scuba_vlo), .AD1(r_gcount_w20), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w0)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_14.initval = 16'b0110100110010110;
    ROM16X1A LUT4_13 (.AD0(scuba_vlo), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(rptr_8), .DO0(empty_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_13.initval = 16'b0000010000010000;
    ROM16X1A LUT4_12 (.AD0(scuba_vlo), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(rptr_8), .DO0(empty_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_12.initval = 16'b0001000000000100;
    ROM16X1A LUT4_11 (.AD0(scuba_vlo), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(wptr_8), .DO0(full_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_11.initval = 16'b0000000101000000;
    ROM16X1A LUT4_10 (.AD0(scuba_vlo), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(wptr_8), .DO0(full_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_10.initval = 16'b0100000000000001;
    ROM16X1A LUT4_9 (.AD0(rptr_8), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(ae_setcount_8), .DO0(ae_set_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_9.initval = 16'b0001001111001000;
    ROM16X1A LUT4_8 (.AD0(rptr_8), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(ae_setcount_8), .DO0(ae_set_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_8.initval = 16'b0010000000000100;
    ROM16X1A LUT4_7 (.AD0(rptr_8), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(ae_clrcount_8), .DO0(ae_clr_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_7.initval = 16'b0001001111001000;
    ROM16X1A LUT4_6 (.AD0(rptr_8), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(ae_clrcount_8), .DO0(ae_clr_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_6.initval = 16'b0010000000000100;
    ROM16X1A LUT4_5 (.AD0(scuba_vlo), .AD1(ae_clr_d), .AD2(ae_set_d), 
            .AD3(AlmostEmpty), .DO0(ae_d)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_5.initval = 16'b0100010001010000;
    ROM16X1A LUT4_4 (.AD0(wptr_8), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(af_setcount_8), .DO0(af_set_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_4.initval = 16'b0100110000110010;
    ROM16X1A LUT4_3 (.AD0(wptr_8), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(af_setcount_8), .DO0(af_set_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_3.initval = 16'b1000000000000001;
    ROM16X1A LUT4_2 (.AD0(wptr_8), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(af_clrcount_8), .DO0(af_clr_cmp_set)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_2.initval = 16'b0100110000110010;
    ROM16X1A LUT4_1 (.AD0(wptr_8), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(af_clrcount_8), .DO0(af_clr_cmp_clr)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_1.initval = 16'b1000000000000001;
    ROM16X1A LUT4_0 (.AD0(scuba_vlo), .AD1(af_clr), .AD2(af_set), .AD3(AlmostFull), 
            .DO0(af_d)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_0.initval = 16'b0100010001010000;
    PDPW8KE pdp_ram_0_0_1 (.DI0(Data[0]), .DI1(Data[1]), .DI2(Data[2]), 
            .DI3(Data[3]), .DI4(Data[4]), .DI5(Data[5]), .DI6(Data[6]), 
            .DI7(Data[7]), .DI8(Data[8]), .DI9(Data[9]), .DI10(Data[10]), 
            .DI11(Data[11]), .DI12(Data[12]), .DI13(Data[13]), .DI14(Data[14]), 
            .DI15(Data[15]), .DI16(Data[16]), .DI17(Data[17]), .ADW0(wptr_0), 
            .ADW1(wptr_1), .ADW2(wptr_2), .ADW3(wptr_3), .ADW4(wptr_4), 
            .ADW5(wptr_5), .ADW6(wptr_6), .ADW7(wptr_7), .ADW8(scuba_vlo), 
            .BE0(scuba_vhi), .BE1(scuba_vhi), .CEW(wren_i), .CLKW(WrClock), 
            .CSW0(scuba_vhi), .CSW1(scuba_vlo), .CSW2(scuba_vlo), .ADR0(scuba_vlo), 
            .ADR1(scuba_vlo), .ADR2(scuba_vlo), .ADR3(scuba_vlo), .ADR4(rptr_0), 
            .ADR5(rptr_1), .ADR6(rptr_2), .ADR7(rptr_3), .ADR8(rptr_4), 
            .ADR9(rptr_5), .ADR10(rptr_6), .ADR11(rptr_7), .ADR12(scuba_vlo), 
            .CER(rden_i), .OCER(rden_i), .CLKR(RdClock), .CSR0(scuba_vlo), 
            .CSR1(scuba_vlo), .CSR2(scuba_vlo), .RST(Reset), .DO0(Q[9]), 
            .DO1(Q[10]), .DO2(Q[11]), .DO3(Q[12]), .DO4(Q[13]), .DO5(Q[14]), 
            .DO6(Q[15]), .DO7(Q[16]), .DO8(Q[17]), .DO9(Q[0]), .DO10(Q[1]), 
            .DO11(Q[2]), .DO12(Q[3]), .DO13(Q[4]), .DO14(Q[5]), .DO15(Q[6]), 
            .DO16(Q[7]), .DO17(Q[8])) /* synthesis syn_black_box=true, MEM_LPC_FILE="cross_domain_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
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
    FD1P3DX FF_128 (.D(iwcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(773[13:20])
    defparam FF_128.GSR = "ENABLED";
    FD1P3DX FF_127 (.D(iwcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(777[13:20])
    defparam FF_127.GSR = "ENABLED";
    FD1P3DX FF_126 (.D(iwcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(781[13:20])
    defparam FF_126.GSR = "ENABLED";
    FD1P3DX FF_125 (.D(iwcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(785[13:20])
    defparam FF_125.GSR = "ENABLED";
    FD1P3DX FF_124 (.D(iwcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(789[13:20])
    defparam FF_124.GSR = "ENABLED";
    FD1P3DX FF_123 (.D(iwcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(793[13:20])
    defparam FF_123.GSR = "ENABLED";
    FD1P3DX FF_122 (.D(iwcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(797[13:20])
    defparam FF_122.GSR = "ENABLED";
    FD1P3DX FF_121 (.D(iwcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(801[13:20])
    defparam FF_121.GSR = "ENABLED";
    FD1P3DX FF_120 (.D(w_gdata_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(805[13:20])
    defparam FF_120.GSR = "ENABLED";
    FD1P3DX FF_119 (.D(w_gdata_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(809[13:20])
    defparam FF_119.GSR = "ENABLED";
    FD1P3DX FF_118 (.D(w_gdata_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(813[13:20])
    defparam FF_118.GSR = "ENABLED";
    FD1P3DX FF_117 (.D(w_gdata_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(817[13:20])
    defparam FF_117.GSR = "ENABLED";
    FD1P3DX FF_116 (.D(w_gdata_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(821[13:20])
    defparam FF_116.GSR = "ENABLED";
    FD1P3DX FF_115 (.D(w_gdata_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(825[13:20])
    defparam FF_115.GSR = "ENABLED";
    FD1P3DX FF_114 (.D(w_gdata_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(829[13:20])
    defparam FF_114.GSR = "ENABLED";
    FD1P3DX FF_113 (.D(w_gdata_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(833[13:20])
    defparam FF_113.GSR = "ENABLED";
    FD1P3DX FF_112 (.D(wcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(837[13:20])
    defparam FF_112.GSR = "ENABLED";
    FD1P3DX FF_111 (.D(wcount_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(841[13:20])
    defparam FF_111.GSR = "ENABLED";
    FD1P3DX FF_110 (.D(wcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(845[13:20])
    defparam FF_110.GSR = "ENABLED";
    FD1P3DX FF_109 (.D(wcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(849[13:20])
    defparam FF_109.GSR = "ENABLED";
    FD1P3DX FF_108 (.D(wcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(853[13:20])
    defparam FF_108.GSR = "ENABLED";
    FD1P3DX FF_107 (.D(wcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(857[13:20])
    defparam FF_107.GSR = "ENABLED";
    FD1P3DX FF_106 (.D(wcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(861[13:20])
    defparam FF_106.GSR = "ENABLED";
    FD1P3DX FF_105 (.D(wcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(865[13:20])
    defparam FF_105.GSR = "ENABLED";
    FD1P3DX FF_104 (.D(wcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(869[13:20])
    defparam FF_104.GSR = "ENABLED";
    FD1P3DX FF_103 (.D(wcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(873[13:20])
    defparam FF_103.GSR = "ENABLED";
    FD1P3BX FF_102 (.D(ircount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(rcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(877[13:20])
    defparam FF_102.GSR = "ENABLED";
    FD1P3DX FF_101 (.D(ircount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(881[13:20])
    defparam FF_101.GSR = "ENABLED";
    FD1P3DX FF_100 (.D(ircount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(885[13:20])
    defparam FF_100.GSR = "ENABLED";
    FD1P3DX FF_99 (.D(ircount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(889[12:19])
    defparam FF_99.GSR = "ENABLED";
    FD1P3DX FF_98 (.D(ircount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(893[12:19])
    defparam FF_98.GSR = "ENABLED";
    FD1P3DX FF_97 (.D(ircount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(897[12:19])
    defparam FF_97.GSR = "ENABLED";
    FD1P3DX FF_96 (.D(ircount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(901[12:19])
    defparam FF_96.GSR = "ENABLED";
    FD1P3DX FF_95 (.D(ircount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(905[12:19])
    defparam FF_95.GSR = "ENABLED";
    FD1P3DX FF_94 (.D(ircount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(909[12:19])
    defparam FF_94.GSR = "ENABLED";
    FD1P3DX FF_93 (.D(r_gdata_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(913[12:19])
    defparam FF_93.GSR = "ENABLED";
    FD1P3DX FF_92 (.D(r_gdata_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(917[12:19])
    defparam FF_92.GSR = "ENABLED";
    FD1P3DX FF_91 (.D(r_gdata_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(921[12:19])
    defparam FF_91.GSR = "ENABLED";
    FD1P3DX FF_90 (.D(r_gdata_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(925[12:19])
    defparam FF_90.GSR = "ENABLED";
    FD1P3DX FF_89 (.D(r_gdata_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(929[12:19])
    defparam FF_89.GSR = "ENABLED";
    FD1P3DX FF_88 (.D(r_gdata_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(933[12:19])
    defparam FF_88.GSR = "ENABLED";
    FD1P3DX FF_87 (.D(r_gdata_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(937[12:19])
    defparam FF_87.GSR = "ENABLED";
    FD1P3DX FF_86 (.D(r_gdata_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(941[12:19])
    defparam FF_86.GSR = "ENABLED";
    FD1P3DX FF_85 (.D(rcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(945[12:19])
    defparam FF_85.GSR = "ENABLED";
    FD1P3DX FF_84 (.D(rcount_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(949[12:19])
    defparam FF_84.GSR = "ENABLED";
    FD1P3DX FF_83 (.D(rcount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(953[12:19])
    defparam FF_83.GSR = "ENABLED";
    FD1P3DX FF_82 (.D(rcount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(957[12:19])
    defparam FF_82.GSR = "ENABLED";
    FD1P3DX FF_81 (.D(rcount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(961[12:19])
    defparam FF_81.GSR = "ENABLED";
    FD1P3DX FF_80 (.D(rcount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(965[12:19])
    defparam FF_80.GSR = "ENABLED";
    FD1P3DX FF_79 (.D(rcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(969[12:19])
    defparam FF_79.GSR = "ENABLED";
    FD1P3DX FF_78 (.D(rcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(973[12:19])
    defparam FF_78.GSR = "ENABLED";
    FD1P3DX FF_77 (.D(rcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(977[12:19])
    defparam FF_77.GSR = "ENABLED";
    FD1P3DX FF_76 (.D(rcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(981[12:19])
    defparam FF_76.GSR = "ENABLED";
    FD1S3DX FF_75 (.D(w_gcount_0), .CK(RdClock), .CD(Reset), .Q(w_gcount_r0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(985[12:19])
    defparam FF_75.GSR = "ENABLED";
    FD1S3DX FF_74 (.D(w_gcount_1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(988[12:19])
    defparam FF_74.GSR = "ENABLED";
    FD1S3DX FF_73 (.D(w_gcount_2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(991[12:19])
    defparam FF_73.GSR = "ENABLED";
    FD1S3DX FF_72 (.D(w_gcount_3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(994[12:19])
    defparam FF_72.GSR = "ENABLED";
    FD1S3DX FF_71 (.D(w_gcount_4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(997[12:19])
    defparam FF_71.GSR = "ENABLED";
    FD1S3DX FF_70 (.D(w_gcount_5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1000[12:19])
    defparam FF_70.GSR = "ENABLED";
    FD1S3DX FF_69 (.D(w_gcount_6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1003[12:19])
    defparam FF_69.GSR = "ENABLED";
    FD1S3DX FF_68 (.D(w_gcount_7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1006[12:19])
    defparam FF_68.GSR = "ENABLED";
    FD1S3DX FF_67 (.D(w_gcount_8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1009[12:19])
    defparam FF_67.GSR = "ENABLED";
    FD1S3DX FF_66 (.D(r_gcount_0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1012[12:19])
    defparam FF_66.GSR = "ENABLED";
    FD1S3DX FF_65 (.D(r_gcount_1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1015[12:19])
    defparam FF_65.GSR = "ENABLED";
    FD1S3DX FF_64 (.D(r_gcount_2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1018[12:19])
    defparam FF_64.GSR = "ENABLED";
    FD1S3DX FF_63 (.D(r_gcount_3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1021[12:19])
    defparam FF_63.GSR = "ENABLED";
    FD1S3DX FF_62 (.D(r_gcount_4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1024[12:19])
    defparam FF_62.GSR = "ENABLED";
    FD1S3DX FF_61 (.D(r_gcount_5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1027[12:19])
    defparam FF_61.GSR = "ENABLED";
    FD1S3DX FF_60 (.D(r_gcount_6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1030[12:19])
    defparam FF_60.GSR = "ENABLED";
    FD1S3DX FF_59 (.D(r_gcount_7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1033[12:19])
    defparam FF_59.GSR = "ENABLED";
    FD1S3DX FF_58 (.D(r_gcount_8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1036[12:19])
    defparam FF_58.GSR = "ENABLED";
    FD1S3DX FF_57 (.D(w_gcount_r0), .CK(RdClock), .CD(Reset), .Q(w_gcount_r20)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1039[12:19])
    defparam FF_57.GSR = "ENABLED";
    FD1S3DX FF_56 (.D(w_gcount_r1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r21)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1043[12:19])
    defparam FF_56.GSR = "ENABLED";
    FD1S3DX FF_55 (.D(w_gcount_r2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r22)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1047[12:19])
    defparam FF_55.GSR = "ENABLED";
    FD1S3DX FF_54 (.D(w_gcount_r3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r23)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1051[12:19])
    defparam FF_54.GSR = "ENABLED";
    FD1S3DX FF_53 (.D(w_gcount_r4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r24)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1055[12:19])
    defparam FF_53.GSR = "ENABLED";
    FD1S3DX FF_52 (.D(w_gcount_r5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r25)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1059[12:19])
    defparam FF_52.GSR = "ENABLED";
    FD1S3DX FF_51 (.D(w_gcount_r6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r26)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1063[12:19])
    defparam FF_51.GSR = "ENABLED";
    FD1S3DX FF_50 (.D(w_gcount_r7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r27)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1067[12:19])
    defparam FF_50.GSR = "ENABLED";
    FD1S3DX FF_49 (.D(w_gcount_r8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r28)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1071[12:19])
    defparam FF_49.GSR = "ENABLED";
    FD1S3DX FF_48 (.D(r_gcount_w0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w20)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1075[12:19])
    defparam FF_48.GSR = "ENABLED";
    FD1S3DX FF_47 (.D(r_gcount_w1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w21)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1078[12:19])
    defparam FF_47.GSR = "ENABLED";
    FD1S3DX FF_46 (.D(r_gcount_w2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w22)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1081[12:19])
    defparam FF_46.GSR = "ENABLED";
    FD1S3DX FF_45 (.D(r_gcount_w3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w23)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1084[12:19])
    defparam FF_45.GSR = "ENABLED";
    FD1S3DX FF_44 (.D(r_gcount_w4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w24)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1087[12:19])
    defparam FF_44.GSR = "ENABLED";
    FD1S3DX FF_43 (.D(r_gcount_w5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w25)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1090[12:19])
    defparam FF_43.GSR = "ENABLED";
    FD1S3DX FF_42 (.D(r_gcount_w6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w26)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1093[12:19])
    defparam FF_42.GSR = "ENABLED";
    FD1S3DX FF_41 (.D(r_gcount_w7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w27)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1096[12:19])
    defparam FF_41.GSR = "ENABLED";
    FD1S3DX FF_40 (.D(r_gcount_w8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w28)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1099[12:19])
    defparam FF_40.GSR = "ENABLED";
    FD1S3BX FF_39 (.D(empty_d), .CK(RdClock), .PD(rRst), .Q(Empty)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1102[12:19])
    defparam FF_39.GSR = "ENABLED";
    FD1S3DX FF_38 (.D(full_d), .CK(WrClock), .CD(Reset), .Q(Full)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1105[12:19])
    defparam FF_38.GSR = "ENABLED";
    FD1P3BX FF_37 (.D(iae_setcount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1108[12:19])
    defparam FF_37.GSR = "ENABLED";
    FD1P3BX FF_36 (.D(iae_setcount_1), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1112[12:19])
    defparam FF_36.GSR = "ENABLED";
    FD1P3DX FF_35 (.D(iae_setcount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1116[12:19])
    defparam FF_35.GSR = "ENABLED";
    FD1P3BX FF_34 (.D(iae_setcount_3), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_setcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1120[12:19])
    defparam FF_34.GSR = "ENABLED";
    FD1P3DX FF_33 (.D(iae_setcount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1124[12:19])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(iae_setcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1128[12:19])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(iae_setcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1132[12:19])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(iae_setcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1136[12:19])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(iae_setcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_setcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1140[12:19])
    defparam FF_29.GSR = "ENABLED";
    FD1P3BX FF_28 (.D(iae_clrcount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_clrcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1144[12:19])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(iae_clrcount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1148[12:19])
    defparam FF_27.GSR = "ENABLED";
    FD1P3BX FF_26 (.D(iae_clrcount_2), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_clrcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1152[12:19])
    defparam FF_26.GSR = "ENABLED";
    FD1P3BX FF_25 (.D(iae_clrcount_3), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(ae_clrcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1156[12:19])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(iae_clrcount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1160[12:19])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(iae_clrcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1164[12:19])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(iae_clrcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1168[12:19])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(iae_clrcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1172[12:19])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(iae_clrcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(ae_clrcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1176[12:19])
    defparam FF_20.GSR = "ENABLED";
    FD1S3BX FF_19 (.D(ae_d), .CK(RdClock), .PD(rRst), .Q(AlmostEmpty)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1180[12:19])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(iaf_setcount_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1183[12:19])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(iaf_setcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1187[12:19])
    defparam FF_17.GSR = "ENABLED";
    FD1P3BX FF_16 (.D(iaf_setcount_2), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1191[12:19])
    defparam FF_16.GSR = "ENABLED";
    FD1P3BX FF_15 (.D(iaf_setcount_3), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1195[12:19])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(iaf_setcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1199[12:19])
    defparam FF_14.GSR = "ENABLED";
    FD1P3BX FF_13 (.D(iaf_setcount_5), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1203[12:19])
    defparam FF_13.GSR = "ENABLED";
    FD1P3BX FF_12 (.D(iaf_setcount_6), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1207[12:19])
    defparam FF_12.GSR = "ENABLED";
    FD1P3BX FF_11 (.D(iaf_setcount_7), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_setcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1211[12:19])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(iaf_setcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_setcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1215[12:19])
    defparam FF_10.GSR = "ENABLED";
    FD1P3BX FF_9 (.D(iaf_clrcount_0), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1219[11:18])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(iaf_clrcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_1)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1223[11:18])
    defparam FF_8.GSR = "ENABLED";
    FD1P3BX FF_7 (.D(iaf_clrcount_2), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_2)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1227[11:18])
    defparam FF_7.GSR = "ENABLED";
    FD1P3BX FF_6 (.D(iaf_clrcount_3), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_3)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1231[11:18])
    defparam FF_6.GSR = "ENABLED";
    FD1P3BX FF_5 (.D(iaf_clrcount_4), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_4)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1235[11:18])
    defparam FF_5.GSR = "ENABLED";
    FD1P3BX FF_4 (.D(iaf_clrcount_5), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_5)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1239[11:18])
    defparam FF_4.GSR = "ENABLED";
    FD1P3BX FF_3 (.D(iaf_clrcount_6), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_6)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1243[11:18])
    defparam FF_3.GSR = "ENABLED";
    FD1P3BX FF_2 (.D(iaf_clrcount_7), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(af_clrcount_7)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1247[11:18])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(iaf_clrcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(af_clrcount_8)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1251[11:18])
    defparam FF_1.GSR = "ENABLED";
    FD1S3DX FF_0 (.D(af_d), .CK(WrClock), .CD(Reset), .Q(AlmostFull)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1255[11:18])
    defparam FF_0.GSR = "ENABLED";
    CCU2C w_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(w_gctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1258[17:22])
    defparam w_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam w_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam w_gctr_cia.INJECT1_0 = "NO";
    defparam w_gctr_cia.INJECT1_1 = "NO";
    CCU2C w_gctr_0 (.A0(wcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(w_gctr_ci), .COUT(co0), .S0(iwcount_0), .S1(iwcount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1265[15:20])
    defparam w_gctr_0.INIT0 = 16'b0110011010101010;
    defparam w_gctr_0.INIT1 = 16'b0110011010101010;
    defparam w_gctr_0.INJECT1_0 = "NO";
    defparam w_gctr_0.INJECT1_1 = "NO";
    CCU2C w_gctr_1 (.A0(wcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0), .COUT(co1), .S0(iwcount_2), .S1(iwcount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1273[15:20])
    defparam w_gctr_1.INIT0 = 16'b0110011010101010;
    defparam w_gctr_1.INIT1 = 16'b0110011010101010;
    defparam w_gctr_1.INJECT1_0 = "NO";
    defparam w_gctr_1.INJECT1_1 = "NO";
    CCU2C w_gctr_2 (.A0(wcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1), .COUT(co2), .S0(iwcount_4), .S1(iwcount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1281[15:20])
    defparam w_gctr_2.INIT0 = 16'b0110011010101010;
    defparam w_gctr_2.INIT1 = 16'b0110011010101010;
    defparam w_gctr_2.INJECT1_0 = "NO";
    defparam w_gctr_2.INJECT1_1 = "NO";
    CCU2C w_gctr_3 (.A0(wcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2), .COUT(co3), .S0(iwcount_6), .S1(iwcount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1289[15:20])
    defparam w_gctr_3.INIT0 = 16'b0110011010101010;
    defparam w_gctr_3.INIT1 = 16'b0110011010101010;
    defparam w_gctr_3.INJECT1_0 = "NO";
    defparam w_gctr_3.INJECT1_1 = "NO";
    CCU2C w_gctr_4 (.A0(wcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3), .S0(iwcount_8)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1297[15:20])
    defparam w_gctr_4.INIT0 = 16'b0110011010101010;
    defparam w_gctr_4.INIT1 = 16'b0110011010101010;
    defparam w_gctr_4.INJECT1_0 = "NO";
    defparam w_gctr_4.INJECT1_1 = "NO";
    CCU2C r_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(r_gctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1304[17:22])
    defparam r_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam r_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam r_gctr_cia.INJECT1_0 = "NO";
    defparam r_gctr_cia.INJECT1_1 = "NO";
    CCU2C r_gctr_0 (.A0(rcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(r_gctr_ci), .COUT(co0_1), .S0(ircount_0), .S1(ircount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1311[15:20])
    defparam r_gctr_0.INIT0 = 16'b0110011010101010;
    defparam r_gctr_0.INIT1 = 16'b0110011010101010;
    defparam r_gctr_0.INJECT1_0 = "NO";
    defparam r_gctr_0.INJECT1_1 = "NO";
    CCU2C r_gctr_1 (.A0(rcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_1), .COUT(co1_1), .S0(ircount_2), .S1(ircount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1319[15:20])
    defparam r_gctr_1.INIT0 = 16'b0110011010101010;
    defparam r_gctr_1.INIT1 = 16'b0110011010101010;
    defparam r_gctr_1.INJECT1_0 = "NO";
    defparam r_gctr_1.INJECT1_1 = "NO";
    CCU2C r_gctr_2 (.A0(rcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_1), .COUT(co2_1), .S0(ircount_4), .S1(ircount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1327[15:20])
    defparam r_gctr_2.INIT0 = 16'b0110011010101010;
    defparam r_gctr_2.INIT1 = 16'b0110011010101010;
    defparam r_gctr_2.INJECT1_0 = "NO";
    defparam r_gctr_2.INJECT1_1 = "NO";
    CCU2C r_gctr_3 (.A0(rcount_6), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_7), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_1), .COUT(co3_1), .S0(ircount_6), .S1(ircount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1335[15:20])
    defparam r_gctr_3.INIT0 = 16'b0110011010101010;
    defparam r_gctr_3.INIT1 = 16'b0110011010101010;
    defparam r_gctr_3.INJECT1_0 = "NO";
    defparam r_gctr_3.INJECT1_1 = "NO";
    CCU2C r_gctr_4 (.A0(rcount_8), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3_1), .S0(ircount_8)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1343[15:20])
    defparam r_gctr_4.INIT0 = 16'b0110011010101010;
    defparam r_gctr_4.INIT1 = 16'b0110011010101010;
    defparam r_gctr_4.INJECT1_0 = "NO";
    defparam r_gctr_4.INJECT1_1 = "NO";
    CCU2C empty_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1351[21:26])
    defparam empty_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INJECT1_0 = "NO";
    defparam empty_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C empty_cmp_0 (.A0(rcount_0), .B0(wcount_r0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_1), .B1(wcount_r1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci), .COUT(co0_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1358[18:23])
    defparam empty_cmp_0.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_0.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_0.INJECT1_0 = "NO";
    defparam empty_cmp_0.INJECT1_1 = "NO";
    CCU2C empty_cmp_1 (.A0(rcount_2), .B0(wcount_r2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_3), .B1(wcount_r3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_2), .COUT(co1_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1365[18:23])
    defparam empty_cmp_1.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_1.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_1.INJECT1_0 = "NO";
    defparam empty_cmp_1.INJECT1_1 = "NO";
    CCU2C empty_cmp_2 (.A0(rcount_4), .B0(wcount_r4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_5), .B1(w_g2b_xor_cluster_0), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_2), .COUT(co2_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1372[18:23])
    defparam empty_cmp_2.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_2.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_2.INJECT1_0 = "NO";
    defparam empty_cmp_2.INJECT1_1 = "NO";
    CCU2C empty_cmp_3 (.A0(rcount_6), .B0(wcount_r6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_7), .B1(wcount_r7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_2), .COUT(co3_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1380[18:23])
    defparam empty_cmp_3.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_3.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_3.INJECT1_0 = "NO";
    defparam empty_cmp_3.INJECT1_1 = "NO";
    CCU2C empty_cmp_4 (.A0(empty_cmp_set), .B0(empty_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_2), .COUT(empty_d_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1387[18:23])
    defparam empty_cmp_4.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_4.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_4.INJECT1_0 = "NO";
    defparam empty_cmp_4.INJECT1_1 = "NO";
    CCU2C a0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(empty_d_c), .S0(empty_d)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1395[9:14])
    defparam a0.INIT0 = 16'b0110011010101010;
    defparam a0.INIT1 = 16'b0110011010101010;
    defparam a0.INJECT1_0 = "NO";
    defparam a0.INJECT1_1 = "NO";
    CCU2C full_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wren_i), .B1(wren_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1403[20:25])
    defparam full_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INJECT1_0 = "NO";
    defparam full_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C full_cmp_0 (.A0(wcount_0), .B0(rcount_w0), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(rcount_w1), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ci_1), .COUT(co0_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1410[17:22])
    defparam full_cmp_0.INIT0 = 16'b1001100110101010;
    defparam full_cmp_0.INIT1 = 16'b1001100110101010;
    defparam full_cmp_0.INJECT1_0 = "NO";
    defparam full_cmp_0.INJECT1_1 = "NO";
    CCU2C full_cmp_1 (.A0(wcount_2), .B0(rcount_w2), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(rcount_w3), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_3), .COUT(co1_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1418[17:22])
    defparam full_cmp_1.INIT0 = 16'b1001100110101010;
    defparam full_cmp_1.INIT1 = 16'b1001100110101010;
    defparam full_cmp_1.INJECT1_0 = "NO";
    defparam full_cmp_1.INJECT1_1 = "NO";
    CCU2C full_cmp_2 (.A0(wcount_4), .B0(rcount_w4), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(r_g2b_xor_cluster_0), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_3), .COUT(co2_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1425[17:22])
    defparam full_cmp_2.INIT0 = 16'b1001100110101010;
    defparam full_cmp_2.INIT1 = 16'b1001100110101010;
    defparam full_cmp_2.INJECT1_0 = "NO";
    defparam full_cmp_2.INJECT1_1 = "NO";
    CCU2C full_cmp_3 (.A0(wcount_6), .B0(rcount_w6), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_7), .B1(rcount_w7), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2_3), .COUT(co3_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1433[17:22])
    defparam full_cmp_3.INIT0 = 16'b1001100110101010;
    defparam full_cmp_3.INIT1 = 16'b1001100110101010;
    defparam full_cmp_3.INJECT1_0 = "NO";
    defparam full_cmp_3.INJECT1_1 = "NO";
    CCU2C full_cmp_4 (.A0(full_cmp_set), .B0(full_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_3), .COUT(full_d_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1440[17:22])
    defparam full_cmp_4.INIT0 = 16'b1001100110101010;
    defparam full_cmp_4.INIT1 = 16'b1001100110101010;
    defparam full_cmp_4.INJECT1_0 = "NO";
    defparam full_cmp_4.INJECT1_1 = "NO";
    CCU2C a1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(full_d_c), .S0(full_d)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1448[9:14])
    defparam a1.INIT0 = 16'b0110011010101010;
    defparam a1.INIT1 = 16'b0110011010101010;
    defparam a1.INJECT1_0 = "NO";
    defparam a1.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(ae_set_ctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1456[21:26])
    defparam ae_set_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_cia.INJECT1_0 = "NO";
    defparam ae_set_ctr_cia.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_0 (.A0(ae_setcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(ae_set_ctr_ci), .COUT(co0_4), .S0(iae_setcount_0), 
          .S1(iae_setcount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1464[19:24])
    defparam ae_set_ctr_0.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_0.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_0.INJECT1_0 = "NO";
    defparam ae_set_ctr_0.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_1 (.A0(ae_setcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_4), .COUT(co1_4), .S0(iae_setcount_2), 
          .S1(iae_setcount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1472[19:24])
    defparam ae_set_ctr_1.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_1.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_1.INJECT1_0 = "NO";
    defparam ae_set_ctr_1.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_2 (.A0(ae_setcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_4), .COUT(co2_4), .S0(iae_setcount_4), 
          .S1(iae_setcount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1480[19:24])
    defparam ae_set_ctr_2.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_2.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_2.INJECT1_0 = "NO";
    defparam ae_set_ctr_2.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_3 (.A0(ae_setcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_4), .COUT(co3_4), .S0(iae_setcount_6), 
          .S1(iae_setcount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1488[19:24])
    defparam ae_set_ctr_3.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_3.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_3.INJECT1_0 = "NO";
    defparam ae_set_ctr_3.INJECT1_1 = "NO";
    CCU2C ae_set_ctr_4 (.A0(ae_setcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_4), .S0(iae_setcount_8)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1496[19:24])
    defparam ae_set_ctr_4.INIT0 = 16'b0110011010101010;
    defparam ae_set_ctr_4.INIT1 = 16'b0110011010101010;
    defparam ae_set_ctr_4.INJECT1_0 = "NO";
    defparam ae_set_ctr_4.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_2)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1504[22:27])
    defparam ae_set_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam ae_set_cmp_ci_a.INJECT1_0 = "NO";
    defparam ae_set_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_0 (.A0(ae_setcount_0), .B0(wcount_r0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_1), .B1(wcount_r1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_2), .COUT(co0_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1511[19:24])
    defparam ae_set_cmp_0.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_0.INJECT1_0 = "NO";
    defparam ae_set_cmp_0.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_1 (.A0(ae_setcount_2), .B0(wcount_r2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_3), .B1(wcount_r3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_5), .COUT(co1_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1519[19:24])
    defparam ae_set_cmp_1.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_1.INJECT1_0 = "NO";
    defparam ae_set_cmp_1.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_2 (.A0(ae_setcount_4), .B0(wcount_r4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_5), .B1(w_g2b_xor_cluster_0), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co1_5), .COUT(co2_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1526[19:24])
    defparam ae_set_cmp_2.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_2.INJECT1_0 = "NO";
    defparam ae_set_cmp_2.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_3 (.A0(ae_setcount_6), .B0(wcount_r6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_setcount_7), .B1(wcount_r7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_5), .COUT(co3_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1534[19:24])
    defparam ae_set_cmp_3.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_3.INJECT1_0 = "NO";
    defparam ae_set_cmp_3.INJECT1_1 = "NO";
    CCU2C ae_set_cmp_4 (.A0(ae_set_cmp_set), .B0(ae_set_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_5), .COUT(ae_set_d_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1541[19:24])
    defparam ae_set_cmp_4.INIT0 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INIT1 = 16'b1001100110101010;
    defparam ae_set_cmp_4.INJECT1_0 = "NO";
    defparam ae_set_cmp_4.INJECT1_1 = "NO";
    CCU2C a2 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(ae_set_d_c), .S0(ae_set_d)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1549[9:14])
    defparam a2.INIT0 = 16'b0110011010101010;
    defparam a2.INIT1 = 16'b0110011010101010;
    defparam a2.INJECT1_0 = "NO";
    defparam a2.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(ae_clr_ctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1557[21:26])
    defparam ae_clr_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_cia.INJECT1_0 = "NO";
    defparam ae_clr_ctr_cia.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_0 (.A0(ae_clrcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(ae_clr_ctr_ci), .COUT(co0_6), .S0(iae_clrcount_0), 
          .S1(iae_clrcount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1565[19:24])
    defparam ae_clr_ctr_0.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_0.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_0.INJECT1_0 = "NO";
    defparam ae_clr_ctr_0.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_1 (.A0(ae_clrcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_6), .COUT(co1_6), .S0(iae_clrcount_2), 
          .S1(iae_clrcount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1573[19:24])
    defparam ae_clr_ctr_1.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_1.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_1.INJECT1_0 = "NO";
    defparam ae_clr_ctr_1.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_2 (.A0(ae_clrcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_6), .COUT(co2_6), .S0(iae_clrcount_4), 
          .S1(iae_clrcount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1581[19:24])
    defparam ae_clr_ctr_2.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_2.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_2.INJECT1_0 = "NO";
    defparam ae_clr_ctr_2.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_3 (.A0(ae_clrcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_6), .COUT(co3_6), .S0(iae_clrcount_6), 
          .S1(iae_clrcount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1589[19:24])
    defparam ae_clr_ctr_3.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_3.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_3.INJECT1_0 = "NO";
    defparam ae_clr_ctr_3.INJECT1_1 = "NO";
    CCU2C ae_clr_ctr_4 (.A0(ae_clrcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_6), .S0(iae_clrcount_8)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1597[19:24])
    defparam ae_clr_ctr_4.INIT0 = 16'b0110011010101010;
    defparam ae_clr_ctr_4.INIT1 = 16'b0110011010101010;
    defparam ae_clr_ctr_4.INJECT1_0 = "NO";
    defparam ae_clr_ctr_4.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1605[22:27])
    defparam ae_clr_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam ae_clr_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam ae_clr_cmp_ci_a.INJECT1_0 = "NO";
    defparam ae_clr_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_0 (.A0(ae_clrcount_0), .B0(wcount_r0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_1), .B1(wcount_r1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_3), .COUT(co0_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1612[19:24])
    defparam ae_clr_cmp_0.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_0.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_0.INJECT1_0 = "NO";
    defparam ae_clr_cmp_0.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_1 (.A0(ae_clrcount_2), .B0(wcount_r2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_3), .B1(wcount_r3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_7), .COUT(co1_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1620[19:24])
    defparam ae_clr_cmp_1.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_1.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_1.INJECT1_0 = "NO";
    defparam ae_clr_cmp_1.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_2 (.A0(ae_clrcount_4), .B0(wcount_r4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_5), .B1(w_g2b_xor_cluster_0), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co1_7), .COUT(co2_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1627[19:24])
    defparam ae_clr_cmp_2.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_2.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_2.INJECT1_0 = "NO";
    defparam ae_clr_cmp_2.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_3 (.A0(ae_clrcount_6), .B0(wcount_r6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(ae_clrcount_7), .B1(wcount_r7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_7), .COUT(co3_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1635[19:24])
    defparam ae_clr_cmp_3.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_3.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_3.INJECT1_0 = "NO";
    defparam ae_clr_cmp_3.INJECT1_1 = "NO";
    CCU2C ae_clr_cmp_4 (.A0(ae_clr_cmp_set), .B0(ae_clr_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_7), .COUT(ae_clr_d_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1642[19:24])
    defparam ae_clr_cmp_4.INIT0 = 16'b1001100110101010;
    defparam ae_clr_cmp_4.INIT1 = 16'b1001100110101010;
    defparam ae_clr_cmp_4.INJECT1_0 = "NO";
    defparam ae_clr_cmp_4.INJECT1_1 = "NO";
    CCU2C a3 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(ae_clr_d_c), .S0(ae_clr_d)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1650[9:14])
    defparam a3.INIT0 = 16'b0110011010101010;
    defparam a3.INIT1 = 16'b0110011010101010;
    defparam a3.INJECT1_0 = "NO";
    defparam a3.INJECT1_1 = "NO";
    CCU2C af_set_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(af_set_ctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1658[21:26])
    defparam af_set_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_cia.INJECT1_0 = "NO";
    defparam af_set_ctr_cia.INJECT1_1 = "NO";
    CCU2C af_set_ctr_0 (.A0(af_setcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(af_set_ctr_ci), .COUT(co0_8), .S0(iaf_setcount_0), 
          .S1(iaf_setcount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1666[19:24])
    defparam af_set_ctr_0.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_0.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_0.INJECT1_0 = "NO";
    defparam af_set_ctr_0.INJECT1_1 = "NO";
    CCU2C af_set_ctr_1 (.A0(af_setcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_8), .COUT(co1_8), .S0(iaf_setcount_2), 
          .S1(iaf_setcount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1674[19:24])
    defparam af_set_ctr_1.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_1.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_1.INJECT1_0 = "NO";
    defparam af_set_ctr_1.INJECT1_1 = "NO";
    CCU2C af_set_ctr_2 (.A0(af_setcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_8), .COUT(co2_8), .S0(iaf_setcount_4), 
          .S1(iaf_setcount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1682[19:24])
    defparam af_set_ctr_2.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_2.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_2.INJECT1_0 = "NO";
    defparam af_set_ctr_2.INJECT1_1 = "NO";
    CCU2C af_set_ctr_3 (.A0(af_setcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_8), .COUT(co3_8), .S0(iaf_setcount_6), 
          .S1(iaf_setcount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1690[19:24])
    defparam af_set_ctr_3.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_3.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_3.INJECT1_0 = "NO";
    defparam af_set_ctr_3.INJECT1_1 = "NO";
    CCU2C af_set_ctr_4 (.A0(af_setcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_8), .S0(iaf_setcount_8)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1698[19:24])
    defparam af_set_ctr_4.INIT0 = 16'b0110011010101010;
    defparam af_set_ctr_4.INIT1 = 16'b0110011010101010;
    defparam af_set_ctr_4.INJECT1_0 = "NO";
    defparam af_set_ctr_4.INJECT1_1 = "NO";
    CCU2C af_set_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wren_i), .B1(wren_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_4)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1706[22:27])
    defparam af_set_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam af_set_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam af_set_cmp_ci_a.INJECT1_0 = "NO";
    defparam af_set_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C af_set_cmp_0 (.A0(af_setcount_0), .B0(rcount_w0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_1), .B1(rcount_w1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_4), .COUT(co0_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1713[19:24])
    defparam af_set_cmp_0.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_0.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_0.INJECT1_0 = "NO";
    defparam af_set_cmp_0.INJECT1_1 = "NO";
    CCU2C af_set_cmp_1 (.A0(af_setcount_2), .B0(rcount_w2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_3), .B1(rcount_w3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_9), .COUT(co1_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1721[19:24])
    defparam af_set_cmp_1.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_1.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_1.INJECT1_0 = "NO";
    defparam af_set_cmp_1.INJECT1_1 = "NO";
    CCU2C af_set_cmp_2 (.A0(af_setcount_4), .B0(rcount_w4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_5), .B1(r_g2b_xor_cluster_0), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co1_9), .COUT(co2_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1728[19:24])
    defparam af_set_cmp_2.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_2.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_2.INJECT1_0 = "NO";
    defparam af_set_cmp_2.INJECT1_1 = "NO";
    CCU2C af_set_cmp_3 (.A0(af_setcount_6), .B0(rcount_w6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_setcount_7), .B1(rcount_w7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_9), .COUT(co3_9)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1736[19:24])
    defparam af_set_cmp_3.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_3.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_3.INJECT1_0 = "NO";
    defparam af_set_cmp_3.INJECT1_1 = "NO";
    CCU2C af_set_cmp_4 (.A0(af_set_cmp_set), .B0(af_set_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_9), .COUT(af_set_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1743[19:24])
    defparam af_set_cmp_4.INIT0 = 16'b1001100110101010;
    defparam af_set_cmp_4.INIT1 = 16'b1001100110101010;
    defparam af_set_cmp_4.INJECT1_0 = "NO";
    defparam af_set_cmp_4.INJECT1_1 = "NO";
    CCU2C a4 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(af_set_c), .S0(af_set)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1751[9:14])
    defparam a4.INIT0 = 16'b0110011010101010;
    defparam a4.INIT1 = 16'b0110011010101010;
    defparam a4.INJECT1_0 = "NO";
    defparam a4.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(af_clr_ctr_ci)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1759[21:26])
    defparam af_clr_ctr_cia.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_cia.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_cia.INJECT1_0 = "NO";
    defparam af_clr_ctr_cia.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_0 (.A0(af_clrcount_0), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_1), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(af_clr_ctr_ci), .COUT(co0_10), .S0(iaf_clrcount_0), 
          .S1(iaf_clrcount_1)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1767[19:24])
    defparam af_clr_ctr_0.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_0.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_0.INJECT1_0 = "NO";
    defparam af_clr_ctr_0.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_1 (.A0(af_clrcount_2), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_3), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_10), .COUT(co1_10), .S0(iaf_clrcount_2), 
          .S1(iaf_clrcount_3)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1775[19:24])
    defparam af_clr_ctr_1.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_1.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_1.INJECT1_0 = "NO";
    defparam af_clr_ctr_1.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_2 (.A0(af_clrcount_4), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_5), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_10), .COUT(co2_10), .S0(iaf_clrcount_4), 
          .S1(iaf_clrcount_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1783[19:24])
    defparam af_clr_ctr_2.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_2.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_2.INJECT1_0 = "NO";
    defparam af_clr_ctr_2.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_3 (.A0(af_clrcount_6), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_7), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_10), .COUT(co3_10), .S0(iaf_clrcount_6), 
          .S1(iaf_clrcount_7)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1791[19:24])
    defparam af_clr_ctr_3.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_3.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_3.INJECT1_0 = "NO";
    defparam af_clr_ctr_3.INJECT1_1 = "NO";
    CCU2C af_clr_ctr_4 (.A0(af_clrcount_8), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_10), .S0(iaf_clrcount_8)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1799[19:24])
    defparam af_clr_ctr_4.INIT0 = 16'b0110011010101010;
    defparam af_clr_ctr_4.INIT1 = 16'b0110011010101010;
    defparam af_clr_ctr_4.INJECT1_0 = "NO";
    defparam af_clr_ctr_4.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wren_i), .B1(wren_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_5)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1807[22:27])
    defparam af_clr_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam af_clr_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam af_clr_cmp_ci_a.INJECT1_0 = "NO";
    defparam af_clr_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_0 (.A0(af_clrcount_0), .B0(rcount_w0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_1), .B1(rcount_w1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci_5), .COUT(co0_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1814[19:24])
    defparam af_clr_cmp_0.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_0.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_0.INJECT1_0 = "NO";
    defparam af_clr_cmp_0.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_1 (.A0(af_clrcount_2), .B0(rcount_w2), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_3), .B1(rcount_w3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_11), .COUT(co1_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1822[19:24])
    defparam af_clr_cmp_1.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_1.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_1.INJECT1_0 = "NO";
    defparam af_clr_cmp_1.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_2 (.A0(af_clrcount_4), .B0(rcount_w4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_5), .B1(r_g2b_xor_cluster_0), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co1_11), .COUT(co2_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1829[19:24])
    defparam af_clr_cmp_2.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_2.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_2.INJECT1_0 = "NO";
    defparam af_clr_cmp_2.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_3 (.A0(af_clrcount_6), .B0(rcount_w6), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(af_clrcount_7), .B1(rcount_w7), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_11), .COUT(co3_11)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1837[19:24])
    defparam af_clr_cmp_3.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_3.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_3.INJECT1_0 = "NO";
    defparam af_clr_cmp_3.INJECT1_1 = "NO";
    CCU2C af_clr_cmp_4 (.A0(af_clr_cmp_set), .B0(af_clr_cmp_clr), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_11), .COUT(af_clr_c)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1844[19:24])
    defparam af_clr_cmp_4.INIT0 = 16'b1001100110101010;
    defparam af_clr_cmp_4.INIT1 = 16'b1001100110101010;
    defparam af_clr_cmp_4.INJECT1_0 = "NO";
    defparam af_clr_cmp_4.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C a5 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(af_clr_c), .S0(af_clr)) /* synthesis syn_black_box=true, syn_unconnected_inputs="CIN", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(1858[9:14])
    defparam a5.INIT0 = 16'b0110011010101010;
    defparam a5.INIT1 = 16'b0110011010101010;
    defparam a5.INJECT1_0 = "NO";
    defparam a5.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    INV INV_1 (.A(Full), .Z(invout_1));
    AND2 AND2_t17 (.A(RdEn), .B(invout_0), .Z(rden_i)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(498[15:19])
    INV INV_0 (.A(Empty), .Z(invout_0));
    OR2 OR2_t16 (.A(Reset), .B(RPReset), .Z(rRst)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(504[14:17])
    XOR2 XOR2_t15 (.A(wcount_0), .B(wcount_1), .Z(w_gdata_0)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(507[15:19])
    XOR2 XOR2_t14 (.A(wcount_1), .B(wcount_2), .Z(w_gdata_1)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(510[15:19])
    XOR2 XOR2_t13 (.A(wcount_2), .B(wcount_3), .Z(w_gdata_2)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(513[15:19])
    XOR2 XOR2_t12 (.A(wcount_3), .B(wcount_4), .Z(w_gdata_3)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(516[15:19])
    XOR2 XOR2_t11 (.A(wcount_4), .B(wcount_5), .Z(w_gdata_4)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(519[15:19])
    XOR2 XOR2_t10 (.A(wcount_5), .B(wcount_6), .Z(w_gdata_5)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(522[15:19])
    XOR2 XOR2_t9 (.A(wcount_6), .B(wcount_7), .Z(w_gdata_6)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(525[14:18])
    XOR2 XOR2_t8 (.A(wcount_7), .B(wcount_8), .Z(w_gdata_7)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(528[14:18])
    XOR2 XOR2_t7 (.A(rcount_0), .B(rcount_1), .Z(r_gdata_0)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(531[14:18])
    XOR2 XOR2_t6 (.A(rcount_1), .B(rcount_2), .Z(r_gdata_1)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(534[14:18])
    XOR2 XOR2_t5 (.A(rcount_2), .B(rcount_3), .Z(r_gdata_2)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(537[14:18])
    XOR2 XOR2_t4 (.A(rcount_3), .B(rcount_4), .Z(r_gdata_3)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(540[14:18])
    XOR2 XOR2_t3 (.A(rcount_4), .B(rcount_5), .Z(r_gdata_4)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(543[14:18])
    XOR2 XOR2_t2 (.A(rcount_5), .B(rcount_6), .Z(r_gdata_5)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(546[14:18])
    XOR2 XOR2_t1 (.A(rcount_6), .B(rcount_7), .Z(r_gdata_6)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(549[14:18])
    XOR2 XOR2_t0 (.A(rcount_7), .B(rcount_8), .Z(r_gdata_7)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(552[14:18])
    ROM16X1A LUT4_31 (.AD0(w_gcount_r28), .AD1(w_gcount_r27), .AD2(w_gcount_r26), 
            .AD3(w_gcount_r25), .DO0(w_g2b_xor_cluster_0)) /* synthesis syn_black_box=true, syn_instantiated=1 */ ;
    defparam LUT4_31.initval = 16'b0110100110010110;
    PDPW8KE pdp_ram_0_1_0 (.DI0(Data[18]), .DI1(Data[19]), .DI2(Data[20]), 
            .DI3(Data[21]), .DI4(Data[22]), .DI5(Data[23]), .DI6(Data[24]), 
            .DI7(Data[25]), .DI8(Data[26]), .DI9(Data[27]), .DI10(Data[28]), 
            .DI11(Data[29]), .DI12(Data[30]), .DI13(Data[31]), .DI14(scuba_vlo), 
            .DI15(scuba_vlo), .DI16(scuba_vlo), .DI17(scuba_vlo), .ADW0(wptr_0), 
            .ADW1(wptr_1), .ADW2(wptr_2), .ADW3(wptr_3), .ADW4(wptr_4), 
            .ADW5(wptr_5), .ADW6(wptr_6), .ADW7(wptr_7), .ADW8(scuba_vlo), 
            .BE0(scuba_vhi), .BE1(scuba_vhi), .CEW(wren_i), .CLKW(WrClock), 
            .CSW0(scuba_vhi), .CSW1(scuba_vlo), .CSW2(scuba_vlo), .ADR0(scuba_vlo), 
            .ADR1(scuba_vlo), .ADR2(scuba_vlo), .ADR3(scuba_vlo), .ADR4(rptr_0), 
            .ADR5(rptr_1), .ADR6(rptr_2), .ADR7(rptr_3), .ADR8(rptr_4), 
            .ADR9(rptr_5), .ADR10(rptr_6), .ADR11(rptr_7), .ADR12(scuba_vlo), 
            .CER(rden_i), .OCER(rden_i), .CLKR(RdClock), .CSR0(scuba_vlo), 
            .CSR1(scuba_vlo), .CSR2(scuba_vlo), .RST(Reset), .DO0(Q[27]), 
            .DO1(Q[28]), .DO2(Q[29]), .DO3(Q[30]), .DO4(Q[31]), .DO9(Q[18]), 
            .DO10(Q[19]), .DO11(Q[20]), .DO12(Q[21]), .DO13(Q[22]), 
            .DO14(Q[23]), .DO15(Q[24]), .DO16(Q[25]), .DO17(Q[26])) /* synthesis syn_black_box=true, MEM_LPC_FILE="cross_domain_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
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
    FD1P3BX FF_129 (.D(iwcount_0), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(wcount_0)) /* synthesis syn_black_box=true, GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/clarity/camera/cross_domain_fifo/cross_domain_fifo.vhd(769[13:20])
    defparam FF_129.GSR = "ENABLED";
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

