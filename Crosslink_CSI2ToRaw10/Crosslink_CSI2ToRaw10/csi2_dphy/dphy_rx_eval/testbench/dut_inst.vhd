--===========================================================================
-- VHDL file generated by Clarity Designer    09/28/2020    22:56:09     
-- Filename  : csi2_dphy_inst.vhd                                                
-- IP package: CSI-2/DSI D-PHY Receiver 1.4                           
-- Copyright(c) 2016 Lattice Semiconductor Corporation. All rights reserved. 
--===========================================================================

component csi2_dphy
port (


--D-PHY ports
  clk_n_i           : inout std_logic;
  clk_p_i           : inout std_logic;

  d0_n_i            : inout std_logic;
  d0_p_i            : inout std_logic;


--input ports
  clk_byte_fr_i     : in std_logic;
  clk_lp_ctrl_i     : in std_logic;

  reset_byte_fr_n_i : in std_logic;
  reset_byte_n_i    : in std_logic;
  reset_lp_n_i      : in std_logic;
  reset_n_i         : in std_logic;
  pll_lock_i        : in std_logic;


  lp_d0_tx_en_i     : in std_logic;
  lp_d0_tx_n_i      : in std_logic;
  lp_d0_tx_p_i      : in std_logic;



-- output clocks
  clk_byte_o        : out std_logic;
  clk_byte_hs_o     : out std_logic;

----- outputs to fabric. for low power signalling
  cd_d0_o           : out std_logic;
  lp_d0_rx_p_o      : out std_logic;
  lp_d0_rx_n_o      : out std_logic;


  capture_en_o      : out std_logic;
  bd0_o             : out std_logic_vector(8-1 downto 0);





--debug/misc signals
  hs_d_en_o         : out std_logic;
  hs_sync_o         : out std_logic;
  term_clk_en_o     : out std_logic;
  lp_hs_state_clk_o : out std_logic_vector (1 downto 0);
  lp_hs_state_d_    : out std_logic_vector (1 downto 0)
);
end component;

begin

csi2_dphy_inst : csi2_dphy
  port map (
                -- Outputs
.clk_byte_o           => clk_byte_o,
.clk_byte_hs_o        => clk_byte_hs_o,

.cd_d0_o              => cd_d0_o,

.lp_d0_rx_p_o         => lp_d0_rx_p_o,
.lp_d0_rx_n_o         => lp_d0_rx_n_o,

.capture_en_o         => capture_en_o,
.bd0_o                => bd0_o,
.hs_d_en_o            => hs_d_en_o,
.hs_sync_o            => hs_sync_o,
.term_clk_en_o        => term_clk_en_o,
.lp_hs_state_clk_o    => lp_hs_state_clk_o,
.lp_hs_state_d_o      => lp_hs_state_d_o,

-- Inouts
.clk_n_i              => clk_n_i,
.clk_p_i              => clk_p_i,
.d0_n_i               => d0_n_i,
.d0_p_i               => d0_p_i,
-- Inputs
.clk_byte_fr_i        => clk_byte_fr_i,
.clk_lp_ctrl_i        => clk_lp_ctrl_i,
.reset_byte_fr_n_i    => reset_byte_fr_n_i,
.reset_byte_n_i       => reset_byte_n_i,
.reset_lp_n_i         => reset_lp_n_i,
.reset_n_i            => reset_n_i,
.pll_lock_i           => pll_lock_i,
 lp_d0_tx_en_i        => lp_d0_tx_en_i,
 lp_d0_tx_n_i         => lp_d0_tx_n_i,
 lp_d0_tx_p_i         => lp_d0_tx_p_i

);



