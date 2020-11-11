#include <orcapp_head>

module USERNAME_byte2pixel (
    input  wire	                             reset_byte_n_i,
    input  wire	                             clk_byte_i,
    input  wire                              sp_en_i,	      // Short Packet Enable
    input  wire [5:0]                        dt_i,	          // Data Type
    input  wire                              lp_av_en_i,      // Long Packet of Active Video Enable
    input  wire	                             payload_en_i,    // paload enable
    input  wire [PP_NUM_RX_LANE*PP_RX_GEAR-1:0]    payload_i,       // payload
    input  wire [15:0]                       wc_i,            // payload byte count
#ifdef SECOND_SET_EN
    input  wire                              sp2_en_i,	      // Short Packet Enable #2
    input  wire [5:0]                        dt2_i,	          // Data Type #2
    input  wire                              lp2_av_en_i,     // Long Packet of Active Video Enable #2
    input  wire [15:0]                       wc2_i,           // payload byte count #2
#endif

    input  wire	                             reset_pixel_n_i,
    input  wire	                             clk_pixel_i,
#ifdef RX_TYPE_DSI	                         
    output wire                              de_o,            // picture data enable
    output wire                              vsync_o,         // Vsync in clk_pixel domain
    output wire                              hsync_o,         // Hsync in clk_pixel domain
#else
    output wire                              fv_o,            // Frame Valid in clk_pixel domain
    output wire                              lv_o,            // Line Valid in clk_pixel domain
#endif
#ifdef MISC_ON
    output wire [3:0]                        write_cycle_o,   // payload Write Cycle (for debug)
    output wire                              mem_we_o,        // payload Write Enable (for debug)
    output wire                              mem_re_o,        // payload Read Enable (for debug)
    output wire [1:0]                        read_cycle_o,    // pixel data Read Cycle (for debug)
    output wire [2:0]                        mem_radr_o,      // pixel data Read Address (for debug)
#endif
    output wire [PP_PD_BUS_WIDTH*PP_NUM_TX_CH-1:0] pd_o,            // picture data
    output wire [1:0]                        p_odd_o         // odd pixel indicator
);

byte2pixel 
#(
  .DSI_MODE          (PP_DSI_MODE),
  .VSA               (PP_VSA),
  .HSA               (PP_HSA),
  .CTRL_POL          (PP_CTRL_POL),
  .DT                (PP_DT),
  .RX_TYPE           (PP_RX_TYPE),
  .NUM_RX_LANE       (PP_NUM_RX_LANE),
  .RX_GEAR           (PP_RX_GEAR),
  .PD_BUS_WIDTH      (PP_PD_BUS_WIDTH),
  .NUM_TX_CH         (PP_NUM_TX_CH)

)
byte2pixel (
    .reset_byte_n_i          (reset_byte_n_i),
    .reset_pixel_n_i         (reset_pixel_n_i),
    .clk_byte_i              (clk_byte_i),
    .clk_pixel_i             (clk_pixel_i),
    .sp_en_i                 (sp_en_i),
    .dt_i                    (dt_i),
    .lp_av_en_i              (lp_av_en_i),
    .payload_en_i            (payload_en_i),
    .payload_i               (payload_i),
    .wc_i                    (wc_i),
#ifdef SECOND_SET_EN
    .sp2_en_i                (sp2_en_i),
    .dt2_i                   (dt2_i),
    .lp2_av_en_i             (lp2_av_en_i),
    .wc2_i                   (wc2_i),
#else
    .sp2_en_i                (1'b0),
    .dt2_i                   (6'd0),
    .lp2_av_en_i             (1'b0),
    .wc2_i                   (16'd0),
#endif
#ifdef RX_TYPE_DSI	                         
    .vsync_o                 (vsync_o),
    .hsync_o                 (hsync_o),
    .de_o                    (de_o),
    .fv_o                    (),
    .lv_o                    (),
#else    
    .vsync_o                 (),
    .hsync_o                 (),
    .de_o                    (),
    .fv_o                    (fv_o),
    .lv_o                    (lv_o),
#endif
#ifdef MISC_ON
    .write_cycle_o           (write_cycle_o),
    .mem_we_o                (mem_we_o),
    .mem_re_o                (mem_re_o),
    .read_cycle_o            (read_cycle_o),
    .mem_radr_o              (mem_radr_o),
#else
    .write_cycle_o           (),
    .mem_we_o                (),
    .mem_re_o                (),
    .read_cycle_o            (),
    .mem_radr_o              (),
#endif
    .pd_o                    (pd_o),
    .p_odd_o                 (p_odd_o)
);

endmodule
