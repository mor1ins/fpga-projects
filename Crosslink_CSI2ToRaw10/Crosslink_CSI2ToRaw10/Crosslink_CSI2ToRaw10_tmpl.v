//Verilog instantiation template

Crosslink_CSI2ToRaw10 _inst (.bytes_to_pixels_dt_i(), .bytes_to_pixels_p_odd_o(), 
            .bytes_to_pixels_payload_i(), .bytes_to_pixels_pd_o(), .bytes_to_pixels_wc_i(), 
            .bytes_to_pixels_clk_byte_i(), .bytes_to_pixels_clk_pixel_i(), 
            .bytes_to_pixels_fv_o(), .bytes_to_pixels_lp_av_en_i(), .bytes_to_pixels_lv_o(), 
            .bytes_to_pixels_payload_en_i(), .bytes_to_pixels_reset_byte_n_i(), 
            .bytes_to_pixels_reset_pixel_n_i(), .bytes_to_pixels_sp_en_i(), 
            .csi2_dphy_bd0_o(), .csi2_dphy_lp_hs_state_clk_o(), .csi2_dphy_lp_hs_state_d_o(), 
            .csi2_dphy_capture_en_o(), .csi2_dphy_cd_d0_o(), .csi2_dphy_clk_byte_fr_i(), 
            .csi2_dphy_clk_byte_hs_o(), .csi2_dphy_clk_byte_o(), .csi2_dphy_clk_lp_ctrl_i(), 
            .csi2_dphy_clk_n_i(), .csi2_dphy_clk_p_i(), .csi2_dphy_d0_n_i(), 
            .csi2_dphy_d0_p_i(), .csi2_dphy_hs_d_en_o(), .csi2_dphy_hs_sync_o(), 
            .csi2_dphy_lp_d0_rx_n_o(), .csi2_dphy_lp_d0_rx_p_o(), .csi2_dphy_pll_lock_i(), 
            .csi2_dphy_reset_byte_fr_n_i(), .csi2_dphy_reset_byte_n_i(), 
            .csi2_dphy_reset_lp_n_i(), .csi2_dphy_reset_n_i(), .csi2_dphy_term_clk_en_o());