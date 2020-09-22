LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;

ENTITY display_view_vhd_tst IS
END display_view_vhd_tst;
ARCHITECTURE display_view_arch OF display_view_vhd_tst IS
                                              
	signal value: std_logic_vector(1 downto 0);
	signal is_num: std_logic;
	signal segs: std_logic_vector(6 downto 0);

	COMPONENT display_view
		port(	
			value: in std_logic_vector(1 downto 0);
			is_num: in std_logic;
			segs: out std_logic_vector(6 downto 0)
		);
		
END COMPONENT;

BEGIN
	i1 : display_view
	port map (	
		value => value,
		is_num => is_num,
		segs => segs
	);                                              
		
always : PROCESS                                              
BEGIN                     
	wait for 10 ns;
	value <= "00";
	is_num <= '1';
	         
	wait for 10 ns;
	value <= "01";
	is_num <= '1';
	
	wait for 10 ns;
	value <= "10";
	is_num <= '1';
	
	
	            
	wait for 10 ns;
	value <= "00";
	is_num <= '0';
	         
	wait for 10 ns;
	value <= "01";
	is_num <= '0';
	
	wait for 10 ns;
	value <= "10";
	is_num <= '0';
	
	
	            
	wait for 10 ns;
	value <= "11";
	is_num <= '1';
	         
	wait for 10 ns;
	value <= "11";
	is_num <= '0';
	
	wait for 10 ns;
	
	WAIT;  
WAIT;                                                        
END PROCESS always;                                          
END display_view_arch;

