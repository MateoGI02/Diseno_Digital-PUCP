LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux4a1 is 
	PORT (Sel : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
	      a_i,b_i,c_i,d_i : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			f: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END mux4a1;

ARCHITECTURE logic2 OF mux4a1 IS
BEGIN
	f<=a_i WHEN Sel="00" ELSE
	   b_i WHEN Sel="01" ELSE
	   c_i WHEN Sel="10" ELSE	
	   d_i WHEN Sel="11" ELSE
		"----";	
END logic2;