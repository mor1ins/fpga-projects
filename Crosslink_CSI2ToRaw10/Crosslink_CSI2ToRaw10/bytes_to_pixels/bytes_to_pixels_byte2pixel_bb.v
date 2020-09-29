//===========================================================================
// Verilog file generated by Clarity Designer    09/29/2020    01:16:09  
// Filename  : bytes_to_pixels_byte2pixel_bb.v                                                
// IP package: Byte to Pixel Converter 1.3                           
// Copyright(c) 2017 Lattice Semiconductor Corporation. All rights reserved. 
//===========================================================================

module bytes_to_pixels_byte2pixel (
    input  wire	                             reset_byte_n_i,
    input  wire	                             clk_byte_i,
    input  wire                              sp_en_i,	      // Short Packet Enable
    input  wire [5:0]                        dt_i,	          // Data Type
    input  wire                              lp_av_en_i,      // Long Packet of Active Video Enable
    input  wire	                             payload_en_i,    // paload enable
    input  wire [1*8-1:0]    payload_i,       // payload
    input  wire [15:0]                       wc_i,            // payload byte count

    input  wire	                             reset_pixel_n_i,
    input  wire	                             clk_pixel_i,
    output wire                              fv_o,            // Frame Valid in clk_pixel domain
    output wire                              lv_o,            // Line Valid in clk_pixel domain
    output wire [10*1-1:0] pd_o,            // picture data
    output wire [1:0]                        p_odd_o         // odd pixel indicator
);

endmodule
