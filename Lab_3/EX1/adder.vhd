LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.my_subcircuits.all ;

ENTITY adder IS
	PORT (Cin 	: IN 	STD_LOGIC ;
		X, Y 	: IN 	STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		S 		: OUT 	STD_LOGIC_VECTOR(3 DOWNTO 0) ;
		Cout,D 	: OUT 	STD_LOGIC ) ;
END adder ;

ARCHITECTURE logica2 OF adder IS
	SIGNAL C : STD_LOGIC_VECTOR(1 TO 3) ;
BEGIN
	stage0: fulladder PORT MAP ( Cin, X(0), Y(0), S(0), C(1) ) ;
	stage1: fulladder PORT MAP ( C(1), X(1), Y(1), S(1), C(2) ) ;
	stage2: fulladder PORT MAP ( C(2), X(2), Y(2), S(2), C(3) ) ;
	stage3: fulladder PORT MAP ( C(3), X(3), Y(3), S(3), Cout ) ;
	D<=C(3);
END logica2 ;

