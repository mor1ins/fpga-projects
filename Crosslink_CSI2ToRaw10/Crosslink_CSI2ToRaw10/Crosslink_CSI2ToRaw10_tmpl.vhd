--VHDL instantiation template

component Crosslink_CSI2ToRaw10 is
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
    
end component Crosslink_CSI2ToRaw10; -- sbp_module=true 
_inst: Crosslink_CSI2ToRaw10 port map (csi2_dphy_bd0_o => __,csi2_dphy_lp_hs_state_clk_o => __,
            csi2_dphy_lp_hs_state_d_o => __,csi2_dphy_capture_en_o => __,csi2_dphy_cd_d0_o => __,
            csi2_dphy_clk_byte_fr_i => __,csi2_dphy_clk_byte_hs_o => __,csi2_dphy_clk_byte_o => __,
            csi2_dphy_clk_lp_ctrl_i => __,csi2_dphy_clk_n_i => __,csi2_dphy_clk_p_i => __,
            csi2_dphy_d0_n_i => __,csi2_dphy_d0_p_i => __,csi2_dphy_hs_d_en_o => __,
            csi2_dphy_hs_sync_o => __,csi2_dphy_lp_d0_rx_n_o => __,csi2_dphy_lp_d0_rx_p_o => __,
            csi2_dphy_pd_dphy_i => __,csi2_dphy_pll_lock_i => __,csi2_dphy_reset_byte_fr_n_i => __,
            csi2_dphy_reset_byte_n_i => __,csi2_dphy_reset_lp_n_i => __,csi2_dphy_reset_n_i => __,
            csi2_dphy_term_clk_en_o => __);
