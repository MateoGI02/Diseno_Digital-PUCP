LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

PACKAGE my_subcircuits IS
	COMPONENT fulladder 
		PORT ( Cin, x, y 	: IN 	STD_LOGIC ;
			    s, Cout 	: OUT STD_LOGIC ) ;
	END COMPONENT ;
END my_subcircuits;
