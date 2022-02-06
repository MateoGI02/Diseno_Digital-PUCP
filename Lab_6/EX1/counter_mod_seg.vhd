Library ieee;
Use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all ;


Entity counter_mod_seg is
	Port(clk, reset, enable: In STD_LOGIC;
			q1, q2: Out STD_LOGIC_VECTOR(3 DOWNTO 0);
			max_seg: Out STD_LOGIC);
End counter_mod_seg;

Architecture logica1 of counter_mod_seg is
	signal a: STD_LOGIC_VECTOR(3 downto 0);
	signal b: STD_LOGIC_VECTOR(3 downto 0);
	signal c: STD_LOGIC_VECTOR(3 downto 0);
	signal d: STD_LOGIC_VECTOR(3 downto 0);
Begin
-- registro segundos unidades--
Process (clk,reset)
begin
	If (reset='0') then
		a <= "0000";
	elsif (rising_edge(clk)) then 
		a<=b;
	End If;
End Process;
-- estado siguiente segundos unidades --
b<= "0000" when (a=9 and enable='1') else
			 a+1 when enable='1' else 
			 a;
-- salida segundos unidades--
q1<= a;
-- registro segundos decenas--
Process (clk,reset)
begin
	If (reset='0') then
		c <= "0000";
	elsif (rising_edge(clk)) then 
		c<=d;
	End If;
End Process;
-- estado siguiente segundos unidades --
d<= "0000" when (c=5 and a=9 and enable='1') else
			 c+1 when (a=9 and enable='1') else 
			 c;
-- salida segundos unidades--
q2<= c;
Process (c,a)
begin
	If (c=5 and a=9) then
		max_seg <= '1';
	End If;
End Process;
End logica1;