#include <orcapp_head>

module USERNAME_wrap
(
    input  wire	                             reset_byte_n_i,
    input  wire	                             clk_byte_i,
    input  wire                              sp_en_i,	      // Short Packet Enable
    input  wire [5:0]                        dt_i,	          // Data Type
    input  wire                              lp_av_en_i,      // Long Packet of Active Video Enable
    input  wire	                             payload_en_i,    // paload enable
    input  wire                              payload_i,       // payload
    input  wire [3:0]                        wc_i,            // payload byte count

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

    input  wire  [5:0]                       pd_sel_i,
    output wire [3:0]                        pd_dummy,            // picture data
	
    output wire [1:0]                        p_odd_o         // odd pixel indicator
);


  wire [15:0]                                wc_w;
  assign                                     wc_w = {4{wc_i}};
  
  
  wire [PP_NUM_RX_LANE*PP_RX_GEAR-1:0]    payload_w;       // payload

  genvar i;
  generate
    for (i = 0; i < PP_NUM_RX_LANE*PP_RX_GEAR/4 ; i = i + 1) begin 
      assign payload_w[4*i+3:4*i] = payload_i;
    end
  endgenerate

  wire [127:0] pd_w;            // picture data
  wire [15:0]  wc_i = {dt_i[3:0], dt_i, dt_i};

  always @(*) begin
    case (pd_sel_i)
      5'b00000 : pd_dummy = pd_o[ 3: 0];	
      5'b00001 : pd_dummy = pd_o[ 7: 4];	
      5'b00010 : pd_dummy = pd_o[11: 8];	
      5'b00011 : pd_dummy = pd_o[15:12];	
      5'b00100 : pd_dummy = pd_o[19:16];	
      5'b00101 : pd_dummy = pd_o[23:20];	
      5'b00110 : pd_dummy = pd_o[27:24];	
      5'b00111 : pd_dummy = pd_o[31:28];	
      5'b01000 : pd_dummy = pd_o[35:32];	
      5'b01001 : pd_dummy = pd_o[39:36];	
      5'b01010 : pd_dummy = pd_o[43:40];	
      5'b01011 : pd_dummy = pd_o[47:44];	
      5'b01100 : pd_dummy = pd_o[51:48];	
      5'b01101 : pd_dummy = pd_o[55:52];	
      5'b01110 : pd_dummy = pd_o[59:56];	
      5'b01111 : pd_dummy = pd_o[63:60];	
      5'b10000 : pd_dummy = pd_o[67:64];	
      5'b10001 : pd_dummy = pd_o[71:68];	
      5'b10010 : pd_dummy = pd_o[75:72];	
      5'b10011 : pd_dummy = pd_o[79:76];	
      5'b10100 : pd_dummy = pd_o[83:80];	
      5'b10101 : pd_dummy = pd_o[87:84];	
      5'b10110 : pd_dummy = pd_o[91:88];	
      5'b10111 : pd_dummy = pd_o[95:92];	
      5'b11000 : pd_dummy = pd_o[99:96];	
      5'b11001 : pd_dummy = pd_o[103:100];	
      5'b11010 : pd_dummy = pd_o[107:104];	
      5'b11011 : pd_dummy = pd_o[111:108];	
      5'b11100 : pd_dummy = pd_o[115:112];	
      5'b11101 : pd_dummy = pd_o[119:116];	
      5'b11110 : pd_dummy = pd_o[123:120];	
      default  : pd_dummy = pd_o[127:124];	
    endcase
  end
  
/*synthesis translate_off*/
//  GSR GSR_INST (.GSR (1'b1));  // only for simulation purposes
// not included in official release, only used to check for compile errors
//`ifdef COMPILE_ONLY
//  PUR PUR_INST (.PUR (1'b1));  // only for simulation purposes
//`endif
/*synthesis translate_on*/

  USERNAME_byte2pixel 
    byte2pixel_wrapper  (
    .reset_byte_n_i          (reset_byte_n_i),
    .reset_pixel_n_i         (reset_pixel_n_i),
    .clk_byte_i              (clk_byte_i),
    .clk_pixel_i             (clk_pixel_i),
    .sp_en_i                 (sp_en_i),
    .dt_i                    (dt_i),
    .lp_av_en_i              (lp_av_en_i),
    .payload_en_i            (payload_en_i),
    .payload_i               (payload_w),
    .wc_i                    (wc_w),
#ifdef SECOND_SET_EN
    .sp2_en_i                (sp_en_i),
    .dt2_i                   (dt_i),
    .lp2_av_en_i             (lp_av_en_i),
    .wc2_i                   (wc_i),
#endif
#ifdef RX_TYPE_DSI	                         
    .vsync_o                 (vsync_o),
    .hsync_o                 (hsync_o),
    .de_o                    (de_o),
#else    
    .fv_o                    (fv_o),
    .lv_o                    (lv_o),
#endif
#ifdef MISC_ON
    .write_cycle_o           (write_cycle_o),
    .mem_we_o                (mem_we_o),
    .mem_re_o                (mem_re_o),
    .read_cycle_o            (read_cycle_o),
    .mem_radr_o              (mem_radr_o),
#endif
    .pd_o                    (pd_o),
    .p_odd_o                 (p_odd_o)
        );


endmodule
