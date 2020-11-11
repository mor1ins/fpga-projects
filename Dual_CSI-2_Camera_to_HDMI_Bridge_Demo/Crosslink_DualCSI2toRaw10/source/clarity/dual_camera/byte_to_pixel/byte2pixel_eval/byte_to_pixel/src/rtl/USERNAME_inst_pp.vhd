#include <orcapp_head>

component USERNAME
port (

  reset_byte_n_i    : in std_logic;
  clk_byte_i        : in std_logic;
  sp_en_i           : in std_logic;
  sp2_en_i          : in std_logic;
  dt_i              : in std_logic_vector(5 downto 0);
  dt2_i             : in std_logic_vector(5 downto 0);
  lp_av_en_i        : in std_logic;
  lp2_av_en_i       : in std_logic;
  payload_en_i      : in std_logic;
  payload_i         : in std_logic_vector(PP_NUM_RX_LANE*PP_RX_GEAR-1 downto 0);
  wc_i              : in std_logic_vector(15 downto 0);
  wc2_i             : in std_logic_vector(15 downto 0);

  reset_pixel_n_i   : in std_logic;
  clk_pixel_i       : in std_logic;
  vsync_o           : out std_logic;
  hsync_o           : out std_logic;
  fv_o              : out std_logic;
  lv_o              : out std_logic;
  de_o              : out std_logic;
  pd_o              : out std_logic_vector(PP_NUM_RX_LANE*PP_RX_GEAR-1 downto 0);
  p_odd_o           : out std_logic_vector(1 downto 0);
  write_cycle_o     : out std_logic_vector(3 downto 0);
  mem_we_o          : out std_logic;
  mem_re_o          : out std_logic;
  read_cycle_o      : out std_logic_vector(1 downto 0);
  mem_radr_o        : out std_logic_vector(2 downto 0)

);
end component;

begin

USERNAME_inst : USERNAME
  port map (
  reset_byte_n_i     => reset_byte_n_i,
  reset_pixel_n_i    => reset_pixel_n_i,
  clk_byte_i         => clk_byte_i,
  clk_pixel_i        => clk_pixel_i,
  sp_en_i            => sp_en_i,
  sp2_en_i           => sp2_en_i,
  dt_i               => dt_i,
  dt2_i              => dt2_i,
  lp_av_en_i         => lp_av_en_i,
  lp2_av_en_i        => lp2_av_en_i,
  payload_en_i       => payload_en_i,
  payload_i          => payload_i,
  wc_i               => wc_i,
  wc2_i              => wc2_i,

  vsync_o            => vsync_o,
  hsync_o            => hsync_o,
  fv_o               => fv_o,
  lv_o               => lv_o,
  de_o               => de_o,
  pd_o               => pd_o,
  p_odd_o            => p_odd_o,
  write_cycle_o      => write_cycle_o,
  mem_we_o           => mem_we_o,
  mem_re_o           => mem_re_o,
  read_cycle_o       => read_cycle_o,
  mem_radr_o         => mem_radr_o
);
























);


