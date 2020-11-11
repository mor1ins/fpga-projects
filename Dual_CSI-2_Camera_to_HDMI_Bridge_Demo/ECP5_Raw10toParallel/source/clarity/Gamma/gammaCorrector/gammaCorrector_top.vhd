library ieee;
use ieee.std_logic_1164.all;
entity gammaCorrector_top is port (
	--INPUTS
	clk         : in std_logic;      -- system clock 
	rstn        : in std_logic;      -- system reset 
	--OUTPUTS
    inpvalid    : in std_logic;      -- input data valid signal
    din0        : in std_logic_vector(12-1 downto 0);    -- first  input color plane 
          din1  : in std_logic_vector(12-1 downto 0);       -- second input color plane 
          din2  : in std_logic_vector(12-1 downto 0);       -- third  input color plane 
   
   --=====OUTPUTS
   outvalid   : out std_logic;        -- output data valid signal
         dout1: out std_logic_vector(12-1 downto 0); -- second output color plane 
         dout2: out std_logic_vector(12-1 downto 0); -- third  output color plane 
   dout0      : out std_logic_vector(12-1 downto 0) -- first  output color plane
);
end gammaCorrector_top;

architecture arch of gammaCorrector_top is
--component ecp5_pll
--port (
--   CLKI         : in  std_logic;
--   RST          : in  std_logic;
--   CLKOP        : out std_logic;
--   LOCK         : out std_logic
--);
--end component;

component gammaCorrector
port (
	--INPUTS
	clk         : in std_logic;      -- system clock 
	rstn        : in std_logic;      -- system reset 
	--OUTPUTS
    inpvalid    : in std_logic;      -- input data valid signal
    din0        : in std_logic_vector(12-1 downto 0);    -- first  input color plane 
          din1  : in std_logic_vector(12-1 downto 0);       -- second input color plane 
          din2  : in std_logic_vector(12-1 downto 0);       -- third  input color plane 
   
   --=====OUTPUTS
   outvalid   : out std_logic;        -- output data valid signal
         dout1: out std_logic_vector(12-1 downto 0); -- second output color plane 
         dout2: out std_logic_vector(12-1 downto 0); -- third  output color plane 
   dout0      : out std_logic_vector(12-1 downto 0) -- first  output color plane
);
end component;

signal clkin  : std_logic;


begin
--Add PLL Instance for timing simulation---------
--u1_pll : ecp5_pll
--  port map (
--     CLK            => clk,
--     RESET          => '0',
--     CLKOP          => clkin,
--     LOCK           => open
--  );

u1_gammaCorrector : gammaCorrector
  port map (
   -- INPUTS
--   clk              => clkin,               -- system clock (for timing simulation)  
   clk              => clk,                 -- system clock  
   rstn             => rstn,                -- system reset
   inpvalid         => inpvalid,            -- input data valid signal
   din0             => din0,                -- first  input color plane 
         din1       => din1,                -- second input color plane 
         din2       => din2,                -- third  input color plane 
   
   --=====OUTPUTS
   outvalid         => outvalid,            -- output data valid signal
         dout1      => dout1,               -- second output color plane 
         dout2      => dout2,               -- third  output color plane 
   dout0            => dout0                -- first  output color plane 
);
end arch;
