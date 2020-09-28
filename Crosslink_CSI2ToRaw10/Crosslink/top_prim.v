// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.3.469
// Netlist written on Mon Sep 28 22:35:15 2020
//
// Verilog Description of module top
//

module top (csi2_dphy_reset_byte_fr_n_i, csi2_dphy_reset_byte_n_i, csi2_dphy_reset_lp_n_i, 
            csi2_dphy_reset_n_i, csi2_dphy_clk_byte_fr_i, csi2_dphy_clk_lp_ctrl_i, 
            csi2_dphy_pd_dphy_i, csi2_dphy_pll_lock_i, csi2_dphy_clk_byte_hs_o, 
            csi2_dphy_clk_byte_o, csi2_dphy_bd0_o, csi2_dphy_lp_hs_state_clk_o, 
            csi2_dphy_lp_hs_state_d_o, csi2_dphy_capture_en_o, csi2_dphy_cd_d0_o, 
            csi2_dphy_hs_d_en_o, csi2_dphy_hs_sync_o, csi2_dphy_lp_d0_rx_n_o, 
            csi2_dphy_lp_d0_rx_p_o, csi2_dphy_term_clk_en_o, csi2_dphy_clk_n_i, 
            csi2_dphy_clk_p_i, csi2_dphy_d0_n_i, csi2_dphy_d0_p_i);   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(4[8:11])
    input csi2_dphy_reset_byte_fr_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(7[9:36])
    input csi2_dphy_reset_byte_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(8[9:33])
    input csi2_dphy_reset_lp_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(9[9:31])
    input csi2_dphy_reset_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(10[9:28])
    input csi2_dphy_clk_byte_fr_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(12[9:32])
    input csi2_dphy_clk_lp_ctrl_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(13[9:32])
    input csi2_dphy_pd_dphy_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(15[9:28])
    input csi2_dphy_pll_lock_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(16[9:29])
    output csi2_dphy_clk_byte_hs_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(17[9:32])
    output csi2_dphy_clk_byte_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(18[9:29])
    output [7:0]csi2_dphy_bd0_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(20[9:24])
    output [1:0]csi2_dphy_lp_hs_state_clk_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(21[9:36])
    output [1:0]csi2_dphy_lp_hs_state_d_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(22[9:34])
    output csi2_dphy_capture_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(23[9:31])
    output csi2_dphy_cd_d0_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(24[9:26])
    output csi2_dphy_hs_d_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(25[9:28])
    output csi2_dphy_hs_sync_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(26[9:28])
    output csi2_dphy_lp_d0_rx_n_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(27[9:31])
    output csi2_dphy_lp_d0_rx_p_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(28[9:31])
    output csi2_dphy_term_clk_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(29[9:32])
    input csi2_dphy_clk_n_i /* synthesis .original_dir=IN_OUT */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(30[9:26])
    input csi2_dphy_clk_p_i /* synthesis .original_dir=IN_OUT */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(31[9:26])
    input csi2_dphy_d0_n_i /* synthesis .original_dir=IN_OUT */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(32[9:25])
    input csi2_dphy_d0_p_i /* synthesis .original_dir=IN_OUT */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(33[9:25])
    
    
    wire csi2_dphy_reset_byte_fr_n_i_c, csi2_dphy_reset_byte_n_i_c, csi2_dphy_reset_lp_n_i_c, 
        csi2_dphy_reset_n_i_c, csi2_dphy_clk_byte_fr_i_c, csi2_dphy_clk_lp_ctrl_i_c, 
        csi2_dphy_pd_dphy_i_c, csi2_dphy_pll_lock_i_c, csi2_dphy_clk_byte_hs_o_c, 
        csi2_dphy_clk_byte_o_c, csi2_dphy_bd0_o_c_7, csi2_dphy_bd0_o_c_6, 
        csi2_dphy_bd0_o_c_5, csi2_dphy_bd0_o_c_4, csi2_dphy_bd0_o_c_3, 
        csi2_dphy_bd0_o_c_2, csi2_dphy_bd0_o_c_1, csi2_dphy_bd0_o_c_0, 
        csi2_dphy_lp_hs_state_clk_o_c_1, csi2_dphy_lp_hs_state_clk_o_c_0, 
        csi2_dphy_lp_hs_state_d_o_c_1, csi2_dphy_lp_hs_state_d_o_c_0, csi2_dphy_capture_en_o_c, 
        csi2_dphy_cd_d0_o_c, csi2_dphy_hs_d_en_o_c, csi2_dphy_hs_sync_o_c, 
        csi2_dphy_lp_d0_rx_n_o_c, csi2_dphy_lp_d0_rx_p_o_c, csi2_dphy_term_clk_en_o_c, 
        csi2_dphy_clk_n_i_c, csi2_dphy_clk_p_i_c, csi2_dphy_d0_n_i_c, 
        csi2_dphy_d0_p_i_c, GND_net, VCC_net;
    
    csi2_dphy csi2_dphy_inst (.bd0_o({csi2_dphy_bd0_o_c_7, csi2_dphy_bd0_o_c_6, 
            csi2_dphy_bd0_o_c_5, csi2_dphy_bd0_o_c_4, csi2_dphy_bd0_o_c_3, 
            csi2_dphy_bd0_o_c_2, csi2_dphy_bd0_o_c_1, csi2_dphy_bd0_o_c_0}), 
            .lp_hs_state_clk_o({csi2_dphy_lp_hs_state_clk_o_c_1, csi2_dphy_lp_hs_state_clk_o_c_0}), 
            .lp_hs_state_d_o({csi2_dphy_lp_hs_state_d_o_c_1, csi2_dphy_lp_hs_state_d_o_c_0}), 
            .capture_en_o(csi2_dphy_capture_en_o_c), .cd_d0_o(csi2_dphy_cd_d0_o_c), 
            .clk_byte_fr_i(csi2_dphy_clk_byte_fr_i_c), .clk_byte_hs_o(csi2_dphy_clk_byte_hs_o_c), 
            .clk_byte_o(csi2_dphy_clk_byte_o_c), .clk_lp_ctrl_i(csi2_dphy_clk_lp_ctrl_i_c), 
            .clk_n_i(csi2_dphy_clk_n_i_c), .clk_p_i(csi2_dphy_clk_p_i_c), 
            .d0_n_i(csi2_dphy_d0_n_i_c), .d0_p_i(csi2_dphy_d0_p_i_c), .hs_d_en_o(csi2_dphy_hs_d_en_o_c), 
            .hs_sync_o(csi2_dphy_hs_sync_o_c), .lp_d0_rx_n_o(csi2_dphy_lp_d0_rx_n_o_c), 
            .lp_d0_rx_p_o(csi2_dphy_lp_d0_rx_p_o_c), .pd_dphy_i(csi2_dphy_pd_dphy_i_c), 
            .pll_lock_i(csi2_dphy_pll_lock_i_c), .reset_byte_fr_n_i(csi2_dphy_reset_byte_fr_n_i_c), 
            .reset_byte_n_i(csi2_dphy_reset_byte_n_i_c), .reset_lp_n_i(csi2_dphy_reset_lp_n_i_c), 
            .reset_n_i(csi2_dphy_reset_n_i_c), .term_clk_en_o(csi2_dphy_term_clk_en_o_c)) /* synthesis syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(71[22:41])
    VLO i25 (.Z(GND_net));
    OB csi2_dphy_clk_byte_hs_o_pad (.I(csi2_dphy_clk_byte_hs_o_c), .O(csi2_dphy_clk_byte_hs_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(17[9:32])
    OB csi2_dphy_clk_byte_o_pad (.I(csi2_dphy_clk_byte_o_c), .O(csi2_dphy_clk_byte_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(18[9:29])
    OB csi2_dphy_bd0_o_pad_7 (.I(csi2_dphy_bd0_o_c_7), .O(csi2_dphy_bd0_o[7]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(20[9:24])
    OB csi2_dphy_bd0_o_pad_6 (.I(csi2_dphy_bd0_o_c_6), .O(csi2_dphy_bd0_o[6]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(20[9:24])
    OB csi2_dphy_bd0_o_pad_5 (.I(csi2_dphy_bd0_o_c_5), .O(csi2_dphy_bd0_o[5]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(20[9:24])
    OB csi2_dphy_bd0_o_pad_4 (.I(csi2_dphy_bd0_o_c_4), .O(csi2_dphy_bd0_o[4]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(20[9:24])
    OB csi2_dphy_bd0_o_pad_3 (.I(csi2_dphy_bd0_o_c_3), .O(csi2_dphy_bd0_o[3]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(20[9:24])
    OB csi2_dphy_bd0_o_pad_2 (.I(csi2_dphy_bd0_o_c_2), .O(csi2_dphy_bd0_o[2]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(20[9:24])
    OB csi2_dphy_bd0_o_pad_1 (.I(csi2_dphy_bd0_o_c_1), .O(csi2_dphy_bd0_o[1]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(20[9:24])
    OB csi2_dphy_bd0_o_pad_0 (.I(csi2_dphy_bd0_o_c_0), .O(csi2_dphy_bd0_o[0]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(20[9:24])
    OB csi2_dphy_lp_hs_state_clk_o_pad_1 (.I(csi2_dphy_lp_hs_state_clk_o_c_1), 
       .O(csi2_dphy_lp_hs_state_clk_o[1]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(21[9:36])
    OB csi2_dphy_lp_hs_state_clk_o_pad_0 (.I(csi2_dphy_lp_hs_state_clk_o_c_0), 
       .O(csi2_dphy_lp_hs_state_clk_o[0]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(21[9:36])
    OB csi2_dphy_lp_hs_state_d_o_pad_1 (.I(csi2_dphy_lp_hs_state_d_o_c_1), 
       .O(csi2_dphy_lp_hs_state_d_o[1]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(22[9:34])
    OB csi2_dphy_lp_hs_state_d_o_pad_0 (.I(csi2_dphy_lp_hs_state_d_o_c_0), 
       .O(csi2_dphy_lp_hs_state_d_o[0]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(22[9:34])
    OB csi2_dphy_capture_en_o_pad (.I(csi2_dphy_capture_en_o_c), .O(csi2_dphy_capture_en_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(23[9:31])
    OB csi2_dphy_cd_d0_o_pad (.I(csi2_dphy_cd_d0_o_c), .O(csi2_dphy_cd_d0_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(24[9:26])
    OB csi2_dphy_hs_d_en_o_pad (.I(csi2_dphy_hs_d_en_o_c), .O(csi2_dphy_hs_d_en_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(25[9:28])
    OB csi2_dphy_hs_sync_o_pad (.I(csi2_dphy_hs_sync_o_c), .O(csi2_dphy_hs_sync_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(26[9:28])
    OB csi2_dphy_lp_d0_rx_n_o_pad (.I(csi2_dphy_lp_d0_rx_n_o_c), .O(csi2_dphy_lp_d0_rx_n_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(27[9:31])
    OB csi2_dphy_lp_d0_rx_p_o_pad (.I(csi2_dphy_lp_d0_rx_p_o_c), .O(csi2_dphy_lp_d0_rx_p_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(28[9:31])
    OB csi2_dphy_term_clk_en_o_pad (.I(csi2_dphy_term_clk_en_o_c), .O(csi2_dphy_term_clk_en_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(29[9:32])
    IB csi2_dphy_reset_byte_fr_n_i_pad (.I(csi2_dphy_reset_byte_fr_n_i), .O(csi2_dphy_reset_byte_fr_n_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(7[9:36])
    IB csi2_dphy_reset_byte_n_i_pad (.I(csi2_dphy_reset_byte_n_i), .O(csi2_dphy_reset_byte_n_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(8[9:33])
    IB csi2_dphy_reset_lp_n_i_pad (.I(csi2_dphy_reset_lp_n_i), .O(csi2_dphy_reset_lp_n_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(9[9:31])
    IB csi2_dphy_reset_n_i_pad (.I(csi2_dphy_reset_n_i), .O(csi2_dphy_reset_n_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(10[9:28])
    IB csi2_dphy_clk_byte_fr_i_pad (.I(csi2_dphy_clk_byte_fr_i), .O(csi2_dphy_clk_byte_fr_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(12[9:32])
    IB csi2_dphy_clk_lp_ctrl_i_pad (.I(csi2_dphy_clk_lp_ctrl_i), .O(csi2_dphy_clk_lp_ctrl_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(13[9:32])
    IB csi2_dphy_pd_dphy_i_pad (.I(csi2_dphy_pd_dphy_i), .O(csi2_dphy_pd_dphy_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(15[9:28])
    IB csi2_dphy_pll_lock_i_pad (.I(csi2_dphy_pll_lock_i), .O(csi2_dphy_pll_lock_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(16[9:29])
    IB csi2_dphy_clk_n_i_pad (.I(csi2_dphy_clk_n_i), .O(csi2_dphy_clk_n_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(30[9:26])
    IB csi2_dphy_clk_p_i_pad (.I(csi2_dphy_clk_p_i), .O(csi2_dphy_clk_p_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(31[9:26])
    IB csi2_dphy_d0_n_i_pad (.I(csi2_dphy_d0_n_i), .O(csi2_dphy_d0_n_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(32[9:25])
    IB csi2_dphy_d0_p_i_pad (.I(csi2_dphy_d0_p_i), .O(csi2_dphy_d0_p_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/top.vhd(33[9:25])
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i26 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module csi2_dphy
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

