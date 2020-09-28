//===========================================================================
// Verilog file generated by Clarity Designer    09/28/2020    22:56:09  
// Filename  : csi2_dphy_wrap.v                                                
// IP package: CSI-2/DSI D-PHY Receiver 1.4                           
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//===========================================================================

module csi2_dphy_wrap (
inout                                   clk_n_i,
inout                                   clk_p_i,
inout                                   d0_n_i,
inout                                   d0_p_i,
input                                   clk_byte_fr_i,
input                                   clk_lp_ctrl_i,
///
input                                   reset_byte_fr_n_i,
input                                   reset_byte_n_i,
input                                   reset_lp_n_i,
input                                   reset_n_i,
input                                   pll_lock_i,
// output clocks
output wire                             clk_byte_o,
output wire                             clk_byte_hs_o,
///// outputs to fabric. for low power signalling
output wire                             cd_d0_o,
output wire                             lp_d0_rx_p_o,
output wire                             lp_d0_rx_n_o,
// start of parser_off ------
output wire                             capture_en_o,
// end  of parser_off -------
// debug/misc signals
output wire                             hs_d_en_o,
output wire                             hs_sync_o,
output wire                             term_clk_en_o,
output reg                        [7:0] data_o,
input  wire                       [3:0] data_sel_i
);

parameter PARSER       = "OFF";

parameter RX_TYPE      = "CSI2";
parameter DPHY_RX_IP   = "LATTICE";
parameter WORD_ALIGN   = "ON";
parameter RX_CLK_MODE = "HS_ONLY";
parameter LANE_ALIGN = "OFF";
// byte clock frequency used to compute HS-SETTLE
parameter BYTECLK_MHZ = 125;
// Lane aligner FIFO type for all lanes
parameter FIFO_TYPE    = "LUT";
parameter SETTLE_CYC   = 14;

//-----------------------------------------------------------------------------
//  WIRE DECLARATION
//-----------------------------------------------------------------------------
wire                [8-1:0] bd0_o;
wire                [8-1:0] bd1_o;
wire                [8-1:0] bd2_o;
wire                [8-1:0] bd3_o;
wire          [1*8-1:0] bd_o;
wire                                 payload_en_o;
wire [1*8-1:0] payload_o;
wire                                 sp_en_o;
wire                                 lp_en_o;
wire                                 lp_av_en_o;
wire                           [5:0] dt_o;
wire                           [1:0] vc_o;
wire                          [15:0] wc_o;
wire                           [7:0] ecc_o;
wire                                 sp2_en_o;
wire                                 lp2_en_o;
wire                                 lp2_av_en_o;
wire                           [5:0] dt2_o;
wire                           [1:0] vc2_o;
wire                          [15:0] wc2_o;
wire                           [7:0] ecc2_o;

always @(posedge clk_byte_fr_i) begin
  if (reset_byte_fr_n_i == 1'd0) begin
    data_o <= 8'd0;
  end
  else begin
    case (data_sel_i)
      4'd0   : data_o <= bd0_o[7:0];
      4'd1   : data_o <= bd1_o[7:0];
      4'd2   : data_o <= bd2_o[7:0];
      default: data_o <= bd3_o[7:0];
    endcase
  end
end

//-----------------------------------------------------------------------------
//  MODULE INSTANTIATION
//-----------------------------------------------------------------------------


/*synthesis translate_off*/
// for simulation purposes only. GSR is assigned or instantiated outside
// this IP
  GSR GSR_INST (.GSR (reset_n_i));

// for compile check only
/*synthesis translate_on*/

///// DPHY RX module /////
csi2_dphy_dphy_rx  # (
  .PARSER       (PARSER),
  .RX_TYPE      (RX_TYPE),
  .NUM_RX_LANE  (1),
  .RX_GEAR      (8),
  .DPHY_RX_IP   (DPHY_RX_IP),
  // .DATA_TYPE    (DATA_TYPE),
  .RX_CLK_MODE  (RX_CLK_MODE),
  // .TX_WAIT_TIME (TX_WAIT_TIME),
  .LANE_ALIGN   (LANE_ALIGN),
  .WORD_ALIGN   (WORD_ALIGN),
  .BYTECLK_MHZ  (BYTECLK_MHZ),
  .SETTLE_CYC   (14),
  .FIFO_TYPE    (FIFO_TYPE)
)
dphy_rx_inst (
  // Outputs
  .clk_byte_o                          (clk_byte_o),
  .clk_byte_hs_o                       (clk_byte_hs_o),
  .lp_d0_rx_p_o                        (lp_d0_rx_p_o),
  .lp_d0_rx_n_o                        (lp_d0_rx_n_o),
  .lp_d1_rx_p_o                        (lp_d1_rx_p_o),
  .lp_d1_rx_n_o                        (lp_d1_rx_n_o),
  .lp_d2_rx_p_o                        (lp_d2_rx_p_o),
  .lp_d2_rx_n_o                        (lp_d2_rx_n_o),
  .lp_d3_rx_p_o                        (lp_d3_rx_p_o),
  .lp_d3_rx_n_o                        (lp_d3_rx_n_o),
  .cd_d0_o                             (cd_d0_o),
  .bd0_o                               (bd0_o[8-1:0]),
  .bd1_o                               (bd1_o[8-1:0]),
  .bd2_o                               (bd2_o[8-1:0]),
  .bd3_o                               (bd3_o[8-1:0]),
  .capture_en_o                        (capture_en_o),
  .sp_en_o                             (sp_en_o),
  .lp_en_o                             (lp_en_o),
  .lp_av_en_o                          (lp_av_en_o),
  .dt_o                                (dt_o[5:0]),
  .vc_o                                (vc_o[1:0]),
  .wc_o                                (wc_o[15:0]),
  .ecc_o                               (ecc_o[7:0]),
  .bd_o                                (bd_o[1*8-1:0]),
  
  
  .pd_dphy_i                           (1'd1),
  
  .payload_en_o                        (payload_en_o),
  .payload_o                           (payload_o[1*8-1:0]),
  .term_clk_en_o                       (term_clk_en_o),
  .hs_d_en_o                           (hs_d_en_o),
  .lp_hs_state_clk_o                   (),
  .lp_hs_state_d_o                     (),
  .hs_sync_o                           (hs_sync_o),
  // Inouts
  .clk_p_i                             (clk_p_i),
  .clk_n_i                             (clk_n_i),


  .d0_p_i                              (d0_p_i),
  .d0_n_i                              (d0_n_i),
  // Inputs
  .clk_lp_ctrl_i                       (clk_lp_ctrl_i),
  .clk_byte_fr_i                       (clk_byte_fr_i),
  .reset_n_i                           (reset_n_i),
  .reset_lp_n_i                        (reset_lp_n_i),
  .reset_byte_n_i                      (reset_byte_n_i),
  .reset_byte_fr_n_i                   (reset_byte_fr_n_i),
  .pll_lock_i                          (pll_lock_i),
  .lp_d0_tx_en_i                       (1'd0),
  .lp_d0_tx_p_i                        (1'd0),
  .lp_d0_tx_n_i                        (1'd0)
);


endmodule