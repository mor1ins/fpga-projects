library ieee;
use ieee.std_logic_1164.all;

--------------------------------------

entity display_view is
port(	
	value: in std_logic_vector(1 downto 0);
	is_num: in std_logic;
	segs: out std_logic_vector(6 downto 0)
);
end display_view;  

---------------------------------------

architecture display_view_arch of display_view is
signal input: std_logic_vector(2 downto 0);
begin
	input <= is_num & value;
	process (input) is
	begin
		case input is
			when "100" => segs <= not "0111111"; -- 0
			when "101" => segs <= not "0000110"; -- 1
			when "110" => segs <= not "1011011"; -- 2
			when "000" => segs <= not "1111001"; -- E
			when "001" => segs <= not "0111000"; -- L
			when "010" => segs <= not "0111101"; -- G
			when others => segs <= not "1110001"; -- U(Undefined)
		end case;
	
	end process;

end display_view_arch;
