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

entity circuitoex1 is
	port (signal a,b,c :  in std_logic; 
			signal f,g   : out std_logic);
end circuitoex1;
  
architecture logica of circuitoex1 is
signal abc: std_logic_vector(2 downto 0);
begin
	abc <= a & b & c;
	with abc select   
	  f <= '0' when "000",
			 '0' when "001",
	       '1' when "010",
	       '1' when "011",
			 '0' when "100",
			 '1' when "101",
			 '0' when "110",
			 '1' when "111",
			 '-' when others;
	with abc select
	  g <= '0' when "000",
			 '1' when "001",
	       '0' when "010",
	       '1' when "011",
			 '0' when "100",
			 '1' when "101",
			 '0' when "110",
			 '1' when "111",
			 '-' when others;
end logica;	