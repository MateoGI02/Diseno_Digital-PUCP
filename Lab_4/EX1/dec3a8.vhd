LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY  dec3a8 IS
	PORT ( EN   : IN  STD_LOGIC;
			 W    : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
			 Y    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END dec3a8;

ARCHITECTURE logic1 OF dec3a8 IS
	SIGNAL X: STD_LOGIC_VECTOR(3 downto 0);
BEGIN
	X<= EN&W ;
	Y<="00000001" when X="1000" ELSE
	   "00000010" when X="1001" ELSE
	   "00000100" when X="1010" ELSE
	   "00001000" when X="1011" ELSE
	   "00010000" when X="1100" ELSE
	   "00100000" when X="1101" ELSE
	   "01000000" when X="1110" ELSE
	   "10000000" when X="1111" ELSE		
	   "00000000";
END logic1;



