LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY cod4a2 is 
	PORT (W : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	      Y : OUT  STD_LOGIC_VECTOR(1 DOWNTO 0));
END cod4a2;

ARCHITECTURE logic3 OF cod4a2 IS
BEGIN
   Y<="00" WHEN W="0001" ELSE
	   "01" WHEN W="0010" ELSE
	   "10" WHEN W="0100" ELSE
      "11" WHEN W="1000" ELSE
		"--";
END logic3;
			