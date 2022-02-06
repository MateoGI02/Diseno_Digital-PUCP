LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE my_circuits IS
	COMPONENT dec2a4 
		PORT (W : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
				EN: IN  STD_LOGIC;
				Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	COMPONENT cod4a2 is 
	PORT (W : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	      Y : OUT  STD_LOGIC_VECTOR(1 DOWNTO 0));
   END COMPONENT;
	COMPONENT mux4a1
	PORT (Sel : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
	      a_i,b_i,c_i,d_i : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			f: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
   END COMPONENT;
	COMPONENT demux1a4
	PORT (Sel : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
	      f : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			a_0,b_0,c_0,d_0: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
   END COMPONENT;
END my_circuits;