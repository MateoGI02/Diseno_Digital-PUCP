LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY demux1a4 is 
	PORT (Sel : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
	      f : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			a_0,b_0,c_0,d_0: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END demux1a4;

ARCHITECTURE logic1 OF demux1a4 IS
BEGIN
	a_0<=f WHEN Sel="00"ELSE
	     "----";
	b_0<=f WHEN Sel="01"ELSE
	     "----";
	c_0<=f WHEN Sel="10"ELSE
	     "----";	
	d_0<=f WHEN Sel="11"ELSE
	     "----";	
END logic1;