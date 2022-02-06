-------------------------------------------------------------------------------
-- Autor:		Mateo Guerrero Isuiza
-- Email: 		a20191867@pucp.edu.pe
-- Entidad:		Pontificia Universidad Católica del Perú (PUCP)
-- Facultad:	Estudios Generarles Ciencias (EE.GG.CC)
-- Curso:		1IEE04 - Diseño Digital
-------------------------------------------------------------------------------
-- Historia de Versión:
-- Vesrión 1.0 (14/09/2020) - Mateo Guerrero Isuiza
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity exp2 is
	port (signal x,y,z,w         : IN std_logic;
			signal a,b,c,d,e,f,g   : OUT std_logic);
end exp2;
  
architecture logica of exp2 is

    signal xyzw : std_logic_vector(3 downto 0);

begin
   
	xyzw <= x & y & z & w;
	with xyzw select   
	  a <= '0' when "0000",
			 '1' when "0001",
	       '0' when "0010",
	       '0' when "0011",
			 '1' when "0100",
			 '0' when "0101",
			 '0' when "0110",
			 '0' when "0111",
			 '0' when "1000",
			 '0' when "1001",
	       '0' when "1010",
	       '1' when "1011",
			 '0' when "1100",
			 '1' when "1101",
			 '0' when "1110",
			 '0' when "1111",
			 '-' when others;
	with xyzw select
	  b <= '0' when "0000",
			 '0' when "0001",
	       '0' when "0010",
	       '0' when "0011",
			 '0' when "0100",
			 '1' when "0101",
			 '1' when "0110",
			 '0' when "0111",
			 '0' when "1000",
			 '0' when "1001",
	       '0' when "1010",
	       '1' when "1011",
			 '1' when "1100",
			 '0' when "1101",
			 '1' when "1110",
			 '1' when "1111",
			 '-' when others;	
	with xyzw select   
	  c <= '0' when "0000",
			 '0' when "0001",
	       '1' when "0010",
	       '0' when "0011",
			 '0' when "0100",
			 '0' when "0101",
			 '0' when "0110",
			 '0' when "0111",
			 '0' when "1000",
			 '0' when "1001",
	       '0' when "1010",
	       '0' when "1011",
			 '1' when "1100",
			 '0' when "1101",
			 '1' when "1110",
			 '1' when "1111",
			 '-' when others;	
	with xyzw select
	  d <= '0' when "0000",
			 '1' when "0001",
	       '0' when "0010",
	       '0' when "0011",
			 '1' when "0100",
			 '0' when "0101",
			 '0' when "0110",
			 '1' when "0111",
			 '0' when "1000",
			 '1' when "1001",
	       '1' when "1010",
	       '0' when "1011",
			 '0' when "1100",
			 '0' when "1101",
			 '0' when "1110",
			 '1' when "1111",
			 '-' when others;	
	with xyzw select   
	  e <= '0' when "0000",
			 '1' when "0001",
	       '0' when "0010",
	       '1' when "0011",
			 '1' when "0100",
			 '1' when "0101",
			 '0' when "0110",
			 '1' when "0111",
			 '0' when "1000",
			 '1' when "1001",
	       '0' when "1010",
	       '0' when "1011",
			 '0' when "1100",
			 '0' when "1101",
			 '0' when "1110",
			 '0' when "1111",
			 '-' when others;			 
	with xyzw select   
	  f <= '0' when "0000",
			 '1' when "0001",
	       '1' when "0010",
	       '1' when "0011",
			 '0' when "0100",
			 '0' when "0101",
			 '0' when "0110",
			 '1' when "0111",
			 '0' when "1000",
			 '0' when "1001",
	       '0' when "1010",
	       '0' when "1011",
			 '0' when "1100",
			 '1' when "1101",
			 '0' when "1110",
			 '0' when "1111",
			 '-' when others;
	with xyzw select
	  g <= '1' when "0000",
			 '1' when "0001",
	       '0' when "0010",
	       '0' when "0011",
			 '0' when "0100",
			 '0' when "0101",
			 '0' when "0110",
			 '1' when "0111",
			 '0' when "1000",
			 '0' when "1001",
	       '0' when "1010",
	       '0' when "1011",
			 '1' when "1100",
			 '0' when "1101",
			 '0' when "1110",
			 '0' when "1111",
			 '-' when others;
end logica;