// =============================================================================
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
// -----------------------------------------------------------------------------
//   Copyright (c) 2017 by Lattice Semiconductor Corporation
//   ALL RIGHTS RESERVED
// -----------------------------------------------------------------------------
//
//   Permission:
//
//      Lattice SG Pte. Ltd. grants permission to use this code
//      pursuant to the terms of the Lattice Reference Design License Agreement.
//
//
//   Disclaimer:
//
//      This VHDL or Verilog source code is intended as a design reference
//      which illustrates how these types of functions can be implemented.
//      It is the user's responsibility to verify their design for
//      consistency and functionality through the use of formal
//      verification methods.  Lattice provides no warranty
//      regarding the use or functionality of this code.
//
// -----------------------------------------------------------------------------
//
//                  Lattice SG Pte. Ltd.
//                  101 Thomson Road, United Square #07-02
//                  Singapore 307591
//
//
//                  TEL: 1-800-Lattice (USA and Canada)
//                       +65-6631-2000 (Singapore)
//                       +1-503-268-8001 (other locations)
//
//                  web: http://www.latticesemi.com/
//                  email: techsupport@latticesemi.com
//
// -----------------------------------------------------------------------------
//
// =============================================================================
//                         FILE DETAILS
// Project               : DPHY_RX
// File                  : dphy_wrapper.v
// Title                 :
// Dependencies          : 1.
//                       : 2.
// Description           :
// =============================================================================
//                        REVISION HISTORY
// Version               : 1.0
// Author(s)             : Davit Tamazyan
// Mod. Date             : 06/17/2019
// Changes Made          : Initial version.
// =============================================================================

// need to add PP_RX_GEAR_X and PP_NUM_RX_LANE_X for UVM 

//===========================================================================
// Verilog file generated by Clarity Designer    09/28/2020    22:56:09  
// Filename  : csi2_dphy_dphy_wrapper.v                                                
// IP package: CSI-2/DSI D-PHY Receiver 1.4                           
// Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
//===========================================================================

//////////////////////////////////////////////////////////////////////////////////
/// � Intermotion Technology
/// � DPHY Rx Changes
/// � Date June 2, 2019
/// � Davit Tamazyan
/// � Added pd_dphy_i.
/// . Adeded MIPIDPHY primitive synthesis attributes
//////////////////////////////////////////////////////////////////////////////////

// `ifndef __dphy_wrapper__
// `define __dphy_wrapper__
module csi2_dphy_dphy_wrapper #
// -----------------------------------------------------------------------------
// Module Parameters
// -----------------------------------------------------------------------------
(
parameter                 DPHY_RX_IP  = "MIXEL", /// MIXEL or LATTICE
parameter                 RX_GEAR     = 16,      /// 16 or 8
parameter                 WORD_ALIGN  = "ON",    /// ON or OFF
parameter                 NUM_RX_LANE = 4        /// 1, 2, 3 or 4
)
// -----------------------------------------------------------------------------
// Input/Output Ports
// -----------------------------------------------------------------------------
(
/// Reset
input  wire               reset_n_i,      /// reset for Soft DPHY
input  wire               pd_dphy_i,      /// Power down for Hard DPHY
/// SoT detect
output wire         [3:0] d_sot_det_o,    /// Start of Transaction from Hard dPHY           /// add new inputs in wrap
output wire         [3:0] d_sote_det_o,   /// Start of Transaction Error from Hard dPHY     /// add new inputs in wrap
/// HS data
output wire [RX_GEAR-1:0] bd0_o,          /// Byte data lane 0                              /// add new inputs in wrap
output wire [RX_GEAR-1:0] bd1_o,          /// Byte data lane 1                              /// add new inputs in wrap
output wire [RX_GEAR-1:0] bd2_o,          /// Byte data lane 2                              /// add new inputs in wrap
output wire [RX_GEAR-1:0] bd3_o,          /// Byte data lane 3                              /// add new inputs in wrap
/// HS enable
input  wire               hs_settle_en_i, /// Settle
input  wire               hs_d_en_i,
input  wire               term_clk_en_i,
input  wire               term_d0_en_i,
input  wire               term_d1_en_i,
input  wire               term_d2_en_i,
input  wire               term_d3_en_i,
/// BTA(bus turn around)
input  wire               lp_d0_tx_en_i, /// enable
input  wire               lp_d0_tx_p_i,  /// positive data
input  wire               lp_d0_tx_n_i,  /// negative data
/// LP data
output wire               lp_clk_rx_p_o,
output wire               lp_clk_rx_n_o,
output wire               lp_d0_rx_p_o,
output wire               lp_d0_rx_n_o,
output wire               lp_d1_rx_p_o,
output wire               lp_d1_rx_n_o,
output wire               lp_d2_rx_p_o,
output wire               lp_d2_rx_n_o,
output wire               lp_d3_rx_p_o,
output wire               lp_d3_rx_n_o,
/// CD for clock and lane0
output wire               cd_clk_o,
output wire               cd_d0_o,
/// Byte clocks
output wire               clk_byte_o,
output wire               clk_hs_o,
/// DPHY Interface
inout  wire               clk_p_i,
inout  wire               clk_n_i,
inout  wire               d0_p_io,
inout  wire               d0_n_io,
inout  wire               d1_p_i,
inout  wire               d1_n_i,
inout  wire               d2_p_i,
inout  wire               d2_n_i,
inout  wire               d3_p_i,
inout  wire               d3_n_i
);

wire clk_hs;
wire cd_d0_p;
wire cd_d0_n;

generate    // continuous byte clock
  if (DPHY_RX_IP == "MIXEL") begin
    assign clk_hs_o = clk_hs;
  end
  else if (DPHY_RX_IP == "LATTICE") begin
    assign clk_hs_o = clk_byte_o;
  end
endgenerate

// -----------------------------------------------------------------------------
// Submodule Instantiations
// -----------------------------------------------------------------------------

generate
    if (DPHY_RX_IP == "MIXEL")
    begin : MIXEL
        MIPIDPHYA #(
            .HSEL          (RX_GEAR/8-1),  // 1 for Gear16, 0 for Gear8
            .HS_16BIT_EN   (RX_GEAR/8-1),  // 1 for Gear16, 0 for Gear8
            .CN            (5'd0),
            .CM            (8'd0),
            .CO            (2'd0),
            .ENP_DESER     ((WORD_ALIGN == "ON")? 1'd1 : 1'd0),
            .PLL_TST       (4'd9)
        )
        mixel_dphy (
// CLOCK Interface pins
            .CKP           (clk_p_i),
            .CKN           (clk_n_i),
            .CLKHSBYTE     (clk_hs),        // continuous clock for HS mode
            .CLKRXHSEN     (term_clk_en_i),
            .CLKRXLPEN     (~term_clk_en_i),
            .CLKDRXLPP     (lp_clk_rx_p_o),
            .CLKDRXLPN     (lp_clk_rx_n_o),
            .CLKCDEN       (1'b1),
            .CLKDCDN       (cd_clk_o),
            .CLKTXLPEN     (1'b0),
            .CLKDTXLPP     (1'b0),
            .CLKDTXLPN     (1'b0),
            .CLKTXHSEN     (1'b0),
            .CLKTXHSGATE   (1'b0),
            .CLKTXHSPD     (1'b1),
            .CLKDRXHS      (),
            .HSBYTECLKD    (clk_byte_o),    // Byteclk output from Lane0 deserializer
            .HSBYTECLKS    (),

// Common Interface Pins
            .LBEN          (1'b0),        //
            .PDDPHY        (pd_dphy_i),  // Power Down
            .PDBIAS        (1'b0),  //
            .PDCKG         (1'b0),  // instead of term_d*_en_i?

// PLL Interface pins // only for Tx
            .CLKREF        (1'b0),
            .LOCK          (),
            .PDPLL         (1'b1),

// DATA0 Interface pins
            .DP0           (d0_p_io),
            .DN0           (d0_n_io),
// Loyce: Silicon fix 2020/03/09
//            .D0RXLPEN      (~lp_d0_tx_en_i & !term_d0_en_i),
            .D0RXLPEN      (~lp_d0_tx_en_i),
            .D0DRXLPP      (lp_d0_rx_p_o),
            .D0DRXLPN      (lp_d0_rx_n_o),
            .D0CDEN        (1'b1),        // LP Contention Detection Enable
            .D0DCDP        (cd_d0_p),     // LP Contention Detection Output - P
            .D0DCDN        (cd_d0_n),     // LP Contention Detection Output - N
            .D0TXLPEN      (lp_d0_tx_en_i),
            .D0DTXLPP      (lp_d0_tx_p_i),
            .D0DTXLPN      (lp_d0_tx_n_i),
            .D0RXHSEN      (term_d0_en_i),
            .D0HSRXDATA15  (),
            .D0HSRXDATA14  (),
            .D0HSRXDATA13  (),
            .D0HSRXDATA12  (),
            .D0HSRXDATA11  (),
            .D0HSRXDATA10  (),
            .D0HSRXDATA9   (),
            .D0HSRXDATA8   (),
            .D0HSRXDATA7   (bd0_o[7]),
            .D0HSRXDATA6   (bd0_o[6]),
            .D0HSRXDATA5   (bd0_o[5]),
            .D0HSRXDATA4   (bd0_o[4]),
            .D0HSRXDATA3   (bd0_o[3]),
            .D0HSRXDATA2   (bd0_o[2]),
            .D0HSRXDATA1   (bd0_o[1]),
            .D0HSRXDATA0   (bd0_o[0]),
            .D0SYNC        (d_sot_det_o[0]),  // SoT Detection Indicator
            .D0ERRSYNC     (d_sote_det_o[0]), // SoT Detection with a Single Bit Error
            .D0NOSYNC      (),              // SoT Detection Corruption Indicator
            // .D0HSDESEREN   (hs_en0_settle & term_d0_en_i),
            .D0HSDESEREN   (hs_settle_en_i && hs_d_en_i),
            .D0TXHSEN      (1'b0),
            .D0HSTXDATA15  (1'b0),
            .D0HSTXDATA14  (1'b0),
            .D0HSTXDATA13  (1'b0),
            .D0HSTXDATA12  (1'b0),
            .D0HSTXDATA11  (1'b0),
            .D0HSTXDATA10  (1'b0),
            .D0HSTXDATA9   (1'b0),
            .D0HSTXDATA8   (1'b0),
            .D0HSTXDATA7   (1'b0),
            .D0HSTXDATA6   (1'b0),
            .D0HSTXDATA5   (1'b0),
            .D0HSTXDATA4   (1'b0),
            .D0HSTXDATA3   (1'b0),
            .D0HSTXDATA2   (1'b0),
            .D0HSTXDATA1   (1'b0),
            .D0HSTXDATA0   (1'b0),
            .D0HSSEREN     (1'b0),
            .D0TXHSPD      (1'b1),  // High Speed Tx Power Down
            .D0DRXHS       (),

// DATA1 Interface pins
            .DP1           (d1_p_i),
            .DN1           (d1_n_i),
// Loyce: Silicon fix 2020/03/09 
//            .D1RXLPEN      (!term_d1_en_i),
            .D1RXLPEN      (~lp_d0_tx_en_i),
            .D1DRXLPP      (lp_d1_rx_p_o),
            .D1DRXLPN      (lp_d1_rx_n_o),
            .D1CDEN        (1'b0),    // LP Contention Detection Enable
            .D1DCDP        (),        // LP Contention Detection Output - P
            .D1DCDN        (),        // LP Contention Detection Output - N
            .D1TXLPEN      (1'b0),
            .D1DTXLPP      (1'b0),
            .D1DTXLPN      (1'b0),
            .D1RXHSEN      ((NUM_RX_LANE > 1)? term_d1_en_i : 1'd0),
            .D1HSRXDATA15  (),
            .D1HSRXDATA14  (),
            .D1HSRXDATA13  (),
            .D1HSRXDATA12  (),
            .D1HSRXDATA11  (),
            .D1HSRXDATA10  (),
            .D1HSRXDATA9   (),
            .D1HSRXDATA8   (),
            .D1HSRXDATA7   (bd1_o[7]),
            .D1HSRXDATA6   (bd1_o[6]),
            .D1HSRXDATA5   (bd1_o[5]),
            .D1HSRXDATA4   (bd1_o[4]),
            .D1HSRXDATA3   (bd1_o[3]),
            .D1HSRXDATA2   (bd1_o[2]),
            .D1HSRXDATA1   (bd1_o[1]),
            .D1HSRXDATA0   (bd1_o[0]),
            .D1SYNC        (d_sot_det_o[1]),  // SoT Detection Indicator
            .D1ERRSYNC     (d_sote_det_o[1]), // SoT Detection with a Single Bit Error
            .D1NOSYNC      (),              // SoT Detection Corruption Indicator
            // .D1HSDESEREN   (hs_en0_settle & term_d1_en_i & d1_on),
            .D1HSDESEREN   ((NUM_RX_LANE > 1)? (hs_settle_en_i && hs_d_en_i) : 1'd0),
            .D1TXHSEN      (1'b0),
            .D1HSTXDATA15  (1'b0),
            .D1HSTXDATA14  (1'b0),
            .D1HSTXDATA13  (1'b0),
            .D1HSTXDATA12  (1'b0),
            .D1HSTXDATA11  (1'b0),
            .D1HSTXDATA10  (1'b0),
            .D1HSTXDATA9   (1'b0),
            .D1HSTXDATA8   (1'b0),
            .D1HSTXDATA7   (1'b0),
            .D1HSTXDATA6   (1'b0),
            .D1HSTXDATA5   (1'b0),
            .D1HSTXDATA4   (1'b0),
            .D1HSTXDATA3   (1'b0),
            .D1HSTXDATA2   (1'b0),
            .D1HSTXDATA1   (1'b0),
            .D1HSTXDATA0   (1'b0),
            .D1HSSEREN     (1'b0),
            .D1TXHSPD      (1'b1),  // High Speed Tx Power Down
            .D1DRXHS       (),

// DATA2 Interface pins
            .DP2           (d2_p_i),
            .DN2           (d2_n_i),
// Loyce: Silicon fix 2020/03/09
//            .D2RXLPEN      (~term_d2_en_i),
            .D2RXLPEN      (~lp_d0_tx_en_i),
            .D2DRXLPP      (lp_d2_rx_p_o),
            .D2DRXLPN      (lp_d2_rx_n_o),
            .D2CDEN        (1'b0),    // LP Contention Detection Enable
            .D2DCDP        (),        // LP Contention Detection Output - P
            .D2DCDN        (),        // LP Contention Detection Output - N
            .D2TXLPEN      (1'b0),
            .D2DTXLPP      (1'b0),
            .D2DTXLPN      (1'b0),
            .D2RXHSEN      ((NUM_RX_LANE > 2)? term_d2_en_i : 1'd0),
            .D2HSRXDATA15  (),
            .D2HSRXDATA14  (),
            .D2HSRXDATA13  (),
            .D2HSRXDATA12  (),
            .D2HSRXDATA11  (),
            .D2HSRXDATA10  (),
            .D2HSRXDATA9   (),
            .D2HSRXDATA8   (),
            .D2HSRXDATA7   (bd2_o[7]),
            .D2HSRXDATA6   (bd2_o[6]),
            .D2HSRXDATA5   (bd2_o[5]),
            .D2HSRXDATA4   (bd2_o[4]),
            .D2HSRXDATA3   (bd2_o[3]),
            .D2HSRXDATA2   (bd2_o[2]),
            .D2HSRXDATA1   (bd2_o[1]),
            .D2HSRXDATA0   (bd2_o[0]),
            .D2SYNC        (d_sot_det_o[2]),  // SoT Detection Indicator
            .D2ERRSYNC     (d_sote_det_o[2]), // SoT Detection with a Single Bit Error
            .D2NOSYNC      (),              // SoT Detection Corruption Indicator
            // .D2HSDESEREN   (hs_en0_settle & term_d2_en_i & d2_on),
            .D2HSDESEREN   ((NUM_RX_LANE > 2)? (hs_settle_en_i && hs_d_en_i) : 1'd0),
            .D2TXHSEN      (1'b0),
            .D2HSTXDATA15  (1'b0),
            .D2HSTXDATA14  (1'b0),
            .D2HSTXDATA13  (1'b0),
            .D2HSTXDATA12  (1'b0),
            .D2HSTXDATA11  (1'b0),
            .D2HSTXDATA10  (1'b0),
            .D2HSTXDATA9   (1'b0),
            .D2HSTXDATA8   (1'b0),
            .D2HSTXDATA7   (1'b0),
            .D2HSTXDATA6   (1'b0),
            .D2HSTXDATA5   (1'b0),
            .D2HSTXDATA4   (1'b0),
            .D2HSTXDATA3   (1'b0),
            .D2HSTXDATA2   (1'b0),
            .D2HSTXDATA1   (1'b0),
            .D2HSTXDATA0   (1'b0),
            .D2HSSEREN     (1'b0),
            .D2TXHSPD      (1'b1),  // High Speed Tx Power Down
            .D2DRXHS       (),

// DATA3 Interface pins
            .DP3           (d3_p_i),
            .DN3           (d3_n_i),
// Loyce: Silicon fix 2020/03/09
//            .D3RXLPEN      (~term_d3_en_i),
            .D3RXLPEN      (~lp_d0_tx_en_i),
            .D3DRXLPP      (lp_d3_rx_p_o),
            .D3DRXLPN      (lp_d3_rx_n_o),
            .D3CDEN        (1'b0),    // LP Contention Detection Enable
            .D3DCDP        (),        // LP Contention Detection Output - P
            .D3DCDN        (),        // LP Contention Detection Output - N
            .D3TXLPEN      (1'b0),
            .D3DTXLPP      (1'b0),
            .D3DTXLPN      (1'b0),
            .D3RXHSEN      ((NUM_RX_LANE > 3)? term_d3_en_i : 1'd0),
            .D3HSRXDATA15  (),
            .D3HSRXDATA14  (),
            .D3HSRXDATA13  (),
            .D3HSRXDATA12  (),
            .D3HSRXDATA11  (),
            .D3HSRXDATA10  (),
            .D3HSRXDATA9   (),
            .D3HSRXDATA8   (),
            .D3HSRXDATA7   (bd3_o[7]),
            .D3HSRXDATA6   (bd3_o[6]),
            .D3HSRXDATA5   (bd3_o[5]),
            .D3HSRXDATA4   (bd3_o[4]),
            .D3HSRXDATA3   (bd3_o[3]),
            .D3HSRXDATA2   (bd3_o[2]),
            .D3HSRXDATA1   (bd3_o[1]),
            .D3HSRXDATA0   (bd3_o[0]),
            .D3SYNC        (d_sot_det_o[3]),  // SoT Detection Indicator
            .D3ERRSYNC     (d_sote_det_o[3]), // SoT Detection with a Single Bit Error
            .D3NOSYNC      (),              // SoT Detection Corruption Indicator
            // .D3HSDESEREN   (hs_en0_settle & term_d3_en_i & d3_on),
            .D3HSDESEREN   ((NUM_RX_LANE > 3)? (hs_settle_en_i && hs_d_en_i) : 1'd0),
            .D3TXHSEN      (1'b0),
            .D3HSTXDATA15  (1'b0),
            .D3HSTXDATA14  (1'b0),
            .D3HSTXDATA13  (1'b0),
            .D3HSTXDATA12  (1'b0),
            .D3HSTXDATA11  (1'b0),
            .D3HSTXDATA10  (1'b0),
            .D3HSTXDATA9   (1'b0),
            .D3HSTXDATA8   (1'b0),
            .D3HSTXDATA7   (1'b0),
            .D3HSTXDATA6   (1'b0),
            .D3HSTXDATA5   (1'b0),
            .D3HSTXDATA4   (1'b0),
            .D3HSTXDATA3   (1'b0),
            .D3HSTXDATA2   (1'b0),
            .D3HSTXDATA1   (1'b0),
            .D3HSTXDATA0   (1'b0),
            .D3HSSEREN     (1'b0),
            .D3TXHSPD      (1'b1),  // High Speed Tx Power Down
            .D3DRXHS       ()
        )
             /* synthesis HS_MODE="RX" */
             /* synthesis DIR_PIN_DN3="INPUT" */
             /* synthesis DIR_PIN_DP3="INPUT" */
             /* synthesis DIR_PIN_DN2="INPUT" */
             /* synthesis DIR_PIN_DP2="INPUT" */
             /* synthesis DIR_PIN_DN1="INPUT" */
             /* synthesis DIR_PIN_DP1="INPUT" */
             /* synthesis DIR_PIN_CKN="INPUT" */
             /* synthesis DIR_PIN_CKP="INPUT" */
             /* synthesis DIR_PIN_DN0="INPUT" */
             /* synthesis DIR_PIN_DP0="INPUT" */
             /* synthesis FREQUENCY_PIN_HSBYTECLKD="125.0" */;

    assign cd_d0_o = cd_d0_p | cd_d0_n;
    end
    else if (DPHY_RX_IP == "LATTICE")
    begin : LATTICE
        csi2_dphy_soft_dphy_rx
        dphy_rx (
            .reset_n_i      (reset_n_i),
            .clk_p_i        (clk_p_i),
            .clk_n_i        (clk_n_i),
            .d0_p_io        (d0_p_io),
            .d0_n_io        (d0_n_io),
            .hs_clk_en_i    (term_clk_en_i),
            .hs_d0_en_i     (hs_settle_en_i),
            .hs_d1_en_i     (hs_settle_en_i),
            .hs_d2_en_i     (hs_settle_en_i),
            .hs_d3_en_i     (hs_settle_en_i),
            .lp_d0_tx_en_i  (lp_d0_tx_en_i),
            .lp_d0_tx_p_i   (lp_d0_tx_p_i),
            .lp_d0_tx_n_i   (lp_d0_tx_n_i),
            .clk_byte_o     (clk_byte_o),
            .bd0_o          (bd0_o),
            .bd1_o          (bd1_o),
            .bd2_o          (bd2_o),
            .bd3_o          (bd3_o),
            .lp_clk_rx_p_o  (lp_clk_rx_p_o),
            .lp_clk_rx_n_o  (lp_clk_rx_n_o),
            .lp_d0_rx_p_o   (lp_d0_rx_p_o),
            .lp_d0_rx_n_o   (lp_d0_rx_n_o),
            .lp_d1_rx_p_o   (lp_d1_rx_p_o),
            .lp_d1_rx_n_o   (lp_d1_rx_n_o),
            .lp_d2_rx_p_o   (lp_d2_rx_p_o),
            .lp_d2_rx_n_o   (lp_d2_rx_n_o),
            .lp_d3_rx_p_o   (lp_d3_rx_p_o),
            .lp_d3_rx_n_o   (lp_d3_rx_n_o),
            .cd_clk_o       (cd_clk_o),
            .cd_d0_o        (cd_d0_o)
        );
    end
endgenerate

endmodule
//==============================================================================
// dphy_wrapper.v
//==============================================================================
// `endif



