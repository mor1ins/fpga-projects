library ieee;
use ieee.std_logic_1164.all;

--------------------------------------

entity comp2 is
port(	
	x: in std_logic_vector(1 downto 0);
	y: in std_logic_vector(1 downto 0);
	res: out std_logic_vector(1 downto 0)
);
end comp2;  

---------------------------------------

architecture comp2_arch of comp2 is

signal z1: std_logic;
signal z2: std_logic;

signal not_x1: std_logic;
signal not_x0: std_logic;

signal not_y1: std_logic;
signal not_y0: std_logic;

signal nX1_and_nY0: std_logic;

begin
	not_x1 <= not x(1);
	not_x0 <= not x(0);

	not_y1 <= not y(1);
	not_y0 <= not y(0);
	
	nX1_and_nY0 <= not_x1 and not_y0;
	
   z1 <= not_y1 and ((nX1_and_nY0 and x(0)) or (x(1) and not_x0));
	z2 <= (not_x1 and not_x0 and not_y1 and y(0)) or (nX1_and_nY0 and y(1));
	res <= z1 & z2;

end comp2_arch;
