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

begin
	
	f <= (a or b) and (not(a) or c);
	g <= c;

end logica;	