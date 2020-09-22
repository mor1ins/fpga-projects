LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith;
use ieee.std_logic_unsigned;
use IEEE.numeric_std.all;

ENTITY comp2_vhd_tst IS
END comp2_vhd_tst;
ARCHITECTURE comp2_arch OF comp2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL res : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL x : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT comp2
	PORT (
	res : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	x : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	y : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

signal table: std_logic_vector(3 downto 0);  

BEGIN
	i1 : comp2
	PORT MAP (
-- list connections between master ports and signals
	res => res,
	x => x,
	y => y
	);                                                 
	
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                     
	table <= "0000";
   stimloop : for raw in 1 to 15 loop
		x <= table(3) & table(2);
		y <= table(1) & table(0);
		wait for 10 ns;
		table <= std_logic_vector(to_unsigned(raw, table'length));
	end loop stimloop;                   
	WAIT;  
WAIT;                                                        
END PROCESS always;                                          
END comp2_arch;

