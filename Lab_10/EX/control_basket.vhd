library ieee;
use ieee.std_logic_1164.all;
use work.my_components.all;

entity control_basket is
port(  reset_n,
		clock,
		ini_pausa_per,
		ini_pausa_lan,
		borrar_lan : in std_logic;
		dpmin_dec : out std_logic_vector(6 downto 0);
		dpmin_uni : out std_logic_vector(6 downto 0);
		dpsec_dec : out std_logic_vector(6 downto 0);
		dpsec_uni : out std_logic_vector(6 downto 0);
		dlsec_dec : out std_logic_vector(6 downto 0);
		dlsec_uni : out std_logic_vector(6 downto 0);
		numero_periodo_del_partido : out std_logic_vector(3 downto 0));

end control_basket;

architecture structural of control_basket is
signal borrar_p: std_logic;
signal 		ini_pausa_p: std_logic;	
signal 		min_value_p: std_logic;
signal 		borrar_l: std_logic;
signal 		ini_pausa_l : std_logic;
signal 		min_value_l : std_logic;
signal 		enable_del_periodo : std_logic;
signal 		clk_o : std_logic;
signal 		habilitador_de_fsm: std_logic;
begin

enable_del_periodo<=clk_o and habilitador_de_fsm;

contad_control_p : reloj_p port map( reset_n=>reset_n ,clk=>clock ,borrar=>borrar_p,ini_pausa=>ini_pausa_p,min_value_p =>min_value_p,dsec_p_dec=>dpsec_dec,dsec_p_uni=>dpsec_uni,dmin_p_dec=>dpmin_dec,dmin_p_uni=>dpmin_uni);


contad_control_l : reloj_l port map ( reset_n=>reset_n,clk=>clock,borrar=>borrar_l,ini_pausa=>ini_pausa_l, min_value_l=>min_value_l ,dsec_l_dec=>dlsec_dec,dsec_l_uni=>dlsec_uni);

maquina_estado : fsm port map (reset_n=>reset_n,clk=>clock ,ini_pausa_per=>ini_pausa_per,ini_pausa_lan=>ini_pausa_lan , borrar_lan=>borrar_lan ,min_value_p=>min_value_p,min_value_l=>min_value_l, ini_pausa_p=>ini_pausa_p,ini_pausa_l=>ini_pausa_l ,borrar_l=>borrar_l ,borrar_p=>borrar_p,enable_del_periodo=>habilitador_de_fsm );

cuenta_periodo : contador_periodos port map (clock=>clock,reset_n=>reset_n,en=>enable_del_periodo ,salida_periodo=>numero_periodo_del_partido);

divisor_frecqu: divisor_freq port map (reset_n=>reset_n ,clk=>clock ,clk_o=>clk_o);
end structural;
