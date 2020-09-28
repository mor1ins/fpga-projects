// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.3.469
// Netlist written on Tue Sep 29 00:16:42 2020
//
// Verilog Description of module Crosslink_CSI2ToRaw10
//

module Crosslink_CSI2ToRaw10 (csi2_dphy_bd0_o, csi2_dphy_lp_hs_state_clk_o, 
            csi2_dphy_lp_hs_state_d_o, csi2_dphy_capture_en_o, csi2_dphy_cd_d0_o, 
            csi2_dphy_clk_byte_fr_i, csi2_dphy_clk_byte_hs_o, csi2_dphy_clk_byte_o, 
            csi2_dphy_clk_lp_ctrl_i, csi2_dphy_clk_n_i, csi2_dphy_clk_p_i, 
            csi2_dphy_d0_n_i, csi2_dphy_d0_p_i, csi2_dphy_hs_d_en_o, csi2_dphy_hs_sync_o, 
            csi2_dphy_lp_d0_rx_n_o, csi2_dphy_lp_d0_rx_p_o, csi2_dphy_pd_dphy_i, 
            csi2_dphy_pll_lock_i, csi2_dphy_reset_byte_fr_n_i, csi2_dphy_reset_byte_n_i, 
            csi2_dphy_reset_lp_n_i, csi2_dphy_reset_n_i, csi2_dphy_term_clk_en_o);   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(10[8:29])
    output [7:0]csi2_dphy_bd0_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(11[11:26])
    output [1:0]csi2_dphy_lp_hs_state_clk_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(12[9:36])
    output [1:0]csi2_dphy_lp_hs_state_d_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(13[9:34])
    output csi2_dphy_capture_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(14[9:31])
    output csi2_dphy_cd_d0_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(15[9:26])
    input csi2_dphy_clk_byte_fr_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(16[9:32])
    output csi2_dphy_clk_byte_hs_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(17[9:32])
    output csi2_dphy_clk_byte_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(18[9:29])
    input csi2_dphy_clk_lp_ctrl_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(19[9:32])
    inout csi2_dphy_clk_n_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(20[9:26])
    inout csi2_dphy_clk_p_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(21[9:26])
    inout csi2_dphy_d0_n_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(22[9:25])
    inout csi2_dphy_d0_p_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(23[9:25])
    output csi2_dphy_hs_d_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(24[9:28])
    output csi2_dphy_hs_sync_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(25[9:28])
    output csi2_dphy_lp_d0_rx_n_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(26[9:31])
    output csi2_dphy_lp_d0_rx_p_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(27[9:31])
    input csi2_dphy_pd_dphy_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(28[9:28])
    input csi2_dphy_pll_lock_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(29[9:29])
    input csi2_dphy_reset_byte_fr_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(30[9:36])
    input csi2_dphy_reset_byte_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(31[9:33])
    input csi2_dphy_reset_lp_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(32[9:31])
    input csi2_dphy_reset_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(33[9:28])
    output csi2_dphy_term_clk_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(34[9:32])
    
    
    wire csi2_dphy_bd0_o_c_7, csi2_dphy_bd0_o_c_6, csi2_dphy_bd0_o_c_5, 
        csi2_dphy_bd0_o_c_4, csi2_dphy_bd0_o_c_3, csi2_dphy_bd0_o_c_2, 
        csi2_dphy_bd0_o_c_1, csi2_dphy_bd0_o_c_0, GND_net, csi2_dphy_lp_hs_state_d_o_c_1, 
        csi2_dphy_lp_hs_state_d_o_c_0, csi2_dphy_capture_en_o_c, csi2_dphy_cd_d0_o_c, 
        csi2_dphy_clk_byte_fr_i_c, csi2_dphy_clk_byte_o_c, csi2_dphy_clk_lp_ctrl_i_c, 
        csi2_dphy_hs_d_en_o_c, csi2_dphy_hs_sync_o_c, csi2_dphy_lp_d0_rx_n_o_c, 
        csi2_dphy_lp_d0_rx_p_o_c, csi2_dphy_pll_lock_i_c, csi2_dphy_reset_byte_fr_n_i_c, 
        csi2_dphy_reset_byte_n_i_c, csi2_dphy_reset_lp_n_i_c, csi2_dphy_reset_n_i_c, 
        csi2_dphy_term_clk_en_o_c, VCC_net;
    
    VHI i5 (.Z(VCC_net));
    OB csi2_dphy_bd0_o_pad_6 (.I(csi2_dphy_bd0_o_c_6), .O(csi2_dphy_bd0_o[6]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(11[11:26])
    csi2_dphy csi2_dphy_inst (.csi2_dphy_reset_n_i_c(csi2_dphy_reset_n_i_c), 
            .csi2_dphy_term_clk_en_o_c(csi2_dphy_term_clk_en_o_c), .csi2_dphy_lp_d0_rx_p_o_c(csi2_dphy_lp_d0_rx_p_o_c), 
            .csi2_dphy_lp_d0_rx_n_o_c(csi2_dphy_lp_d0_rx_n_o_c), .csi2_dphy_clk_byte_o_c(csi2_dphy_clk_byte_o_c), 
            .csi2_dphy_clk_byte_fr_i_c(csi2_dphy_clk_byte_fr_i_c), .csi2_dphy_reset_byte_fr_n_i_c(csi2_dphy_reset_byte_fr_n_i_c), 
            .csi2_dphy_hs_d_en_o_c(csi2_dphy_hs_d_en_o_c), .csi2_dphy_hs_sync_o_c(csi2_dphy_hs_sync_o_c), 
            .csi2_dphy_clk_lp_ctrl_i_c(csi2_dphy_clk_lp_ctrl_i_c), .csi2_dphy_reset_lp_n_i_c(csi2_dphy_reset_lp_n_i_c), 
            .csi2_dphy_pll_lock_i_c(csi2_dphy_pll_lock_i_c), .csi2_dphy_bd0_o_c_7(csi2_dphy_bd0_o_c_7), 
            .csi2_dphy_bd0_o_c_6(csi2_dphy_bd0_o_c_6), .csi2_dphy_bd0_o_c_5(csi2_dphy_bd0_o_c_5), 
            .csi2_dphy_bd0_o_c_4(csi2_dphy_bd0_o_c_4), .csi2_dphy_bd0_o_c_3(csi2_dphy_bd0_o_c_3), 
            .csi2_dphy_bd0_o_c_2(csi2_dphy_bd0_o_c_2), .csi2_dphy_bd0_o_c_1(csi2_dphy_bd0_o_c_1), 
            .csi2_dphy_bd0_o_c_0(csi2_dphy_bd0_o_c_0), .csi2_dphy_capture_en_o_c(csi2_dphy_capture_en_o_c), 
            .csi2_dphy_lp_hs_state_d_o_c_1(csi2_dphy_lp_hs_state_d_o_c_1), 
            .csi2_dphy_lp_hs_state_d_o_c_0(csi2_dphy_lp_hs_state_d_o_c_0), 
            .GND_net(GND_net), .csi2_dphy_reset_byte_n_i_c(csi2_dphy_reset_byte_n_i_c), 
            .csi2_dphy_cd_d0_o_c(csi2_dphy_cd_d0_o_c), .csi2_dphy_clk_p_i(csi2_dphy_clk_p_i), 
            .csi2_dphy_clk_n_i(csi2_dphy_clk_n_i), .csi2_dphy_d0_p_i(csi2_dphy_d0_p_i), 
            .csi2_dphy_d0_n_i(csi2_dphy_d0_n_i)) /* synthesis syn_module_defined=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(71[21:40])
    OB csi2_dphy_bd0_o_pad_2 (.I(csi2_dphy_bd0_o_c_2), .O(csi2_dphy_bd0_o[2]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(11[11:26])
    OB csi2_dphy_bd0_o_pad_3 (.I(csi2_dphy_bd0_o_c_3), .O(csi2_dphy_bd0_o[3]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(11[11:26])
    OB csi2_dphy_bd0_o_pad_7 (.I(csi2_dphy_bd0_o_c_7), .O(csi2_dphy_bd0_o[7]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(11[11:26])
    OB csi2_dphy_bd0_o_pad_1 (.I(csi2_dphy_bd0_o_c_1), .O(csi2_dphy_bd0_o[1]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(11[11:26])
    OB csi2_dphy_bd0_o_pad_4 (.I(csi2_dphy_bd0_o_c_4), .O(csi2_dphy_bd0_o[4]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(11[11:26])
    OB csi2_dphy_bd0_o_pad_5 (.I(csi2_dphy_bd0_o_c_5), .O(csi2_dphy_bd0_o[5]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(11[11:26])
    OB csi2_dphy_bd0_o_pad_0 (.I(csi2_dphy_bd0_o_c_0), .O(csi2_dphy_bd0_o[0]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(11[11:26])
    OB csi2_dphy_lp_hs_state_clk_o_pad_1 (.I(VCC_net), .O(csi2_dphy_lp_hs_state_clk_o[1]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(12[9:36])
    OB csi2_dphy_lp_hs_state_clk_o_pad_0 (.I(VCC_net), .O(csi2_dphy_lp_hs_state_clk_o[0]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(12[9:36])
    OB csi2_dphy_lp_hs_state_d_o_pad_1 (.I(csi2_dphy_lp_hs_state_d_o_c_1), 
       .O(csi2_dphy_lp_hs_state_d_o[1]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(13[9:34])
    OB csi2_dphy_lp_hs_state_d_o_pad_0 (.I(csi2_dphy_lp_hs_state_d_o_c_0), 
       .O(csi2_dphy_lp_hs_state_d_o[0]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(13[9:34])
    OB csi2_dphy_capture_en_o_pad (.I(csi2_dphy_capture_en_o_c), .O(csi2_dphy_capture_en_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(14[9:31])
    OB csi2_dphy_cd_d0_o_pad (.I(csi2_dphy_cd_d0_o_c), .O(csi2_dphy_cd_d0_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(15[9:26])
    OB csi2_dphy_clk_byte_hs_o_pad (.I(csi2_dphy_clk_byte_o_c), .O(csi2_dphy_clk_byte_hs_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(17[9:32])
    OB csi2_dphy_clk_byte_o_pad (.I(csi2_dphy_clk_byte_o_c), .O(csi2_dphy_clk_byte_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(18[9:29])
    OB csi2_dphy_hs_d_en_o_pad (.I(csi2_dphy_hs_d_en_o_c), .O(csi2_dphy_hs_d_en_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(24[9:28])
    OB csi2_dphy_hs_sync_o_pad (.I(csi2_dphy_hs_sync_o_c), .O(csi2_dphy_hs_sync_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(25[9:28])
    OB csi2_dphy_lp_d0_rx_n_o_pad (.I(csi2_dphy_lp_d0_rx_n_o_c), .O(csi2_dphy_lp_d0_rx_n_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(26[9:31])
    OB csi2_dphy_lp_d0_rx_p_o_pad (.I(csi2_dphy_lp_d0_rx_p_o_c), .O(csi2_dphy_lp_d0_rx_p_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(27[9:31])
    OB csi2_dphy_term_clk_en_o_pad (.I(csi2_dphy_term_clk_en_o_c), .O(csi2_dphy_term_clk_en_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(34[9:32])
    IB csi2_dphy_clk_byte_fr_i_pad (.I(csi2_dphy_clk_byte_fr_i), .O(csi2_dphy_clk_byte_fr_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(16[9:32])
    IB csi2_dphy_clk_lp_ctrl_i_pad (.I(csi2_dphy_clk_lp_ctrl_i), .O(csi2_dphy_clk_lp_ctrl_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(19[9:32])
    IB csi2_dphy_pll_lock_i_pad (.I(csi2_dphy_pll_lock_i), .O(csi2_dphy_pll_lock_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(29[9:29])
    IB csi2_dphy_reset_byte_fr_n_i_pad (.I(csi2_dphy_reset_byte_fr_n_i), .O(csi2_dphy_reset_byte_fr_n_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(30[9:36])
    IB csi2_dphy_reset_byte_n_i_pad (.I(csi2_dphy_reset_byte_n_i), .O(csi2_dphy_reset_byte_n_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(31[9:33])
    IB csi2_dphy_reset_lp_n_i_pad (.I(csi2_dphy_reset_lp_n_i), .O(csi2_dphy_reset_lp_n_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(32[9:31])
    IB csi2_dphy_reset_n_i_pad (.I(csi2_dphy_reset_n_i), .O(csi2_dphy_reset_n_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/crosslink_csi2toraw10.vhd(33[9:28])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(VCC_net));
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module csi2_dphy
//

module csi2_dphy (csi2_dphy_reset_n_i_c, csi2_dphy_term_clk_en_o_c, csi2_dphy_lp_d0_rx_p_o_c, 
            csi2_dphy_lp_d0_rx_n_o_c, csi2_dphy_clk_byte_o_c, csi2_dphy_clk_byte_fr_i_c, 
            csi2_dphy_reset_byte_fr_n_i_c, csi2_dphy_hs_d_en_o_c, csi2_dphy_hs_sync_o_c, 
            csi2_dphy_clk_lp_ctrl_i_c, csi2_dphy_reset_lp_n_i_c, csi2_dphy_pll_lock_i_c, 
            csi2_dphy_bd0_o_c_7, csi2_dphy_bd0_o_c_6, csi2_dphy_bd0_o_c_5, 
            csi2_dphy_bd0_o_c_4, csi2_dphy_bd0_o_c_3, csi2_dphy_bd0_o_c_2, 
            csi2_dphy_bd0_o_c_1, csi2_dphy_bd0_o_c_0, csi2_dphy_capture_en_o_c, 
            csi2_dphy_lp_hs_state_d_o_c_1, csi2_dphy_lp_hs_state_d_o_c_0, 
            GND_net, csi2_dphy_reset_byte_n_i_c, csi2_dphy_cd_d0_o_c, 
            csi2_dphy_clk_p_i, csi2_dphy_clk_n_i, csi2_dphy_d0_p_i, csi2_dphy_d0_n_i) /* synthesis syn_module_defined=1 */ ;
    input csi2_dphy_reset_n_i_c;
    output csi2_dphy_term_clk_en_o_c;
    output csi2_dphy_lp_d0_rx_p_o_c;
    output csi2_dphy_lp_d0_rx_n_o_c;
    output csi2_dphy_clk_byte_o_c;
    input csi2_dphy_clk_byte_fr_i_c;
    input csi2_dphy_reset_byte_fr_n_i_c;
    output csi2_dphy_hs_d_en_o_c;
    output csi2_dphy_hs_sync_o_c;
    input csi2_dphy_clk_lp_ctrl_i_c;
    input csi2_dphy_reset_lp_n_i_c;
    input csi2_dphy_pll_lock_i_c;
    output csi2_dphy_bd0_o_c_7;
    output csi2_dphy_bd0_o_c_6;
    output csi2_dphy_bd0_o_c_5;
    output csi2_dphy_bd0_o_c_4;
    output csi2_dphy_bd0_o_c_3;
    output csi2_dphy_bd0_o_c_2;
    output csi2_dphy_bd0_o_c_1;
    output csi2_dphy_bd0_o_c_0;
    output csi2_dphy_capture_en_o_c;
    output csi2_dphy_lp_hs_state_d_o_c_1;
    output csi2_dphy_lp_hs_state_d_o_c_0;
    input GND_net;
    input csi2_dphy_reset_byte_n_i_c;
    output csi2_dphy_cd_d0_o_c;
    inout csi2_dphy_clk_p_i;
    inout csi2_dphy_clk_n_i;
    inout csi2_dphy_d0_p_i;
    inout csi2_dphy_d0_n_i;
    
    
    \csi2_dphy_dphy_rx(PARSER="OFF",RX_TYPE="CSI2",NUM_RX_LANE=1,RX_GEAR=8,DPHY_RX_IP="LATTICE",RX_CLK_MODE="HS_ONLY",WORD_ALIGN="ON",BYTECLK_MHZ=125,FIFO_TYPE="LUT")  dphy_rx_inst (.csi2_dphy_reset_n_i_c(csi2_dphy_reset_n_i_c), 
            .csi2_dphy_term_clk_en_o_c(csi2_dphy_term_clk_en_o_c), .csi2_dphy_lp_d0_rx_p_o_c(csi2_dphy_lp_d0_rx_p_o_c), 
            .csi2_dphy_lp_d0_rx_n_o_c(csi2_dphy_lp_d0_rx_n_o_c), .csi2_dphy_clk_byte_o_c(csi2_dphy_clk_byte_o_c), 
            .csi2_dphy_clk_byte_fr_i_c(csi2_dphy_clk_byte_fr_i_c), .csi2_dphy_reset_byte_fr_n_i_c(csi2_dphy_reset_byte_fr_n_i_c), 
            .csi2_dphy_hs_d_en_o_c(csi2_dphy_hs_d_en_o_c), .csi2_dphy_hs_sync_o_c(csi2_dphy_hs_sync_o_c), 
            .csi2_dphy_clk_lp_ctrl_i_c(csi2_dphy_clk_lp_ctrl_i_c), .csi2_dphy_reset_lp_n_i_c(csi2_dphy_reset_lp_n_i_c), 
            .csi2_dphy_pll_lock_i_c(csi2_dphy_pll_lock_i_c), .csi2_dphy_bd0_o_c_7(csi2_dphy_bd0_o_c_7), 
            .csi2_dphy_bd0_o_c_6(csi2_dphy_bd0_o_c_6), .csi2_dphy_bd0_o_c_5(csi2_dphy_bd0_o_c_5), 
            .csi2_dphy_bd0_o_c_4(csi2_dphy_bd0_o_c_4), .csi2_dphy_bd0_o_c_3(csi2_dphy_bd0_o_c_3), 
            .csi2_dphy_bd0_o_c_2(csi2_dphy_bd0_o_c_2), .csi2_dphy_bd0_o_c_1(csi2_dphy_bd0_o_c_1), 
            .csi2_dphy_bd0_o_c_0(csi2_dphy_bd0_o_c_0), .csi2_dphy_capture_en_o_c(csi2_dphy_capture_en_o_c), 
            .csi2_dphy_lp_hs_state_d_o_c_1(csi2_dphy_lp_hs_state_d_o_c_1), 
            .csi2_dphy_lp_hs_state_d_o_c_0(csi2_dphy_lp_hs_state_d_o_c_0), 
            .GND_net(GND_net), .csi2_dphy_reset_byte_n_i_c(csi2_dphy_reset_byte_n_i_c), 
            .csi2_dphy_cd_d0_o_c(csi2_dphy_cd_d0_o_c), .csi2_dphy_clk_p_i(csi2_dphy_clk_p_i), 
            .csi2_dphy_clk_n_i(csi2_dphy_clk_n_i), .csi2_dphy_d0_p_i(csi2_dphy_d0_p_i), 
            .csi2_dphy_d0_n_i(csi2_dphy_d0_n_i)) /* synthesis syn_module_defined=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy.v(149[1] 207[2])
    
endmodule
//
// Verilog Description of module \csi2_dphy_dphy_rx(PARSER="OFF",RX_TYPE="CSI2",NUM_RX_LANE=1,RX_GEAR=8,DPHY_RX_IP="LATTICE",RX_CLK_MODE="HS_ONLY",WORD_ALIGN="ON",BYTECLK_MHZ=125,FIFO_TYPE="LUT") 
//

module \csi2_dphy_dphy_rx(PARSER="OFF",RX_TYPE="CSI2",NUM_RX_LANE=1,RX_GEAR=8,DPHY_RX_IP="LATTICE",RX_CLK_MODE="HS_ONLY",WORD_ALIGN="ON",BYTECLK_MHZ=125,FIFO_TYPE="LUT")  (csi2_dphy_reset_n_i_c, 
            csi2_dphy_term_clk_en_o_c, csi2_dphy_lp_d0_rx_p_o_c, csi2_dphy_lp_d0_rx_n_o_c, 
            csi2_dphy_clk_byte_o_c, csi2_dphy_clk_byte_fr_i_c, csi2_dphy_reset_byte_fr_n_i_c, 
            csi2_dphy_hs_d_en_o_c, csi2_dphy_hs_sync_o_c, csi2_dphy_clk_lp_ctrl_i_c, 
            csi2_dphy_reset_lp_n_i_c, csi2_dphy_pll_lock_i_c, csi2_dphy_bd0_o_c_7, 
            csi2_dphy_bd0_o_c_6, csi2_dphy_bd0_o_c_5, csi2_dphy_bd0_o_c_4, 
            csi2_dphy_bd0_o_c_3, csi2_dphy_bd0_o_c_2, csi2_dphy_bd0_o_c_1, 
            csi2_dphy_bd0_o_c_0, csi2_dphy_capture_en_o_c, csi2_dphy_lp_hs_state_d_o_c_1, 
            csi2_dphy_lp_hs_state_d_o_c_0, GND_net, csi2_dphy_reset_byte_n_i_c, 
            csi2_dphy_cd_d0_o_c, csi2_dphy_clk_p_i, csi2_dphy_clk_n_i, 
            csi2_dphy_d0_p_i, csi2_dphy_d0_n_i) /* synthesis syn_module_defined=1 */ ;
    input csi2_dphy_reset_n_i_c;
    output csi2_dphy_term_clk_en_o_c;
    output csi2_dphy_lp_d0_rx_p_o_c;
    output csi2_dphy_lp_d0_rx_n_o_c;
    output csi2_dphy_clk_byte_o_c;
    input csi2_dphy_clk_byte_fr_i_c;
    input csi2_dphy_reset_byte_fr_n_i_c;
    output csi2_dphy_hs_d_en_o_c;
    output csi2_dphy_hs_sync_o_c;
    input csi2_dphy_clk_lp_ctrl_i_c;
    input csi2_dphy_reset_lp_n_i_c;
    input csi2_dphy_pll_lock_i_c;
    output csi2_dphy_bd0_o_c_7;
    output csi2_dphy_bd0_o_c_6;
    output csi2_dphy_bd0_o_c_5;
    output csi2_dphy_bd0_o_c_4;
    output csi2_dphy_bd0_o_c_3;
    output csi2_dphy_bd0_o_c_2;
    output csi2_dphy_bd0_o_c_1;
    output csi2_dphy_bd0_o_c_0;
    output csi2_dphy_capture_en_o_c;
    output csi2_dphy_lp_hs_state_d_o_c_1;
    output csi2_dphy_lp_hs_state_d_o_c_0;
    input GND_net;
    input csi2_dphy_reset_byte_n_i_c;
    output csi2_dphy_cd_d0_o_c;
    inout csi2_dphy_clk_p_i;
    inout csi2_dphy_clk_n_i;
    inout csi2_dphy_d0_p_i;
    inout csi2_dphy_d0_n_i;
    
    
    wire hs_settle_en_w, lp_clk_rx_p, lp_clk_rx_n, lp_d1_rx_p_o, lp_d1_rx_n_o, 
        lp_d2_rx_p_o, lp_d2_rx_n_o, lp_d3_rx_p_o, lp_d3_rx_n_o, term_d0_en_w, 
        term_d1_en_w, term_d2_en_w, term_d3_en_w, hs_d1_en_w, hs_d2_en_w, 
        hs_d3_en_w;
    wire [7:0]bd0;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx.v(200[32:35])
    wire [7:0]bd1;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx.v(200[37:40])
    wire [7:0]bd2;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx.v(200[42:45])
    wire [7:0]bd3;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx.v(200[47:50])
    wire [7:0]bd0_w;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx.v(248[20:25])
    wire [7:0]bd1_w;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx.v(249[20:25])
    wire [7:0]bd2_w;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx.v(250[20:25])
    wire [7:0]bd3_w;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx.v(251[20:25])
    
    csi2_dphy_rx_global_ctrl rx_global_ctrl_inst (.reset_n_i(csi2_dphy_reset_n_i_c), 
            .reset_lp_n_i(csi2_dphy_reset_lp_n_i_c), .reset_byte_fr_n_i(csi2_dphy_reset_byte_fr_n_i_c), 
            .clk_lp_ctrl_i(csi2_dphy_clk_lp_ctrl_i_c), .clk_byte_hs_i(csi2_dphy_clk_byte_o_c), 
            .clk_byte_i(csi2_dphy_clk_byte_o_c), .clk_byte_fr_i(csi2_dphy_clk_byte_fr_i_c), 
            .pll_lock_i(csi2_dphy_pll_lock_i_c), .bd0_i({bd0}), .bd1_i({bd1}), 
            .bd2_i({bd2}), .bd3_i({bd3}), .lp_clk_p_i(lp_clk_rx_p), .lp_clk_n_i(lp_clk_rx_n), 
            .lp_d0_p_i(csi2_dphy_lp_d0_rx_p_o_c), .lp_d0_n_i(csi2_dphy_lp_d0_rx_n_o_c), 
            .lp_d1_p_i(lp_d1_rx_p_o), .lp_d1_n_i(lp_d1_rx_n_o), .lp_d2_p_i(lp_d2_rx_p_o), 
            .lp_d2_n_i(lp_d2_rx_n_o), .lp_d3_p_i(lp_d3_rx_p_o), .lp_d3_n_i(lp_d3_rx_n_o), 
            .hs_sync_i(csi2_dphy_hs_sync_o_c), .bd0_o({csi2_dphy_bd0_o_c_7, 
            csi2_dphy_bd0_o_c_6, csi2_dphy_bd0_o_c_5, csi2_dphy_bd0_o_c_4, 
            csi2_dphy_bd0_o_c_3, csi2_dphy_bd0_o_c_2, csi2_dphy_bd0_o_c_1, 
            csi2_dphy_bd0_o_c_0}), .term_clk_en_o(csi2_dphy_term_clk_en_o_c), 
            .term_d0_en_o(term_d0_en_w), .hs_d0_en_o(csi2_dphy_hs_d_en_o_c), 
            .term_d1_en_o(term_d1_en_w), .hs_d1_en_o(hs_d1_en_w), .term_d2_en_o(term_d2_en_w), 
            .hs_d2_en_o(hs_d2_en_w), .term_d3_en_o(term_d3_en_w), .hs_d3_en_o(hs_d3_en_w), 
            .hs_sync_o(csi2_dphy_capture_en_o_c), .hs_settle_en_o(hs_settle_en_w), 
            .lp_hs_state_d_o({csi2_dphy_lp_hs_state_d_o_c_1, csi2_dphy_lp_hs_state_d_o_c_0})) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=207 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx.v(349[1] 390[2])
    csi2_dphy_dphy_rx_wrap dphy_rx_wrap_inst (.reset_n_i(csi2_dphy_reset_n_i_c), 
            .reset_byte_n_i(csi2_dphy_reset_byte_n_i_c), .reset_byte_fr_n_i(csi2_dphy_reset_byte_fr_n_i_c), 
            .clk_byte_fr_i(csi2_dphy_clk_byte_fr_i_c), .term_d0_en_i(term_d0_en_w), 
            .term_d1_en_i(term_d1_en_w), .term_d2_en_i(term_d2_en_w), .term_d3_en_i(term_d3_en_w), 
            .hs_d0_en_i(csi2_dphy_hs_d_en_o_c), .hs_d1_en_i(hs_d1_en_w), 
            .hs_d2_en_i(hs_d2_en_w), .hs_d3_en_i(hs_d3_en_w), .d_sot_det({GND_net, 
            GND_net, GND_net, GND_net}), .d_sote_det({GND_net, GND_net, 
            GND_net, GND_net}), .clk_byte_i(csi2_dphy_clk_byte_o_c), .bd0_i({bd0_w}), 
            .bd1_i({bd1_w}), .bd2_i({bd2_w}), .bd3_i({bd3_w}), .bd0_o({bd0}), 
            .bd1_o({bd1}), .bd2_o({bd2}), .bd3_o({bd3}), .hs_sync_o(csi2_dphy_hs_sync_o_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=207 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx.v(254[1] 279[2])
    \csi2_dphy_dphy_wrapper(DPHY_RX_IP="LATTICE",RX_GEAR=8,NUM_RX_LANE=1)  u_dphy_wrapper (.csi2_dphy_reset_n_i_c(csi2_dphy_reset_n_i_c), 
            .bd0_w({bd0_w}), .bd1_w({bd1_w}), .bd2_w({bd2_w}), .bd3_w({bd3_w}), 
            .hs_settle_en_w(hs_settle_en_w), .csi2_dphy_term_clk_en_o_c(csi2_dphy_term_clk_en_o_c), 
            .GND_net(GND_net), .lp_clk_rx_p(lp_clk_rx_p), .lp_clk_rx_n(lp_clk_rx_n), 
            .csi2_dphy_lp_d0_rx_p_o_c(csi2_dphy_lp_d0_rx_p_o_c), .csi2_dphy_lp_d0_rx_n_o_c(csi2_dphy_lp_d0_rx_n_o_c), 
            .lp_d1_rx_p_o(lp_d1_rx_p_o), .lp_d1_rx_n_o(lp_d1_rx_n_o), .lp_d2_rx_p_o(lp_d2_rx_p_o), 
            .lp_d2_rx_n_o(lp_d2_rx_n_o), .lp_d3_rx_p_o(lp_d3_rx_p_o), .lp_d3_rx_n_o(lp_d3_rx_n_o), 
            .csi2_dphy_cd_d0_o_c(csi2_dphy_cd_d0_o_c), .csi2_dphy_clk_byte_o_c(csi2_dphy_clk_byte_o_c), 
            .csi2_dphy_clk_p_i(csi2_dphy_clk_p_i), .csi2_dphy_clk_n_i(csi2_dphy_clk_n_i), 
            .csi2_dphy_d0_p_i(csi2_dphy_d0_p_i), .csi2_dphy_d0_n_i(csi2_dphy_d0_n_i)) /* synthesis syn_module_defined=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx.v(297[1] 340[2])
    
endmodule
//
// Verilog Description of module csi2_dphy_rx_global_ctrl
//

module csi2_dphy_rx_global_ctrl (reset_n_i, reset_lp_n_i, reset_byte_fr_n_i, 
            clk_lp_ctrl_i, clk_byte_hs_i, clk_byte_i, clk_byte_fr_i, 
            pll_lock_i, bd0_i, bd1_i, bd2_i, bd3_i, lp_clk_p_i, 
            lp_clk_n_i, lp_d0_p_i, lp_d0_n_i, lp_d1_p_i, lp_d1_n_i, 
            lp_d2_p_i, lp_d2_n_i, lp_d3_p_i, lp_d3_n_i, hs_sync_i, 
            bd0_o, bd1_o, bd2_o, bd3_o, term_clk_en_o, term_d0_en_o, 
            hs_d0_en_o, term_d1_en_o, hs_d1_en_o, term_d2_en_o, hs_d2_en_o, 
            term_d3_en_o, hs_d3_en_o, hs_sync_o, hs_settle_en_o, lp_hs_state_clk_o, 
            lp_hs_state_d_o);   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(8[8:32])
    input reset_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(9[31:40])
    input reset_lp_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(10[31:43])
    input reset_byte_fr_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(11[31:48])
    input clk_lp_ctrl_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(12[31:44])
    input clk_byte_hs_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(13[31:44])
    input clk_byte_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(14[31:41])
    input clk_byte_fr_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(15[31:44])
    input pll_lock_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(16[31:41])
    input [7:0]bd0_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(18[25:30])
    input [7:0]bd1_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(19[25:30])
    input [7:0]bd2_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(20[25:30])
    input [7:0]bd3_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(21[25:30])
    input lp_clk_p_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(22[31:41])
    input lp_clk_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(23[31:41])
    input lp_d0_p_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(24[31:40])
    input lp_d0_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(25[31:40])
    input lp_d1_p_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(26[31:40])
    input lp_d1_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(27[31:40])
    input lp_d2_p_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(28[31:40])
    input lp_d2_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(29[31:40])
    input lp_d3_p_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(30[31:40])
    input lp_d3_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(31[31:40])
    input hs_sync_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(32[31:40])
    output [7:0]bd0_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(33[25:30])
    output [7:0]bd1_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(34[25:30])
    output [7:0]bd2_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(35[25:30])
    output [7:0]bd3_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(36[25:30])
    output term_clk_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(37[31:44])
    output term_d0_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(38[31:43])
    output hs_d0_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(39[31:41])
    output term_d1_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(40[31:43])
    output hs_d1_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(41[31:41])
    output term_d2_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(42[31:43])
    output hs_d2_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(43[31:41])
    output term_d3_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(44[31:43])
    output hs_d3_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(45[31:41])
    output hs_sync_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(46[31:40])
    output hs_settle_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(47[31:45])
    output [1:0]lp_hs_state_clk_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(48[31:48])
    output [1:0]lp_hs_state_d_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_rx_global_ctrl_bb.v(49[31:46])
    
    
    
endmodule
//
// Verilog Description of module csi2_dphy_dphy_rx_wrap
//

module csi2_dphy_dphy_rx_wrap (reset_n_i, reset_byte_n_i, reset_byte_fr_n_i, 
            clk_byte_fr_i, term_d0_en_i, term_d1_en_i, term_d2_en_i, 
            term_d3_en_i, hs_d0_en_i, hs_d1_en_i, hs_d2_en_i, hs_d3_en_i, 
            d_sot_det, d_sote_det, clk_byte_i, bd0_i, bd1_i, bd2_i, 
            bd3_i, bd0_o, bd1_o, bd2_o, bd3_o, hs_sync_o);   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(8[8:30])
    input reset_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(9[31:40])
    input reset_byte_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(10[31:45])
    input reset_byte_fr_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(11[31:48])
    input clk_byte_fr_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(12[31:44])
    input term_d0_en_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(13[31:43])
    input term_d1_en_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(14[31:43])
    input term_d2_en_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(15[31:43])
    input term_d3_en_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(16[31:43])
    input hs_d0_en_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(17[31:41])
    input hs_d1_en_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(18[31:41])
    input hs_d2_en_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(19[31:41])
    input hs_d3_en_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(20[31:41])
    input [3:0]d_sot_det;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(22[31:40])
    input [3:0]d_sote_det;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(23[31:41])
    input clk_byte_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(26[31:41])
    input [7:0]bd0_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(27[25:30])
    input [7:0]bd1_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(28[25:30])
    input [7:0]bd2_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(29[25:30])
    input [7:0]bd3_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(30[25:30])
    output [7:0]bd0_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(31[25:30])
    output [7:0]bd1_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(32[25:30])
    output [7:0]bd2_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(33[25:30])
    output [7:0]bd3_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(34[25:30])
    output hs_sync_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_rx_wrap_bb.v(35[31:40])
    
    
    
endmodule
//
// Verilog Description of module \csi2_dphy_dphy_wrapper(DPHY_RX_IP="LATTICE",RX_GEAR=8,NUM_RX_LANE=1) 
//

module \csi2_dphy_dphy_wrapper(DPHY_RX_IP="LATTICE",RX_GEAR=8,NUM_RX_LANE=1)  (csi2_dphy_reset_n_i_c, 
            bd0_w, bd1_w, bd2_w, bd3_w, hs_settle_en_w, csi2_dphy_term_clk_en_o_c, 
            GND_net, lp_clk_rx_p, lp_clk_rx_n, csi2_dphy_lp_d0_rx_p_o_c, 
            csi2_dphy_lp_d0_rx_n_o_c, lp_d1_rx_p_o, lp_d1_rx_n_o, lp_d2_rx_p_o, 
            lp_d2_rx_n_o, lp_d3_rx_p_o, lp_d3_rx_n_o, csi2_dphy_cd_d0_o_c, 
            csi2_dphy_clk_byte_o_c, csi2_dphy_clk_p_i, csi2_dphy_clk_n_i, 
            csi2_dphy_d0_p_i, csi2_dphy_d0_n_i) /* synthesis syn_module_defined=1 */ ;
    input csi2_dphy_reset_n_i_c;
    output [7:0]bd0_w;
    output [7:0]bd1_w;
    output [7:0]bd2_w;
    output [7:0]bd3_w;
    input hs_settle_en_w;
    input csi2_dphy_term_clk_en_o_c;
    input GND_net;
    output lp_clk_rx_p;
    output lp_clk_rx_n;
    output csi2_dphy_lp_d0_rx_p_o_c;
    output csi2_dphy_lp_d0_rx_n_o_c;
    output lp_d1_rx_p_o;
    output lp_d1_rx_n_o;
    output lp_d2_rx_p_o;
    output lp_d2_rx_n_o;
    output lp_d3_rx_p_o;
    output lp_d3_rx_n_o;
    output csi2_dphy_cd_d0_o_c;
    output csi2_dphy_clk_byte_o_c;
    inout csi2_dphy_clk_p_i;
    inout csi2_dphy_clk_n_i;
    inout csi2_dphy_d0_p_i;
    inout csi2_dphy_d0_n_i;
    
    
    csi2_dphy_soft_dphy_rx \LATTICE.dphy_rx  (.reset_n_i(csi2_dphy_reset_n_i_c), 
            .clk_p_i(csi2_dphy_clk_p_i), .clk_n_i(csi2_dphy_clk_n_i), .d0_p_io(csi2_dphy_d0_p_i), 
            .d0_n_io(csi2_dphy_d0_n_i), .hs_clk_en_i(csi2_dphy_term_clk_en_o_c), 
            .hs_d0_en_i(hs_settle_en_w), .hs_d1_en_i(hs_settle_en_w), .hs_d2_en_i(hs_settle_en_w), 
            .hs_d3_en_i(hs_settle_en_w), .lp_d0_tx_en_i(GND_net), .lp_d0_tx_p_i(GND_net), 
            .lp_d0_tx_n_i(GND_net), .clk_byte_o(csi2_dphy_clk_byte_o_c), 
            .bd0_o({bd0_w}), .bd1_o({bd1_w}), .bd2_o({bd2_w}), .bd3_o({bd3_w}), 
            .lp_clk_rx_p_o(lp_clk_rx_p), .lp_clk_rx_n_o(lp_clk_rx_n), .lp_d0_rx_p_o(csi2_dphy_lp_d0_rx_p_o_c), 
            .lp_d0_rx_n_o(csi2_dphy_lp_d0_rx_n_o_c), .lp_d1_rx_p_o(lp_d1_rx_p_o), 
            .lp_d1_rx_n_o(lp_d1_rx_n_o), .lp_d2_rx_p_o(lp_d2_rx_p_o), .lp_d2_rx_n_o(lp_d2_rx_n_o), 
            .lp_d3_rx_p_o(lp_d3_rx_p_o), .lp_d3_rx_n_o(lp_d3_rx_n_o), .cd_d0_o(csi2_dphy_cd_d0_o_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=297, LSE_RLINE=340 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/csi2_dphy/csi2_dphy_dphy_wrapper.v(449[9] 480[10])
    
endmodule
//
// Verilog Description of module csi2_dphy_soft_dphy_rx
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

