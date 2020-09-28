

--
-- Verific VHDL Description of module Crosslink_CSI2ToRaw10
--

library ieee ;
use ieee.std_logic_1164.all ;

entity Crosslink_CSI2ToRaw10 is
    port (csi2_dphy_bd0_o: out std_logic_vector(7 downto 0);
        csi2_dphy_lp_hs_state_clk_o: out std_logic_vector(1 downto 0);
        csi2_dphy_lp_hs_state_d_o: out std_logic_vector(1 downto 0);
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
        csi2_dphy_pd_dphy_i: in std_logic;
        csi2_dphy_pll_lock_i: in std_logic;
        csi2_dphy_reset_byte_fr_n_i: in std_logic;
        csi2_dphy_reset_byte_n_i: in std_logic;
        csi2_dphy_reset_lp_n_i: in std_logic;
        csi2_dphy_reset_n_i: in std_logic;
        csi2_dphy_term_clk_en_o: out std_logic
    );
    
end entity Crosslink_CSI2ToRaw10; -- sbp_module=true 

architecture Crosslink_CSI2ToRaw10 of Crosslink_CSI2ToRaw10 is 
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
            lp_d0_rx_n_o=>csi2_dphy_lp_d0_rx_n_o,lp_d0_rx_p_o=>csi2_dphy_lp_d0_rx_p_o,pll_lock_i=>csi2_dphy_pll_lock_i,
            reset_byte_fr_n_i=>csi2_dphy_reset_byte_fr_n_i,reset_byte_n_i=>csi2_dphy_reset_byte_n_i,
            reset_lp_n_i=>csi2_dphy_reset_lp_n_i,reset_n_i=>csi2_dphy_reset_n_i,
            term_clk_en_o=>csi2_dphy_term_clk_en_o);
    
end architecture Crosslink_CSI2ToRaw10; -- sbp_module=true 

