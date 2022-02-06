Library ieee;
Use ieee.std_logic_1164.all;

Package my_components is
	Component counter_mod_seg
	   Port(clk, reset, enable: In STD_LOGIC;
			  q1, q2: Out STD_LOGIC_VECTOR(3 DOWNTO 0);
			  max_seg: Out STD_LOGIC);			
	End component;
	Component counter_mod_min
		Port(clk, reset, enable: In STD_LOGIC;
			  q1, q2: Out STD_LOGIC_VECTOR(3 DOWNTO 0);
			  max_min: Out STD_LOGIC);	
	End component;
	Component divisor_freq
		port (signal reset_n :  in std_logic;
            signal clk     :  in std_logic;
            signal clk_o   : out std_logic);
	End component;
End my_components;	