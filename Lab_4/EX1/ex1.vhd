LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY  ex1 IS
	PORT ( A,B,C,D, EN   : IN  STD_LOGIC;
			 F    : OUT STD_LOGIC);
END ex1;

ARCHITECTURE logic1 OF ex1 IS
	SIGNAL X: STD_LOGIC_VECTOR(2 downto 0);
	SIGNAL Q: STD_LOGIC_VECTOR(15 downto 0);
	SIGNAL EN1, EN2 : STD_LOGIC;
	COMPONENT dec3a8
	      PORT ( EN   : IN  STD_LOGIC;
					 W    : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
					 Y    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT;
BEGIN
	X<= B & C & D ;
	EN1<= (not(A) and EN);
	EN2<= (A and EN);
	dec1: dec3a8 PORT MAP (EN1,X,Q(7 downto 0));
	dec2: dec3a8 PORT MAP (EN2,X,Q(15 downto 8));
	F<= Q(0) OR Q(3) OR Q(5) OR Q(6) OR Q(7)OR Q(12) OR Q(13) OR Q(14) OR Q(15);
END logic1;