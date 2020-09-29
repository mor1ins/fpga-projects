


--
-- Verific VHDL Description of module Crosslink_CSI2ToRaw10
--

library ieee ;
use ieee.std_logic_1164.all ;

entity Crosslink_CSI2ToRaw10 is
    port (bytes_to_pixels_dt_i: in std_logic_vector(5 downto 0);
        bytes_to_pixels_p_odd_o: out std_logic_vector(1 downto 0);
        bytes_to_pixels_payload_i: in std_logic_vector(7 downto 0);
        bytes_to_pixels_pd_o: out std_logic_vector(9 downto 0);
        bytes_to_pixels_wc_i: in std_logic_vector(15 downto 0);
        csi2_dphy_bd0_o: out std_logic_vector(7 downto 0);
        csi2_dphy_lp_hs_state_clk_o: out std_logic_vector(1 downto 0);
        csi2_dphy_lp_hs_state_d_o: out std_logic_vector(1 downto 0);
        bytes_to_pixels_clk_byte_i: in std_logic;
        bytes_to_pixels_clk_pixel_i: in std_logic;
        bytes_to_pixels_fv_o: out std_logic;
        bytes_to_pixels_lp_av_en_i: in std_logic;
        bytes_to_pixels_lv_o: out std_logic;
        bytes_to_pixels_payload_en_i: in std_logic;
        bytes_to_pixels_reset_byte_n_i: in std_logic;
        bytes_to_pixels_reset_pixel_n_i: in std_logic;
        bytes_to_pixels_sp_en_i: in std_logic;
        csi2_dphy_capture_en_o: out std_logic;
        csi2_dphy_cd_d0_o: out std_logic;
        csi2_dphy_clk_byte_fr_i: in std_logic;
        csi2_dphy_clk_byte_hs_o: out std_logic;
        csi2_dphy_clk_byte_o: out std_logic;
        csi2_dphy_clk_lp_ctrl_i: in std_logic;
        csi2_dphy_clk_n_i: inout std_logic;
        csi2_dphy_clk_p_i: inout std_logic;
        csi2_dphy_d0_n_i: inout std_logic;
        csi2_dphy_d0_p_i: inout std_logic;
        csi2_dphy_hs_d_en_o: out std_logic;
        csi2_dphy_hs_sync_o: out std_logic;
        csi2_dphy_lp_d0_rx_n_o: out std_logic;
        csi2_dphy_lp_d0_rx_p_o: out std_logic;
        csi2_dphy_pll_lock_i: in std_logic;
        csi2_dphy_reset_byte_fr_n_i: in std_logic;
        csi2_dphy_reset_byte_n_i: in std_logic;
        csi2_dphy_reset_lp_n_i: in std_logic;
        csi2_dphy_reset_n_i: in std_logic;
        csi2_dphy_term_clk_en_o: out std_logic
    );
    
end entity Crosslink_CSI2ToRaw10; -- sbp_module=true 

architecture Crosslink_CSI2ToRaw10 of Crosslink_CSI2ToRaw10 is 
    component bytes_to_pixels is
        port (dt_i: in std_logic_vector(5 downto 0);
            p_odd_o: out std_logic_vector(1 downto 0);
            payload_i: in std_logic_vector(7 downto 0);
            pd_o: out std_logic_vector(9 downto 0);
            wc_i: in std_logic_vector(15 downto 0);
            clk_byte_i: in std_logic;
            clk_pixel_i: in std_logic;
            fv_o: out std_logic;
            lp_av_en_i: in std_logic;
            lv_o: out std_logic;
            payload_en_i: in std_logic;
            reset_byte_n_i: in std_logic;
            reset_pixel_n_i: in std_logic;
            sp_en_i: in std_logic
        );
        
    end component bytes_to_pixels; -- not_need_bbox=true 
    
    
    component csi2_dphy is
        port (bd0_o: out std_logic_vector(7 downto 0);
            lp_hs_state_clk_o: out std_logic_vector(1 downto 0);
            lp_hs_state_d_o: out std_logic_vector(1 downto 0);
            capture_en_o: out std_logic;
            cd_d0_o: out std_logic;
            clk_byte_fr_i: in std_logic;
            clk_byte_hs_o: out std_logic;
            clk_byte_o: out std_logic;
            clk_lp_ctrl_i: in std_logic;
            clk_n_i: inout std_logic;
            clk_p_i: inout std_logic;
            d0_n_i: inout std_logic;
            d0_p_i: inout std_logic;
            hs_d_en_o: out std_logic;
            hs_sync_o: out std_logic;
            lp_d0_rx_n_o: out std_logic;
            lp_d0_rx_p_o: out std_logic;
            pll_lock_i: in std_logic;
            reset_byte_fr_n_i: in std_logic;
            reset_byte_n_i: in std_logic;
            reset_lp_n_i: in std_logic;
            reset_n_i: in std_logic;
            term_clk_en_o: out std_logic
        );
        
    end component csi2_dphy; -- not_need_bbox=true 
    
    
    
begin
    bytes_to_pixels_inst: component bytes_to_pixels port map (dt_i(5)=>bytes_to_pixels_dt_i(5),
            dt_i(4)=>bytes_to_pixels_dt_i(4),dt_i(3)=>bytes_to_pixels_dt_i(3),
            dt_i(2)=>bytes_to_pixels_dt_i(2),dt_i(1)=>bytes_to_pixels_dt_i(1),
            dt_i(0)=>bytes_to_pixels_dt_i(0),p_odd_o(1)=>bytes_to_pixels_p_odd_o(1),
            p_odd_o(0)=>bytes_to_pixels_p_odd_o(0),payload_i(7)=>bytes_to_pixels_payload_i(7),
            payload_i(6)=>bytes_to_pixels_payload_i(6),payload_i(5)=>bytes_to_pixels_payload_i(5),
            payload_i(4)=>bytes_to_pixels_payload_i(4),payload_i(3)=>bytes_to_pixels_payload_i(3),
            payload_i(2)=>bytes_to_pixels_payload_i(2),payload_i(1)=>bytes_to_pixels_payload_i(1),
            payload_i(0)=>bytes_to_pixels_payload_i(0),pd_o(9)=>bytes_to_pixels_pd_o(9),
            pd_o(8)=>bytes_to_pixels_pd_o(8),pd_o(7)=>bytes_to_pixels_pd_o(7),
            pd_o(6)=>bytes_to_pixels_pd_o(6),pd_o(5)=>bytes_to_pixels_pd_o(5),
            pd_o(4)=>bytes_to_pixels_pd_o(4),pd_o(3)=>bytes_to_pixels_pd_o(3),
            pd_o(2)=>bytes_to_pixels_pd_o(2),pd_o(1)=>bytes_to_pixels_pd_o(1),
            pd_o(0)=>bytes_to_pixels_pd_o(0),wc_i(15)=>bytes_to_pixels_wc_i(15),
            wc_i(14)=>bytes_to_pixels_wc_i(14),wc_i(13)=>bytes_to_pixels_wc_i(13),
            wc_i(12)=>bytes_to_pixels_wc_i(12),wc_i(11)=>bytes_to_pixels_wc_i(11),
            wc_i(10)=>bytes_to_pixels_wc_i(10),wc_i(9)=>bytes_to_pixels_wc_i(9),
            wc_i(8)=>bytes_to_pixels_wc_i(8),wc_i(7)=>bytes_to_pixels_wc_i(7),
            wc_i(6)=>bytes_to_pixels_wc_i(6),wc_i(5)=>bytes_to_pixels_wc_i(5),
            wc_i(4)=>bytes_to_pixels_wc_i(4),wc_i(3)=>bytes_to_pixels_wc_i(3),
            wc_i(2)=>bytes_to_pixels_wc_i(2),wc_i(1)=>bytes_to_pixels_wc_i(1),
            wc_i(0)=>bytes_to_pixels_wc_i(0),clk_byte_i=>bytes_to_pixels_clk_byte_i,
            clk_pixel_i=>bytes_to_pixels_clk_pixel_i,fv_o=>bytes_to_pixels_fv_o,
            lp_av_en_i=>bytes_to_pixels_lp_av_en_i,lv_o=>bytes_to_pixels_lv_o,
            payload_en_i=>bytes_to_pixels_payload_en_i,reset_byte_n_i=>bytes_to_pixels_reset_byte_n_i,
            reset_pixel_n_i=>bytes_to_pixels_reset_pixel_n_i,sp_en_i=>bytes_to_pixels_sp_en_i);
    csi2_dphy_inst: component csi2_dphy port map (bd0_o(7)=>csi2_dphy_bd0_o(7),
            bd0_o(6)=>csi2_dphy_bd0_o(6),bd0_o(5)=>csi2_dphy_bd0_o(5),bd0_o(4)=>csi2_dphy_bd0_o(4),
            bd0_o(3)=>csi2_dphy_bd0_o(3),bd0_o(2)=>csi2_dphy_bd0_o(2),bd0_o(1)=>csi2_dphy_bd0_o(1),
            bd0_o(0)=>csi2_dphy_bd0_o(0),lp_hs_state_clk_o(1)=>csi2_dphy_lp_hs_state_clk_o(1),
            lp_hs_state_clk_o(0)=>csi2_dphy_lp_hs_state_clk_o(0),lp_hs_state_d_o(1)=>csi2_dphy_lp_hs_state_d_o(1),
            lp_hs_state_d_o(0)=>csi2_dphy_lp_hs_state_d_o(0),capture_en_o=>csi2_dphy_capture_en_o,
            cd_d0_o=>csi2_dphy_cd_d0_o,clk_byte_fr_i=>csi2_dphy_clk_byte_fr_i,
            clk_byte_hs_o=>csi2_dphy_clk_byte_hs_o,clk_byte_o=>csi2_dphy_clk_byte_o,
            clk_lp_ctrl_i=>csi2_dphy_clk_lp_ctrl_i,clk_n_i=>csi2_dphy_clk_n_i,
            clk_p_i=>csi2_dphy_clk_p_i,d0_n_i=>csi2_dphy_d0_n_i,d0_p_i=>csi2_dphy_d0_p_i,
            hs_d_en_o=>csi2_dphy_hs_d_en_o,hs_sync_o=>csi2_dphy_hs_sync_o,
            lp_d0_rx_n_o=>csi2_dphy_lp_d0_rx_n_o,lp_d0_rx_p_o=>csi2_dphy_lp_d0_rx_p_o,
            pll_lock_i=>csi2_dphy_pll_lock_i,reset_byte_fr_n_i=>csi2_dphy_reset_byte_fr_n_i,
            reset_byte_n_i=>csi2_dphy_reset_byte_n_i,reset_lp_n_i=>csi2_dphy_reset_lp_n_i,
            reset_n_i=>csi2_dphy_reset_n_i,term_clk_en_o=>csi2_dphy_term_clk_en_o);
    
end architecture Crosslink_CSI2ToRaw10; -- sbp_module=true 

