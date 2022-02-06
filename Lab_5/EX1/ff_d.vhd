Library ieee;
Use ieee.std_logic_1164.all;

Entity ff_d is
   Port (clk,resetn,d  :  in std_logic; 
			q             : out std_logic); 
End ff_d;

Architecture logic2 of ff_d is
 Signal l: std_logic;
Begin
  flip: process(resetn,clk)
  begin
    if resetn='0' then
      q <= '0';
	 elsif rising_edge(clk) then
           q <= d;
    end if;
  end process flip;

End logic2;
