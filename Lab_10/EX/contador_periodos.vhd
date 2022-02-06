Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_periodos is
port(clock: in std_logic;
		reset_n: in std_logic;
		en : in std_logic;
		salida_periodo : out std_logic_vector(3 downto 0));
end contador_periodos;

architecture structural of contador_periodos is
signal q,d : unsigned(3 downto 0);
begin
process(d,clock,en,reset_n)
			begin
					if reset_n='0' then
					q<="0001";
					elsif rising_edge(clock) then
							if en='1' then
							q<=d;
							end if;
					end if;
			end process;
--si bien es un contador ascendente de modulo5, lo acortaremos para que solo se visualice los numeros 1 al 4
d<="0001" when q=4 else (q+1);	
salida_periodo<=std_logic_vector(Q);
end structural;