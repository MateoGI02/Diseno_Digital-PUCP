LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

PACKAGE my_circuits IS
	COMPONENT adder 
			PORT (Cin 	: IN 	STD_LOGIC ;
		         X, Y 	: IN 	STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		         S 		: OUT 	STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		         Cout,D 	: OUT 	STD_LOGIC ) ;
	END COMPONENT ;
END my_circuits;