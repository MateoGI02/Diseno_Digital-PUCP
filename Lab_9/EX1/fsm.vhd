library ieee;
use ieee.std_logic_1164.all;
use work.my_components.all;

entity fsm is
port( reset_n : in std_logic;
		clk : in std_logic;
		ini_pausa_per : in std_logic;
		ini_pausa_lan : in std_logic;
		borrar_lan : in std_logic;
		min_value_p : in std_logic;
		min_value_l : in std_logic;
      ini_pausa_l : out std_logic;
		ini_pausa_p : out std_logic;
		borrar_p : out std_logic;
		salida10bits: out std_logic_vector (9 downto 0);
		borrar_l : out std_logic);
end fsm;
architecture estructura of fsm is
type estado is (A ,B,C,D,E);
signal estado_presente, estado_siguiente : estado;
signal enable : std_logic;
begin
salida10bits <= "0000000000";
--registro de estado
			process(clk,reset_n,estado_siguiente, enable)
		begin
			if reset_n='0' then
			estado_presente<=A;
			elsif rising_edge(clk) then
			if enable='1'then 
			estado_presente<=estado_siguiente;
		   end if;
		end if;
		end process;
--logica de estado siguiente 
		process (estado_presente,ini_pausa_per, ini_pausa_lan, borrar_lan, min_value_p,min_value_l)
		begin 
			case estado_presente is
			
			when A => if ini_pausa_per='0' then
							estado_siguiente<=A;
							
							elsif ini_pausa_per='1' and ini_pausa_lan='0' then
							estado_siguiente<=B;
							
							else
							estado_siguiente<=A;
							end if;
							
			when B => if min_value_p='1' then
							estado_siguiente<=A;
							
							elsif ini_pausa_per='1' and ini_pausa_lan='1' then
							estado_siguiente<=C;
							
							elsif ini_pausa_per='0' and ini_pausa_lan='0' and borrar_lan='0' then
							estado_siguiente<=D;
							
							else
							estado_siguiente<=B;
							end if;
							
			when C => if min_value_p='1' then
							estado_siguiente<=A;
							
							elsif (ini_pausa_per='1' and min_value_p='0'and  ini_pausa_lan='0'and borrar_lan='0'and min_value_l='1') or (ini_pausa_per='1' and min_value_p='0'and  ini_pausa_lan='0'and borrar_lan='1'and min_value_l='0') then
							estado_siguiente<=B;
							
							elsif ini_pausa_per='0' and ini_pausa_lan='0' and borrar_lan='0' then
							estado_siguiente<=D;
							
							else
							estado_siguiente<=C;
							end if;
							
			when D => if ini_pausa_per='0' and min_value_p='0' and ini_pausa_lan='0' and borrar_lan='1' and min_value_l='0'then 
							estado_siguiente<=E;
							
							elsif ini_pausa_per='1' and min_value_p='0' and ini_pausa_lan='1' and min_value_l='0' then
							estado_siguiente<=C;
							
							elsif ini_pausa_per='1' and min_value_p='0' and ini_pausa_lan='0' and borrar_lan='0' and min_value_l='0' then
							estado_siguiente<=B;
							
							else
							estado_siguiente<=D;
							end if;
							
			when E => if ini_pausa_per='1' and min_value_p='0' and ini_pausa_lan='1' and min_value_l='0' then 
							estado_siguiente<=C;
							
							elsif ini_pausa_per='1' and ini_pausa_lan='1' then
							estado_siguiente<=C;
							
							elsif ini_pausa_per='0' and min_value_p='0' and ini_pausa_lan='0' and borrar_lan='0' and min_value_l='0' then
							estado_siguiente<=D;
							
							else
							estado_siguiente<=E;
							end if;
							
			when others => estado_siguiente <= A;
			end case;
			end process;
		--logica de salida
		process(estado_presente)
			begin
			case estado_presente is
			
			when A => 							ini_pausa_l<='0';
															borrar_l<='1';
															ini_pausa_p<='0';
															borrar_p<='1';
						 
			when B => 		ini_pausa_l<='0';
															borrar_l<='1';
															ini_pausa_p<='1';
															borrar_p<='0';
						 
				when C =>					 ini_pausa_l<='1';
															 borrar_l<='0';
															ini_pausa_p<='1';
															borrar_p<='0';
						 
			when D =>						 ini_pausa_l<='0';
															 borrar_l<='0';
															 ini_pausa_p<='0';
																borrar_p<='0';
						 
			when E	 => 	ini_pausa_l<='0';
																borrar_l<='1';
																ini_pausa_p<='0';
																borrar_p<='0';
			end case;
			end process;
etapa0: divisor_freq port map (reset_n=>reset_n ,clk=>clk ,clk_o=>enable );
end estructura;
							
							
							
							
							