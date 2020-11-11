



--
-- Verific VHDL Description of module camera
--

library ieee ;
use ieee.std_logic_1164.all ;

entity camera is
    port (LUT_FIFO_Data: in std_logic_vector(9 downto 0);
        LUT_FIFO_Q: out std_logic_vector(9 downto 0);
        cross_domain_fifo_Data: in std_logic_vector(31 downto 0);
        cross_domain_fifo_Q: out std_logic_vector(31 downto 0);
        LUT_FIFO_AlmostEmpty: out std_logic;
        LUT_FIFO_AlmostFull: out std_logic;
        LUT_FIFO_Empty: out std_logic;
        LUT_FIFO_Full: out std_logic;
        LUT_FIFO_RPReset: in std_logic;
        LUT_FIFO_RdClock: in std_logic;
        LUT_FIFO_RdEn: in std_logic;
        LUT_FIFO_Reset: in std_logic;
        LUT_FIFO_WrClock: in std_logic;
        LUT_FIFO_WrEn: in std_logic;
        cross_domain_fifo_AlmostEmpty: out std_logic;
        cross_domain_fifo_AlmostFull: out std_logic;
        cross_domain_fifo_Empty: out std_logic;
        cross_domain_fifo_Full: out std_logic;
        cross_domain_fifo_RPReset: in std_logic;
        cross_domain_fifo_RdClock: in std_logic;
        cross_domain_fifo_RdEn: in std_logic;
        cross_domain_fifo_Reset: in std_logic;
        cross_domain_fifo_WrClock: in std_logic;
        cross_domain_fifo_WrEn: in std_logic;
        pll_double_CLKI: in std_logic;
        pll_double_CLKOP: out std_logic;
        pll_double_CLKOS: out std_logic;
        pll_double_CLKOS2: out std_logic;
        pll_double_LOCK: out std_logic;
        pll_double_RST: in std_logic
    );
    
end entity camera; -- sbp_module=true 

architecture camera of camera is 
    component LUT_FIFO is
        port (Data: in std_logic_vector(9 downto 0);
            Q: out std_logic_vector(9 downto 0);
            AlmostEmpty: out std_logic;
            AlmostFull: out std_logic;
            Empty: out std_logic;
            Full: out std_logic;
            RPReset: in std_logic;
            RdClock: in std_logic;
            RdEn: in std_logic;
            Reset: in std_logic;
            WrClock: in std_logic;
            WrEn: in std_logic
        );
        
    end component LUT_FIFO; -- not_need_bbox=true 
    
    
    component cross_domain_fifo is
        port (Data: in std_logic_vector(31 downto 0);
            Q: out std_logic_vector(31 downto 0);
            AlmostEmpty: out std_logic;
            AlmostFull: out std_logic;
            Empty: out std_logic;
            Full: out std_logic;
            RPReset: in std_logic;
            RdClock: in std_logic;
            RdEn: in std_logic;
            Reset: in std_logic;
            WrClock: in std_logic;
            WrEn: in std_logic
        );
        
    end component cross_domain_fifo; -- not_need_bbox=true 
    
    
    component pll_double is
        port (CLKI: in std_logic;
            CLKOP: out std_logic;
            CLKOS: out std_logic;
            CLKOS2: out std_logic;
            LOCK: out std_logic;
            RST: in std_logic
        );
        
    end component pll_double; -- not_need_bbox=true 
    
    
    
begin
    LUT_FIFO_inst: component LUT_FIFO port map (Data(9)=>LUT_FIFO_Data(9),Data(8)=>LUT_FIFO_Data(8),
            Data(7)=>LUT_FIFO_Data(7),Data(6)=>LUT_FIFO_Data(6),Data(5)=>LUT_FIFO_Data(5),
            Data(4)=>LUT_FIFO_Data(4),Data(3)=>LUT_FIFO_Data(3),Data(2)=>LUT_FIFO_Data(2),
            Data(1)=>LUT_FIFO_Data(1),Data(0)=>LUT_FIFO_Data(0),Q(9)=>LUT_FIFO_Q(9),
            Q(8)=>LUT_FIFO_Q(8),Q(7)=>LUT_FIFO_Q(7),Q(6)=>LUT_FIFO_Q(6),Q(5)=>LUT_FIFO_Q(5),
            Q(4)=>LUT_FIFO_Q(4),Q(3)=>LUT_FIFO_Q(3),Q(2)=>LUT_FIFO_Q(2),Q(1)=>LUT_FIFO_Q(1),
            Q(0)=>LUT_FIFO_Q(0),AlmostEmpty=>LUT_FIFO_AlmostEmpty,AlmostFull=>LUT_FIFO_AlmostFull,
            Empty=>LUT_FIFO_Empty,Full=>LUT_FIFO_Full,RPReset=>LUT_FIFO_RPReset,
            RdClock=>LUT_FIFO_RdClock,RdEn=>LUT_FIFO_RdEn,Reset=>LUT_FIFO_Reset,
            WrClock=>LUT_FIFO_WrClock,WrEn=>LUT_FIFO_WrEn);
    cross_domain_fifo_inst: component cross_domain_fifo port map (Data(31)=>cross_domain_fifo_Data(31),
            Data(30)=>cross_domain_fifo_Data(30),Data(29)=>cross_domain_fifo_Data(29),
            Data(28)=>cross_domain_fifo_Data(28),Data(27)=>cross_domain_fifo_Data(27),
            Data(26)=>cross_domain_fifo_Data(26),Data(25)=>cross_domain_fifo_Data(25),
            Data(24)=>cross_domain_fifo_Data(24),Data(23)=>cross_domain_fifo_Data(23),
            Data(22)=>cross_domain_fifo_Data(22),Data(21)=>cross_domain_fifo_Data(21),
            Data(20)=>cross_domain_fifo_Data(20),Data(19)=>cross_domain_fifo_Data(19),
            Data(18)=>cross_domain_fifo_Data(18),Data(17)=>cross_domain_fifo_Data(17),
            Data(16)=>cross_domain_fifo_Data(16),Data(15)=>cross_domain_fifo_Data(15),
            Data(14)=>cross_domain_fifo_Data(14),Data(13)=>cross_domain_fifo_Data(13),
            Data(12)=>cross_domain_fifo_Data(12),Data(11)=>cross_domain_fifo_Data(11),
            Data(10)=>cross_domain_fifo_Data(10),Data(9)=>cross_domain_fifo_Data(9),
            Data(8)=>cross_domain_fifo_Data(8),Data(7)=>cross_domain_fifo_Data(7),
            Data(6)=>cross_domain_fifo_Data(6),Data(5)=>cross_domain_fifo_Data(5),
            Data(4)=>cross_domain_fifo_Data(4),Data(3)=>cross_domain_fifo_Data(3),
            Data(2)=>cross_domain_fifo_Data(2),Data(1)=>cross_domain_fifo_Data(1),
            Data(0)=>cross_domain_fifo_Data(0),Q(31)=>cross_domain_fifo_Q(31),
            Q(30)=>cross_domain_fifo_Q(30),Q(29)=>cross_domain_fifo_Q(29),
            Q(28)=>cross_domain_fifo_Q(28),Q(27)=>cross_domain_fifo_Q(27),
            Q(26)=>cross_domain_fifo_Q(26),Q(25)=>cross_domain_fifo_Q(25),
            Q(24)=>cross_domain_fifo_Q(24),Q(23)=>cross_domain_fifo_Q(23),
            Q(22)=>cross_domain_fifo_Q(22),Q(21)=>cross_domain_fifo_Q(21),
            Q(20)=>cross_domain_fifo_Q(20),Q(19)=>cross_domain_fifo_Q(19),
            Q(18)=>cross_domain_fifo_Q(18),Q(17)=>cross_domain_fifo_Q(17),
            Q(16)=>cross_domain_fifo_Q(16),Q(15)=>cross_domain_fifo_Q(15),
            Q(14)=>cross_domain_fifo_Q(14),Q(13)=>cross_domain_fifo_Q(13),
            Q(12)=>cross_domain_fifo_Q(12),Q(11)=>cross_domain_fifo_Q(11),
            Q(10)=>cross_domain_fifo_Q(10),Q(9)=>cross_domain_fifo_Q(9),Q(8)=>cross_domain_fifo_Q(8),
            Q(7)=>cross_domain_fifo_Q(7),Q(6)=>cross_domain_fifo_Q(6),Q(5)=>cross_domain_fifo_Q(5),
            Q(4)=>cross_domain_fifo_Q(4),Q(3)=>cross_domain_fifo_Q(3),Q(2)=>cross_domain_fifo_Q(2),
            Q(1)=>cross_domain_fifo_Q(1),Q(0)=>cross_domain_fifo_Q(0),AlmostEmpty=>cross_domain_fifo_AlmostEmpty,
            AlmostFull=>cross_domain_fifo_AlmostFull,Empty=>cross_domain_fifo_Empty,
            Full=>cross_domain_fifo_Full,RPReset=>cross_domain_fifo_RPReset,
            RdClock=>cross_domain_fifo_RdClock,RdEn=>cross_domain_fifo_RdEn,
            Reset=>cross_domain_fifo_Reset,WrClock=>cross_domain_fifo_WrClock,
            WrEn=>cross_domain_fifo_WrEn);
    pll_double_inst: component pll_double port map (CLKI=>pll_double_CLKI,CLKOP=>pll_double_CLKOP,
            CLKOS=>pll_double_CLKOS,CLKOS2=>pll_double_CLKOS2,LOCK=>pll_double_LOCK,
            RST=>pll_double_RST);
    
end architecture camera; -- sbp_module=true 

