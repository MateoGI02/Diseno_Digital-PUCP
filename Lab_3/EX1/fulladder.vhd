Library ieee;
Use ieee.std_logic_1164.all;

Entity fulladder IS
	Port ( Cin, x, y : IN  STD_LOGIC;
				s, Cout : OUT STD_LOGIC);
				
END fulladder;

ARCHITECTURE logica1 OF fulladder IS
BEGIN
	s <= x XOR y XOR Cin ;
	Cout <= (x AND y) OR (Cin AND x) OR (Cin AND y) ;
END logica1 ;
				
				