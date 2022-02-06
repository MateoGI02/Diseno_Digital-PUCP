LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE WORK.my_circuits.all;

ENTITY muxtdm is 
	PORT (W : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
			EN: IN  STD_LOGIC;
	      a_i,b_i,c_i,d_i : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			a_0,b_0,c_0,d_0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END muxtdm;

ARCHITECTURE logic OF muxtdm IS
	SIGNAL Y : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL f: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	deco:   dec2a4 PORT MAP (W,EN,Y);
	co:     cod4a2 PORT MAP (Y,Sel);
	mux:    mux4a1 PORT MAP (Sel,a_i,b_i,c_i,d_i,f);
	demux:  demux1a4 PORT MAP (Sel,f,a_0,b_0,c_0,d_0);
END logic;
			