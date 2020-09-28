// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Copyright (c) 2015 by Lattice Semiconductor Corporation
// --------------------------------------------------------------------
//
// Permission:
//
//   Lattice Semiconductor grants permission to use this code for use
//   in synthesis for any Lattice programmable logic product.  Other
//   use of this code, including the selling or duplication of any
//   portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL or Verilog source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Lattice Semiconductor provides no warranty
//   regarding the use or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     Lattice Semiconductor Corporation
//                     5555 NE Moore Court
//                     Hillsboro, OR 97214
//                     U.S.A
//
//                     TEL: 1-800-Lattice (USA and Canada)
//                          408-826-6000 (other locations)
//
//                     web: http://www.latticesemi.com/
//                     email: techsupport@latticesemi.com
//
// ----------------------------------------------------------------------------
// dphy_rx submodule - output is parallel data from D-PHY
// 
// ----------------------------------------------------------------------------
// Revision History :
// ----------------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :|                   :|           :| Initial Release
//-----------------------------------------------------------------------------

//===========================================================================
// Verilog file generated by Clarity Designer    09/28/2020    22:56:09  
// Filename  : csi2_dphy_dphy_rx.v                                                
// IP package: CSI-2/DSI D-PHY Receiver 1.4                           
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//===========================================================================

module csi2_dphy_dphy_rx #(
//==== enable packet parser (capture_ctrl module)
    parameter PARSER       = "ON",         // "ON" or "OFF" 

    parameter RX_TYPE      = "DSI",        // "DSI" or "CSI2" 
    parameter NUM_RX_LANE  = 4,            // 1, 2, 3 or 4
    parameter RX_GEAR      = 16,           // 8 or 16
    parameter DPHY_RX_IP   = "MIXEL",      // "MIXEL" or "LATTICE"
    parameter DATA_TYPE    = "RGB888",     // "RGB666", "RGB666_LOOSE", "RGB888", "RAW8", "RAW10", "RAW12", "YUV420-8", "LEGACY_YUV420_8",
                                           // "YUV420_8_CSPS", "YUV422_8", "YUV420_10", "YUV420_10_CSPS", "YUV420_10_CSPS" or "YUV422_10"
    parameter RX_CLK_MODE  = "HS_LP",      // "HS_LP" or "HS_ONLY"
    parameter TX_WAIT_TIME = "LESS_15MS",  // "OVER_15MS" or "LESS_15MS"
    parameter LANE_ALIGN   = "OFF",        // Enable/Disable lane aligner
    parameter WORD_ALIGN   = "OFF",        // added for mixel but must be instantiated when soft dphy is used
  // byte clock frequency used to compute HS-SETTLE
    parameter BYTECLK_MHZ  = 111,          // Target byte clock frequency
    parameter SETTLE_CYC   = 2,            // Number of cycle for settle logic
    parameter FIFO_TYPE    = "EBR"         // Lane aligner FIFO type for all lanes
)
//-----------------------------------------------------------------------------
//  PORT DECLARATION
//-----------------------------------------------------------------------------

(
// input clocks
    input  wire                              clk_lp_ctrl_i,     // clock to LP HS Controller on CLK lane
    input  wire                              clk_byte_fr_i,     // continuous byte clock, could be clk_byte_o/clk_byte_hs/refclk
// input resets
    input  wire                              reset_n_i,         // Reset, active low
    input  wire                              reset_lp_n_i,      // Reset to FFs using clk_lp_ctrl_i, active low
    input  wire                              reset_byte_n_i,    // Reset to FFs using clk_byte, active low  // which clk_byte is this ?
    input  wire                              reset_byte_fr_n_i, // Reset to FFs using clk_byte_fr_i, active low
    input  wire                              pd_dphy_i,         // Power down for MIXEL DPHY

// pll_lock is used to reset the rx_fifo (may be removed?) 
    input  wire                              pll_lock_i,        // PLL lock indicator, active high; set to 1 if PLL is not in use

    ///// MIPI I/F
    inout  wire                              clk_p_i,           // DPHY clock (p)
    inout  wire                              clk_n_i,           // DPHY clock (n)
    inout  wire                              d0_p_io,           // DPHY D0 (p) in DSI
    inout  wire                              d0_n_io,           // DPHY D0 (n) in DSI
    inout  wire                              d0_p_i,            // DPHY D0 (p) in CSI-2
    inout  wire                              d0_n_i,            // DPHY D0 (n) in CSI-2
    inout  wire                              d1_p_i,            // DPHY D1 (p)
    inout  wire                              d1_n_i,            // DPHY D1 (n)
    inout  wire                              d2_p_i,            // DPHY D2 (p)
    inout  wire                              d2_n_i,            // DPHY D2 (n)
    inout  wire                              d3_p_i,            // DPHY D3 (p)
    inout  wire                              d3_n_i,            // DPHY D3 (n)
 
// from fabric
    input  wire                              lp_d0_tx_en_i,     // LP Tx Data Enable on D0, active high
    input  wire                              lp_d0_tx_p_i,      // LP Tx Data on D0 (p)
    input  wire                              lp_d0_tx_n_i,      // LP Tx Data on D0 (n)
 
// output clocks	
	output wire                                clk_byte_o,        // toggling only when DPHY data is in HS mode
    output wire                              clk_byte_hs_o,     // toggling when DPHY clk is in HS mode 
                                                                // continuous byte clock in HS_ONLY mode  
///// outputs to fabric. for low power signalling                                   
    output wire                              lp_d0_rx_p_o,      // LP Rx Data on D0 (p)
    output wire                              lp_d0_rx_n_o,      // LP Rx Data on D0 (n)
    output wire                              lp_d1_rx_p_o,      // LP Rx Data on D1 (p)
    output wire                              lp_d1_rx_n_o,      // LP Rx Data on D1 (n)
    output wire                              lp_d2_rx_p_o,      // LP Rx Data on D2 (p)
    output wire                              lp_d2_rx_n_o,      // LP Rx Data on D2 (n)
    output wire                              lp_d3_rx_p_o,      // LP Rx Data on D3 (p)
    output wire                              lp_d3_rx_n_o,      // LP Rx Data on D3 (n)
    output wire                              cd_d0_o,           // Contenion Detection on D0

///// outputs when PARSER is disabled
    output wire [RX_GEAR-1:0]                bd0_o,             // DPHY Byte Data 0
    output wire [RX_GEAR-1:0]                bd1_o,             // DPHY Byte Data 1
    output wire [RX_GEAR-1:0]                bd2_o,             // DPHY Byte Data 2
    output wire [RX_GEAR-1:0]                bd3_o,             // DPHY Byte Data 3
    output wire                              capture_en_o,      // Capture Enable, active high

///// outputs when PARSER is enabled
    output wire                              sp_en_o,           // Short Packet Enable, active high
    output wire                              lp_en_o,           // Long Packet Enable, active high
    output wire                              lp_av_en_o,        // Active Video Long Packet Enable, active high
    output wire [5:0]                        dt_o,              // Data Type    
    output wire [1:0]                        vc_o,              // Virtual Channel
    output wire [15:0]                       wc_o,              // Byte count
    output wire [NUM_RX_LANE*8-1:0]          bd_o,              // DPHY Byte Data (Gear8 only)
    output wire [7:0]                        ecc_o,             // ECC    
	// 2nd set of header. in cases where data width (rx_gear*num_rx_lane) is 64 
    output wire                              sp2_en_o,          // Short Packet Enable, active high
    output wire                              lp2_en_o,          // Long Packet Enable, active high
    output wire                              lp2_av_en_o,       // Active Video Long Packet Enable, active high
    output wire [5:0]                        dt2_o,             // Data Type    
    output wire [1:0]                        vc2_o,             // Virtual Channel
    output wire [15:0]                       wc2_o,             // Byte count
    output wire [7:0]                        ecc2_o,            // ECC #2 (only for 4lane Gear16)
    input  wire [5:0]                        ref_dt_i,

    // data & valid
    output wire                              payload_en_o,      // Payload Enable, active high
    output wire [NUM_RX_LANE*RX_GEAR-1:0]    payload_o,  	
    
	///// Debug only outputs (or potential customer use)
    output wire                              term_clk_en_o,     // Termination Enable on CLK, active high
    output wire                              hs_d_en_o,         // HS mode Enable on D0, active high
    output wire [1:0]                        lp_hs_state_clk_o, // LP HS Controller (CLK) state machine
    output wire [1:0]                        lp_hs_state_d_o,   // LP HS Controller (D0) state machine
    output wire                              hs_sync_o          // HS Sync, active high

);

//-----------------------------------------------------------------------------
//  LOCAL PARAMETER DECLARATION
//-----------------------------------------------------------------------------

///// Internal Parameter Setting /////

localparam DT = ((RX_TYPE == "DSI") && (DATA_TYPE == "RGB666")) ?           6'h1E :
                ((RX_TYPE == "DSI") && (DATA_TYPE == "RGB666_LOOSE")) ?     6'h2E :
                ((RX_TYPE == "DSI") && (DATA_TYPE == "RGB888")) ?           6'h3E :
				
                ((RX_TYPE == "CSI2") && (DATA_TYPE == "RGB888")) ?          6'h24 :
                ((RX_TYPE == "CSI2") && (DATA_TYPE == "RAW10")) ?           6'h2B :
                ((RX_TYPE == "CSI2") && (DATA_TYPE == "RAW12")) ?           6'h2C :
                ((RX_TYPE == "CSI2") && (DATA_TYPE == "RAW8")) ?            6'h2A :
                ((RX_TYPE == "CSI2") && (DATA_TYPE == "YUV420_8")) ?        6'h18 :
                ((RX_TYPE == "CSI2") && (DATA_TYPE == "LEGACY_YUV420_8")) ? 6'h1A :
                ((RX_TYPE == "CSI2") && (DATA_TYPE == "YUV420_8_CSPS")) ?   6'h1C :
                ((RX_TYPE == "CSI2") && (DATA_TYPE == "YUV422_8")) ?        6'h1E :
                ((RX_TYPE == "CSI2") && (DATA_TYPE == "YUV420_10")) ?       6'h19 :
                ((RX_TYPE == "CSI2") && (DATA_TYPE == "YUV420_10_CSPS")) ?  6'h1D :
                ((RX_TYPE == "CSI2") && (DATA_TYPE == "YUV422_10")) ?       6'h1F : 6'h3E;

// No need to use rx fifo since data is already transferred to free-running byte clok
// inside dphy_rx_wrap using multicycle registers


//-----------------------------------------------------------------------------
//  WIRE DECLARATION
//-----------------------------------------------------------------------------

wire                           clk_byte_hs;
wire                           term_d0_en_w, term_d1_en_w, term_d2_en_w, term_d3_en_w;
wire                           term_d1_en_temp_w, term_d2_en_temp_w, term_d3_en_temp_w;
wire                           hs_d1_en_w, hs_d2_en_w, hs_d3_en_w;
wire                           hs_d1_en_temp_w, hs_d2_en_temp_w, hs_d3_en_temp_w;
wire                           capture_en_pre;
wire                           capture_en_pre_parser;
wire [RX_GEAR-1:0]             bd0, bd1, bd2, bd3, bd0_pre, bd1_pre, bd2_pre, bd3_pre;
wire [RX_GEAR-1:0]             bd0_pre_parser;
wire [RX_GEAR-1:0]             bd1_pre_parser;
wire [RX_GEAR-1:0]             bd2_pre_parser;
wire [RX_GEAR-1:0]             bd3_pre_parser;
wire                           lp_clk_rx_p, lp_clk_rx_n;
wire                           lp_av_en, lp2_av_en;
wire [NUM_RX_LANE*RX_GEAR-1:0] payload;
wire                           reset_clk_hs_n_sync_w;
wire                           hs_settle_en_w;

// Encountered synthesis error when driving unused dphy lanes with 1
// net \dphy_2_cmos/pwr is constantly driven from multiple places at instance \dphy_2_cmos/dsi.dsi_rx/d_sot_det_3__I_0_33, on port DN2. VDB-1000
// Done: error code 2
//wire                           d1_p, d1_n, d2_p, d2_n, d3_p, d3_n;
//generate
//    assign  d1_p = (NUM_RX_LANE > 1) ? d1_p_i : 1'b1; 
//    assign  d1_n = (NUM_RX_LANE > 1) ? d1_n_i : 1'b1; 
//    assign  d2_p = (NUM_RX_LANE > 2) ? d2_p_i : 1'b1; 
//    assign  d2_n = (NUM_RX_LANE > 2) ? d2_n_i : 1'b1; 
//    assign  d3_p = (NUM_RX_LANE > 3) ? d3_p_i : 1'b1; 
//    assign  d3_n = (NUM_RX_LANE > 3) ? d3_n_i : 1'b1; 
//endgenerate


//-----------------------------------------------------------------------------
//  MODULE INSTANTIATION
//-----------------------------------------------------------------------------
// YEL 05.05.2017 - check if this can be
// clk_byte_fr_o = clk_byte_hs regardless of mode.
wire lp_hs_state_clk_w;
assign clk_byte_hs_o      = clk_byte_hs;
assign lp_hs_state_clk_o  = (RX_CLK_MODE == "HS_ONLY")? 2'd3 : lp_hs_state_clk_w;

// YEL 05.05.2017 
// original code:
//generate
//    assign clk_byte_hs_o = (RX_CLK_MODE == "HS_ONLY") ? clk_byte_hs : 1'b0;
//endgenerate

assign capture_en_o = capture_en_pre;
assign bd0_o        = bd0_pre;
assign bd1_o        = bd1_pre;
assign bd2_o        = bd2_pre;
assign bd3_o        = bd3_pre;

wire         [3:0] d_sot_det_w;
wire         [3:0] d_sote_det_w;
wire [RX_GEAR-1:0] bd0_w;
wire [RX_GEAR-1:0] bd1_w;
wire [RX_GEAR-1:0] bd2_w;
wire [RX_GEAR-1:0] bd3_w;

csi2_dphy_dphy_rx_wrap
dphy_rx_wrap_inst (
  .reset_n_i             (reset_n_i),
  .reset_byte_n_i        (reset_byte_n_i),
  .reset_byte_fr_n_i     (reset_byte_fr_n_i),
  .clk_byte_fr_i         (clk_byte_fr_i),
  .term_d0_en_i          (term_d0_en_w),
  .term_d1_en_i          (term_d1_en_w),
  .term_d2_en_i          (term_d2_en_w),
  .term_d3_en_i          (term_d3_en_w),
  .hs_d0_en_i            (hs_d_en_o),
  .hs_d1_en_i            (hs_d1_en_w),
  .hs_d2_en_i            (hs_d2_en_w),
  .hs_d3_en_i            (hs_d3_en_w),
  .d_sot_det             (d_sot_det_w), 
  .d_sote_det            (d_sote_det_w),
  .clk_byte_i            (clk_byte_o), 
  .bd0_i                 (bd0_w),
  .bd1_i                 (bd1_w),
  .bd2_i                 (bd2_w),
  .bd3_i                 (bd3_w),
  .bd0_o                 (bd0),
  .bd1_o                 (bd1),
  .bd2_o                 (bd2),
  .bd3_o                 (bd3),
  .hs_sync_o             (hs_sync_o)
);


//////////////////////////////////////////////////////////////////////////////////
/// • Intermotion Technology
/// • DPHY Rx Changes
/// • Date June 2, 2019
/// • Davit Tamazyan
/// • Added pd_dphy_i for HARD DPHY.
/// • Added new module(unencrypted) for adding timing constraint for HARD D'PHY.
//////////////////////////////////////////////////////////////////////////////////

csi2_dphy_dphy_wrapper # (
  .DPHY_RX_IP     ("LATTICE"),
  .RX_GEAR        (8),
  .WORD_ALIGN     ("ON"),
  .NUM_RX_LANE    (1)
)
u_dphy_wrapper (
  .reset_n_i      (reset_n_i),
  .pd_dphy_i      (pd_dphy_i),
  .d_sot_det_o    (d_sot_det_w),
  .d_sote_det_o   (d_sote_det_w),
  .bd0_o          (bd0_w),
  .bd1_o          (bd1_w),
  .bd2_o          (bd2_w),
  .bd3_o          (bd3_w),
  .hs_settle_en_i (hs_settle_en_w),
  .hs_d_en_i      (hs_d_en_o),
  .term_clk_en_i  (term_clk_en_o),
  .term_d0_en_i   (term_d0_en_w),
  .term_d1_en_i   (term_d1_en_w),
  .term_d2_en_i   (term_d2_en_w),
  .term_d3_en_i   (term_d3_en_w),
  .lp_d0_tx_en_i  ((RX_TYPE == "DSI")? lp_d0_tx_en_i : 1'd0),
  .lp_d0_tx_p_i   ((RX_TYPE == "DSI")? lp_d0_tx_p_i  : 1'd0),
  .lp_d0_tx_n_i   ((RX_TYPE == "DSI")? lp_d0_tx_n_i  : 1'd0),
  .lp_clk_rx_p_o  (lp_clk_rx_p),
  .lp_clk_rx_n_o  (lp_clk_rx_n),
  .lp_d0_rx_p_o   (lp_d0_rx_p_o),
  .lp_d0_rx_n_o   (lp_d0_rx_n_o),
  .lp_d1_rx_p_o   (lp_d1_rx_p_o),
  .lp_d1_rx_n_o   (lp_d1_rx_n_o),
  .lp_d2_rx_p_o   (lp_d2_rx_p_o),
  .lp_d2_rx_n_o   (lp_d2_rx_n_o),
  .lp_d3_rx_p_o   (lp_d3_rx_p_o),
  .lp_d3_rx_n_o   (lp_d3_rx_n_o),
  .cd_clk_o       (/*unused*/),
  .cd_d0_o        (cd_d0_o),
  .clk_byte_o     (clk_byte_o),
  .clk_hs_o       (clk_byte_hs),
  .clk_p_i        (clk_p_i),
  .clk_n_i        (clk_n_i),
  .d0_p_io        (d0_p_i),
  .d0_n_io        (d0_n_i),
  .d1_p_i         (d1_p_i),
  .d1_n_i         (d1_n_i),
  .d2_p_i         (d2_p_i),
  .d2_n_i         (d2_n_i),
  .d3_p_i         (d3_p_i),
  .d3_n_i         (d3_n_i)
);
  

csi2_dphy_rx_global_ctrl /* #(
    .NUM_RX_LANE            (NUM_RX_LANE),
    .RX_GEAR                (RX_GEAR),
    .RX_FIFO                (RX_FIFO),
    .RX_CLK_MODE            (RX_CLK_MODE)
) */
rx_global_ctrl_inst (
    .reset_n_i              (reset_n_i),
    .reset_lp_n_i           (reset_lp_n_i),
    .reset_byte_fr_n_i      (reset_byte_fr_n_i),
    .clk_lp_ctrl_i          (clk_lp_ctrl_i),
    .clk_byte_i             (clk_byte_o),
    .clk_byte_hs_i          (clk_byte_hs),
    .clk_byte_fr_i          (clk_byte_fr_i),// use stoppable byteclk clk_hs (clk_byte_fr_i),
    .pll_lock_i             (pll_lock_i),
    .bd0_i                  (bd0),
    .bd1_i                  (bd1),
    .bd2_i                  (bd2),
    .bd3_i                  (bd3),
    .lp_clk_p_i             (lp_clk_rx_p),
    .lp_clk_n_i             (lp_clk_rx_n),
    .lp_d0_p_i              (lp_d0_rx_p_o),
    .lp_d0_n_i              (lp_d0_rx_n_o),
    .lp_d1_p_i              (lp_d1_rx_p_o),
    .lp_d1_n_i              (lp_d1_rx_n_o),
    .lp_d2_p_i              (lp_d2_rx_p_o),
    .lp_d2_n_i              (lp_d2_rx_n_o),
    .lp_d3_p_i              (lp_d3_rx_p_o),
    .lp_d3_n_i              (lp_d3_rx_n_o),
    .hs_sync_i              (hs_sync_o),
    .bd0_o                  (bd0_pre),
    .bd1_o                  (bd1_pre),
    .bd2_o                  (bd2_pre),
    .bd3_o                  (bd3_pre),
    .term_clk_en_o          (term_clk_en_o),
    .term_d0_en_o           (term_d0_en_w),
    .hs_d0_en_o             (hs_d_en_o),
    .term_d1_en_o           (term_d1_en_temp_w),
    .hs_d1_en_o             (hs_d1_en_temp_w),
    .term_d2_en_o           (term_d2_en_temp_w),
    .hs_d2_en_o             (hs_d2_en_temp_w),
    .term_d3_en_o           (term_d3_en_temp_w),
    .hs_d3_en_o             (hs_d3_en_temp_w),
    .hs_sync_o              (capture_en_pre),
    .hs_settle_en_o         (hs_settle_en_w),
    .lp_hs_state_clk_o      (lp_hs_state_clk_w),
    .lp_hs_state_d_o        (lp_hs_state_d_o)
);

// Workaround since LP data of lane 1,2,3 from Mixel is not correct
// Still checking if this is a Mixel bug or not
generate 
if (DPHY_RX_IP == "MIXEL") begin : mixel_term_en
  assign term_d1_en_w = term_d0_en_w;
  assign term_d2_en_w = term_d0_en_w;
  assign term_d3_en_w = term_d0_en_w;
  assign hs_d1_en_w   = hs_d_en_o;
  assign hs_d2_en_w   = hs_d_en_o;
  assign hs_d3_en_w   = hs_d_en_o;
end
else begin : lattice_term_en
  assign term_d1_en_w = term_d1_en_temp_w;
  assign term_d2_en_w = term_d2_en_temp_w;
  assign term_d3_en_w = term_d3_en_temp_w;
  assign hs_d1_en_w   = hs_d1_en_temp_w;
  assign hs_d2_en_w   = hs_d2_en_temp_w;
  assign hs_d3_en_w   = hs_d3_en_temp_w;
end
endgenerate

generate
    if (PARSER == "ON")
    begin : capture_ctrl_inst
        csi2_dphy_capture_ctrl /* #(
            .NUM_RX_LANE    (NUM_RX_LANE),
            .RX_GEAR        (RX_GEAR),
            .RX_TYPE        (RX_TYPE),
        //    .DT             (DT),
            .TX_WAIT_TIME   (TX_WAIT_TIME)
        ) */
        capture_ctrl_inst (
            .reset_n_i      (reset_byte_fr_n_i),
            .clk_byte_i     (clk_byte_fr_i),
            .bd0_i          (bd0_pre),
            .bd1_i          (bd1_pre),
            .bd2_i          (bd2_pre),
            .bd3_i          (bd3_pre),
            .capture_en_i   (capture_en_pre),
            .ref_dt_i       (ref_dt_i),
            .sp_en_o        (sp_en_o),
            .sp2_en_o       (sp2_en_o),
            .lp_en_o        (lp_en_o),
            .lp_av_en_o     (lp_av_en_o),
            .lp2_en_o       (lp2_en_o),
            .lp2_av_en_o    (lp2_av_en_o),
            .payload_en_o   (payload_en_o),
            .payload_o      (payload_o),
            .bd_o           (bd_o),
            .vc_o           (vc_o),
            .vc2_o          (vc2_o),
            .wc_o           (wc_o),
            .wc2_o          (wc2_o),
            .dt_o           (dt_o),
            .dt2_o          (dt2_o),
            .ecc_o          (ecc_o),
            .ecc2_o         (ecc2_o)
        );
    end
endgenerate



endmodule
      
      
      
