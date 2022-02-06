LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE work.my_circuits.all ;

ENTITY addsub IS
	PORT (Co       : IN 	STD_LOGIC ;
		   X, Y 	   : IN 	STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			S 	      : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			v, n, z 	: OUT STD_LOGIC ) ;
END addsub;

ARCHITECTURE logica OF addsub IS
	SIGNAL w, P  : STD_LOGIC_VECTOR(3 DOWNTO 0) ;
	SIGNAL C4, C3  : STD_LOGIC;
BEGIN
	w(0) <= Co xor y(0) ;
	w(1) <= Co xor y(1) ;
	w(2) <= Co xor y(2) ;
	w(3) <= Co xor y(3) ;
	etapa: adder PORT MAP ( Co, X, W, P, C4,C3) ;
	S <= P;
	v <= C4 xor C3;
	n <= P(3);
	z <= not(P(3) OR P(2) OR P(1) OR P(0));
END logica ;