library ieee;
use ieee.std_logic_1164.all;
use work.my_components.all;


entity fsm is
port(reset_n : in std_logic;
		clk : in std_logic; 
		ini_pausa_per : in std_logic;
		ini_pausa_lan : in std_logic;
		borrar_lan : in std_logic;
		min_value_p : in std_logic;
		min_value_l : in std_logic;
		ini_pausa_p : out std_logic;
		ini_pausa_l : out std_logic;
		borrar_l : out std_logic;
		borrar_p : out std_logic;
		enable_del_periodo : out std_logic
);
end fsm;

architecture structural of fsm is
type estado is (basico,cuenta_partido_no_lanzm,cuenta_ambos,pausa_ambos,pausa_cuenta_per_reinic_lan, avanza_periodo);
signal estado_presente,estado_siguiente : estado ;
signal en : std_logic;
begin
		process(reset_n,clk,estado_siguiente,en)
		begin
			if reset_n='0' then
			estado_presente<=basico;
			elsif rising_edge(clk) then
					if en='1' then
					estado_presente<=estado_siguiente;
					end if;
			end if;
		end process;

--LOGICA DEL ESTADO SIGUIENTE

		process(estado_presente,ini_pausa_per,ini_pausa_lan,borrar_lan,min_value_p,min_value_l)
		begin 
		case estado_presente is
		when basico => if ini_pausa_per='1' then
							estado_siguiente<=cuenta_partido_no_lanzm;
							else
							estado_siguiente<=basico;
							end if;
							
		when cuenta_partido_no_lanzm => if min_value_p='1' then
							estado_siguiente<=avanza_periodo;
							
							elsif ini_pausa_per='1' and ini_pausa_lan='1' then
							estado_siguiente<=cuenta_ambos;
							
							elsif ini_pausa_per='0' and ini_pausa_lan='0' and borrar_lan='0' then
							estado_siguiente<=pausa_ambos;
							
							else
							estado_siguiente<=cuenta_partido_no_lanzm;
							end if;
							
							
		when cuenta_ambos => if min_value_p='1' then
							estado_siguiente<=avanza_periodo;
							
							elsif (ini_pausa_per='1' and min_value_p='0'and  ini_pausa_lan='0'and borrar_lan='0'and min_value_l='1') or (ini_pausa_per='1' and min_value_p='0'and  ini_pausa_lan='0'and borrar_lan='1'and min_value_l='0') then
							estado_siguiente<=cuenta_partido_no_lanzm;
							
							elsif ini_pausa_per='0' and ini_pausa_lan='0' and borrar_lan='0' then
							estado_siguiente<=pausa_ambos;
							
							else
							estado_siguiente<=cuenta_ambos;
							end if;
							
			when pausa_ambos => if ini_pausa_per='0' and min_value_p='0' and ini_pausa_lan='0' and borrar_lan='0' and min_value_l='0'then 
							estado_siguiente<=pausa_cuenta_per_reinic_lan;
							
							elsif ini_pausa_per='1' and min_value_p='0' and ini_pausa_lan='1' and min_value_l='0' then
							estado_siguiente<=cuenta_ambos;
							
							elsif ini_pausa_per='1' and min_value_p='0' and ini_pausa_lan='0' and borrar_lan='0' and min_value_l='0' then
							estado_siguiente<=cuenta_partido_no_lanzm;
							
							else
							estado_siguiente<=pausa_ambos;
							end if;
							
			when pausa_cuenta_per_reinic_lan => if ini_pausa_per='1' and min_value_p='0' and ini_pausa_lan='1' and min_value_l='0' then 
							estado_siguiente<=cuenta_ambos;
							
							elsif ini_pausa_per='1' and ini_pausa_lan='1' then
							estado_siguiente<=cuenta_ambos;
							
							elsif ini_pausa_per='0' and min_value_p='0' and ini_pausa_lan='0' and borrar_lan='0' and min_value_l='0' then
							estado_siguiente<=pausa_ambos;
							
							else
							estado_siguiente<=pausa_cuenta_per_reinic_lan;
							end if;
			--en este estado solo nos servira de habilitador para la cuenta de modulo5				
			when avanza_periodo => 	estado_siguiente<=basico;
							
			when others => estado_siguiente <= basico;
			end case;
			end process;
		
--logica de salida
		process(estado_presente)
			begin
			case estado_presente is
			
			when basico => 							ini_pausa_l<='0';
															borrar_l<='1';
															ini_pausa_p<='0';
															borrar_p<='1';
															enable_del_periodo<='0';
						 
			when cuenta_partido_no_lanzm => 		ini_pausa_l<='0';
															borrar_l<='1';
															ini_pausa_p<='1';
															borrar_p<='0';
															enable_del_periodo<='0';
						 
				when cuenta_ambos =>					 ini_pausa_l<='1';
															 borrar_l<='0';
															ini_pausa_p<='1';
															borrar_p<='0';
															enable_del_periodo<='0';
						 
			when pausa_ambos =>						 ini_pausa_l<='0';
															 borrar_l<='0';
															 ini_pausa_p<='0';
																borrar_p<='0';
																enable_del_periodo<='0';
						 
			when pausa_cuenta_per_reinic_lan	 => 	ini_pausa_l<='0';
																borrar_l<='1';
																ini_pausa_p<='0';
																borrar_p<='0';
																enable_del_periodo<='0';
																
			when avanza_periodo =>						 ini_pausa_l<='0';
															 borrar_l<='1';
															 ini_pausa_p<='0';
																borrar_p<='1';
																enable_del_periodo<='1'; -- indica que paso por el estado avanza_periodo por lo tanto se activa el enable del contador del periodo
																
			when others =>								ini_pausa_l <='0';
															borrar_l <= '1';
															ini_pausa_p <='0';
															borrar_p <='1';	
															enable_del_periodo<='0';
			end case;
			end process;

						
		
DivisorFrec: divisor_freq port map (reset_n=>reset_n ,clk=>clk ,clk_o=>en );--este enable sirve para habilitar al contador del periodo
end structural;