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
-- Descripción:
-- Circuito que permite seleccionar por medio de una entrada "sel" cual entrada
-- (a o b) pasará directamente a la salida (2)
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity lab0 is
	port (signal S :  in std_logic; 
			signal A :  in std_logic;
			signal B :  in std_logic;
			signal Z : out std_logic);
end lab0;

architecture structural of lab0 is

begin
	
	Z <= (not(S) and (A)) or (S and B);

end structural;	