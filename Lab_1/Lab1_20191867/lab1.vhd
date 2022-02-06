library ieee;
use ieee.std_logic_1164.all;

entity lab1 is

	port (signal Cin   :  in std_logic; 
			signal A     :  in std_logic;
			signal B     :  in std_logic;
			signal Cout  : out std_logic;
			signal S     : out std_logic);
end lab1;

architecture structural of lab1 is
	signal W: std_logic;
begin
	W    <= (not(A) and (B)) or (A and not(B)); 
	Cout <=  (Cin and A) or (Cin and B) or (A and B);
	S    <= (not(Cin) and (W)) or (Cin and not(W));

end structural;	
