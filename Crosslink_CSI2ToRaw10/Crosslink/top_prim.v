// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.3.469
// Netlist written on Tue Nov 10 23:45:42 2020
//
// Verilog Description of module top
//

module top (clk_p_i, clk_n_i, d0_p_i, d0_n_i, d1_p_i, d1_n_i, d2_p_i, 
            d2_n_i, d3_p_i, d3_n_i, fv, lv, pixel_clk, pixdata, 
            reset_n_i) /* synthesis syn_module_defined=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(1[8:11])
    inout clk_p_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(3[46:53])
    inout clk_n_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(4[46:53])
    inout d0_p_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(5[46:52])
    inout d0_n_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(6[46:52])
    inout d1_p_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(7[46:52])
    inout d1_n_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(8[46:52])
    inout d2_p_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(9[46:52])
    inout d2_n_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(10[46:52])
    inout d3_p_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(11[46:52])
    inout d3_n_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(12[46:52])
    output fv;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(14[42:44])
    output lv;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(14[46:48])
    output pixel_clk;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(16[42:51])
    output [9:0]pixdata;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(17[47:54])
    input reset_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(18[25:34])
    
    wire clk_p_i /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(3[46:53])
    wire clk_n_i /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(4[46:53])
    wire clk_byte_hs /* synthesis is_clock=1, SET_AS_NETWORK=clk_byte_hs */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(34[32:43])
    wire refclk /* synthesis is_clock=1, SET_AS_NETWORK=refclk */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(130[28:34])
    wire clk_byte_o /* synthesis is_clock=1, SET_AS_NETWORK=clk_byte_o */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(198[32:42])
    wire read_clk /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[104:112])
    wire pixel_clock /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(286[61:72])
    
    wire GND_net, VCC_net, fv_c, lv_c, pixel_clk_c, pixdata_c_9, 
        pixdata_c_8, pixdata_c_7, pixdata_c_6, pixdata_c_5, pixdata_c_4, 
        pixdata_c_3, pixdata_c_2, pixdata_c_1, pixdata_c_0, reset_n_i_c, 
        reset_ref_n_meta, reset_ref_n_sync, reset_byte_fr_n_sync, reset_pixel_n_meta, 
        term_d0_en_w, hs_d1_en_w;
    wire [7:0]bd0;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(46[32:35])
    wire [7:0]bd1;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(46[37:40])
    wire [7:0]bd2;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(46[42:45])
    wire [7:0]bd3;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(46[47:50])
    wire [7:0]bd0_pre;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(46[52:59])
    wire [7:0]bd1_pre;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(46[61:68])
    wire [7:0]bd2_pre;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(46[70:77])
    wire [7:0]bd3_pre;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(46[79:86])
    
    wire lp_clk_rx_p, lp_clk_rx_n, fv_8bit;
    wire [31:0]payload_adj_373;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(52[32:39])
    
    wire term_clk_en_o, hs_sync_o, pll_lock;
    wire [7:0]bd3_pre_out;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(278[12:23])
    wire [7:0]bd2_pre_out;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(278[24:35])
    wire [7:0]bd1_pre_out;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(278[36:47])
    wire [7:0]bd0_pre_out;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(278[48:59])
    wire [9:0]pd_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(298[11:15])
    
    wire lp_d0_rx_p_o, lp_d0_rx_n_o, lp_d1_rx_p_o, lp_d1_rx_n_o, lp_d2_rx_p_o, 
        lp_d2_rx_n_o, lp_d3_rx_p_o, lp_d3_rx_n_o, fv_o, lv_o, reset_n_i_N_4, 
        n1120, lv_8bit, reset_byte_fr_n_i_N_14;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX reset_ref_n_meta_34 (.D(reset_n_i_c), .CK(refclk), .Q(reset_ref_n_meta));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(143[9] 146[12])
    defparam reset_ref_n_meta_34.GSR = "ENABLED";
    FD1S3AX reset_ref_n_sync_35 (.D(reset_ref_n_meta), .CK(refclk), .Q(reset_ref_n_sync));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(143[9] 146[12])
    defparam reset_ref_n_sync_35.GSR = "ENABLED";
    OFS1P3DX \genblk1.pixel_data_0..r_ff_i  (.D(pd_o[0]), .SP(VCC_net), 
            .SCLK(pixel_clock), .CD(reset_byte_fr_n_i_N_14), .Q(pixdata_c_0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(310[26] 317[18])
    defparam \genblk1.pixel_data_0..r_ff_i .GSR = "DISABLED";
    FD1S3AX reset_pixel_n_meta_36 (.D(reset_n_i_c), .CK(clk_byte_hs), .Q(reset_pixel_n_meta));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(157[9] 160[12])
    defparam reset_pixel_n_meta_36.GSR = "ENABLED";
    raw10_lane4_10_4 byte_pixel (.rstn(reset_n_i_c), .clk(read_clk), .pixclk(pixel_clock), 
            .din({payload_adj_373}), .fv_8bit(fv_8bit), .lv_8bit(lv_8bit), 
            .pixdata({pd_o}), .fv(fv_o), .lv(lv_o));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(301[4] 302[82])
    cross_domain_fifo fifo_first (.GND_net(GND_net), .bd2_pre({bd2_pre}), 
            .bd1_pre({bd1_pre}), .bd0_pre({bd0_pre}), .clk_byte_hs(clk_byte_hs), 
            .read_clk(read_clk), .reset_n_i_N_4(reset_n_i_N_4), .bd2_pre_out({bd2_pre_out}), 
            .bd1_pre_out({bd1_pre_out}), .bd0_pre_out({bd0_pre_out}), .VCC_net(VCC_net), 
            .bd3_pre({bd3_pre}), .bd3_pre_out({bd3_pre_out})) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    control_capture_lane4_10_4_RAW10 u_control_capture1 (.rstn(reset_byte_fr_n_sync), 
            .clk(read_clk), .din({bd3_pre_out, bd2_pre_out, bd1_pre_out, 
            bd0_pre_out}), .fv(fv_8bit), .lv(lv_8bit), .dout({payload_adj_373}), 
            .line_length_detect(GND_net), .line_length({GND_net, GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net, GND_net}));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(294[2] 296[95])
    OFS1P3DX \genblk1.pixel_data_1..r_ff_i  (.D(pd_o[1]), .SP(VCC_net), 
            .SCLK(pixel_clock), .CD(reset_byte_fr_n_i_N_14), .Q(pixdata_c_1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(310[26] 317[18])
    defparam \genblk1.pixel_data_1..r_ff_i .GSR = "DISABLED";
    OFS1P3DX \genblk1.pixel_data_2..r_ff_i  (.D(pd_o[2]), .SP(VCC_net), 
            .SCLK(pixel_clock), .CD(reset_byte_fr_n_i_N_14), .Q(pixdata_c_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(310[26] 317[18])
    defparam \genblk1.pixel_data_2..r_ff_i .GSR = "DISABLED";
    OFS1P3DX \genblk1.pixel_data_3..r_ff_i  (.D(pd_o[3]), .SP(VCC_net), 
            .SCLK(pixel_clock), .CD(reset_byte_fr_n_i_N_14), .Q(pixdata_c_3)) /* synthesis syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(310[26] 317[18])
    defparam \genblk1.pixel_data_3..r_ff_i .GSR = "DISABLED";
    OFS1P3DX \genblk1.pixel_data_4..r_ff_i  (.D(pd_o[4]), .SP(VCC_net), 
            .SCLK(pixel_clock), .CD(reset_byte_fr_n_i_N_14), .Q(pixdata_c_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(310[26] 317[18])
    defparam \genblk1.pixel_data_4..r_ff_i .GSR = "DISABLED";
    OFS1P3DX \genblk1.pixel_data_5..r_ff_i  (.D(pd_o[5]), .SP(VCC_net), 
            .SCLK(pixel_clock), .CD(reset_byte_fr_n_i_N_14), .Q(pixdata_c_5)) /* synthesis syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(310[26] 317[18])
    defparam \genblk1.pixel_data_5..r_ff_i .GSR = "DISABLED";
    OFS1P3DX \genblk1.pixel_data_6..r_ff_i  (.D(pd_o[6]), .SP(VCC_net), 
            .SCLK(pixel_clock), .CD(reset_byte_fr_n_i_N_14), .Q(pixdata_c_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(310[26] 317[18])
    defparam \genblk1.pixel_data_6..r_ff_i .GSR = "DISABLED";
    OFS1P3DX \genblk1.pixel_data_7..r_ff_i  (.D(pd_o[7]), .SP(VCC_net), 
            .SCLK(pixel_clock), .CD(reset_byte_fr_n_i_N_14), .Q(pixdata_c_7)) /* synthesis syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(310[26] 317[18])
    defparam \genblk1.pixel_data_7..r_ff_i .GSR = "DISABLED";
    OFS1P3DX \genblk1.pixel_data_8..r_ff_i  (.D(pd_o[8]), .SP(VCC_net), 
            .SCLK(pixel_clock), .CD(reset_byte_fr_n_i_N_14), .Q(pixdata_c_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(310[26] 317[18])
    defparam \genblk1.pixel_data_8..r_ff_i .GSR = "DISABLED";
    OFS1P3DX pixdata_9__I_0 (.D(pd_o[9]), .SP(VCC_net), .SCLK(pixel_clock), 
            .CD(reset_byte_fr_n_i_N_14), .Q(pixdata_c_9)) /* synthesis syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(310[26] 317[18])
    defparam pixdata_9__I_0.GSR = "DISABLED";
    ODDRX1F pclk_ddr (.D0(GND_net), .D1(VCC_net), .SCLK(pixel_clock), 
            .RST(reset_byte_fr_n_i_N_14), .Q(pixel_clk_c)) /* synthesis syn_instantiated=1 */ ;
    defparam pclk_ddr.GSR = "ENABLED";
    OFS1P3DX fv_ff (.D(fv_o), .SP(VCC_net), .SCLK(pixel_clock), .CD(reset_byte_fr_n_i_N_14), 
            .Q(fv_c)) /* synthesis syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(334[10] 341[10])
    defparam fv_ff.GSR = "DISABLED";
    OFS1P3DX lv_ff (.D(lv_o), .SP(VCC_net), .SCLK(pixel_clock), .CD(reset_byte_fr_n_i_N_14), 
            .Q(lv_c)) /* synthesis syn_instantiated=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(343[10] 350[10])
    defparam lv_ff.GSR = "DISABLED";
    OSCI osc (.HFOUTEN(VCC_net), .HFCLKOUT(refclk)) /* synthesis syn_instantiated=1 */ ;
    defparam osc.HFCLKDIV = 1;
    IB reset_n_i_pad (.I(reset_n_i), .O(reset_n_i_c));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(18[25:34])
    OB pixdata_pad_0 (.I(pixdata_c_0), .O(pixdata[0]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(17[47:54])
    OB pixdata_pad_1 (.I(pixdata_c_1), .O(pixdata[1]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(17[47:54])
    OB pixdata_pad_2 (.I(pixdata_c_2), .O(pixdata[2]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(17[47:54])
    OB pixdata_pad_3 (.I(pixdata_c_3), .O(pixdata[3]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(17[47:54])
    OB pixdata_pad_4 (.I(pixdata_c_4), .O(pixdata[4]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(17[47:54])
    FD1S3AX reset_byte_fr_n_sync_33 (.D(reset_pixel_n_meta), .CK(clk_byte_hs), 
            .Q(reset_byte_fr_n_sync));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(118[9] 121[12])
    defparam reset_byte_fr_n_sync_33.GSR = "ENABLED";
    OB pixdata_pad_6 (.I(pixdata_c_6), .O(pixdata[6]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(17[47:54])
    OB pixdata_pad_7 (.I(pixdata_c_7), .O(pixdata[7]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(17[47:54])
    OB pixdata_pad_8 (.I(pixdata_c_8), .O(pixdata[8]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(17[47:54])
    OB pixdata_pad_9 (.I(pixdata_c_9), .O(pixdata[9]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(17[47:54])
    OB pixel_clk_pad (.I(pixel_clk_c), .O(pixel_clk));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(16[42:51])
    OB lv_pad (.I(lv_c), .O(lv));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(14[46:48])
    OB fv_pad (.I(fv_c), .O(fv));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(14[42:44])
    OB pixdata_pad_5 (.I(pixdata_c_5), .O(pixdata[5]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(17[47:54])
    pll_double pll (.clk_byte_hs(clk_byte_hs), .reset_n_i_N_4(reset_n_i_N_4), 
            .pixel_clock(pixel_clock), .read_clk(read_clk), .pll_lock(pll_lock), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(286[12:111])
    LUT4 reset_byte_fr_n_i_I_0_1_lut (.A(reset_byte_fr_n_sync), .Z(reset_byte_fr_n_i_N_14)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(613[17:35])
    defparam reset_byte_fr_n_i_I_0_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(reset_n_i_c));
    sip4_demo_dphy_rx_wrap csi_rx (.clk_byte_hs(clk_byte_hs), .hs_d1_en_w(hs_d1_en_w), 
            .reset_byte_fr_n_i_N_14(reset_byte_fr_n_i_N_14), .clk_byte_o(clk_byte_o), 
            .VCC_net(VCC_net), .n1120(n1120), .reset_n_i_c(reset_n_i_c), 
            .bd0({bd0}), .bd1({bd1}), .bd2({bd2}), .bd3({bd3}), .GND_net(GND_net), 
            .clk_p_i(clk_p_i), .clk_n_i(clk_n_i), .d0_p_i(d0_p_i), .d0_n_i(d0_n_i), 
            .d1_p_i(d1_p_i), .d1_n_i(d1_n_i), .d2_p_i(d2_p_i), .d2_n_i(d2_n_i), 
            .d3_p_i(d3_p_i), .d3_n_i(d3_n_i), .term_clk_en_o(term_clk_en_o), 
            .term_d0_en_w(term_d0_en_w), .lp_clk_rx_p(lp_clk_rx_p), .lp_clk_rx_n(lp_clk_rx_n), 
            .reset_n_i_N_4(reset_n_i_N_4), .lp_d0_rx_p_o(lp_d0_rx_p_o), 
            .lp_d0_rx_n_o(lp_d0_rx_n_o), .lp_d1_rx_p_o(lp_d1_rx_p_o), .lp_d1_rx_n_o(lp_d1_rx_n_o), 
            .lp_d2_rx_p_o(lp_d2_rx_p_o), .lp_d2_rx_n_o(lp_d2_rx_n_o), .lp_d3_rx_p_o(lp_d3_rx_p_o), 
            .lp_d3_rx_n_o(lp_d3_rx_n_o), .hs_sync_o(hs_sync_o)) /* synthesis syn_module_defined=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(169[9] 218[10])
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    sip4_demo_rx_global_ctrl rx_global_ctrl (.reset_n_i_c(reset_n_i_c), .reset_ref_n_sync(reset_ref_n_sync), 
            .reset_byte_fr_n_sync(reset_byte_fr_n_sync), .refclk(refclk), 
            .clk_byte_hs(clk_byte_hs), .clk_byte_o(clk_byte_o), .pll_lock(pll_lock), 
            .bd0({bd0}), .bd1({bd1}), .bd2({bd2}), .bd3({bd3}), .lp_clk_rx_p(lp_clk_rx_p), 
            .lp_clk_rx_n(lp_clk_rx_n), .lp_d0_rx_p_o(lp_d0_rx_p_o), .lp_d0_rx_n_o(lp_d0_rx_n_o), 
            .lp_d1_rx_p_o(lp_d1_rx_p_o), .lp_d1_rx_n_o(lp_d1_rx_n_o), .lp_d2_rx_p_o(lp_d2_rx_p_o), 
            .lp_d2_rx_n_o(lp_d2_rx_n_o), .lp_d3_rx_p_o(lp_d3_rx_p_o), .lp_d3_rx_n_o(lp_d3_rx_n_o), 
            .hs_sync_o(hs_sync_o), .bd0_pre({bd0_pre}), .bd1_pre({bd1_pre}), 
            .bd2_pre({bd2_pre}), .bd3_pre({bd3_pre}), .term_clk_en_o(term_clk_en_o), 
            .term_d0_en_w(term_d0_en_w), .hs_d1_en_w(hs_d1_en_w), .n1120(n1120)) /* synthesis syn_module_defined=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(225[1] 265[2])
    
endmodule
//
// Verilog Description of module raw10_lane4_10_4
//

module raw10_lane4_10_4 (rstn, clk, pixclk, din, fv_8bit, lv_8bit, 
            pixdata, fv, lv);   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/raw10_lane4_bb.v(1[8:19])
    input rstn;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/raw10_lane4_bb.v(6[34:38])
    input clk;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/raw10_lane4_bb.v(7[34:37])
    input pixclk;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/raw10_lane4_bb.v(8[34:40])
    input [31:0]din;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/raw10_lane4_bb.v(9[28:31])
    input fv_8bit;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/raw10_lane4_bb.v(10[28:35])
    input lv_8bit;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/raw10_lane4_bb.v(11[28:35])
    output [9:0]pixdata;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/raw10_lane4_bb.v(12[28:35])
    output fv;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/raw10_lane4_bb.v(13[28:30])
    output lv;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/raw10_lane4_bb.v(14[28:30])
    
    
    
endmodule
//
// Verilog Description of module cross_domain_fifo
//

module cross_domain_fifo (GND_net, bd2_pre, bd1_pre, bd0_pre, clk_byte_hs, 
            read_clk, reset_n_i_N_4, bd2_pre_out, bd1_pre_out, bd0_pre_out, 
            VCC_net, bd3_pre, bd3_pre_out) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input GND_net;
    input [7:0]bd2_pre;
    input [7:0]bd1_pre;
    input [7:0]bd0_pre;
    input clk_byte_hs;
    input read_clk;
    input reset_n_i_N_4;
    output [7:0]bd2_pre_out;
    output [7:0]bd1_pre_out;
    output [7:0]bd0_pre_out;
    input VCC_net;
    input [7:0]bd3_pre;
    output [7:0]bd3_pre_out;
    
    wire clk_byte_hs /* synthesis is_clock=1, SET_AS_NETWORK=clk_byte_hs */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(34[32:43])
    wire read_clk /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[104:112])
    
    wire w_g2b_xor_cluster_1, w_gcount_r21, w_gcount_r22, w_gcount_r23, 
        w_gcount_r24, w_gcount_r27, w_gcount_r28, wcount_r7, w_gcount_r26, 
        wcount_r6, w_gcount_r25, wcount_r4, wcount_r3, wcount_r2, 
        w_g2b_xor_cluster_0, wcount_r1, w_gcount_r20, wcount_r0, r_gcount_w25, 
        r_gcount_w26, r_gcount_w27, r_gcount_w28, r_g2b_xor_cluster_0, 
        r_g2b_xor_cluster_1, r_gcount_w21, r_gcount_w22, r_gcount_w23, 
        r_gcount_w24, rcount_w7, rcount_w6, rcount_w4, rcount_w3, 
        rcount_w2, rcount_w1, r_gcount_w20, rcount_w0, rptr_8, rcount_8, 
        empty_cmp_set, empty_cmp_clr, wptr_8, wcount_8, full_cmp_set, 
        full_cmp_clr, wptr_0, wptr_1, wptr_2, wptr_3, wptr_4, wptr_5, 
        wptr_6, wptr_7, rptr_0, rptr_1, rptr_2, rptr_3, rptr_4, 
        rptr_5, rptr_6, rptr_7, rden_i, wren_i, wcount_2, iwcount_2, 
        wcount_3, iwcount_3, wcount_4, iwcount_4, wcount_5, iwcount_5, 
        wcount_6, iwcount_6, wcount_7, iwcount_7, iwcount_8, w_gcount_0, 
        w_gdata_0, w_gcount_1, w_gdata_1, w_gcount_2, w_gdata_2, w_gcount_3, 
        w_gdata_3, w_gcount_4, w_gdata_4, w_gcount_5, w_gdata_5, w_gcount_6, 
        w_gdata_6, w_gcount_7, w_gdata_7, w_gcount_8, wcount_0, wcount_1, 
        w_gcount_r0, rRst, ircount_0, rcount_0, ircount_1, rcount_1, 
        ircount_2, rcount_2, ircount_3, rcount_3, ircount_4, rcount_4, 
        ircount_5, rcount_5, ircount_6, rcount_6, ircount_7, rcount_7, 
        ircount_8, r_gdata_0, r_gcount_0, r_gdata_1, r_gcount_1, r_gdata_2, 
        r_gcount_2, r_gdata_3, r_gcount_3, r_gdata_4, r_gcount_4, 
        r_gdata_5, r_gcount_5, r_gdata_6, r_gcount_6, r_gdata_7, r_gcount_7, 
        r_gcount_8, w_gcount_r1, w_gcount_r2, w_gcount_r3, w_gcount_r4, 
        w_gcount_r5, w_gcount_r6, w_gcount_r7, w_gcount_r8, r_gcount_w0, 
        r_gcount_w1, r_gcount_w2, r_gcount_w3, r_gcount_w4, r_gcount_w5, 
        r_gcount_w6, r_gcount_w7, r_gcount_w8, Full, full_d, Empty, 
        empty_d, iwcount_0, w_gctr_ci, iwcount_1, co0, co1, co2, 
        co3, r_gctr_ci, co0_1, co1_1, co2_1, co3_1, cmp_ci, co0_2, 
        co1_2, co2_2, co3_2, empty_d_c, cmp_ci_1, co0_3, co1_3, 
        co2_3, co3_3, full_d_c, invout_1, invout_0;
    
    ROM16X1A LUT4_30 (.AD0(w_gcount_r24), .AD1(w_gcount_r23), .AD2(w_gcount_r22), 
            .AD3(w_gcount_r21), .DO0(w_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_30.initval = 16'b0110100110010110;
    ROM16X1A LUT4_29 (.AD0(GND_net), .AD1(GND_net), .AD2(w_gcount_r28), 
            .AD3(w_gcount_r27), .DO0(wcount_r7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_29.initval = 16'b0110100110010110;
    ROM16X1A LUT4_28 (.AD0(GND_net), .AD1(w_gcount_r28), .AD2(w_gcount_r27), 
            .AD3(w_gcount_r26), .DO0(wcount_r6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_28.initval = 16'b0110100110010110;
    ROM16X1A LUT4_27 (.AD0(wcount_r7), .AD1(w_gcount_r26), .AD2(w_gcount_r25), 
            .AD3(w_gcount_r24), .DO0(wcount_r4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_27.initval = 16'b0110100110010110;
    ROM16X1A LUT4_26 (.AD0(wcount_r6), .AD1(w_gcount_r25), .AD2(w_gcount_r24), 
            .AD3(w_gcount_r23), .DO0(wcount_r3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_26.initval = 16'b0110100110010110;
    ROM16X1A LUT4_25 (.AD0(w_g2b_xor_cluster_0), .AD1(w_gcount_r24), .AD2(w_gcount_r23), 
            .AD3(w_gcount_r22), .DO0(wcount_r2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_25.initval = 16'b0110100110010110;
    ROM16X1A LUT4_24 (.AD0(GND_net), .AD1(GND_net), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_24.initval = 16'b0110100110010110;
    ROM16X1A LUT4_23 (.AD0(GND_net), .AD1(w_gcount_r20), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_23.initval = 16'b0110100110010110;
    ROM16X1A LUT4_22 (.AD0(r_gcount_w28), .AD1(r_gcount_w27), .AD2(r_gcount_w26), 
            .AD3(r_gcount_w25), .DO0(r_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_22.initval = 16'b0110100110010110;
    ROM16X1A LUT4_21 (.AD0(r_gcount_w24), .AD1(r_gcount_w23), .AD2(r_gcount_w22), 
            .AD3(r_gcount_w21), .DO0(r_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_21.initval = 16'b0110100110010110;
    ROM16X1A LUT4_20 (.AD0(GND_net), .AD1(GND_net), .AD2(r_gcount_w28), 
            .AD3(r_gcount_w27), .DO0(rcount_w7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_20.initval = 16'b0110100110010110;
    ROM16X1A LUT4_19 (.AD0(GND_net), .AD1(r_gcount_w28), .AD2(r_gcount_w27), 
            .AD3(r_gcount_w26), .DO0(rcount_w6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_19.initval = 16'b0110100110010110;
    ROM16X1A LUT4_18 (.AD0(rcount_w7), .AD1(r_gcount_w26), .AD2(r_gcount_w25), 
            .AD3(r_gcount_w24), .DO0(rcount_w4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_18.initval = 16'b0110100110010110;
    ROM16X1A LUT4_17 (.AD0(rcount_w6), .AD1(r_gcount_w25), .AD2(r_gcount_w24), 
            .AD3(r_gcount_w23), .DO0(rcount_w3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_17.initval = 16'b0110100110010110;
    ROM16X1A LUT4_16 (.AD0(r_g2b_xor_cluster_0), .AD1(r_gcount_w24), .AD2(r_gcount_w23), 
            .AD3(r_gcount_w22), .DO0(rcount_w2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_16.initval = 16'b0110100110010110;
    ROM16X1A LUT4_15 (.AD0(GND_net), .AD1(GND_net), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_15.initval = 16'b0110100110010110;
    ROM16X1A LUT4_14 (.AD0(GND_net), .AD1(r_gcount_w20), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_14.initval = 16'b0110100110010110;
    ROM16X1A LUT4_13 (.AD0(GND_net), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(rptr_8), .DO0(empty_cmp_set)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_13.initval = 16'b0000010000010000;
    ROM16X1A LUT4_12 (.AD0(GND_net), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(rptr_8), .DO0(empty_cmp_clr)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_12.initval = 16'b0001000000000100;
    ROM16X1A LUT4_11 (.AD0(GND_net), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(wptr_8), .DO0(full_cmp_set)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_11.initval = 16'b0000000101000000;
    ROM16X1A LUT4_10 (.AD0(GND_net), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(wptr_8), .DO0(full_cmp_clr)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_10.initval = 16'b0100000000000001;
    PDPW8KE pdp_ram_0_0_1 (.DI0(bd0_pre[0]), .DI1(bd0_pre[1]), .DI2(bd0_pre[2]), 
            .DI3(bd0_pre[3]), .DI4(bd0_pre[4]), .DI5(bd0_pre[5]), .DI6(bd0_pre[6]), 
            .DI7(bd0_pre[7]), .DI8(bd1_pre[0]), .DI9(bd1_pre[1]), .DI10(bd1_pre[2]), 
            .DI11(bd1_pre[3]), .DI12(bd1_pre[4]), .DI13(bd1_pre[5]), .DI14(bd1_pre[6]), 
            .DI15(bd1_pre[7]), .DI16(bd2_pre[0]), .DI17(bd2_pre[1]), .ADW0(wptr_0), 
            .ADW1(wptr_1), .ADW2(wptr_2), .ADW3(wptr_3), .ADW4(wptr_4), 
            .ADW5(wptr_5), .ADW6(wptr_6), .ADW7(wptr_7), .ADW8(GND_net), 
            .BE0(VCC_net), .BE1(VCC_net), .CEW(wren_i), .CLKW(clk_byte_hs), 
            .CSW0(VCC_net), .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), 
            .ADR1(GND_net), .ADR2(GND_net), .ADR3(GND_net), .ADR4(rptr_0), 
            .ADR5(rptr_1), .ADR6(rptr_2), .ADR7(rptr_3), .ADR8(rptr_4), 
            .ADR9(rptr_5), .ADR10(rptr_6), .ADR11(rptr_7), .ADR12(GND_net), 
            .CER(rden_i), .OCER(rden_i), .CLKR(read_clk), .CSR0(GND_net), 
            .CSR1(GND_net), .CSR2(GND_net), .RST(reset_n_i_N_4), .DO0(bd1_pre_out[1]), 
            .DO1(bd1_pre_out[2]), .DO2(bd1_pre_out[3]), .DO3(bd1_pre_out[4]), 
            .DO4(bd1_pre_out[5]), .DO5(bd1_pre_out[6]), .DO6(bd1_pre_out[7]), 
            .DO7(bd2_pre_out[0]), .DO8(bd2_pre_out[1]), .DO9(bd0_pre_out[0]), 
            .DO10(bd0_pre_out[1]), .DO11(bd0_pre_out[2]), .DO12(bd0_pre_out[3]), 
            .DO13(bd0_pre_out[4]), .DO14(bd0_pre_out[5]), .DO15(bd0_pre_out[6]), 
            .DO16(bd0_pre_out[7]), .DO17(bd1_pre_out[0])) /* synthesis MEM_LPC_FILE="cross_domain_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
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
    FD1P3AX FF_127 (.D(iwcount_2), .SP(wren_i), .CK(clk_byte_hs), .Q(wcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(575[13] 576[22])
    defparam FF_127.GSR = "ENABLED";
    FD1P3AX FF_126 (.D(iwcount_3), .SP(wren_i), .CK(clk_byte_hs), .Q(wcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(579[13] 580[22])
    defparam FF_126.GSR = "ENABLED";
    FD1P3AX FF_125 (.D(iwcount_4), .SP(wren_i), .CK(clk_byte_hs), .Q(wcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(583[13] 584[22])
    defparam FF_125.GSR = "ENABLED";
    FD1P3AX FF_124 (.D(iwcount_5), .SP(wren_i), .CK(clk_byte_hs), .Q(wcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(587[13] 588[22])
    defparam FF_124.GSR = "ENABLED";
    FD1P3AX FF_123 (.D(iwcount_6), .SP(wren_i), .CK(clk_byte_hs), .Q(wcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(591[13] 592[22])
    defparam FF_123.GSR = "ENABLED";
    FD1P3AX FF_122 (.D(iwcount_7), .SP(wren_i), .CK(clk_byte_hs), .Q(wcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(595[13] 596[22])
    defparam FF_122.GSR = "ENABLED";
    FD1P3AX FF_121 (.D(iwcount_8), .SP(wren_i), .CK(clk_byte_hs), .Q(wcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(599[13] 600[22])
    defparam FF_121.GSR = "ENABLED";
    FD1P3AX FF_120 (.D(w_gdata_0), .SP(wren_i), .CK(clk_byte_hs), .Q(w_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(603[13] 604[24])
    defparam FF_120.GSR = "ENABLED";
    FD1P3AX FF_119 (.D(w_gdata_1), .SP(wren_i), .CK(clk_byte_hs), .Q(w_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(607[13] 608[24])
    defparam FF_119.GSR = "ENABLED";
    FD1P3AX FF_118 (.D(w_gdata_2), .SP(wren_i), .CK(clk_byte_hs), .Q(w_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(611[13] 612[24])
    defparam FF_118.GSR = "ENABLED";
    FD1P3AX FF_117 (.D(w_gdata_3), .SP(wren_i), .CK(clk_byte_hs), .Q(w_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(615[13] 616[24])
    defparam FF_117.GSR = "ENABLED";
    FD1P3AX FF_116 (.D(w_gdata_4), .SP(wren_i), .CK(clk_byte_hs), .Q(w_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(619[13] 620[24])
    defparam FF_116.GSR = "ENABLED";
    FD1P3AX FF_115 (.D(w_gdata_5), .SP(wren_i), .CK(clk_byte_hs), .Q(w_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(623[13] 624[24])
    defparam FF_115.GSR = "ENABLED";
    FD1P3AX FF_114 (.D(w_gdata_6), .SP(wren_i), .CK(clk_byte_hs), .Q(w_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(627[13] 628[24])
    defparam FF_114.GSR = "ENABLED";
    FD1P3AX FF_113 (.D(w_gdata_7), .SP(wren_i), .CK(clk_byte_hs), .Q(w_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(631[13] 632[24])
    defparam FF_113.GSR = "ENABLED";
    FD1P3AX FF_112 (.D(wcount_8), .SP(wren_i), .CK(clk_byte_hs), .Q(w_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(635[13] 636[24])
    defparam FF_112.GSR = "ENABLED";
    FD1P3AX FF_111 (.D(wcount_0), .SP(wren_i), .CK(clk_byte_hs), .Q(wptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(639[13] 640[20])
    defparam FF_111.GSR = "ENABLED";
    FD1P3AX FF_110 (.D(wcount_1), .SP(wren_i), .CK(clk_byte_hs), .Q(wptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(643[13] 644[20])
    defparam FF_110.GSR = "ENABLED";
    FD1P3AX FF_109 (.D(wcount_2), .SP(wren_i), .CK(clk_byte_hs), .Q(wptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(647[13] 648[20])
    defparam FF_109.GSR = "ENABLED";
    FD1P3AX FF_108 (.D(wcount_3), .SP(wren_i), .CK(clk_byte_hs), .Q(wptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(651[13] 652[20])
    defparam FF_108.GSR = "ENABLED";
    FD1P3AX FF_107 (.D(wcount_4), .SP(wren_i), .CK(clk_byte_hs), .Q(wptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(655[13] 656[20])
    defparam FF_107.GSR = "ENABLED";
    FD1P3AX FF_106 (.D(wcount_5), .SP(wren_i), .CK(clk_byte_hs), .Q(wptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(659[13] 660[20])
    defparam FF_106.GSR = "ENABLED";
    FD1P3AX FF_105 (.D(wcount_6), .SP(wren_i), .CK(clk_byte_hs), .Q(wptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(663[13] 664[20])
    defparam FF_105.GSR = "ENABLED";
    FD1P3AX FF_104 (.D(wcount_7), .SP(wren_i), .CK(clk_byte_hs), .Q(wptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(667[13] 668[20])
    defparam FF_104.GSR = "ENABLED";
    FD1P3AX FF_103 (.D(wcount_8), .SP(wren_i), .CK(clk_byte_hs), .Q(wptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(671[13] 672[20])
    defparam FF_103.GSR = "ENABLED";
    FD1S3AX FF_75 (.D(w_gcount_0), .CK(read_clk), .Q(w_gcount_r0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(773[13:78])
    defparam FF_75.GSR = "ENABLED";
    FD1P3BX FF_102 (.D(ircount_0), .SP(rden_i), .CK(read_clk), .PD(rRst), 
            .Q(rcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(675[13] 676[22])
    defparam FF_102.GSR = "DISABLED";
    FD1P3DX FF_101 (.D(ircount_1), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(679[13] 680[22])
    defparam FF_101.GSR = "DISABLED";
    FD1P3DX FF_100 (.D(ircount_2), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(683[13] 684[22])
    defparam FF_100.GSR = "DISABLED";
    FD1P3DX FF_99 (.D(ircount_3), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(687[13] 688[22])
    defparam FF_99.GSR = "DISABLED";
    FD1P3DX FF_98 (.D(ircount_4), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(691[13] 692[22])
    defparam FF_98.GSR = "DISABLED";
    FD1P3DX FF_97 (.D(ircount_5), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(695[13] 696[22])
    defparam FF_97.GSR = "DISABLED";
    FD1P3DX FF_96 (.D(ircount_6), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(699[13] 700[22])
    defparam FF_96.GSR = "DISABLED";
    FD1P3DX FF_95 (.D(ircount_7), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(703[13] 704[22])
    defparam FF_95.GSR = "DISABLED";
    FD1P3DX FF_94 (.D(ircount_8), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(707[13] 708[22])
    defparam FF_94.GSR = "DISABLED";
    FD1P3DX FF_93 (.D(r_gdata_0), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(r_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(711[13] 712[24])
    defparam FF_93.GSR = "DISABLED";
    FD1P3DX FF_92 (.D(r_gdata_1), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(r_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(715[13] 716[24])
    defparam FF_92.GSR = "DISABLED";
    FD1P3DX FF_91 (.D(r_gdata_2), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(r_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(719[13] 720[24])
    defparam FF_91.GSR = "DISABLED";
    FD1P3DX FF_90 (.D(r_gdata_3), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(r_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(723[13] 724[24])
    defparam FF_90.GSR = "DISABLED";
    FD1P3DX FF_89 (.D(r_gdata_4), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(r_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(727[13] 728[24])
    defparam FF_89.GSR = "DISABLED";
    FD1P3DX FF_88 (.D(r_gdata_5), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(r_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(731[13] 732[24])
    defparam FF_88.GSR = "DISABLED";
    FD1P3DX FF_87 (.D(r_gdata_6), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(r_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(735[13] 736[24])
    defparam FF_87.GSR = "DISABLED";
    FD1P3DX FF_86 (.D(r_gdata_7), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(r_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(739[13] 740[24])
    defparam FF_86.GSR = "DISABLED";
    FD1P3DX FF_85 (.D(rcount_8), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(r_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(743[13:87])
    defparam FF_85.GSR = "DISABLED";
    FD1P3DX FF_84 (.D(rcount_0), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(746[13:83])
    defparam FF_84.GSR = "DISABLED";
    FD1P3DX FF_83 (.D(rcount_1), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(749[13:83])
    defparam FF_83.GSR = "DISABLED";
    FD1P3DX FF_82 (.D(rcount_2), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(752[13:83])
    defparam FF_82.GSR = "DISABLED";
    FD1P3DX FF_81 (.D(rcount_3), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(755[13:83])
    defparam FF_81.GSR = "DISABLED";
    FD1P3DX FF_80 (.D(rcount_4), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(758[13:83])
    defparam FF_80.GSR = "DISABLED";
    FD1P3DX FF_79 (.D(rcount_5), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(761[13:83])
    defparam FF_79.GSR = "DISABLED";
    FD1P3DX FF_78 (.D(rcount_6), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(764[13:83])
    defparam FF_78.GSR = "DISABLED";
    FD1P3DX FF_77 (.D(rcount_7), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(767[13:83])
    defparam FF_77.GSR = "DISABLED";
    FD1P3DX FF_76 (.D(rcount_8), .SP(rden_i), .CK(read_clk), .CD(rRst), 
            .Q(rptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(770[13:83])
    defparam FF_76.GSR = "DISABLED";
    FD1S3AX FF_74 (.D(w_gcount_1), .CK(read_clk), .Q(w_gcount_r1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(776[13:78])
    defparam FF_74.GSR = "ENABLED";
    FD1S3AX FF_73 (.D(w_gcount_2), .CK(read_clk), .Q(w_gcount_r2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(779[13:78])
    defparam FF_73.GSR = "ENABLED";
    FD1S3AX FF_72 (.D(w_gcount_3), .CK(read_clk), .Q(w_gcount_r3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(782[13:78])
    defparam FF_72.GSR = "ENABLED";
    FD1S3AX FF_71 (.D(w_gcount_4), .CK(read_clk), .Q(w_gcount_r4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(785[13:78])
    defparam FF_71.GSR = "ENABLED";
    FD1S3AX FF_70 (.D(w_gcount_5), .CK(read_clk), .Q(w_gcount_r5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(788[13:78])
    defparam FF_70.GSR = "ENABLED";
    FD1S3AX FF_69 (.D(w_gcount_6), .CK(read_clk), .Q(w_gcount_r6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(791[13:78])
    defparam FF_69.GSR = "ENABLED";
    FD1S3AX FF_68 (.D(w_gcount_7), .CK(read_clk), .Q(w_gcount_r7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(794[13:78])
    defparam FF_68.GSR = "ENABLED";
    FD1S3AX FF_67 (.D(w_gcount_8), .CK(read_clk), .Q(w_gcount_r8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(797[13:78])
    defparam FF_67.GSR = "ENABLED";
    FD1S3AX FF_57 (.D(w_gcount_r0), .CK(read_clk), .Q(w_gcount_r20)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(827[13:80])
    defparam FF_57.GSR = "ENABLED";
    FD1S3DX FF_66 (.D(r_gcount_0), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(800[13:77])
    defparam FF_66.GSR = "DISABLED";
    FD1S3DX FF_65 (.D(r_gcount_1), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(803[13:77])
    defparam FF_65.GSR = "DISABLED";
    FD1S3DX FF_64 (.D(r_gcount_2), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(806[13:77])
    defparam FF_64.GSR = "DISABLED";
    FD1S3DX FF_63 (.D(r_gcount_3), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(809[13:77])
    defparam FF_63.GSR = "DISABLED";
    FD1S3DX FF_62 (.D(r_gcount_4), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(812[13:77])
    defparam FF_62.GSR = "DISABLED";
    FD1S3DX FF_61 (.D(r_gcount_5), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(815[13:77])
    defparam FF_61.GSR = "DISABLED";
    FD1S3DX FF_60 (.D(r_gcount_6), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(818[13:77])
    defparam FF_60.GSR = "DISABLED";
    FD1S3DX FF_59 (.D(r_gcount_7), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(821[13:77])
    defparam FF_59.GSR = "DISABLED";
    FD1S3DX FF_58 (.D(r_gcount_8), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(824[13:77])
    defparam FF_58.GSR = "DISABLED";
    FD1S3AX FF_56 (.D(w_gcount_r1), .CK(read_clk), .Q(w_gcount_r21)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(830[13:80])
    defparam FF_56.GSR = "ENABLED";
    FD1S3AX FF_55 (.D(w_gcount_r2), .CK(read_clk), .Q(w_gcount_r22)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(833[13:80])
    defparam FF_55.GSR = "ENABLED";
    FD1S3AX FF_54 (.D(w_gcount_r3), .CK(read_clk), .Q(w_gcount_r23)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(836[13:80])
    defparam FF_54.GSR = "ENABLED";
    FD1S3AX FF_53 (.D(w_gcount_r4), .CK(read_clk), .Q(w_gcount_r24)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(839[13:80])
    defparam FF_53.GSR = "ENABLED";
    FD1S3AX FF_52 (.D(w_gcount_r5), .CK(read_clk), .Q(w_gcount_r25)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(842[13:80])
    defparam FF_52.GSR = "ENABLED";
    FD1S3AX FF_51 (.D(w_gcount_r6), .CK(read_clk), .Q(w_gcount_r26)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(845[13:80])
    defparam FF_51.GSR = "ENABLED";
    FD1S3AX FF_50 (.D(w_gcount_r7), .CK(read_clk), .Q(w_gcount_r27)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(848[13:80])
    defparam FF_50.GSR = "ENABLED";
    FD1S3AX FF_49 (.D(w_gcount_r8), .CK(read_clk), .Q(w_gcount_r28)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(851[13:80])
    defparam FF_49.GSR = "ENABLED";
    FD1S3AX FF_38 (.D(full_d), .CK(clk_byte_hs), .Q(Full)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(884[13:69])
    defparam FF_38.GSR = "ENABLED";
    FD1S3DX FF_48 (.D(r_gcount_w0), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w20)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(854[13:79])
    defparam FF_48.GSR = "DISABLED";
    FD1S3DX FF_47 (.D(r_gcount_w1), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w21)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(857[13:79])
    defparam FF_47.GSR = "DISABLED";
    FD1S3DX FF_46 (.D(r_gcount_w2), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w22)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(860[13:79])
    defparam FF_46.GSR = "DISABLED";
    FD1S3DX FF_45 (.D(r_gcount_w3), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w23)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(863[13:79])
    defparam FF_45.GSR = "DISABLED";
    FD1S3DX FF_44 (.D(r_gcount_w4), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w24)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(866[13:79])
    defparam FF_44.GSR = "DISABLED";
    FD1S3DX FF_43 (.D(r_gcount_w5), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w25)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(869[13:79])
    defparam FF_43.GSR = "DISABLED";
    FD1S3DX FF_42 (.D(r_gcount_w6), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w26)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(872[13:79])
    defparam FF_42.GSR = "DISABLED";
    FD1S3DX FF_41 (.D(r_gcount_w7), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w27)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(875[13:79])
    defparam FF_41.GSR = "DISABLED";
    FD1S3DX FF_40 (.D(r_gcount_w8), .CK(clk_byte_hs), .CD(rRst), .Q(r_gcount_w28)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(878[13:79])
    defparam FF_40.GSR = "DISABLED";
    FD1S3BX FF_39 (.D(empty_d), .CK(read_clk), .PD(rRst), .Q(Empty)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(881[13:70])
    defparam FF_39.GSR = "DISABLED";
    FD1P3AY FF_129 (.D(iwcount_0), .SP(wren_i), .CK(clk_byte_hs), .Q(wcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(567[13] 568[22])
    defparam FF_129.GSR = "ENABLED";
    CCU2C w_gctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(w_gctr_ci)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1041[11] 1043[48])
    defparam w_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam w_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam w_gctr_cia.INJECT1_0 = "NO";
    defparam w_gctr_cia.INJECT1_1 = "NO";
    CCU2C w_gctr_0 (.A0(wcount_0), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_1), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(w_gctr_ci), 
          .COUT(co0), .S0(iwcount_0), .S1(iwcount_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1049[11] 1051[69])
    defparam w_gctr_0.INIT0 = 16'b0110011010101010;
    defparam w_gctr_0.INIT1 = 16'b0110011010101010;
    defparam w_gctr_0.INJECT1_0 = "NO";
    defparam w_gctr_0.INJECT1_1 = "NO";
    CCU2C w_gctr_1 (.A0(wcount_2), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_3), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co0), 
          .COUT(co1), .S0(iwcount_2), .S1(iwcount_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1057[11] 1059[63])
    defparam w_gctr_1.INIT0 = 16'b0110011010101010;
    defparam w_gctr_1.INIT1 = 16'b0110011010101010;
    defparam w_gctr_1.INJECT1_0 = "NO";
    defparam w_gctr_1.INJECT1_1 = "NO";
    CCU2C w_gctr_2 (.A0(wcount_4), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_5), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co1), 
          .COUT(co2), .S0(iwcount_4), .S1(iwcount_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1065[11] 1067[63])
    defparam w_gctr_2.INIT0 = 16'b0110011010101010;
    defparam w_gctr_2.INIT1 = 16'b0110011010101010;
    defparam w_gctr_2.INJECT1_0 = "NO";
    defparam w_gctr_2.INJECT1_1 = "NO";
    CCU2C w_gctr_3 (.A0(wcount_6), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_7), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co2), 
          .COUT(co3), .S0(iwcount_6), .S1(iwcount_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1073[11] 1075[63])
    defparam w_gctr_3.INIT0 = 16'b0110011010101010;
    defparam w_gctr_3.INIT1 = 16'b0110011010101010;
    defparam w_gctr_3.INJECT1_0 = "NO";
    defparam w_gctr_3.INJECT1_1 = "NO";
    CCU2C w_gctr_4 (.A0(wcount_8), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co3), 
          .S0(iwcount_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1081[11] 1083[54])
    defparam w_gctr_4.INIT0 = 16'b0110011010101010;
    defparam w_gctr_4.INIT1 = 16'b0110011010101010;
    defparam w_gctr_4.INJECT1_0 = "NO";
    defparam w_gctr_4.INJECT1_1 = "NO";
    CCU2C r_gctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(r_gctr_ci)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1089[11] 1091[48])
    defparam r_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam r_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam r_gctr_cia.INJECT1_0 = "NO";
    defparam r_gctr_cia.INJECT1_1 = "NO";
    CCU2C r_gctr_0 (.A0(rcount_0), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_1), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(r_gctr_ci), 
          .COUT(co0_1), .S0(ircount_0), .S1(ircount_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1097[11] 1099[71])
    defparam r_gctr_0.INIT0 = 16'b0110011010101010;
    defparam r_gctr_0.INIT1 = 16'b0110011010101010;
    defparam r_gctr_0.INJECT1_0 = "NO";
    defparam r_gctr_0.INJECT1_1 = "NO";
    CCU2C r_gctr_1 (.A0(rcount_2), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_3), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co0_1), 
          .COUT(co1_1), .S0(ircount_2), .S1(ircount_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1105[11] 1107[67])
    defparam r_gctr_1.INIT0 = 16'b0110011010101010;
    defparam r_gctr_1.INIT1 = 16'b0110011010101010;
    defparam r_gctr_1.INJECT1_0 = "NO";
    defparam r_gctr_1.INJECT1_1 = "NO";
    CCU2C r_gctr_2 (.A0(rcount_4), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_5), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co1_1), 
          .COUT(co2_1), .S0(ircount_4), .S1(ircount_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1113[11] 1115[67])
    defparam r_gctr_2.INIT0 = 16'b0110011010101010;
    defparam r_gctr_2.INIT1 = 16'b0110011010101010;
    defparam r_gctr_2.INJECT1_0 = "NO";
    defparam r_gctr_2.INJECT1_1 = "NO";
    CCU2C r_gctr_3 (.A0(rcount_6), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_7), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co2_1), 
          .COUT(co3_1), .S0(ircount_6), .S1(ircount_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1121[11] 1123[67])
    defparam r_gctr_3.INIT0 = 16'b0110011010101010;
    defparam r_gctr_3.INIT1 = 16'b0110011010101010;
    defparam r_gctr_3.INJECT1_0 = "NO";
    defparam r_gctr_3.INJECT1_1 = "NO";
    CCU2C r_gctr_4 (.A0(rcount_8), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co3_1), 
          .S0(ircount_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1129[11] 1131[58])
    defparam r_gctr_4.INIT0 = 16'b0110011010101010;
    defparam r_gctr_4.INIT1 = 16'b0110011010101010;
    defparam r_gctr_4.INJECT1_0 = "NO";
    defparam r_gctr_4.INJECT1_1 = "NO";
    CCU2C empty_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rden_i), .B1(rden_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1137[11] 1139[45])
    defparam empty_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INJECT1_0 = "NO";
    defparam empty_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C empty_cmp_0 (.A0(rcount_0), .B0(wcount_r0), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_1), .B1(wcount_r1), .C1(VCC_net), .D1(VCC_net), 
          .CIN(cmp_ci), .COUT(co0_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1145[11] 1147[50])
    defparam empty_cmp_0.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_0.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_0.INJECT1_0 = "NO";
    defparam empty_cmp_0.INJECT1_1 = "NO";
    CCU2C empty_cmp_1 (.A0(rcount_2), .B0(wcount_r2), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_3), .B1(wcount_r3), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co0_2), .COUT(co1_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1153[11] 1155[49])
    defparam empty_cmp_1.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_1.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_1.INJECT1_0 = "NO";
    defparam empty_cmp_1.INJECT1_1 = "NO";
    CCU2C empty_cmp_2 (.A0(rcount_4), .B0(wcount_r4), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_5), .B1(w_g2b_xor_cluster_0), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co1_2), .COUT(co2_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1161[11] 1163[49])
    defparam empty_cmp_2.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_2.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_2.INJECT1_0 = "NO";
    defparam empty_cmp_2.INJECT1_1 = "NO";
    CCU2C empty_cmp_3 (.A0(rcount_6), .B0(wcount_r6), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_7), .B1(wcount_r7), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co2_2), .COUT(co3_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1169[11] 1171[49])
    defparam empty_cmp_3.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_3.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_3.INJECT1_0 = "NO";
    defparam empty_cmp_3.INJECT1_1 = "NO";
    CCU2C empty_cmp_4 (.A0(empty_cmp_set), .B0(empty_cmp_clr), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3_2), .COUT(empty_d_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1177[11] 1179[69])
    defparam empty_cmp_4.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_4.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_4.INJECT1_0 = "NO";
    defparam empty_cmp_4.INJECT1_1 = "NO";
    CCU2C a0 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(empty_d_c), 
          .S0(empty_d)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1185[11] 1187[55])
    defparam a0.INIT0 = 16'b0110011010101010;
    defparam a0.INIT1 = 16'b0110011010101010;
    defparam a0.INJECT1_0 = "NO";
    defparam a0.INJECT1_1 = "NO";
    CCU2C full_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wren_i), .B1(wren_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1193[11] 1195[47])
    defparam full_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INJECT1_0 = "NO";
    defparam full_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C full_cmp_0 (.A0(wcount_0), .B0(rcount_w0), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_1), .B1(rcount_w1), .C1(VCC_net), .D1(VCC_net), 
          .CIN(cmp_ci_1), .COUT(co0_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1201[11] 1203[52])
    defparam full_cmp_0.INIT0 = 16'b1001100110101010;
    defparam full_cmp_0.INIT1 = 16'b1001100110101010;
    defparam full_cmp_0.INJECT1_0 = "NO";
    defparam full_cmp_0.INJECT1_1 = "NO";
    CCU2C full_cmp_1 (.A0(wcount_2), .B0(rcount_w2), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_3), .B1(rcount_w3), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co0_3), .COUT(co1_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1209[11] 1211[49])
    defparam full_cmp_1.INIT0 = 16'b1001100110101010;
    defparam full_cmp_1.INIT1 = 16'b1001100110101010;
    defparam full_cmp_1.INJECT1_0 = "NO";
    defparam full_cmp_1.INJECT1_1 = "NO";
    CCU2C full_cmp_2 (.A0(wcount_4), .B0(rcount_w4), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_5), .B1(r_g2b_xor_cluster_0), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co1_3), .COUT(co2_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1217[11] 1219[49])
    defparam full_cmp_2.INIT0 = 16'b1001100110101010;
    defparam full_cmp_2.INIT1 = 16'b1001100110101010;
    defparam full_cmp_2.INJECT1_0 = "NO";
    defparam full_cmp_2.INJECT1_1 = "NO";
    CCU2C full_cmp_3 (.A0(wcount_6), .B0(rcount_w6), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_7), .B1(rcount_w7), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co2_3), .COUT(co3_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1225[11] 1227[49])
    defparam full_cmp_3.INIT0 = 16'b1001100110101010;
    defparam full_cmp_3.INIT1 = 16'b1001100110101010;
    defparam full_cmp_3.INJECT1_0 = "NO";
    defparam full_cmp_3.INJECT1_1 = "NO";
    CCU2C full_cmp_4 (.A0(full_cmp_set), .B0(full_cmp_clr), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co3_3), .COUT(full_d_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1233[11] 1235[68])
    defparam full_cmp_4.INIT0 = 16'b1001100110101010;
    defparam full_cmp_4.INIT1 = 16'b1001100110101010;
    defparam full_cmp_4.INJECT1_0 = "NO";
    defparam full_cmp_4.INJECT1_1 = "NO";
    CCU2C a1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(full_d_c), 
          .S0(full_d)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(1241[11] 1243[53])
    defparam a1.INIT0 = 16'b0110011010101010;
    defparam a1.INIT1 = 16'b0110011010101010;
    defparam a1.INJECT1_0 = "NO";
    defparam a1.INJECT1_1 = "NO";
    INV INV_1 (.A(Full), .Z(invout_1)) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    AND2 AND2_t18 (.A(VCC_net), .B(invout_1), .Z(wren_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(341[10:55])
    AND2 AND2_t17 (.A(VCC_net), .B(invout_0), .Z(rden_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(345[10:55])
    INV INV_0 (.A(Empty), .Z(invout_0)) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    OR2 OR2_t16 (.A(reset_n_i_N_4), .B(reset_n_i_N_4), .Z(rRst)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(349[9:51])
    XOR2 XOR2_t15 (.A(wcount_0), .B(wcount_1), .Z(w_gdata_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(351[10:62])
    XOR2 XOR2_t14 (.A(wcount_1), .B(wcount_2), .Z(w_gdata_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(353[10:62])
    XOR2 XOR2_t13 (.A(wcount_2), .B(wcount_3), .Z(w_gdata_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(355[10:62])
    XOR2 XOR2_t12 (.A(wcount_3), .B(wcount_4), .Z(w_gdata_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(357[10:62])
    XOR2 XOR2_t11 (.A(wcount_4), .B(wcount_5), .Z(w_gdata_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(359[10:62])
    XOR2 XOR2_t10 (.A(wcount_5), .B(wcount_6), .Z(w_gdata_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(361[10:62])
    XOR2 XOR2_t9 (.A(wcount_6), .B(wcount_7), .Z(w_gdata_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(363[10:61])
    XOR2 XOR2_t8 (.A(wcount_7), .B(wcount_8), .Z(w_gdata_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(365[10:61])
    XOR2 XOR2_t7 (.A(rcount_0), .B(rcount_1), .Z(r_gdata_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(367[10:61])
    XOR2 XOR2_t6 (.A(rcount_1), .B(rcount_2), .Z(r_gdata_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(369[10:61])
    XOR2 XOR2_t5 (.A(rcount_2), .B(rcount_3), .Z(r_gdata_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(371[10:61])
    XOR2 XOR2_t4 (.A(rcount_3), .B(rcount_4), .Z(r_gdata_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(373[10:61])
    XOR2 XOR2_t3 (.A(rcount_4), .B(rcount_5), .Z(r_gdata_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(375[10:61])
    XOR2 XOR2_t2 (.A(rcount_5), .B(rcount_6), .Z(r_gdata_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(377[10:61])
    XOR2 XOR2_t1 (.A(rcount_6), .B(rcount_7), .Z(r_gdata_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(379[10:61])
    XOR2 XOR2_t0 (.A(rcount_7), .B(rcount_8), .Z(r_gdata_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(381[10:61])
    ROM16X1A LUT4_31 (.AD0(w_gcount_r28), .AD1(w_gcount_r27), .AD2(w_gcount_r26), 
            .AD3(w_gcount_r25), .DO0(w_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
    defparam LUT4_31.initval = 16'b0110100110010110;
    PDPW8KE pdp_ram_0_1_0 (.DI0(bd2_pre[2]), .DI1(bd2_pre[3]), .DI2(bd2_pre[4]), 
            .DI3(bd2_pre[5]), .DI4(bd2_pre[6]), .DI5(bd2_pre[7]), .DI6(bd3_pre[0]), 
            .DI7(bd3_pre[1]), .DI8(bd3_pre[2]), .DI9(bd3_pre[3]), .DI10(bd3_pre[4]), 
            .DI11(bd3_pre[5]), .DI12(bd3_pre[6]), .DI13(bd3_pre[7]), .DI14(GND_net), 
            .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), .ADW0(wptr_0), 
            .ADW1(wptr_1), .ADW2(wptr_2), .ADW3(wptr_3), .ADW4(wptr_4), 
            .ADW5(wptr_5), .ADW6(wptr_6), .ADW7(wptr_7), .ADW8(GND_net), 
            .BE0(VCC_net), .BE1(VCC_net), .CEW(wren_i), .CLKW(clk_byte_hs), 
            .CSW0(VCC_net), .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), 
            .ADR1(GND_net), .ADR2(GND_net), .ADR3(GND_net), .ADR4(rptr_0), 
            .ADR5(rptr_1), .ADR6(rptr_2), .ADR7(rptr_3), .ADR8(rptr_4), 
            .ADR9(rptr_5), .ADR10(rptr_6), .ADR11(rptr_7), .ADR12(GND_net), 
            .CER(rden_i), .OCER(rden_i), .CLKR(read_clk), .CSR0(GND_net), 
            .CSR1(GND_net), .CSR2(GND_net), .RST(reset_n_i_N_4), .DO0(bd3_pre_out[3]), 
            .DO1(bd3_pre_out[4]), .DO2(bd3_pre_out[5]), .DO3(bd3_pre_out[6]), 
            .DO4(bd3_pre_out[7]), .DO9(bd2_pre_out[2]), .DO10(bd2_pre_out[3]), 
            .DO11(bd2_pre_out[4]), .DO12(bd2_pre_out[5]), .DO13(bd2_pre_out[6]), 
            .DO14(bd2_pre_out[7]), .DO15(bd3_pre_out[0]), .DO16(bd3_pre_out[1]), 
            .DO17(bd3_pre_out[2])) /* synthesis MEM_LPC_FILE="cross_domain_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[19:290])
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
    FD1P3AX FF_128 (.D(iwcount_1), .SP(wren_i), .CK(clk_byte_hs), .Q(wcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=19, LSE_RCOL=290, LSE_LLINE=283, LSE_RLINE=283 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/crosslink_csi2toraw10/cross_domain_fifo/cross_domain_fifo.v(571[13] 572[22])
    defparam FF_128.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module control_capture_lane4_10_4_RAW10
//

module control_capture_lane4_10_4_RAW10 (rstn, clk, din, fv, lv, dout, 
            vc, dt, wc, ecc, error, dt_correct, wc_correct, line_length_detect, 
            line_length);   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(1[8:29])
    input rstn;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(7[42:46])
    input clk;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(8[42:45])
    input [31:0]din;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(9[42:45])
    output fv;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(12[42:44])
    output lv;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(13[42:44])
    output [31:0]dout;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(14[42:46])
    output [1:0]vc;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(15[42:44])
    output [5:0]dt;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(16[42:44])
    output [15:0]wc;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(17[42:44])
    output [7:0]ecc;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(18[42:45])
    output error;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(19[39:44])
    output dt_correct;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(20[10:20])
    output wc_correct;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(21[10:20])
    input line_length_detect;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(22[39:57])
    input [15:0]line_length;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/control_capture_lane4_bb.v(23[39:50])
    
    
    
endmodule
//
// Verilog Description of module pll_double
//

module pll_double (clk_byte_hs, reset_n_i_N_4, pixel_clock, read_clk, 
            pll_lock, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_byte_hs;
    input reset_n_i_N_4;
    output pixel_clock;
    output read_clk;
    output pll_lock;
    input GND_net;
    
    wire clk_byte_hs /* synthesis is_clock=1, SET_AS_NETWORK=clk_byte_hs */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(34[32:43])
    wire pixel_clock /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(286[61:72])
    wire read_clk /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(283[104:112])
    
    EHXPLLM PLLInst_0 (.CLKI(clk_byte_hs), .CLKFB(pixel_clock), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .USRSTDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(reset_n_i_N_4), .ENCLKOP(GND_net), .ENCLKOS(GND_net), 
            .ENCLKOS2(GND_net), .ENCLKOS3(GND_net), .CLKOP(pixel_clock), 
            .CLKOS2(read_clk), .LOCK(pll_lock)) /* synthesis FREQUENCY_PIN_CLKOS2="90.000000", FREQUENCY_PIN_CLKOS="288.000000", FREQUENCY_PIN_CLKOP="288.000000", FREQUENCY_PIN_CLKI="90.000000", ICP_CURRENT="6", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=12, LSE_LCOL=12, LSE_RCOL=111, LSE_LLINE=286, LSE_RLINE=286 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(286[12:111])
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
// Verilog Description of module sip4_demo_dphy_rx_wrap
//

module sip4_demo_dphy_rx_wrap (clk_byte_hs, hs_d1_en_w, reset_byte_fr_n_i_N_14, 
            clk_byte_o, VCC_net, n1120, reset_n_i_c, bd0, bd1, bd2, 
            bd3, GND_net, clk_p_i, clk_n_i, d0_p_i, d0_n_i, d1_p_i, 
            d1_n_i, d2_p_i, d2_n_i, d3_p_i, d3_n_i, term_clk_en_o, 
            term_d0_en_w, lp_clk_rx_p, lp_clk_rx_n, reset_n_i_N_4, lp_d0_rx_p_o, 
            lp_d0_rx_n_o, lp_d1_rx_p_o, lp_d1_rx_n_o, lp_d2_rx_p_o, 
            lp_d2_rx_n_o, lp_d3_rx_p_o, lp_d3_rx_n_o, hs_sync_o) /* synthesis syn_module_defined=1 */ ;
    output clk_byte_hs;
    input hs_d1_en_w;
    input reset_byte_fr_n_i_N_14;
    output clk_byte_o;
    input VCC_net;
    input n1120;
    input reset_n_i_c;
    output [7:0]bd0;
    output [7:0]bd1;
    output [7:0]bd2;
    output [7:0]bd3;
    input GND_net;
    inout clk_p_i;
    inout clk_n_i;
    inout d0_p_i;
    inout d0_n_i;
    inout d1_p_i;
    inout d1_n_i;
    inout d2_p_i;
    inout d2_n_i;
    inout d3_p_i;
    inout d3_n_i;
    input term_clk_en_o;
    input term_d0_en_w;
    output lp_clk_rx_p;
    output lp_clk_rx_n;
    output reset_n_i_N_4;
    output lp_d0_rx_p_o;
    output lp_d0_rx_n_o;
    output lp_d1_rx_p_o;
    output lp_d1_rx_n_o;
    output lp_d2_rx_p_o;
    output lp_d2_rx_n_o;
    output lp_d3_rx_p_o;
    output lp_d3_rx_n_o;
    output hs_sync_o;
    
    wire clk_byte_hs /* synthesis is_clock=1, SET_AS_NETWORK=clk_byte_hs */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(34[32:43])
    wire clk_byte_o /* synthesis is_clock=1, SET_AS_NETWORK=clk_byte_o */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(198[32:42])
    wire clk_p_i /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(3[46:53])
    wire clk_n_i /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(4[46:53])
    
    \dphy_rx_wrap(BYTECLK_MHZ=96)  dsi_rx (.clk_byte_hs(clk_byte_hs), .hs_d1_en_w(hs_d1_en_w), 
            .reset_byte_fr_n_i_N_14(reset_byte_fr_n_i_N_14), .clk_byte_o(clk_byte_o), 
            .VCC_net(VCC_net), .n1120(n1120), .reset_n_i_c(reset_n_i_c), 
            .bd0({bd0}), .bd1({bd1}), .bd2({bd2}), .bd3({bd3}), .GND_net(GND_net), 
            .clk_p_i(clk_p_i), .clk_n_i(clk_n_i), .d0_p_i(d0_p_i), .d0_n_i(d0_n_i), 
            .d1_p_i(d1_p_i), .d1_n_i(d1_n_i), .d2_p_i(d2_p_i), .d2_n_i(d2_n_i), 
            .d3_p_i(d3_p_i), .d3_n_i(d3_n_i), .term_clk_en_o(term_clk_en_o), 
            .term_d0_en_w(term_d0_en_w), .lp_clk_rx_p(lp_clk_rx_p), .lp_clk_rx_n(lp_clk_rx_n), 
            .reset_n_i_N_4(reset_n_i_N_4), .lp_d0_rx_p_o(lp_d0_rx_p_o), 
            .lp_d0_rx_n_o(lp_d0_rx_n_o), .lp_d1_rx_p_o(lp_d1_rx_p_o), .lp_d1_rx_n_o(lp_d1_rx_n_o), 
            .lp_d2_rx_p_o(lp_d2_rx_p_o), .lp_d2_rx_n_o(lp_d2_rx_n_o), .lp_d3_rx_p_o(lp_d3_rx_p_o), 
            .lp_d3_rx_n_o(lp_d3_rx_n_o), .hs_sync_o(hs_sync_o)) /* synthesis syn_module_defined=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/sip4_demo_dphy_rx_wrap.v(68[1] 117[2])
    
endmodule
//
// Verilog Description of module \dphy_rx_wrap(BYTECLK_MHZ=96) 
//

module \dphy_rx_wrap(BYTECLK_MHZ=96)  (clk_byte_hs, hs_d1_en_w, reset_byte_fr_n_i_N_14, 
            clk_byte_o, VCC_net, n1120, reset_n_i_c, bd0, bd1, bd2, 
            bd3, GND_net, clk_p_i, clk_n_i, d0_p_i, d0_n_i, d1_p_i, 
            d1_n_i, d2_p_i, d2_n_i, d3_p_i, d3_n_i, term_clk_en_o, 
            term_d0_en_w, lp_clk_rx_p, lp_clk_rx_n, reset_n_i_N_4, lp_d0_rx_p_o, 
            lp_d0_rx_n_o, lp_d1_rx_p_o, lp_d1_rx_n_o, lp_d2_rx_p_o, 
            lp_d2_rx_n_o, lp_d3_rx_p_o, lp_d3_rx_n_o, hs_sync_o) /* synthesis syn_module_defined=1 */ ;
    output clk_byte_hs;
    input hs_d1_en_w;
    input reset_byte_fr_n_i_N_14;
    output clk_byte_o;
    input VCC_net;
    input n1120;
    input reset_n_i_c;
    output [7:0]bd0;
    output [7:0]bd1;
    output [7:0]bd2;
    output [7:0]bd3;
    input GND_net;
    inout clk_p_i;
    inout clk_n_i;
    inout d0_p_i;
    inout d0_n_i;
    inout d1_p_i;
    inout d1_n_i;
    inout d2_p_i;
    inout d2_n_i;
    inout d3_p_i;
    inout d3_n_i;
    input term_clk_en_o;
    input term_d0_en_w;
    output lp_clk_rx_p;
    output lp_clk_rx_n;
    output reset_n_i_N_4;
    output lp_d0_rx_p_o;
    output lp_d0_rx_n_o;
    output lp_d1_rx_p_o;
    output lp_d1_rx_n_o;
    output lp_d2_rx_p_o;
    output lp_d2_rx_n_o;
    output lp_d3_rx_p_o;
    output lp_d3_rx_n_o;
    output hs_sync_o;
    
    wire clk_byte_hs /* synthesis is_clock=1, SET_AS_NETWORK=clk_byte_hs */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(34[32:43])
    wire clk_byte_o /* synthesis is_clock=1, SET_AS_NETWORK=clk_byte_o */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(198[32:42])
    wire clk_p_i /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(3[46:53])
    wire clk_n_i /* synthesis is_clock=1 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(4[46:53])
    wire [3:0]settle_cnt_lane0;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(139[24:40])
    
    wire clk_byte_hs_enable_1;
    wire [7:0]n623;
    wire [7:0]bd1_reg3_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(135[36:46])
    
    wire bd_fr_sel_r_1__N_262;
    wire [7:0]bd1_fr_r_7__N_271;
    wire [3:0]settle_cnt_lane1;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(139[42:58])
    
    wire n1115;
    wire [3:0]n286;
    
    wire n1510;
    wire [3:0]settle_cnt_lane3;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(139[78:94])
    
    wire n1117;
    wire [3:0]n564;
    
    wire n729;
    wire [7:0]n641;
    wire [7:0]bd2_reg3_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(135[48:58])
    wire [7:0]bd2_fr_r_7__N_279;
    wire [3:0]dphy_sync;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/sip4_demo_dphy_rx_wrap.v(52[15:24])
    
    wire n6;
    wire [3:0]sot_det_c;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(152[47:56])
    wire [3:0]d_sote_det;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(152[35:45])
    
    wire hs_sync_c, clk_byte_hs_enable_7, n1116;
    wire [3:0]settle_cnt_lane2;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(139[60:76])
    
    wire n1, hs_sync_latch, reset_by_hs_sync_sync_n;
    wire [7:0]bd0_reg1_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(133[24:34])
    
    wire clk_byte_o_enable_57;
    wire [15:0]bd0_mixel;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(154[24:33])
    wire [7:0]bd0_fr_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(136[24:32])
    
    wire hs_sync_d1_r;
    wire [7:0]bd0_o_7__N_5;
    wire [7:0]bd1_fr_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(136[34:42])
    wire [7:0]bd1_o_7__N_15;
    wire [7:0]bd2_fr_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(136[44:52])
    wire [7:0]bd2_o_7__N_23;
    wire [7:0]bd3_fr_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(136[54:62])
    wire [7:0]bd3_o_7__N_31;
    wire [3:0]n317;
    
    wire n737;
    wire [3:0]settle_cnt_lane1_3__N_204;
    
    wire lp_d0_rx_p_r1, lp_d0_rx_p_r, n1119, n1_adj_312, lp_d0_rx_p_r2, 
        lp_d0_rx_n_r, lp_d0_rx_n, lp_d0_rx_n_r1, lp_d0_rx_n_r2, lp_d1_rx_p_r, 
        lp_d1_rx_p, lp_d1_rx_p_r1;
    wire [7:0]n677;
    wire [7:0]bd0_reg3_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(135[24:34])
    wire [7:0]bd0_fr_r_7__N_263;
    wire [7:0]bd0_reg2_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(134[24:34])
    
    wire lp_d1_rx_p_r2, lp_d1_rx_n_r, lp_d1_rx_n, lp_d1_rx_n_r1, lp_d1_rx_n_r2, 
        lp_d2_rx_p_r, lp_d2_rx_p, lp_d2_rx_p_r1, n1508, lp_d2_rx_p_r2, 
        lp_d2_rx_n_r, lp_d2_rx_n, lp_d2_rx_n_r1, lp_d2_rx_n_r2, lp_d3_rx_p_r, 
        lp_d3_rx_p, lp_d3_rx_p_r1;
    wire [7:0]bd1_reg1_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(133[36:46])
    wire [7:0]bd1_reg2_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(134[36:46])
    
    wire lp_d3_rx_p_r2, lp_d3_rx_n_r, lp_d3_rx_n, lp_d3_rx_n_r1, lp_d3_rx_n_r2, 
        hs_sync_d2_r, hs_en0_settle;
    wire [3:0]n296;
    
    wire hs_sync_meta, hs_sync_sync, bd_sel_r_1__N_259, hs_en3_settle, 
        clk_byte_hs_enable_2, hs_en1_settle, hs_en2_settle;
    wire [15:0]bd1_mixel;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(154[35:44])
    wire [15:0]bd2_mixel;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(154[46:55])
    wire [15:0]bd3_mixel;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(154[57:66])
    
    wire lp_d0_rx_p, term_clk_en_i_N_195, clk_byte_hs_enable_36;
    wire [7:0]bd2_reg1_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(133[48:58])
    wire [7:0]bd2_reg2_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(134[48:58])
    wire [7:0]bd3_reg1_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(133[60:70])
    wire [7:0]bd3_reg2_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(134[60:70])
    wire [7:0]bd3_reg3_r;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(135[60:70])
    wire [7:0]bd3_fr_r_7__N_287;
    
    wire clk_byte_hs_enable_8;
    wire [3:0]settle_cnt_lane0_3__N_198;
    
    wire n1414, n1072, n1088, n1084;
    wire [7:0]n659;
    
    wire n1421, n1420, n1415, n1070;
    wire [3:0]settle_cnt_lane3_3__N_216;
    
    wire n1076, n1080;
    wire [3:0]settle_cnt_lane2_3__N_210;
    
    wire n1078, n1082;
    
    LUT4 i877_3_lut_rep_7_4_lut (.A(settle_cnt_lane0[2]), .B(settle_cnt_lane0[0]), 
         .C(settle_cnt_lane0[1]), .D(settle_cnt_lane0[3]), .Z(clk_byte_hs_enable_1)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i877_3_lut_rep_7_4_lut.init = 16'h0001;
    LUT4 mux_112_i5_3_lut (.A(n623[4]), .B(bd1_reg3_r[4]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd1_fr_r_7__N_271[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_112_i5_3_lut.init = 16'hcaca;
    FD1S3IX settle_cnt_lane1_i0 (.D(n286[0]), .CK(clk_byte_hs), .CD(n1115), 
            .Q(settle_cnt_lane1[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(344[18] 355[16])
    defparam settle_cnt_lane1_i0.GSR = "ENABLED";
    LUT4 i866_2_lut_4_lut (.A(n1510), .B(settle_cnt_lane3[3]), .C(settle_cnt_lane3[1]), 
         .D(hs_d1_en_w), .Z(n1117)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D))))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(399[22:43])
    defparam i866_2_lut_4_lut.init = 16'h01ff;
    FD1S3BX bd_fr_sel_r_FSM_i0 (.D(n729), .CK(clk_byte_hs), .PD(reset_byte_fr_n_i_N_14), 
            .Q(n564[0]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam bd_fr_sel_r_FSM_i0.GSR = "DISABLED";
    LUT4 mux_114_i1_3_lut (.A(n641[0]), .B(bd2_reg3_r[0]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd2_fr_r_7__N_279[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_114_i1_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut (.A(dphy_sync[0]), .B(n6), .C(sot_det_c[2]), .D(d_sote_det[0]), 
         .Z(hs_sync_c)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(452[32:47])
    defparam i3_4_lut.init = 16'hc080;
    LUT4 i864_2_lut (.A(clk_byte_hs_enable_7), .B(hs_d1_en_w), .Z(n1116)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(382[18] 389[16])
    defparam i864_2_lut.init = 16'hbbbb;
    LUT4 i1_1_lut (.A(settle_cnt_lane2[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(386[18] 389[16])
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i852_4_lut (.A(settle_cnt_lane2[0]), .B(settle_cnt_lane2[3]), .C(settle_cnt_lane2[2]), 
         .D(settle_cnt_lane2[1]), .Z(clk_byte_hs_enable_7)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(365[22:43])
    defparam i852_4_lut.init = 16'h0001;
    LUT4 i2_4_lut (.A(dphy_sync[3]), .B(dphy_sync[1]), .C(d_sote_det[3]), 
         .D(d_sote_det[1]), .Z(n6)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(452[32:47])
    defparam i2_4_lut.init = 16'hfac8;
    FD1P3DX hs_sync_latch_281 (.D(VCC_net), .SP(hs_sync_c), .CK(clk_byte_o), 
            .CD(reset_by_hs_sync_sync_n), .Q(hs_sync_latch)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(729[10] 731[8])
    defparam hs_sync_latch_281.GSR = "DISABLED";
    LUT4 d_sot_det_3__I_0_i3_2_lut (.A(dphy_sync[2]), .B(d_sote_det[2]), 
         .Z(sot_det_c[2])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(442[28:50])
    defparam d_sot_det_3__I_0_i3_2_lut.init = 16'heeee;
    FD1P3AX bd0_reg1_r_i0_i0 (.D(bd0_mixel[0]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd0_reg1_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg1_r_i0_i0.GSR = "ENABLED";
    LUT4 i643_2_lut (.A(bd0_fr_r[0]), .B(hs_sync_d1_r), .Z(bd0_o_7__N_5[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(619[18] 624[16])
    defparam i643_2_lut.init = 16'h8888;
    LUT4 i644_2_lut (.A(bd1_fr_r[0]), .B(hs_sync_d1_r), .Z(bd1_o_7__N_15[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(636[20] 641[18])
    defparam i644_2_lut.init = 16'h8888;
    LUT4 i645_2_lut (.A(bd2_fr_r[0]), .B(hs_sync_d1_r), .Z(bd2_o_7__N_23[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(654[20] 659[18])
    defparam i645_2_lut.init = 16'h8888;
    LUT4 i646_2_lut (.A(bd3_fr_r[0]), .B(hs_sync_d1_r), .Z(bd3_o_7__N_31[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(672[20] 677[18])
    defparam i646_2_lut.init = 16'h8888;
    FD1S3BX bd_sel_r_FSM_i0 (.D(n737), .CK(clk_byte_o), .PD(reset_by_hs_sync_sync_n), 
            .Q(n317[0]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(717[21:33])
    defparam bd_sel_r_FSM_i0.GSR = "DISABLED";
    FD1S3JX settle_cnt_lane1_i3 (.D(settle_cnt_lane1_3__N_204[3]), .CK(clk_byte_hs), 
            .PD(n1120), .Q(settle_cnt_lane1[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(344[18] 355[16])
    defparam settle_cnt_lane1_i3.GSR = "ENABLED";
    LUT4 i655_2_lut (.A(bd2_fr_r[6]), .B(hs_sync_d1_r), .Z(bd2_o_7__N_23[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(654[20] 659[18])
    defparam i655_2_lut.init = 16'h8888;
    FD1S3AX lp_d0_rx_p_r1_240 (.D(lp_d0_rx_p_r), .CK(clk_byte_hs), .Q(lp_d0_rx_p_r1)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(179[8] 186[6])
    defparam lp_d0_rx_p_r1_240.GSR = "ENABLED";
    LUT4 i656_2_lut (.A(bd3_fr_r[1]), .B(hs_sync_d1_r), .Z(bd3_o_7__N_31[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(672[20] 677[18])
    defparam i656_2_lut.init = 16'h8888;
    FD1S3IX settle_cnt_lane0_i0 (.D(n1_adj_312), .CK(clk_byte_hs), .CD(n1119), 
            .Q(settle_cnt_lane0[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(310[14] 321[12])
    defparam settle_cnt_lane0_i0.GSR = "ENABLED";
    LUT4 i657_2_lut (.A(bd3_fr_r[2]), .B(hs_sync_d1_r), .Z(bd3_o_7__N_31[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(672[20] 677[18])
    defparam i657_2_lut.init = 16'h8888;
    FD1S3AX lp_d0_rx_p_r2_241 (.D(lp_d0_rx_p_r1), .CK(clk_byte_hs), .Q(lp_d0_rx_p_r2)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(179[8] 186[6])
    defparam lp_d0_rx_p_r2_241.GSR = "ENABLED";
    FD1S3AX lp_d0_rx_n_r_242 (.D(lp_d0_rx_n), .CK(clk_byte_hs), .Q(lp_d0_rx_n_r)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(179[8] 186[6])
    defparam lp_d0_rx_n_r_242.GSR = "ENABLED";
    FD1S3AX lp_d0_rx_n_r1_243 (.D(lp_d0_rx_n_r), .CK(clk_byte_hs), .Q(lp_d0_rx_n_r1)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(179[8] 186[6])
    defparam lp_d0_rx_n_r1_243.GSR = "ENABLED";
    FD1S3AX lp_d0_rx_n_r2_244 (.D(lp_d0_rx_n_r1), .CK(clk_byte_hs), .Q(lp_d0_rx_n_r2)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(179[8] 186[6])
    defparam lp_d0_rx_n_r2_244.GSR = "ENABLED";
    FD1S3AX lp_d1_rx_p_r_245 (.D(lp_d1_rx_p), .CK(clk_byte_hs), .Q(lp_d1_rx_p_r)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(208[8] 215[6])
    defparam lp_d1_rx_p_r_245.GSR = "ENABLED";
    FD1S3AX lp_d1_rx_p_r1_246 (.D(lp_d1_rx_p_r), .CK(clk_byte_hs), .Q(lp_d1_rx_p_r1)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(208[8] 215[6])
    defparam lp_d1_rx_p_r1_246.GSR = "ENABLED";
    LUT4 i658_2_lut (.A(bd3_fr_r[6]), .B(hs_sync_d1_r), .Z(bd3_o_7__N_31[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(672[20] 677[18])
    defparam i658_2_lut.init = 16'h8888;
    LUT4 mux_118_i2_3_lut (.A(n677[1]), .B(bd0_reg3_r[1]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd0_fr_r_7__N_263[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_118_i2_3_lut.init = 16'hcaca;
    LUT4 mux_117_i2_3_lut (.A(bd0_reg1_r[1]), .B(bd0_reg2_r[1]), .C(n564[1]), 
         .Z(n677[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_117_i2_3_lut.init = 16'hcaca;
    FD1S3AX lp_d1_rx_p_r2_247 (.D(lp_d1_rx_p_r1), .CK(clk_byte_hs), .Q(lp_d1_rx_p_r2)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(208[8] 215[6])
    defparam lp_d1_rx_p_r2_247.GSR = "ENABLED";
    FD1S3AX lp_d1_rx_n_r_248 (.D(lp_d1_rx_n), .CK(clk_byte_hs), .Q(lp_d1_rx_n_r)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(208[8] 215[6])
    defparam lp_d1_rx_n_r_248.GSR = "ENABLED";
    FD1S3AX lp_d1_rx_n_r1_249 (.D(lp_d1_rx_n_r), .CK(clk_byte_hs), .Q(lp_d1_rx_n_r1)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(208[8] 215[6])
    defparam lp_d1_rx_n_r1_249.GSR = "ENABLED";
    FD1S3AX lp_d1_rx_n_r2_250 (.D(lp_d1_rx_n_r1), .CK(clk_byte_hs), .Q(lp_d1_rx_n_r2)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(208[8] 215[6])
    defparam lp_d1_rx_n_r2_250.GSR = "ENABLED";
    FD1S3AX lp_d2_rx_p_r_251 (.D(lp_d2_rx_p), .CK(clk_byte_hs), .Q(lp_d2_rx_p_r)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(237[8] 244[6])
    defparam lp_d2_rx_p_r_251.GSR = "ENABLED";
    FD1S3AX lp_d2_rx_p_r1_252 (.D(lp_d2_rx_p_r), .CK(clk_byte_hs), .Q(lp_d2_rx_p_r1)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(237[8] 244[6])
    defparam lp_d2_rx_p_r1_252.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_9 (.A(settle_cnt_lane0[2]), .B(settle_cnt_lane0[0]), 
         .Z(n1508)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_9.init = 16'heeee;
    FD1S3AX lp_d2_rx_p_r2_253 (.D(lp_d2_rx_p_r1), .CK(clk_byte_hs), .Q(lp_d2_rx_p_r2)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(237[8] 244[6])
    defparam lp_d2_rx_p_r2_253.GSR = "ENABLED";
    FD1S3AX lp_d2_rx_n_r_254 (.D(lp_d2_rx_n), .CK(clk_byte_hs), .Q(lp_d2_rx_n_r)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(237[8] 244[6])
    defparam lp_d2_rx_n_r_254.GSR = "ENABLED";
    FD1S3AX lp_d2_rx_n_r1_255 (.D(lp_d2_rx_n_r), .CK(clk_byte_hs), .Q(lp_d2_rx_n_r1)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(237[8] 244[6])
    defparam lp_d2_rx_n_r1_255.GSR = "ENABLED";
    FD1S3AX lp_d2_rx_n_r2_256 (.D(lp_d2_rx_n_r1), .CK(clk_byte_hs), .Q(lp_d2_rx_n_r2)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(237[8] 244[6])
    defparam lp_d2_rx_n_r2_256.GSR = "ENABLED";
    FD1S3AX lp_d3_rx_p_r_257 (.D(lp_d3_rx_p), .CK(clk_byte_hs), .Q(lp_d3_rx_p_r)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(266[8] 273[6])
    defparam lp_d3_rx_p_r_257.GSR = "ENABLED";
    FD1S3AX lp_d3_rx_p_r1_258 (.D(lp_d3_rx_p_r), .CK(clk_byte_hs), .Q(lp_d3_rx_p_r1)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(266[8] 273[6])
    defparam lp_d3_rx_p_r1_258.GSR = "ENABLED";
    LUT4 mux_118_i3_3_lut (.A(n677[2]), .B(bd0_reg3_r[2]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd0_fr_r_7__N_263[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_118_i3_3_lut.init = 16'hcaca;
    LUT4 mux_111_i5_3_lut (.A(bd1_reg1_r[4]), .B(bd1_reg2_r[4]), .C(n564[1]), 
         .Z(n623[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_111_i5_3_lut.init = 16'hcaca;
    FD1S3AX lp_d3_rx_p_r2_259 (.D(lp_d3_rx_p_r1), .CK(clk_byte_hs), .Q(lp_d3_rx_p_r2)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(266[8] 273[6])
    defparam lp_d3_rx_p_r2_259.GSR = "ENABLED";
    FD1S3AX lp_d3_rx_n_r_260 (.D(lp_d3_rx_n), .CK(clk_byte_hs), .Q(lp_d3_rx_n_r)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(266[8] 273[6])
    defparam lp_d3_rx_n_r_260.GSR = "ENABLED";
    FD1S3AX lp_d3_rx_n_r1_261 (.D(lp_d3_rx_n_r), .CK(clk_byte_hs), .Q(lp_d3_rx_n_r1)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(266[8] 273[6])
    defparam lp_d3_rx_n_r1_261.GSR = "ENABLED";
    FD1S3AX lp_d3_rx_n_r2_262 (.D(lp_d3_rx_n_r1), .CK(clk_byte_hs), .Q(lp_d3_rx_n_r2)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(266[8] 273[6])
    defparam lp_d3_rx_n_r2_262.GSR = "ENABLED";
    LUT4 i869_3_lut (.A(reset_n_i_c), .B(hs_sync_d2_r), .C(hs_sync_c), 
         .Z(reset_by_hs_sync_sync_n)) /* synthesis lut_function=(!(A (B+(C)))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(710[9:33])
    defparam i869_3_lut.init = 16'h5757;
    LUT4 mux_112_i6_3_lut (.A(n623[5]), .B(bd1_reg3_r[5]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd1_fr_r_7__N_271[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_112_i6_3_lut.init = 16'hcaca;
    LUT4 mux_117_i3_3_lut (.A(bd0_reg1_r[2]), .B(bd0_reg2_r[2]), .C(n564[1]), 
         .Z(n677[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_117_i3_3_lut.init = 16'hcaca;
    FD1P3AX hs_en0_settle_263 (.D(hs_d1_en_w), .SP(clk_byte_hs_enable_1), 
            .CK(clk_byte_hs), .Q(hs_en0_settle)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(297[14] 300[12])
    defparam hs_en0_settle_263.GSR = "ENABLED";
    FD1P3AX bd0_reg2_r_i0_i0 (.D(bd0_mixel[0]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd0_reg2_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg2_r_i0_i0.GSR = "ENABLED";
    FD1S3IX settle_cnt_lane3_i0 (.D(n296[0]), .CK(clk_byte_hs), .CD(n1117), 
            .Q(settle_cnt_lane3[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(412[18] 423[16])
    defparam settle_cnt_lane3_i0.GSR = "ENABLED";
    FD1S3IX settle_cnt_lane2_i0 (.D(n1), .CK(clk_byte_hs), .CD(n1116), 
            .Q(settle_cnt_lane2[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(378[18] 389[16])
    defparam settle_cnt_lane2_i0.GSR = "ENABLED";
    FD1S3DX bd0_align_r_i0 (.D(bd0_o_7__N_5[0]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd0[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[18] 624[16])
    defparam bd0_align_r_i0.GSR = "DISABLED";
    FD1S3DX bd1_align_r_i0 (.D(bd1_o_7__N_15[0]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd1[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(633[20] 641[18])
    defparam bd1_align_r_i0.GSR = "DISABLED";
    LUT4 mux_118_i4_3_lut (.A(n677[3]), .B(bd0_reg3_r[3]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd0_fr_r_7__N_263[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_118_i4_3_lut.init = 16'hcaca;
    FD1S3DX bd2_align_r_i0 (.D(bd2_o_7__N_23[0]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd2[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(651[20] 659[18])
    defparam bd2_align_r_i0.GSR = "DISABLED";
    FD1S3DX bd3_align_r_i0 (.D(bd3_o_7__N_31[0]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd3[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(669[20] 677[18])
    defparam bd3_align_r_i0.GSR = "DISABLED";
    FD1S3DX hs_sync_meta_276 (.D(hs_sync_c), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(hs_sync_meta)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(699[10] 704[8])
    defparam hs_sync_meta_276.GSR = "DISABLED";
    FD1S3DX hs_sync_sync_277 (.D(hs_sync_meta), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(hs_sync_sync)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(699[10] 704[8])
    defparam hs_sync_sync_277.GSR = "DISABLED";
    FD1S3DX hs_sync_d1_r_278 (.D(hs_sync_sync), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(hs_sync_d1_r)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(699[10] 704[8])
    defparam hs_sync_d1_r_278.GSR = "DISABLED";
    FD1S3DX hs_sync_d2_r_279 (.D(hs_sync_d1_r), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(hs_sync_d2_r)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(699[10] 704[8])
    defparam hs_sync_d2_r_279.GSR = "DISABLED";
    FD1P3AX bd0_reg3_r_i0_i0 (.D(bd0_mixel[0]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd0_reg3_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg3_r_i0_i0.GSR = "ENABLED";
    FD1P3AX hs_en3_settle_270 (.D(hs_d1_en_w), .SP(clk_byte_hs_enable_2), 
            .CK(clk_byte_hs), .Q(hs_en3_settle)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(399[18] 402[16])
    defparam hs_en3_settle_270.GSR = "ENABLED";
    LUT4 mux_117_i4_3_lut (.A(bd0_reg1_r[3]), .B(bd0_reg2_r[3]), .C(n564[1]), 
         .Z(n677[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_117_i4_3_lut.init = 16'hcaca;
    LUT4 mux_118_i5_3_lut (.A(n677[4]), .B(bd0_reg3_r[4]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd0_fr_r_7__N_263[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_118_i5_3_lut.init = 16'hcaca;
    MIPIDPHYA d_sot_det_3__I_0_300 (.DP0(d0_p_i), .DN0(d0_n_i), .DP1(d1_p_i), 
            .DN1(d1_n_i), .DP2(d2_p_i), .DN2(d2_n_i), .DP3(d3_p_i), 
            .DN3(d3_n_i), .CKP(clk_p_i), .CKN(clk_n_i), .D0RXHSEN(term_d0_en_w), 
            .D0HSDESEREN(hs_en0_settle), .D0RXLPEN(VCC_net), .D0CDEN(VCC_net), 
            .D0TXHSEN(GND_net), .D0HSSEREN(GND_net), .D0HSTXDATA0(GND_net), 
            .D0HSTXDATA1(GND_net), .D0HSTXDATA2(GND_net), .D0HSTXDATA3(GND_net), 
            .D0HSTXDATA4(GND_net), .D0HSTXDATA5(GND_net), .D0HSTXDATA6(GND_net), 
            .D0HSTXDATA7(GND_net), .D0HSTXDATA8(GND_net), .D0HSTXDATA9(GND_net), 
            .D0HSTXDATA10(GND_net), .D0HSTXDATA11(GND_net), .D0HSTXDATA12(GND_net), 
            .D0HSTXDATA13(GND_net), .D0HSTXDATA14(GND_net), .D0HSTXDATA15(GND_net), 
            .D0TXHSPD(VCC_net), .D0DTXLPP(GND_net), .D0DTXLPN(GND_net), 
            .D0TXLPEN(GND_net), .D0HSRXDATA0(bd0_mixel[0]), .D0HSRXDATA1(bd0_mixel[1]), 
            .D0HSRXDATA2(bd0_mixel[2]), .D0HSRXDATA3(bd0_mixel[3]), .D0HSRXDATA4(bd0_mixel[4]), 
            .D0HSRXDATA5(bd0_mixel[5]), .D0HSRXDATA6(bd0_mixel[6]), .D0HSRXDATA7(bd0_mixel[7]), 
            .D0SYNC(dphy_sync[0]), .D0ERRSYNC(d_sote_det[0]), .D0DRXLPP(lp_d0_rx_p), 
            .D0DRXLPN(lp_d0_rx_n), .D1RXHSEN(term_d0_en_w), .D1HSDESEREN(hs_en1_settle), 
            .D1RXLPEN(GND_net), .D1CDEN(GND_net), .D1TXHSEN(GND_net), 
            .D1HSSEREN(GND_net), .D1HSTXDATA0(GND_net), .D1HSTXDATA1(GND_net), 
            .D1HSTXDATA2(GND_net), .D1HSTXDATA3(GND_net), .D1HSTXDATA4(GND_net), 
            .D1HSTXDATA5(GND_net), .D1HSTXDATA6(GND_net), .D1HSTXDATA7(GND_net), 
            .D1HSTXDATA8(GND_net), .D1HSTXDATA9(GND_net), .D1HSTXDATA10(GND_net), 
            .D1HSTXDATA11(GND_net), .D1HSTXDATA12(GND_net), .D1HSTXDATA13(GND_net), 
            .D1HSTXDATA14(GND_net), .D1HSTXDATA15(GND_net), .D1TXHSPD(VCC_net), 
            .D1DTXLPP(GND_net), .D1DTXLPN(GND_net), .D1TXLPEN(GND_net), 
            .D1HSRXDATA0(bd1_mixel[0]), .D1HSRXDATA1(bd1_mixel[1]), .D1HSRXDATA2(bd1_mixel[2]), 
            .D1HSRXDATA3(bd1_mixel[3]), .D1HSRXDATA4(bd1_mixel[4]), .D1HSRXDATA5(bd1_mixel[5]), 
            .D1HSRXDATA6(bd1_mixel[6]), .D1HSRXDATA7(bd1_mixel[7]), .D1SYNC(dphy_sync[1]), 
            .D1ERRSYNC(d_sote_det[1]), .D1DRXLPP(lp_d1_rx_p), .D1DRXLPN(lp_d1_rx_n), 
            .D2RXHSEN(term_d0_en_w), .D2HSDESEREN(hs_en2_settle), .D2RXLPEN(GND_net), 
            .D2CDEN(GND_net), .D2TXHSEN(GND_net), .D2HSSEREN(GND_net), 
            .D2HSTXDATA0(GND_net), .D2HSTXDATA1(GND_net), .D2HSTXDATA2(GND_net), 
            .D2HSTXDATA3(GND_net), .D2HSTXDATA4(GND_net), .D2HSTXDATA5(GND_net), 
            .D2HSTXDATA6(GND_net), .D2HSTXDATA7(GND_net), .D2HSTXDATA8(GND_net), 
            .D2HSTXDATA9(GND_net), .D2HSTXDATA10(GND_net), .D2HSTXDATA11(GND_net), 
            .D2HSTXDATA12(GND_net), .D2HSTXDATA13(GND_net), .D2HSTXDATA14(GND_net), 
            .D2HSTXDATA15(GND_net), .D2TXHSPD(VCC_net), .D2DTXLPP(GND_net), 
            .D2DTXLPN(GND_net), .D2TXLPEN(GND_net), .D2HSRXDATA0(bd2_mixel[0]), 
            .D2HSRXDATA1(bd2_mixel[1]), .D2HSRXDATA2(bd2_mixel[2]), .D2HSRXDATA3(bd2_mixel[3]), 
            .D2HSRXDATA4(bd2_mixel[4]), .D2HSRXDATA5(bd2_mixel[5]), .D2HSRXDATA6(bd2_mixel[6]), 
            .D2HSRXDATA7(bd2_mixel[7]), .D2SYNC(dphy_sync[2]), .D2ERRSYNC(d_sote_det[2]), 
            .D2DRXLPP(lp_d2_rx_p), .D2DRXLPN(lp_d2_rx_n), .D3RXHSEN(term_d0_en_w), 
            .D3HSDESEREN(hs_en3_settle), .D3RXLPEN(GND_net), .D3CDEN(GND_net), 
            .D3TXHSEN(GND_net), .D3HSSEREN(GND_net), .D3HSTXDATA0(GND_net), 
            .D3HSTXDATA1(GND_net), .D3HSTXDATA2(GND_net), .D3HSTXDATA3(GND_net), 
            .D3HSTXDATA4(GND_net), .D3HSTXDATA5(GND_net), .D3HSTXDATA6(GND_net), 
            .D3HSTXDATA7(GND_net), .D3HSTXDATA8(GND_net), .D3HSTXDATA9(GND_net), 
            .D3HSTXDATA10(GND_net), .D3HSTXDATA11(GND_net), .D3HSTXDATA12(GND_net), 
            .D3HSTXDATA13(GND_net), .D3HSTXDATA14(GND_net), .D3HSTXDATA15(GND_net), 
            .D3TXHSPD(VCC_net), .D3DTXLPP(GND_net), .D3DTXLPN(GND_net), 
            .D3TXLPEN(GND_net), .D3HSRXDATA0(bd3_mixel[0]), .D3HSRXDATA1(bd3_mixel[1]), 
            .D3HSRXDATA2(bd3_mixel[2]), .D3HSRXDATA3(bd3_mixel[3]), .D3HSRXDATA4(bd3_mixel[4]), 
            .D3HSRXDATA5(bd3_mixel[5]), .D3HSRXDATA6(bd3_mixel[6]), .D3HSRXDATA7(bd3_mixel[7]), 
            .D3SYNC(dphy_sync[3]), .D3ERRSYNC(d_sote_det[3]), .D3DRXLPP(lp_d3_rx_p), 
            .D3DRXLPN(lp_d3_rx_n), .CLKRXHSEN(term_clk_en_o), .CLKRXLPEN(term_clk_en_i_N_195), 
            .CLKCDEN(VCC_net), .CLKTXHSEN(GND_net), .CLKTXHSGATE(GND_net), 
            .CLKTXHSPD(VCC_net), .CLKDTXLPP(GND_net), .CLKDTXLPN(GND_net), 
            .CLKTXLPEN(GND_net), .PDDPHY(reset_n_i_N_4), .PDPLL(VCC_net), 
            .PDBIAS(GND_net), .PDCKG(GND_net), .LBEN(GND_net), .CLKREF(GND_net), 
            .HSBYTECLKD(clk_byte_o), .CLKHSBYTE(clk_byte_hs), .CLKDRXLPP(lp_clk_rx_p), 
            .CLKDRXLPN(lp_clk_rx_n)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/sip4_demo_dphy_rx_wrap.v(68[1] 117[2])
    defparam d_sot_det_3__I_0_300.HSEL = 0;
    defparam d_sot_det_3__I_0_300.HS_16BIT_EN = 0;
    defparam d_sot_det_3__I_0_300.CN = 5'b00000;
    defparam d_sot_det_3__I_0_300.CM = 8'b00000000;
    defparam d_sot_det_3__I_0_300.CO = 2'b00;
    defparam d_sot_det_3__I_0_300.PLL_TST = 4'b1001;
    defparam d_sot_det_3__I_0_300.ENP_DESER = 1'b0;
    LUT4 mux_117_i5_3_lut (.A(bd0_reg1_r[4]), .B(bd0_reg2_r[4]), .C(n564[1]), 
         .Z(n677[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_117_i5_3_lut.init = 16'hcaca;
    FD1P3DX bd0_fr_r_i0_i0 (.D(bd0_fr_r_7__N_263[0]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd0_fr_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(973[10] 980[8])
    defparam bd0_fr_r_i0_i0.GSR = "DISABLED";
    FD1P3AX bd1_reg1_r_i0_i0 (.D(bd1_mixel[0]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd1_reg1_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg1_r_i0_i0.GSR = "ENABLED";
    FD1P3AX bd1_reg2_r_i0_i0 (.D(bd1_mixel[0]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd1_reg2_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg2_r_i0_i0.GSR = "ENABLED";
    FD1P3AX bd1_reg3_r_i0_i0 (.D(bd1_mixel[0]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd1_reg3_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg3_r_i0_i0.GSR = "ENABLED";
    LUT4 i873_2_lut (.A(n317[1]), .B(bd_sel_r_1__N_259), .Z(clk_byte_o_enable_57)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(717[21:33])
    defparam i873_2_lut.init = 16'h1111;
    FD1P3DX bd1_fr_r_i0_i0 (.D(bd1_fr_r_7__N_271[0]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd1_fr_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1007[14] 1014[12])
    defparam bd1_fr_r_i0_i0.GSR = "DISABLED";
    LUT4 mux_111_i6_3_lut (.A(bd1_reg1_r[5]), .B(bd1_reg2_r[5]), .C(n564[1]), 
         .Z(n623[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_111_i6_3_lut.init = 16'hcaca;
    FD1P3AX bd2_reg1_r_i0_i0 (.D(bd2_mixel[0]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd2_reg1_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg1_r_i0_i0.GSR = "ENABLED";
    FD1P3AX bd2_reg2_r_i0_i0 (.D(bd2_mixel[0]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd2_reg2_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg2_r_i0_i0.GSR = "ENABLED";
    FD1P3AX bd2_reg3_r_i0_i0 (.D(bd2_mixel[0]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd2_reg3_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg3_r_i0_i0.GSR = "ENABLED";
    LUT4 mux_118_i6_3_lut (.A(n677[5]), .B(bd0_reg3_r[5]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd0_fr_r_7__N_263[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_118_i6_3_lut.init = 16'hcaca;
    FD1P3DX bd2_fr_r_i0_i0 (.D(bd2_fr_r_7__N_279[0]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd2_fr_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1041[14] 1048[12])
    defparam bd2_fr_r_i0_i0.GSR = "DISABLED";
    FD1P3AX bd3_reg1_r_i0_i0 (.D(bd3_mixel[0]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd3_reg1_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg1_r_i0_i0.GSR = "ENABLED";
    FD1P3AX bd3_reg2_r_i0_i0 (.D(bd3_mixel[0]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd3_reg2_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg2_r_i0_i0.GSR = "ENABLED";
    FD1P3AX bd3_reg3_r_i0_i0 (.D(bd3_mixel[0]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd3_reg3_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg3_r_i0_i0.GSR = "ENABLED";
    FD1P3DX bd3_fr_r_i0_i0 (.D(bd3_fr_r_7__N_287[0]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd3_fr_r[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1075[14] 1082[12])
    defparam bd3_fr_r_i0_i0.GSR = "DISABLED";
    FD1P3AX hs_en2_settle_268 (.D(hs_d1_en_w), .SP(clk_byte_hs_enable_7), 
            .CK(clk_byte_hs), .Q(hs_en2_settle)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(365[18] 368[16])
    defparam hs_en2_settle_268.GSR = "ENABLED";
    FD1S3AX lp_d0_rx_p_r_239 (.D(lp_d0_rx_p), .CK(clk_byte_hs), .Q(lp_d0_rx_p_r)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(179[8] 186[6])
    defparam lp_d0_rx_p_r_239.GSR = "ENABLED";
    FD1P3AX hs_en1_settle_266 (.D(hs_d1_en_w), .SP(clk_byte_hs_enable_8), 
            .CK(clk_byte_hs), .Q(hs_en1_settle)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(331[18] 334[16])
    defparam hs_en1_settle_266.GSR = "ENABLED";
    LUT4 i789_3_lut_4_lut (.A(settle_cnt_lane0[2]), .B(settle_cnt_lane0[0]), 
         .C(settle_cnt_lane0[3]), .D(settle_cnt_lane0[1]), .Z(settle_cnt_lane0_3__N_198[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i789_3_lut_4_lut.init = 16'hf0e0;
    FD1S3DX bd_fr_sel_r_FSM_i1 (.D(n1414), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(n564[1]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam bd_fr_sel_r_FSM_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(settle_cnt_lane1[1]), .B(settle_cnt_lane1[0]), 
         .C(settle_cnt_lane1[2]), .Z(n1072)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(354[37:57])
    defparam i1_2_lut_3_lut.init = 16'he1e1;
    LUT4 mux_117_i6_3_lut (.A(bd0_reg1_r[5]), .B(bd0_reg2_r[5]), .C(n564[1]), 
         .Z(n677[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_117_i6_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut (.A(lp_d0_rx_p_r), .B(lp_d0_rx_p_r2), .C(lp_d0_rx_p_r1), 
         .Z(lp_d0_rx_p_o)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(189[23:67])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 mux_118_i7_3_lut (.A(n677[6]), .B(bd0_reg3_r[6]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd0_fr_r_7__N_263[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_118_i7_3_lut.init = 16'hcaca;
    LUT4 i648_2_lut (.A(bd0_fr_r[2]), .B(hs_sync_d1_r), .Z(bd0_o_7__N_5[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(619[18] 624[16])
    defparam i648_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_adj_1 (.A(lp_d0_rx_n_r), .B(lp_d0_rx_n_r2), .C(lp_d0_rx_n_r1), 
         .Z(lp_d0_rx_n_o)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(190[23:67])
    defparam i2_3_lut_adj_1.init = 16'h8080;
    LUT4 i647_2_lut (.A(bd0_fr_r[1]), .B(hs_sync_d1_r), .Z(bd0_o_7__N_5[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(619[18] 624[16])
    defparam i647_2_lut.init = 16'h8888;
    LUT4 i801_3_lut_4_lut (.A(settle_cnt_lane1[1]), .B(settle_cnt_lane1[0]), 
         .C(settle_cnt_lane1[3]), .D(settle_cnt_lane1[2]), .Z(settle_cnt_lane1_3__N_204[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(354[37:57])
    defparam i801_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i2_3_lut_adj_2 (.A(lp_d1_rx_p_r), .B(lp_d1_rx_p_r2), .C(lp_d1_rx_p_r1), 
         .Z(lp_d1_rx_p_o)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(218[23:67])
    defparam i2_3_lut_adj_2.init = 16'h8080;
    LUT4 i1_3_lut (.A(settle_cnt_lane3[2]), .B(settle_cnt_lane3[1]), .C(settle_cnt_lane3[0]), 
         .Z(n1088)) /* synthesis lut_function=(A (B+(C))+!A !(B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha9a9;
    LUT4 i162_2_lut_3_lut (.A(hs_sync_c), .B(hs_sync_latch), .C(bd_sel_r_1__N_259), 
         .Z(n737)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(454[28:53])
    defparam i162_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1_2_lut (.A(settle_cnt_lane3[1]), .B(settle_cnt_lane3[0]), .Z(n1084)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    LUT4 mux_116_i5_3_lut (.A(n659[4]), .B(bd3_reg3_r[4]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd3_fr_r_7__N_287[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_116_i5_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut (.A(hs_sync_c), .B(hs_sync_latch), .C(n317[0]), 
         .D(bd_sel_r_1__N_259), .Z(n1421)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(454[28:53])
    defparam i2_3_lut_4_lut.init = 16'h00e0;
    LUT4 i2_3_lut_4_lut_adj_3 (.A(hs_sync_c), .B(hs_sync_latch), .C(n317[1]), 
         .D(bd_sel_r_1__N_259), .Z(n1420)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(454[28:53])
    defparam i2_3_lut_4_lut_adj_3.init = 16'h00e0;
    LUT4 i2_3_lut_adj_4 (.A(lp_d1_rx_n_r), .B(lp_d1_rx_n_r2), .C(lp_d1_rx_n_r1), 
         .Z(lp_d1_rx_n_o)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(219[23:67])
    defparam i2_3_lut_adj_4.init = 16'h8080;
    LUT4 hs_sync_sync_I_0_2_lut_rep_10 (.A(hs_sync_sync), .B(hs_sync_d1_r), 
         .Z(clk_byte_hs_enable_36)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(743[14:41])
    defparam hs_sync_sync_I_0_2_lut_rep_10.init = 16'heeee;
    LUT4 i2_3_lut_adj_5 (.A(lp_d2_rx_p_r), .B(lp_d2_rx_p_r2), .C(lp_d2_rx_p_r1), 
         .Z(lp_d2_rx_p_o)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(247[23:67])
    defparam i2_3_lut_adj_5.init = 16'h8080;
    LUT4 i2_3_lut_4_lut_adj_6 (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(n564[1]), 
         .D(bd_fr_sel_r_1__N_262), .Z(n1415)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(743[14:41])
    defparam i2_3_lut_4_lut_adj_6.init = 16'h00e0;
    LUT4 mux_112_i7_3_lut (.A(n623[6]), .B(bd1_reg3_r[6]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd1_fr_r_7__N_271[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_112_i7_3_lut.init = 16'hcaca;
    LUT4 reset_n_i_I_0_1_lut (.A(reset_n_i_c), .Z(reset_n_i_N_4)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(112[13:23])
    defparam reset_n_i_I_0_1_lut.init = 16'h5555;
    LUT4 mux_111_i7_3_lut (.A(bd1_reg1_r[6]), .B(bd1_reg2_r[6]), .C(n564[1]), 
         .Z(n623[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_111_i7_3_lut.init = 16'hcaca;
    LUT4 mux_112_i8_3_lut (.A(n623[7]), .B(bd1_reg3_r[7]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd1_fr_r_7__N_271[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_112_i8_3_lut.init = 16'hcaca;
    LUT4 mux_111_i8_3_lut (.A(bd1_reg1_r[7]), .B(bd1_reg2_r[7]), .C(n564[1]), 
         .Z(n623[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_111_i8_3_lut.init = 16'hcaca;
    LUT4 mux_114_i2_3_lut (.A(n641[1]), .B(bd2_reg3_r[1]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd2_fr_r_7__N_279[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_114_i2_3_lut.init = 16'hcaca;
    LUT4 mux_117_i7_3_lut (.A(bd0_reg1_r[6]), .B(bd0_reg2_r[6]), .C(n564[1]), 
         .Z(n677[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_117_i7_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_adj_7 (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(n564[0]), 
         .D(bd_fr_sel_r_1__N_262), .Z(n1414)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(743[14:41])
    defparam i2_3_lut_4_lut_adj_7.init = 16'h00e0;
    FD1S3DX bd_fr_sel_r_FSM_i2 (.D(n1415), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd_fr_sel_r_1__N_262));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam bd_fr_sel_r_FSM_i2.GSR = "DISABLED";
    FD1P3AX bd0_reg1_r_i0_i1 (.D(bd0_mixel[1]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd0_reg1_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg1_r_i0_i1.GSR = "ENABLED";
    LUT4 mux_113_i2_3_lut (.A(bd2_reg1_r[1]), .B(bd2_reg2_r[1]), .C(n564[1]), 
         .Z(n641[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_113_i2_3_lut.init = 16'hcaca;
    LUT4 i154_2_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd_fr_sel_r_1__N_262), 
         .Z(n729)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(743[14:41])
    defparam i154_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1_2_lut_rep_11 (.A(settle_cnt_lane3[0]), .B(settle_cnt_lane3[2]), 
         .Z(n1510)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(399[22:43])
    defparam i1_2_lut_rep_11.init = 16'heeee;
    LUT4 mux_118_i8_3_lut (.A(n677[7]), .B(bd0_reg3_r[7]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd0_fr_r_7__N_263[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_118_i8_3_lut.init = 16'hcaca;
    LUT4 i856_3_lut_rep_8_4_lut (.A(settle_cnt_lane3[0]), .B(settle_cnt_lane3[2]), 
         .C(settle_cnt_lane3[1]), .D(settle_cnt_lane3[3]), .Z(clk_byte_hs_enable_2)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(399[22:43])
    defparam i856_3_lut_rep_8_4_lut.init = 16'h0001;
    LUT4 mux_117_i8_3_lut (.A(bd0_reg1_r[7]), .B(bd0_reg2_r[7]), .C(n564[1]), 
         .Z(n677[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_117_i8_3_lut.init = 16'hcaca;
    LUT4 mux_114_i3_3_lut (.A(n641[2]), .B(bd2_reg3_r[2]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd2_fr_r_7__N_279[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_114_i3_3_lut.init = 16'hcaca;
    LUT4 mux_113_i3_3_lut (.A(bd2_reg1_r[2]), .B(bd2_reg2_r[2]), .C(n564[1]), 
         .Z(n641[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_113_i3_3_lut.init = 16'hcaca;
    LUT4 mux_114_i4_3_lut (.A(n641[3]), .B(bd2_reg3_r[3]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd2_fr_r_7__N_279[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_114_i4_3_lut.init = 16'hcaca;
    LUT4 mux_113_i4_3_lut (.A(bd2_reg1_r[3]), .B(bd2_reg2_r[3]), .C(n564[1]), 
         .Z(n641[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_113_i4_3_lut.init = 16'hcaca;
    LUT4 mux_114_i5_3_lut (.A(n641[4]), .B(bd2_reg3_r[4]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd2_fr_r_7__N_279[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_114_i5_3_lut.init = 16'hcaca;
    LUT4 mux_112_i2_3_lut (.A(n623[1]), .B(bd1_reg3_r[1]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd1_fr_r_7__N_271[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_112_i2_3_lut.init = 16'hcaca;
    LUT4 mux_113_i5_3_lut (.A(bd2_reg1_r[4]), .B(bd2_reg2_r[4]), .C(n564[1]), 
         .Z(n641[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_113_i5_3_lut.init = 16'hcaca;
    LUT4 mux_114_i6_3_lut (.A(n641[5]), .B(bd2_reg3_r[5]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd2_fr_r_7__N_279[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_114_i6_3_lut.init = 16'hcaca;
    LUT4 mux_113_i6_3_lut (.A(bd2_reg1_r[5]), .B(bd2_reg2_r[5]), .C(n564[1]), 
         .Z(n641[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_113_i6_3_lut.init = 16'hcaca;
    LUT4 mux_114_i7_3_lut (.A(n641[6]), .B(bd2_reg3_r[6]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd2_fr_r_7__N_279[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_114_i7_3_lut.init = 16'hcaca;
    LUT4 mux_111_i2_3_lut (.A(bd1_reg1_r[1]), .B(bd1_reg2_r[1]), .C(n564[1]), 
         .Z(n623[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_111_i2_3_lut.init = 16'hcaca;
    LUT4 mux_112_i3_3_lut (.A(n623[2]), .B(bd1_reg3_r[2]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd1_fr_r_7__N_271[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_112_i3_3_lut.init = 16'hcaca;
    LUT4 mux_115_i5_3_lut (.A(bd3_reg1_r[4]), .B(bd3_reg2_r[4]), .C(n564[1]), 
         .Z(n659[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_115_i5_3_lut.init = 16'hcaca;
    LUT4 i861_2_lut (.A(clk_byte_hs_enable_8), .B(hs_d1_en_w), .Z(n1115)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(348[18] 355[16])
    defparam i861_2_lut.init = 16'hbbbb;
    LUT4 i1_1_lut_adj_8 (.A(settle_cnt_lane0[0]), .Z(n1_adj_312)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(318[14] 321[12])
    defparam i1_1_lut_adj_8.init = 16'h5555;
    LUT4 mux_116_i6_3_lut (.A(n659[5]), .B(bd3_reg3_r[5]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd3_fr_r_7__N_287[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_116_i6_3_lut.init = 16'hcaca;
    LUT4 mux_115_i6_3_lut (.A(bd3_reg1_r[5]), .B(bd3_reg2_r[5]), .C(n564[1]), 
         .Z(n659[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_115_i6_3_lut.init = 16'hcaca;
    FD1P3AX bd0_reg1_r_i0_i2 (.D(bd0_mixel[2]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd0_reg1_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg1_r_i0_i2.GSR = "ENABLED";
    FD1P3AX bd0_reg1_r_i0_i3 (.D(bd0_mixel[3]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd0_reg1_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg1_r_i0_i3.GSR = "ENABLED";
    FD1P3AX bd0_reg1_r_i0_i4 (.D(bd0_mixel[4]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd0_reg1_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg1_r_i0_i4.GSR = "ENABLED";
    FD1P3AX bd0_reg1_r_i0_i5 (.D(bd0_mixel[5]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd0_reg1_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg1_r_i0_i5.GSR = "ENABLED";
    FD1P3AX bd0_reg1_r_i0_i6 (.D(bd0_mixel[6]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd0_reg1_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg1_r_i0_i6.GSR = "ENABLED";
    FD1P3AX bd0_reg1_r_i0_i7 (.D(bd0_mixel[7]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd0_reg1_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg1_r_i0_i7.GSR = "ENABLED";
    FD1S3DX bd_sel_r_FSM_i1 (.D(n1421), .CK(clk_byte_o), .CD(reset_by_hs_sync_sync_n), 
            .Q(n317[1]));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(717[21:33])
    defparam bd_sel_r_FSM_i1.GSR = "DISABLED";
    LUT4 i313_1_lut (.A(settle_cnt_lane1[0]), .Z(n286[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(354[37:57])
    defparam i313_1_lut.init = 16'h5555;
    LUT4 mux_113_i7_3_lut (.A(bd2_reg1_r[6]), .B(bd2_reg2_r[6]), .C(n564[1]), 
         .Z(n641[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_113_i7_3_lut.init = 16'hcaca;
    FD1S3DX bd_sel_r_FSM_i2 (.D(n1420), .CK(clk_byte_o), .CD(reset_by_hs_sync_sync_n), 
            .Q(bd_sel_r_1__N_259));   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(717[21:33])
    defparam bd_sel_r_FSM_i2.GSR = "DISABLED";
    FD1S3IX settle_cnt_lane1_i1 (.D(n1070), .CK(clk_byte_hs), .CD(n1115), 
            .Q(settle_cnt_lane1[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(344[18] 355[16])
    defparam settle_cnt_lane1_i1.GSR = "ENABLED";
    FD1S3IX settle_cnt_lane1_i2 (.D(n1072), .CK(clk_byte_hs), .CD(n1115), 
            .Q(settle_cnt_lane1[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(344[18] 355[16])
    defparam settle_cnt_lane1_i2.GSR = "ENABLED";
    LUT4 i797_3_lut_4_lut (.A(settle_cnt_lane3[0]), .B(settle_cnt_lane3[2]), 
         .C(settle_cnt_lane3[3]), .D(settle_cnt_lane3[1]), .Z(settle_cnt_lane3_3__N_216[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(399[22:43])
    defparam i797_3_lut_4_lut.init = 16'hf0e0;
    FD1S3IX settle_cnt_lane2_i1 (.D(n1076), .CK(clk_byte_hs), .CD(n1116), 
            .Q(settle_cnt_lane2[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(378[18] 389[16])
    defparam settle_cnt_lane2_i1.GSR = "ENABLED";
    LUT4 i848_4_lut (.A(settle_cnt_lane1[0]), .B(settle_cnt_lane1[3]), .C(settle_cnt_lane1[2]), 
         .D(settle_cnt_lane1[1]), .Z(clk_byte_hs_enable_8)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(331[22:43])
    defparam i848_4_lut.init = 16'h0001;
    LUT4 i880_2_lut_4_lut (.A(n1508), .B(settle_cnt_lane0[3]), .C(settle_cnt_lane0[1]), 
         .D(hs_d1_en_w), .Z(n1119)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D))))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(297[18:39])
    defparam i880_2_lut_4_lut.init = 16'h01ff;
    FD1S3IX settle_cnt_lane2_i2 (.D(n1080), .CK(clk_byte_hs), .CD(n1116), 
            .Q(settle_cnt_lane2[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(378[18] 389[16])
    defparam settle_cnt_lane2_i2.GSR = "ENABLED";
    FD1S3JX settle_cnt_lane2_i3 (.D(settle_cnt_lane2_3__N_210[3]), .CK(clk_byte_hs), 
            .PD(n1120), .Q(settle_cnt_lane2[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(378[18] 389[16])
    defparam settle_cnt_lane2_i3.GSR = "ENABLED";
    FD1P3AX bd0_reg2_r_i0_i1 (.D(bd0_mixel[1]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd0_reg2_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg2_r_i0_i1.GSR = "ENABLED";
    LUT4 mux_111_i3_3_lut (.A(bd1_reg1_r[2]), .B(bd1_reg2_r[2]), .C(n564[1]), 
         .Z(n623[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_111_i3_3_lut.init = 16'hcaca;
    LUT4 mux_112_i4_3_lut (.A(n623[3]), .B(bd1_reg3_r[3]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd1_fr_r_7__N_271[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_112_i4_3_lut.init = 16'hcaca;
    LUT4 mux_111_i4_3_lut (.A(bd1_reg1_r[3]), .B(bd1_reg2_r[3]), .C(n564[1]), 
         .Z(n623[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_111_i4_3_lut.init = 16'hcaca;
    LUT4 mux_114_i8_3_lut (.A(n641[7]), .B(bd2_reg3_r[7]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd2_fr_r_7__N_279[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_114_i8_3_lut.init = 16'hcaca;
    FD1P3AX bd0_reg2_r_i0_i2 (.D(bd0_mixel[2]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd0_reg2_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg2_r_i0_i2.GSR = "ENABLED";
    FD1P3AX bd0_reg2_r_i0_i3 (.D(bd0_mixel[3]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd0_reg2_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg2_r_i0_i3.GSR = "ENABLED";
    FD1P3AX bd0_reg2_r_i0_i4 (.D(bd0_mixel[4]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd0_reg2_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg2_r_i0_i4.GSR = "ENABLED";
    FD1P3AX bd0_reg2_r_i0_i5 (.D(bd0_mixel[5]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd0_reg2_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg2_r_i0_i5.GSR = "ENABLED";
    FD1P3AX bd0_reg2_r_i0_i6 (.D(bd0_mixel[6]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd0_reg2_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg2_r_i0_i6.GSR = "ENABLED";
    FD1P3AX bd0_reg2_r_i0_i7 (.D(bd0_mixel[7]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd0_reg2_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg2_r_i0_i7.GSR = "ENABLED";
    FD1S3IX settle_cnt_lane3_i1 (.D(n1084), .CK(clk_byte_hs), .CD(n1117), 
            .Q(settle_cnt_lane3[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(412[18] 423[16])
    defparam settle_cnt_lane3_i1.GSR = "ENABLED";
    FD1S3IX settle_cnt_lane3_i2 (.D(n1088), .CK(clk_byte_hs), .CD(n1117), 
            .Q(settle_cnt_lane3[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(412[18] 423[16])
    defparam settle_cnt_lane3_i2.GSR = "ENABLED";
    FD1S3JX settle_cnt_lane3_i3 (.D(settle_cnt_lane3_3__N_216[3]), .CK(clk_byte_hs), 
            .PD(n1120), .Q(settle_cnt_lane3[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(412[18] 423[16])
    defparam settle_cnt_lane3_i3.GSR = "ENABLED";
    FD1S3DX bd0_align_r_i1 (.D(bd0_o_7__N_5[1]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd0[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[18] 624[16])
    defparam bd0_align_r_i1.GSR = "DISABLED";
    LUT4 mux_113_i8_3_lut (.A(bd2_reg1_r[7]), .B(bd2_reg2_r[7]), .C(n564[1]), 
         .Z(n641[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_113_i8_3_lut.init = 16'hcaca;
    FD1S3DX bd0_align_r_i2 (.D(bd0_o_7__N_5[2]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd0[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[18] 624[16])
    defparam bd0_align_r_i2.GSR = "DISABLED";
    FD1S3DX bd0_align_r_i3 (.D(bd0_o_7__N_5[3]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd0[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[18] 624[16])
    defparam bd0_align_r_i3.GSR = "DISABLED";
    FD1S3DX bd0_align_r_i4 (.D(bd0_o_7__N_5[4]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd0[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[18] 624[16])
    defparam bd0_align_r_i4.GSR = "DISABLED";
    FD1S3DX bd0_align_r_i5 (.D(bd0_o_7__N_5[5]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd0[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[18] 624[16])
    defparam bd0_align_r_i5.GSR = "DISABLED";
    FD1S3DX bd0_align_r_i6 (.D(bd0_o_7__N_5[6]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd0[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[18] 624[16])
    defparam bd0_align_r_i6.GSR = "DISABLED";
    FD1S3DX bd0_align_r_i7 (.D(bd0_o_7__N_5[7]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd0[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[18] 624[16])
    defparam bd0_align_r_i7.GSR = "DISABLED";
    FD1S3DX bd1_align_r_i1 (.D(bd1_o_7__N_15[1]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd1[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(633[20] 641[18])
    defparam bd1_align_r_i1.GSR = "DISABLED";
    LUT4 term_clk_en_i_I_0_1_lut (.A(term_clk_en_o), .Z(term_clk_en_i_N_195)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1105[29:43])
    defparam term_clk_en_i_I_0_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_adj_9 (.A(settle_cnt_lane2[0]), .B(settle_cnt_lane2[1]), 
         .C(settle_cnt_lane2[2]), .Z(n1080)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;
    defparam i1_2_lut_3_lut_adj_9.init = 16'he1e1;
    LUT4 i795_3_lut_4_lut (.A(settle_cnt_lane2[0]), .B(settle_cnt_lane2[1]), 
         .C(settle_cnt_lane2[3]), .D(settle_cnt_lane2[2]), .Z(settle_cnt_lane2_3__N_210[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i795_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i642_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd3_fr_r[7]), 
         .Z(bd3_o_7__N_31[7])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i642_3_lut_3_lut.init = 16'he2e2;
    FD1S3DX bd1_align_r_i2 (.D(bd1_o_7__N_15[2]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd1[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(633[20] 641[18])
    defparam bd1_align_r_i2.GSR = "DISABLED";
    FD1S3DX bd1_align_r_i3 (.D(bd1_o_7__N_15[3]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd1[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(633[20] 641[18])
    defparam bd1_align_r_i3.GSR = "DISABLED";
    FD1S3DX bd1_align_r_i4 (.D(bd1_o_7__N_15[4]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd1[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(633[20] 641[18])
    defparam bd1_align_r_i4.GSR = "DISABLED";
    FD1S3DX bd1_align_r_i5 (.D(bd1_o_7__N_15[5]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd1[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(633[20] 641[18])
    defparam bd1_align_r_i5.GSR = "DISABLED";
    FD1S3DX bd1_align_r_i6 (.D(bd1_o_7__N_15[6]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd1[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(633[20] 641[18])
    defparam bd1_align_r_i6.GSR = "DISABLED";
    FD1S3DX bd1_align_r_i7 (.D(bd1_o_7__N_15[7]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd1[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(633[20] 641[18])
    defparam bd1_align_r_i7.GSR = "DISABLED";
    FD1S3DX bd2_align_r_i1 (.D(bd2_o_7__N_23[1]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd2[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(651[20] 659[18])
    defparam bd2_align_r_i1.GSR = "DISABLED";
    LUT4 i641_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd3_fr_r[5]), 
         .Z(bd3_o_7__N_31[5])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i641_3_lut_3_lut.init = 16'he2e2;
    LUT4 i640_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd3_fr_r[4]), 
         .Z(bd3_o_7__N_31[4])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i640_3_lut_3_lut.init = 16'he2e2;
    LUT4 i2_3_lut_adj_10 (.A(lp_d2_rx_n_r), .B(lp_d2_rx_n_r2), .C(lp_d2_rx_n_r1), 
         .Z(lp_d2_rx_n_o)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(248[23:67])
    defparam i2_3_lut_adj_10.init = 16'h8080;
    LUT4 i632_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd2_fr_r[4]), 
         .Z(bd2_o_7__N_23[4])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i632_3_lut_3_lut.init = 16'he2e2;
    FD1S3DX bd2_align_r_i2 (.D(bd2_o_7__N_23[2]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd2[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(651[20] 659[18])
    defparam bd2_align_r_i2.GSR = "DISABLED";
    FD1S3DX bd2_align_r_i3 (.D(bd2_o_7__N_23[3]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd2[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(651[20] 659[18])
    defparam bd2_align_r_i3.GSR = "DISABLED";
    FD1S3DX bd2_align_r_i4 (.D(bd2_o_7__N_23[4]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd2[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(651[20] 659[18])
    defparam bd2_align_r_i4.GSR = "DISABLED";
    FD1S3DX bd2_align_r_i5 (.D(bd2_o_7__N_23[5]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd2[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(651[20] 659[18])
    defparam bd2_align_r_i5.GSR = "DISABLED";
    FD1S3DX bd2_align_r_i6 (.D(bd2_o_7__N_23[6]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd2[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(651[20] 659[18])
    defparam bd2_align_r_i6.GSR = "DISABLED";
    FD1S3DX bd2_align_r_i7 (.D(bd2_o_7__N_23[7]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd2[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(651[20] 659[18])
    defparam bd2_align_r_i7.GSR = "DISABLED";
    FD1S3DX bd3_align_r_i1 (.D(bd3_o_7__N_31[1]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd3[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(669[20] 677[18])
    defparam bd3_align_r_i1.GSR = "DISABLED";
    LUT4 i631_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd2_fr_r[3]), 
         .Z(bd2_o_7__N_23[3])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i631_3_lut_3_lut.init = 16'he2e2;
    LUT4 i639_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd3_fr_r[3]), 
         .Z(bd3_o_7__N_31[3])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i639_3_lut_3_lut.init = 16'he2e2;
    LUT4 i2_3_lut_adj_11 (.A(lp_d3_rx_p_r), .B(lp_d3_rx_p_r2), .C(lp_d3_rx_p_r1), 
         .Z(lp_d3_rx_p_o)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(276[23:67])
    defparam i2_3_lut_adj_11.init = 16'h8080;
    LUT4 i626_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd1_fr_r[7]), 
         .Z(bd1_o_7__N_15[7])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i626_3_lut_3_lut.init = 16'he2e2;
    LUT4 mux_116_i7_3_lut (.A(n659[6]), .B(bd3_reg3_r[6]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd3_fr_r_7__N_287[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_116_i7_3_lut.init = 16'hcaca;
    FD1S3DX bd3_align_r_i2 (.D(bd3_o_7__N_31[2]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd3[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(669[20] 677[18])
    defparam bd3_align_r_i2.GSR = "DISABLED";
    FD1S3DX bd3_align_r_i3 (.D(bd3_o_7__N_31[3]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd3[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(669[20] 677[18])
    defparam bd3_align_r_i3.GSR = "DISABLED";
    FD1S3DX bd3_align_r_i4 (.D(bd3_o_7__N_31[4]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd3[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(669[20] 677[18])
    defparam bd3_align_r_i4.GSR = "DISABLED";
    FD1S3DX bd3_align_r_i5 (.D(bd3_o_7__N_31[5]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd3[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(669[20] 677[18])
    defparam bd3_align_r_i5.GSR = "DISABLED";
    FD1S3DX bd3_align_r_i6 (.D(bd3_o_7__N_31[6]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd3[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(669[20] 677[18])
    defparam bd3_align_r_i6.GSR = "DISABLED";
    FD1S3DX bd3_align_r_i7 (.D(bd3_o_7__N_31[7]), .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), 
            .Q(bd3[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(669[20] 677[18])
    defparam bd3_align_r_i7.GSR = "DISABLED";
    FD1P3AX bd0_reg3_r_i0_i1 (.D(bd0_mixel[1]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd0_reg3_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg3_r_i0_i1.GSR = "ENABLED";
    LUT4 i625_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd1_fr_r[5]), 
         .Z(bd1_o_7__N_15[5])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i625_3_lut_3_lut.init = 16'he2e2;
    LUT4 i624_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd1_fr_r[4]), 
         .Z(bd1_o_7__N_15[4])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i624_3_lut_3_lut.init = 16'he2e2;
    LUT4 i634_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd2_fr_r[7]), 
         .Z(bd2_o_7__N_23[7])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i634_3_lut_3_lut.init = 16'he2e2;
    LUT4 mux_115_i7_3_lut (.A(bd3_reg1_r[6]), .B(bd3_reg2_r[6]), .C(n564[1]), 
         .Z(n659[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_115_i7_3_lut.init = 16'hcaca;
    LUT4 mux_116_i8_3_lut (.A(n659[7]), .B(bd3_reg3_r[7]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd3_fr_r_7__N_287[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_116_i8_3_lut.init = 16'hcaca;
    LUT4 i633_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd2_fr_r[5]), 
         .Z(bd2_o_7__N_23[5])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i633_3_lut_3_lut.init = 16'he2e2;
    LUT4 mux_115_i8_3_lut (.A(bd3_reg1_r[7]), .B(bd3_reg2_r[7]), .C(n564[1]), 
         .Z(n659[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_115_i8_3_lut.init = 16'hcaca;
    LUT4 i623_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd1_fr_r[3]), 
         .Z(bd1_o_7__N_15[3])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i623_3_lut_3_lut.init = 16'he2e2;
    LUT4 mux_116_i2_3_lut (.A(n659[1]), .B(bd3_reg3_r[1]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd3_fr_r_7__N_287[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_116_i2_3_lut.init = 16'hcaca;
    LUT4 i618_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd0_fr_r[7]), 
         .Z(bd0_o_7__N_5[7])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i618_3_lut_3_lut.init = 16'he2e2;
    LUT4 i617_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd0_fr_r[5]), 
         .Z(bd0_o_7__N_5[5])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i617_3_lut_3_lut.init = 16'he2e2;
    LUT4 i1_2_lut_adj_12 (.A(settle_cnt_lane0[1]), .B(settle_cnt_lane0[0]), 
         .Z(n1078)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_12.init = 16'h9999;
    FD1P3AX bd0_reg3_r_i0_i2 (.D(bd0_mixel[2]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd0_reg3_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg3_r_i0_i2.GSR = "ENABLED";
    FD1P3AX bd0_reg3_r_i0_i3 (.D(bd0_mixel[3]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd0_reg3_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg3_r_i0_i3.GSR = "ENABLED";
    FD1P3AX bd0_reg3_r_i0_i4 (.D(bd0_mixel[4]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd0_reg3_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg3_r_i0_i4.GSR = "ENABLED";
    FD1P3AX bd0_reg3_r_i0_i5 (.D(bd0_mixel[5]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd0_reg3_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg3_r_i0_i5.GSR = "ENABLED";
    FD1P3AX bd0_reg3_r_i0_i6 (.D(bd0_mixel[6]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd0_reg3_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg3_r_i0_i6.GSR = "ENABLED";
    FD1P3AX bd0_reg3_r_i0_i7 (.D(bd0_mixel[7]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd0_reg3_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(959[10] 966[8])
    defparam bd0_reg3_r_i0_i7.GSR = "ENABLED";
    FD1P3DX bd0_fr_r_i0_i1 (.D(bd0_fr_r_7__N_263[1]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd0_fr_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(973[10] 980[8])
    defparam bd0_fr_r_i0_i1.GSR = "DISABLED";
    LUT4 i1_3_lut_adj_13 (.A(settle_cnt_lane0[2]), .B(settle_cnt_lane0[1]), 
         .C(settle_cnt_lane0[0]), .Z(n1082)) /* synthesis lut_function=(A (B+(C))+!A !(B+(C))) */ ;
    defparam i1_3_lut_adj_13.init = 16'ha9a9;
    LUT4 mux_115_i2_3_lut (.A(bd3_reg1_r[1]), .B(bd3_reg2_r[1]), .C(n564[1]), 
         .Z(n659[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_115_i2_3_lut.init = 16'hcaca;
    LUT4 mux_118_i1_3_lut (.A(n677[0]), .B(bd0_reg3_r[0]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd0_fr_r_7__N_263[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_118_i1_3_lut.init = 16'hcaca;
    LUT4 i616_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd0_fr_r[4]), 
         .Z(bd0_o_7__N_5[4])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i616_3_lut_3_lut.init = 16'he2e2;
    LUT4 mux_117_i1_3_lut (.A(bd0_reg1_r[0]), .B(bd0_reg2_r[0]), .C(n564[1]), 
         .Z(n677[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_117_i1_3_lut.init = 16'hcaca;
    LUT4 mux_116_i3_3_lut (.A(n659[2]), .B(bd3_reg3_r[2]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd3_fr_r_7__N_287[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_116_i3_3_lut.init = 16'hcaca;
    LUT4 mux_115_i3_3_lut (.A(bd3_reg1_r[2]), .B(bd3_reg2_r[2]), .C(n564[1]), 
         .Z(n659[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_115_i3_3_lut.init = 16'hcaca;
    FD1P3DX bd0_fr_r_i0_i2 (.D(bd0_fr_r_7__N_263[2]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd0_fr_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(973[10] 980[8])
    defparam bd0_fr_r_i0_i2.GSR = "DISABLED";
    FD1P3DX bd0_fr_r_i0_i3 (.D(bd0_fr_r_7__N_263[3]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd0_fr_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(973[10] 980[8])
    defparam bd0_fr_r_i0_i3.GSR = "DISABLED";
    FD1P3DX bd0_fr_r_i0_i4 (.D(bd0_fr_r_7__N_263[4]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd0_fr_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(973[10] 980[8])
    defparam bd0_fr_r_i0_i4.GSR = "DISABLED";
    FD1P3DX bd0_fr_r_i0_i5 (.D(bd0_fr_r_7__N_263[5]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd0_fr_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(973[10] 980[8])
    defparam bd0_fr_r_i0_i5.GSR = "DISABLED";
    FD1P3DX bd0_fr_r_i0_i6 (.D(bd0_fr_r_7__N_263[6]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd0_fr_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(973[10] 980[8])
    defparam bd0_fr_r_i0_i6.GSR = "DISABLED";
    FD1P3DX bd0_fr_r_i0_i7 (.D(bd0_fr_r_7__N_263[7]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd0_fr_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(973[10] 980[8])
    defparam bd0_fr_r_i0_i7.GSR = "DISABLED";
    FD1P3AX bd1_reg1_r_i0_i1 (.D(bd1_mixel[1]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd1_reg1_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg1_r_i0_i1.GSR = "ENABLED";
    FD1P3AX bd1_reg1_r_i0_i2 (.D(bd1_mixel[2]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd1_reg1_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg1_r_i0_i2.GSR = "ENABLED";
    FD1P3AX bd1_reg1_r_i0_i3 (.D(bd1_mixel[3]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd1_reg1_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg1_r_i0_i3.GSR = "ENABLED";
    FD1P3AX bd1_reg1_r_i0_i4 (.D(bd1_mixel[4]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd1_reg1_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg1_r_i0_i4.GSR = "ENABLED";
    FD1P3AX bd1_reg1_r_i0_i5 (.D(bd1_mixel[5]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd1_reg1_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg1_r_i0_i5.GSR = "ENABLED";
    FD1P3AX bd1_reg1_r_i0_i6 (.D(bd1_mixel[6]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd1_reg1_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg1_r_i0_i6.GSR = "ENABLED";
    FD1P3AX bd1_reg1_r_i0_i7 (.D(bd1_mixel[7]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd1_reg1_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg1_r_i0_i7.GSR = "ENABLED";
    FD1P3AX bd1_reg2_r_i0_i1 (.D(bd1_mixel[1]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd1_reg2_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg2_r_i0_i1.GSR = "ENABLED";
    FD1P3AX bd1_reg2_r_i0_i2 (.D(bd1_mixel[2]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd1_reg2_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg2_r_i0_i2.GSR = "ENABLED";
    FD1P3AX bd1_reg2_r_i0_i3 (.D(bd1_mixel[3]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd1_reg2_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg2_r_i0_i3.GSR = "ENABLED";
    FD1P3AX bd1_reg2_r_i0_i4 (.D(bd1_mixel[4]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd1_reg2_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg2_r_i0_i4.GSR = "ENABLED";
    FD1P3AX bd1_reg2_r_i0_i5 (.D(bd1_mixel[5]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd1_reg2_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg2_r_i0_i5.GSR = "ENABLED";
    FD1P3AX bd1_reg2_r_i0_i6 (.D(bd1_mixel[6]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd1_reg2_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg2_r_i0_i6.GSR = "ENABLED";
    FD1P3AX bd1_reg2_r_i0_i7 (.D(bd1_mixel[7]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd1_reg2_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg2_r_i0_i7.GSR = "ENABLED";
    FD1P3AX bd1_reg3_r_i0_i1 (.D(bd1_mixel[1]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd1_reg3_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg3_r_i0_i1.GSR = "ENABLED";
    FD1P3AX bd1_reg3_r_i0_i2 (.D(bd1_mixel[2]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd1_reg3_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg3_r_i0_i2.GSR = "ENABLED";
    FD1P3AX bd1_reg3_r_i0_i3 (.D(bd1_mixel[3]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd1_reg3_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg3_r_i0_i3.GSR = "ENABLED";
    FD1P3AX bd1_reg3_r_i0_i4 (.D(bd1_mixel[4]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd1_reg3_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg3_r_i0_i4.GSR = "ENABLED";
    FD1P3AX bd1_reg3_r_i0_i5 (.D(bd1_mixel[5]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd1_reg3_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg3_r_i0_i5.GSR = "ENABLED";
    FD1P3AX bd1_reg3_r_i0_i6 (.D(bd1_mixel[6]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd1_reg3_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg3_r_i0_i6.GSR = "ENABLED";
    FD1P3AX bd1_reg3_r_i0_i7 (.D(bd1_mixel[7]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd1_reg3_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(993[14] 1000[12])
    defparam bd1_reg3_r_i0_i7.GSR = "ENABLED";
    FD1P3DX bd1_fr_r_i0_i1 (.D(bd1_fr_r_7__N_271[1]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd1_fr_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1007[14] 1014[12])
    defparam bd1_fr_r_i0_i1.GSR = "DISABLED";
    FD1P3DX bd1_fr_r_i0_i2 (.D(bd1_fr_r_7__N_271[2]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd1_fr_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1007[14] 1014[12])
    defparam bd1_fr_r_i0_i2.GSR = "DISABLED";
    FD1P3DX bd1_fr_r_i0_i3 (.D(bd1_fr_r_7__N_271[3]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd1_fr_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1007[14] 1014[12])
    defparam bd1_fr_r_i0_i3.GSR = "DISABLED";
    FD1P3DX bd1_fr_r_i0_i4 (.D(bd1_fr_r_7__N_271[4]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd1_fr_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1007[14] 1014[12])
    defparam bd1_fr_r_i0_i4.GSR = "DISABLED";
    FD1P3DX bd1_fr_r_i0_i5 (.D(bd1_fr_r_7__N_271[5]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd1_fr_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1007[14] 1014[12])
    defparam bd1_fr_r_i0_i5.GSR = "DISABLED";
    FD1P3DX bd1_fr_r_i0_i6 (.D(bd1_fr_r_7__N_271[6]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd1_fr_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1007[14] 1014[12])
    defparam bd1_fr_r_i0_i6.GSR = "DISABLED";
    FD1P3DX bd1_fr_r_i0_i7 (.D(bd1_fr_r_7__N_271[7]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd1_fr_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1007[14] 1014[12])
    defparam bd1_fr_r_i0_i7.GSR = "DISABLED";
    FD1P3AX bd2_reg1_r_i0_i1 (.D(bd2_mixel[1]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd2_reg1_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg1_r_i0_i1.GSR = "ENABLED";
    FD1P3AX bd2_reg1_r_i0_i2 (.D(bd2_mixel[2]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd2_reg1_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg1_r_i0_i2.GSR = "ENABLED";
    FD1P3AX bd2_reg1_r_i0_i3 (.D(bd2_mixel[3]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd2_reg1_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg1_r_i0_i3.GSR = "ENABLED";
    FD1P3AX bd2_reg1_r_i0_i4 (.D(bd2_mixel[4]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd2_reg1_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg1_r_i0_i4.GSR = "ENABLED";
    FD1P3AX bd2_reg1_r_i0_i5 (.D(bd2_mixel[5]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd2_reg1_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg1_r_i0_i5.GSR = "ENABLED";
    FD1P3AX bd2_reg1_r_i0_i6 (.D(bd2_mixel[6]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd2_reg1_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg1_r_i0_i6.GSR = "ENABLED";
    FD1P3AX bd2_reg1_r_i0_i7 (.D(bd2_mixel[7]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd2_reg1_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg1_r_i0_i7.GSR = "ENABLED";
    FD1P3AX bd2_reg2_r_i0_i1 (.D(bd2_mixel[1]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd2_reg2_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg2_r_i0_i1.GSR = "ENABLED";
    FD1P3AX bd2_reg2_r_i0_i2 (.D(bd2_mixel[2]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd2_reg2_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg2_r_i0_i2.GSR = "ENABLED";
    FD1P3AX bd2_reg2_r_i0_i3 (.D(bd2_mixel[3]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd2_reg2_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg2_r_i0_i3.GSR = "ENABLED";
    FD1P3AX bd2_reg2_r_i0_i4 (.D(bd2_mixel[4]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd2_reg2_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg2_r_i0_i4.GSR = "ENABLED";
    FD1P3AX bd2_reg2_r_i0_i5 (.D(bd2_mixel[5]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd2_reg2_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg2_r_i0_i5.GSR = "ENABLED";
    FD1P3AX bd2_reg2_r_i0_i6 (.D(bd2_mixel[6]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd2_reg2_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg2_r_i0_i6.GSR = "ENABLED";
    FD1P3AX bd2_reg2_r_i0_i7 (.D(bd2_mixel[7]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd2_reg2_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg2_r_i0_i7.GSR = "ENABLED";
    FD1P3AX bd2_reg3_r_i0_i1 (.D(bd2_mixel[1]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd2_reg3_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg3_r_i0_i1.GSR = "ENABLED";
    FD1P3AX bd2_reg3_r_i0_i2 (.D(bd2_mixel[2]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd2_reg3_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg3_r_i0_i2.GSR = "ENABLED";
    FD1P3AX bd2_reg3_r_i0_i3 (.D(bd2_mixel[3]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd2_reg3_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg3_r_i0_i3.GSR = "ENABLED";
    FD1P3AX bd2_reg3_r_i0_i4 (.D(bd2_mixel[4]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd2_reg3_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg3_r_i0_i4.GSR = "ENABLED";
    FD1P3AX bd2_reg3_r_i0_i5 (.D(bd2_mixel[5]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd2_reg3_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg3_r_i0_i5.GSR = "ENABLED";
    FD1P3AX bd2_reg3_r_i0_i6 (.D(bd2_mixel[6]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd2_reg3_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg3_r_i0_i6.GSR = "ENABLED";
    FD1P3AX bd2_reg3_r_i0_i7 (.D(bd2_mixel[7]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd2_reg3_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1027[14] 1034[12])
    defparam bd2_reg3_r_i0_i7.GSR = "ENABLED";
    FD1P3DX bd2_fr_r_i0_i1 (.D(bd2_fr_r_7__N_279[1]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd2_fr_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1041[14] 1048[12])
    defparam bd2_fr_r_i0_i1.GSR = "DISABLED";
    FD1P3DX bd2_fr_r_i0_i2 (.D(bd2_fr_r_7__N_279[2]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd2_fr_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1041[14] 1048[12])
    defparam bd2_fr_r_i0_i2.GSR = "DISABLED";
    FD1P3DX bd2_fr_r_i0_i3 (.D(bd2_fr_r_7__N_279[3]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd2_fr_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1041[14] 1048[12])
    defparam bd2_fr_r_i0_i3.GSR = "DISABLED";
    FD1P3DX bd2_fr_r_i0_i4 (.D(bd2_fr_r_7__N_279[4]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd2_fr_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1041[14] 1048[12])
    defparam bd2_fr_r_i0_i4.GSR = "DISABLED";
    FD1P3DX bd2_fr_r_i0_i5 (.D(bd2_fr_r_7__N_279[5]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd2_fr_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1041[14] 1048[12])
    defparam bd2_fr_r_i0_i5.GSR = "DISABLED";
    FD1P3DX bd2_fr_r_i0_i6 (.D(bd2_fr_r_7__N_279[6]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd2_fr_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1041[14] 1048[12])
    defparam bd2_fr_r_i0_i6.GSR = "DISABLED";
    FD1P3DX bd2_fr_r_i0_i7 (.D(bd2_fr_r_7__N_279[7]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd2_fr_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1041[14] 1048[12])
    defparam bd2_fr_r_i0_i7.GSR = "DISABLED";
    FD1P3AX bd3_reg1_r_i0_i1 (.D(bd3_mixel[1]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd3_reg1_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg1_r_i0_i1.GSR = "ENABLED";
    FD1P3AX bd3_reg1_r_i0_i2 (.D(bd3_mixel[2]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd3_reg1_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg1_r_i0_i2.GSR = "ENABLED";
    FD1P3AX bd3_reg1_r_i0_i3 (.D(bd3_mixel[3]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd3_reg1_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg1_r_i0_i3.GSR = "ENABLED";
    FD1P3AX bd3_reg1_r_i0_i4 (.D(bd3_mixel[4]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd3_reg1_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg1_r_i0_i4.GSR = "ENABLED";
    FD1P3AX bd3_reg1_r_i0_i5 (.D(bd3_mixel[5]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd3_reg1_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg1_r_i0_i5.GSR = "ENABLED";
    FD1P3AX bd3_reg1_r_i0_i6 (.D(bd3_mixel[6]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd3_reg1_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg1_r_i0_i6.GSR = "ENABLED";
    FD1P3AX bd3_reg1_r_i0_i7 (.D(bd3_mixel[7]), .SP(clk_byte_o_enable_57), 
            .CK(clk_byte_o), .Q(bd3_reg1_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg1_r_i0_i7.GSR = "ENABLED";
    FD1P3AX bd3_reg2_r_i0_i1 (.D(bd3_mixel[1]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd3_reg2_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg2_r_i0_i1.GSR = "ENABLED";
    FD1P3AX bd3_reg2_r_i0_i2 (.D(bd3_mixel[2]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd3_reg2_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg2_r_i0_i2.GSR = "ENABLED";
    FD1P3AX bd3_reg2_r_i0_i3 (.D(bd3_mixel[3]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd3_reg2_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg2_r_i0_i3.GSR = "ENABLED";
    FD1P3AX bd3_reg2_r_i0_i4 (.D(bd3_mixel[4]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd3_reg2_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg2_r_i0_i4.GSR = "ENABLED";
    FD1P3AX bd3_reg2_r_i0_i5 (.D(bd3_mixel[5]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd3_reg2_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg2_r_i0_i5.GSR = "ENABLED";
    FD1P3AX bd3_reg2_r_i0_i6 (.D(bd3_mixel[6]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd3_reg2_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg2_r_i0_i6.GSR = "ENABLED";
    FD1P3AX bd3_reg2_r_i0_i7 (.D(bd3_mixel[7]), .SP(n317[1]), .CK(clk_byte_o), 
            .Q(bd3_reg2_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg2_r_i0_i7.GSR = "ENABLED";
    FD1P3AX bd3_reg3_r_i0_i1 (.D(bd3_mixel[1]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd3_reg3_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg3_r_i0_i1.GSR = "ENABLED";
    FD1P3AX bd3_reg3_r_i0_i2 (.D(bd3_mixel[2]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd3_reg3_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg3_r_i0_i2.GSR = "ENABLED";
    FD1P3AX bd3_reg3_r_i0_i3 (.D(bd3_mixel[3]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd3_reg3_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg3_r_i0_i3.GSR = "ENABLED";
    FD1P3AX bd3_reg3_r_i0_i4 (.D(bd3_mixel[4]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd3_reg3_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg3_r_i0_i4.GSR = "ENABLED";
    FD1P3AX bd3_reg3_r_i0_i5 (.D(bd3_mixel[5]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd3_reg3_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg3_r_i0_i5.GSR = "ENABLED";
    FD1P3AX bd3_reg3_r_i0_i6 (.D(bd3_mixel[6]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd3_reg3_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg3_r_i0_i6.GSR = "ENABLED";
    FD1P3AX bd3_reg3_r_i0_i7 (.D(bd3_mixel[7]), .SP(bd_sel_r_1__N_259), 
            .CK(clk_byte_o), .Q(bd3_reg3_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1061[14] 1068[12])
    defparam bd3_reg3_r_i0_i7.GSR = "ENABLED";
    FD1P3DX bd3_fr_r_i0_i1 (.D(bd3_fr_r_7__N_287[1]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd3_fr_r[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1075[14] 1082[12])
    defparam bd3_fr_r_i0_i1.GSR = "DISABLED";
    FD1P3DX bd3_fr_r_i0_i2 (.D(bd3_fr_r_7__N_287[2]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd3_fr_r[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1075[14] 1082[12])
    defparam bd3_fr_r_i0_i2.GSR = "DISABLED";
    FD1P3DX bd3_fr_r_i0_i3 (.D(bd3_fr_r_7__N_287[3]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd3_fr_r[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1075[14] 1082[12])
    defparam bd3_fr_r_i0_i3.GSR = "DISABLED";
    FD1P3DX bd3_fr_r_i0_i4 (.D(bd3_fr_r_7__N_287[4]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd3_fr_r[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1075[14] 1082[12])
    defparam bd3_fr_r_i0_i4.GSR = "DISABLED";
    FD1P3DX bd3_fr_r_i0_i5 (.D(bd3_fr_r_7__N_287[5]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd3_fr_r[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1075[14] 1082[12])
    defparam bd3_fr_r_i0_i5.GSR = "DISABLED";
    FD1P3DX bd3_fr_r_i0_i6 (.D(bd3_fr_r_7__N_287[6]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd3_fr_r[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1075[14] 1082[12])
    defparam bd3_fr_r_i0_i6.GSR = "DISABLED";
    FD1P3DX bd3_fr_r_i0_i7 (.D(bd3_fr_r_7__N_287[7]), .SP(clk_byte_hs_enable_36), 
            .CK(clk_byte_hs), .CD(reset_byte_fr_n_i_N_14), .Q(bd3_fr_r[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(1075[14] 1082[12])
    defparam bd3_fr_r_i0_i7.GSR = "DISABLED";
    FD1S3IX settle_cnt_lane0_i1 (.D(n1078), .CK(clk_byte_hs), .CD(n1119), 
            .Q(settle_cnt_lane0[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(310[14] 321[12])
    defparam settle_cnt_lane0_i1.GSR = "ENABLED";
    FD1S3IX settle_cnt_lane0_i2 (.D(n1082), .CK(clk_byte_hs), .CD(n1119), 
            .Q(settle_cnt_lane0[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(310[14] 321[12])
    defparam settle_cnt_lane0_i2.GSR = "ENABLED";
    FD1S3JX settle_cnt_lane0_i3 (.D(settle_cnt_lane0_3__N_198[3]), .CK(clk_byte_hs), 
            .PD(n1120), .Q(settle_cnt_lane0[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=117 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(310[14] 321[12])
    defparam settle_cnt_lane0_i3.GSR = "ENABLED";
    LUT4 mux_116_i4_3_lut (.A(n659[3]), .B(bd3_reg3_r[3]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd3_fr_r_7__N_287[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_116_i4_3_lut.init = 16'hcaca;
    LUT4 i615_3_lut_3_lut (.A(hs_sync_sync), .B(hs_sync_d1_r), .C(bd0_fr_r[3]), 
         .Z(bd0_o_7__N_5[3])) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(616[22:50])
    defparam i615_3_lut_3_lut.init = 16'he2e2;
    LUT4 mux_112_i1_3_lut (.A(n623[0]), .B(bd1_reg3_r[0]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd1_fr_r_7__N_271[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_112_i1_3_lut.init = 16'hcaca;
    LUT4 mux_111_i1_3_lut (.A(bd1_reg1_r[0]), .B(bd1_reg2_r[0]), .C(n564[1]), 
         .Z(n623[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_111_i1_3_lut.init = 16'hcaca;
    LUT4 i653_2_lut (.A(bd2_fr_r[1]), .B(hs_sync_d1_r), .Z(bd2_o_7__N_23[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(654[20] 659[18])
    defparam i653_2_lut.init = 16'h8888;
    LUT4 mux_115_i4_3_lut (.A(bd3_reg1_r[3]), .B(bd3_reg2_r[3]), .C(n564[1]), 
         .Z(n659[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_115_i4_3_lut.init = 16'hcaca;
    LUT4 i652_2_lut (.A(bd1_fr_r[6]), .B(hs_sync_d1_r), .Z(bd1_o_7__N_15[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(636[20] 641[18])
    defparam i652_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_adj_14 (.A(lp_d3_rx_n_r), .B(lp_d3_rx_n_r2), .C(lp_d3_rx_n_r1), 
         .Z(lp_d3_rx_n_o)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(277[23:67])
    defparam i2_3_lut_adj_14.init = 16'h8080;
    LUT4 i651_2_lut (.A(bd1_fr_r[2]), .B(hs_sync_d1_r), .Z(bd1_o_7__N_15[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(636[20] 641[18])
    defparam i651_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_15 (.A(settle_cnt_lane2[1]), .B(settle_cnt_lane2[0]), 
         .Z(n1076)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_15.init = 16'h9999;
    LUT4 i1_2_lut_adj_16 (.A(settle_cnt_lane1[1]), .B(settle_cnt_lane1[0]), 
         .Z(n1070)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_16.init = 16'h9999;
    LUT4 i650_2_lut (.A(bd1_fr_r[1]), .B(hs_sync_d1_r), .Z(bd1_o_7__N_15[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(636[20] 641[18])
    defparam i650_2_lut.init = 16'h8888;
    LUT4 i249_1_lut (.A(settle_cnt_lane3[0]), .Z(n296[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(422[37:57])
    defparam i249_1_lut.init = 16'h5555;
    LUT4 i649_2_lut (.A(bd0_fr_r[6]), .B(hs_sync_d1_r), .Z(bd0_o_7__N_5[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(619[18] 624[16])
    defparam i649_2_lut.init = 16'h8888;
    LUT4 hs_sync_d1_r_I_0_2_lut (.A(hs_sync_d1_r), .B(hs_sync_d2_r), .Z(hs_sync_o)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(555[28:55])
    defparam hs_sync_d1_r_I_0_2_lut.init = 16'heeee;
    LUT4 i654_2_lut (.A(bd2_fr_r[2]), .B(hs_sync_d1_r), .Z(bd2_o_7__N_23[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(654[20] 659[18])
    defparam i654_2_lut.init = 16'h8888;
    LUT4 mux_115_i1_3_lut (.A(bd3_reg1_r[0]), .B(bd3_reg2_r[0]), .C(n564[1]), 
         .Z(n659[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_115_i1_3_lut.init = 16'hcaca;
    LUT4 mux_116_i1_3_lut (.A(n659[0]), .B(bd3_reg3_r[0]), .C(bd_fr_sel_r_1__N_262), 
         .Z(bd3_fr_r_7__N_287[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_116_i1_3_lut.init = 16'hcaca;
    LUT4 mux_113_i1_3_lut (.A(bd2_reg1_r[0]), .B(bd2_reg2_r[0]), .C(n564[1]), 
         .Z(n641[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/dphy_rx_wrap.v(744[24:39])
    defparam mux_113_i1_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module sip4_demo_rx_global_ctrl
//

module sip4_demo_rx_global_ctrl (reset_n_i_c, reset_ref_n_sync, reset_byte_fr_n_sync, 
            refclk, clk_byte_hs, clk_byte_o, pll_lock, bd0, bd1, 
            bd2, bd3, lp_clk_rx_p, lp_clk_rx_n, lp_d0_rx_p_o, lp_d0_rx_n_o, 
            lp_d1_rx_p_o, lp_d1_rx_n_o, lp_d2_rx_p_o, lp_d2_rx_n_o, 
            lp_d3_rx_p_o, lp_d3_rx_n_o, hs_sync_o, bd0_pre, bd1_pre, 
            bd2_pre, bd3_pre, term_clk_en_o, term_d0_en_w, hs_d1_en_w, 
            n1120) /* synthesis syn_module_defined=1 */ ;
    input reset_n_i_c;
    input reset_ref_n_sync;
    input reset_byte_fr_n_sync;
    input refclk;
    input clk_byte_hs;
    input clk_byte_o;
    input pll_lock;
    input [7:0]bd0;
    input [7:0]bd1;
    input [7:0]bd2;
    input [7:0]bd3;
    input lp_clk_rx_p;
    input lp_clk_rx_n;
    input lp_d0_rx_p_o;
    input lp_d0_rx_n_o;
    input lp_d1_rx_p_o;
    input lp_d1_rx_n_o;
    input lp_d2_rx_p_o;
    input lp_d2_rx_n_o;
    input lp_d3_rx_p_o;
    input lp_d3_rx_n_o;
    input hs_sync_o;
    output [7:0]bd0_pre;
    output [7:0]bd1_pre;
    output [7:0]bd2_pre;
    output [7:0]bd3_pre;
    output term_clk_en_o;
    output term_d0_en_w;
    output hs_d1_en_w;
    output n1120;
    
    wire refclk /* synthesis is_clock=1, SET_AS_NETWORK=refclk */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(130[28:34])
    wire clk_byte_hs /* synthesis is_clock=1, SET_AS_NETWORK=clk_byte_hs */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(34[32:43])
    wire clk_byte_o /* synthesis is_clock=1, SET_AS_NETWORK=clk_byte_o */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/top.v(198[32:42])
    
    rx_global_ctrl_4_8_OFF_HS_ONLY rx_global_ctrl (.reset_n_i(reset_n_i_c), 
            .reset_lp_n_i(reset_ref_n_sync), .reset_byte_fr_n_i(reset_byte_fr_n_sync), 
            .clk_lp_ctrl_i(refclk), .clk_byte_hs_i(clk_byte_hs), .clk_byte_i(clk_byte_o), 
            .clk_byte_fr_i(clk_byte_hs), .pll_lock_i(pll_lock), .bd0_i({bd0}), 
            .bd1_i({bd1}), .bd2_i({bd2}), .bd3_i({bd3}), .lp_clk_p_i(lp_clk_rx_p), 
            .lp_clk_n_i(lp_clk_rx_n), .lp_d0_p_i(lp_d0_rx_p_o), .lp_d0_n_i(lp_d0_rx_n_o), 
            .lp_d1_p_i(lp_d1_rx_p_o), .lp_d1_n_i(lp_d1_rx_n_o), .lp_d2_p_i(lp_d2_rx_p_o), 
            .lp_d2_n_i(lp_d2_rx_n_o), .lp_d3_p_i(lp_d3_rx_p_o), .lp_d3_n_i(lp_d3_rx_n_o), 
            .hs_sync_i(hs_sync_o), .bd0_o({bd0_pre}), .bd1_o({bd1_pre}), 
            .bd2_o({bd2_pre}), .bd3_o({bd3_pre}), .term_clk_en_o(term_clk_en_o), 
            .term_d0_en_o(term_d0_en_w), .hs_d0_en_o(hs_d1_en_w)) /* synthesis LSE_LINE_FILE_ID=12, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=225, LSE_RLINE=265 */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/sip4_demo_rx_global_ctrl.v(53[1] 93[2])
    LUT4 i520_1_lut (.A(hs_d1_en_w), .Z(n1120)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/sip4_demo_rx_global_ctrl.v(53[1] 93[2])
    defparam i520_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module rx_global_ctrl_4_8_OFF_HS_ONLY
//

module rx_global_ctrl_4_8_OFF_HS_ONLY (reset_n_i, reset_lp_n_i, reset_byte_fr_n_i, 
            clk_lp_ctrl_i, clk_byte_hs_i, clk_byte_i, clk_byte_fr_i, 
            pll_lock_i, bd0_i, bd1_i, bd2_i, bd3_i, lp_clk_p_i, 
            lp_clk_n_i, lp_d0_p_i, lp_d0_n_i, lp_d1_p_i, lp_d1_n_i, 
            lp_d2_p_i, lp_d2_n_i, lp_d3_p_i, lp_d3_n_i, hs_sync_i, 
            bd0_o, bd1_o, bd2_o, bd3_o, term_clk_en_o, term_d0_en_o, 
            hs_d0_en_o, term_d1_en_o, hs_d1_en_o, term_d2_en_o, hs_d2_en_o, 
            term_d3_en_o, hs_d3_en_o, hs_sync_o, lp_hs_state_clk_o, 
            lp_hs_state_d_o);   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(55[8:22])
    input reset_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(62[31:40])
    input reset_lp_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(63[31:43])
    input reset_byte_fr_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(64[31:48])
    input clk_lp_ctrl_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(65[31:44])
    input clk_byte_hs_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(66[31:44])
    input clk_byte_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(67[31:41])
    input clk_byte_fr_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(68[31:44])
    input pll_lock_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(69[31:41])
    input [7:0]bd0_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(71[31:36])
    input [7:0]bd1_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(72[31:36])
    input [7:0]bd2_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(73[31:36])
    input [7:0]bd3_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(74[31:36])
    input lp_clk_p_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(75[31:41])
    input lp_clk_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(76[31:41])
    input lp_d0_p_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(77[31:40])
    input lp_d0_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(78[31:40])
    input lp_d1_p_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(79[31:40])
    input lp_d1_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(80[31:40])
    input lp_d2_p_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(81[31:40])
    input lp_d2_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(82[31:40])
    input lp_d3_p_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(83[31:40])
    input lp_d3_n_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(84[31:40])
    input hs_sync_i;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(85[31:40])
    output [7:0]bd0_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(86[31:36])
    output [7:0]bd1_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(87[31:36])
    output [7:0]bd2_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(88[31:36])
    output [7:0]bd3_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(89[31:36])
    output term_clk_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(90[31:44])
    output term_d0_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(91[31:43])
    output hs_d0_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(92[31:41])
    output term_d1_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(93[31:43])
    output hs_d1_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(94[31:41])
    output term_d2_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(95[31:43])
    output hs_d2_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(96[31:41])
    output term_d3_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(97[31:43])
    output hs_d3_en_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(98[31:41])
    output hs_sync_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(99[31:40])
    output [1:0]lp_hs_state_clk_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(100[31:48])
    output [1:0]lp_hs_state_d_o;   // c:/users/eduard/documents/github/fpga-projects/crosslink_csi2toraw10/source/rx_global_ctrl_bb.v(101[31:46])
    
    
    
endmodule
