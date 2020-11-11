#include <orcapp_head>

USERNAME USERNAME_inst (
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

