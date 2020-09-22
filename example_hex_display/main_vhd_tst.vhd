LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY main_vhd_tst IS
END main_vhd_tst;

ARCHITECTURE main_arch OF main_vhd_tst IS																 
	SIGNAL num1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL num1_view : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL num2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL num2_view : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL sign : STD_LOGIC_VECTOR(6 DOWNTO 0);
	COMPONENT main
		PORT (
			num1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			num1_view : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			num2 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			num2_view : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			sign : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		);
	END COMPONENT;
BEGIN
	i1 : main
	PORT MAP (
		num1 => num1,
		num1_view => num1_view,
		num2 => num2,
		num2_view => num2_view,
		sign => sign
	);                      
	
	always : PROCESS                                               
	BEGIN                                                         
		
		wait for 10 ns;
		num1 <= "00";
		num2 <= "00";
		
		wait for 10 ns;
		num1 <= "10";
		num2 <= "00";
		
		wait for 10 ns;
		num1 <= "00";
		num2 <= "10";
		
		wait for 10 ns;
		num1 <= "10";
		num2 <= "10";
		
	WAIT;                                                        
	END PROCESS always;                                          
END main_arch;
