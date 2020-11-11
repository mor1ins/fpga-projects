

--
-- Verific VHDL Description of module Gamma
--

library ieee ;
use ieee.std_logic_1164.all ;

entity Gamma is
    port (gammaCorrector_din0: in std_logic_vector(11 downto 0);
        gammaCorrector_din1: in std_logic_vector(11 downto 0);
        gammaCorrector_din2: in std_logic_vector(11 downto 0);
        gammaCorrector_dout0: out std_logic_vector(11 downto 0);
        gammaCorrector_dout1: out std_logic_vector(11 downto 0);
        gammaCorrector_dout2: out std_logic_vector(11 downto 0);
        gammaCorrector_clk: in std_logic;
        gammaCorrector_inpvalid: in std_logic;
        gammaCorrector_outvalid: out std_logic;
        gammaCorrector_rstn: in std_logic
    );
    
end entity Gamma; -- sbp_module=true 

architecture Gamma of Gamma is 
    component gammaCorrector is
        port (din0: in std_logic_vector(11 downto 0);
            din1: in std_logic_vector(11 downto 0);
            din2: in std_logic_vector(11 downto 0);
            dout0: out std_logic_vector(11 downto 0);
            dout1: out std_logic_vector(11 downto 0);
            dout2: out std_logic_vector(11 downto 0);
            clk: in std_logic;
            inpvalid: in std_logic;
            outvalid: out std_logic;
            rstn: in std_logic
        );
        
    end component gammaCorrector; -- not_need_bbox=true 
    
    
    
begin
    gammaCorrector_inst: component gammaCorrector port map (din0(11)=>gammaCorrector_din0(11),
            din0(10)=>gammaCorrector_din0(10),din0(9)=>gammaCorrector_din0(9),
            din0(8)=>gammaCorrector_din0(8),din0(7)=>gammaCorrector_din0(7),
            din0(6)=>gammaCorrector_din0(6),din0(5)=>gammaCorrector_din0(5),
            din0(4)=>gammaCorrector_din0(4),din0(3)=>gammaCorrector_din0(3),
            din0(2)=>gammaCorrector_din0(2),din0(1)=>gammaCorrector_din0(1),
            din0(0)=>gammaCorrector_din0(0),din1(11)=>gammaCorrector_din1(11),
            din1(10)=>gammaCorrector_din1(10),din1(9)=>gammaCorrector_din1(9),
            din1(8)=>gammaCorrector_din1(8),din1(7)=>gammaCorrector_din1(7),
            din1(6)=>gammaCorrector_din1(6),din1(5)=>gammaCorrector_din1(5),
            din1(4)=>gammaCorrector_din1(4),din1(3)=>gammaCorrector_din1(3),
            din1(2)=>gammaCorrector_din1(2),din1(1)=>gammaCorrector_din1(1),
            din1(0)=>gammaCorrector_din1(0),din2(11)=>gammaCorrector_din2(11),
            din2(10)=>gammaCorrector_din2(10),din2(9)=>gammaCorrector_din2(9),
            din2(8)=>gammaCorrector_din2(8),din2(7)=>gammaCorrector_din2(7),
            din2(6)=>gammaCorrector_din2(6),din2(5)=>gammaCorrector_din2(5),
            din2(4)=>gammaCorrector_din2(4),din2(3)=>gammaCorrector_din2(3),
            din2(2)=>gammaCorrector_din2(2),din2(1)=>gammaCorrector_din2(1),
            din2(0)=>gammaCorrector_din2(0),dout0(11)=>gammaCorrector_dout0(11),
            dout0(10)=>gammaCorrector_dout0(10),dout0(9)=>gammaCorrector_dout0(9),
            dout0(8)=>gammaCorrector_dout0(8),dout0(7)=>gammaCorrector_dout0(7),
            dout0(6)=>gammaCorrector_dout0(6),dout0(5)=>gammaCorrector_dout0(5),
            dout0(4)=>gammaCorrector_dout0(4),dout0(3)=>gammaCorrector_dout0(3),
            dout0(2)=>gammaCorrector_dout0(2),dout0(1)=>gammaCorrector_dout0(1),
            dout0(0)=>gammaCorrector_dout0(0),dout1(11)=>gammaCorrector_dout1(11),
            dout1(10)=>gammaCorrector_dout1(10),dout1(9)=>gammaCorrector_dout1(9),
            dout1(8)=>gammaCorrector_dout1(8),dout1(7)=>gammaCorrector_dout1(7),
            dout1(6)=>gammaCorrector_dout1(6),dout1(5)=>gammaCorrector_dout1(5),
            dout1(4)=>gammaCorrector_dout1(4),dout1(3)=>gammaCorrector_dout1(3),
            dout1(2)=>gammaCorrector_dout1(2),dout1(1)=>gammaCorrector_dout1(1),
            dout1(0)=>gammaCorrector_dout1(0),dout2(11)=>gammaCorrector_dout2(11),
            dout2(10)=>gammaCorrector_dout2(10),dout2(9)=>gammaCorrector_dout2(9),
            dout2(8)=>gammaCorrector_dout2(8),dout2(7)=>gammaCorrector_dout2(7),
            dout2(6)=>gammaCorrector_dout2(6),dout2(5)=>gammaCorrector_dout2(5),
            dout2(4)=>gammaCorrector_dout2(4),dout2(3)=>gammaCorrector_dout2(3),
            dout2(2)=>gammaCorrector_dout2(2),dout2(1)=>gammaCorrector_dout2(1),
            dout2(0)=>gammaCorrector_dout2(0),clk=>gammaCorrector_clk,inpvalid=>gammaCorrector_inpvalid,
            outvalid=>gammaCorrector_outvalid,rstn=>gammaCorrector_rstn);
    
end architecture Gamma; -- sbp_module=true 

