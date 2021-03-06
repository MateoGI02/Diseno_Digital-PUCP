
Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_components.all;


entity reloj_p is
  port (  signal reset_n		 :  in std_logic;
         signal  clk     		 :  in std_logic;
		   signal  borrar 		 : in std_logic;
		   signal       ini_pausa : in std_logic;
		   signal       min_value_p : out std_logic;
         signal   dsec_p_dec:  out std_logic_vector(6 downto 0);
		   signal dsec_p_uni: out std_logic_vector(6 downto 0);
		   signal dmin_p_dec:  out std_logic_vector(6 downto 0);
		   signal dmin_p_uni: out std_logic_vector(6 downto 0));
			
end reloj_p;

architecture estructura of reloj_p is
	signal g_reset_n : std_logic; 
	signal en_min : std_logic;
	signal en_seg : std_logic;
	signal clk_en: std_logic;
	signal max_seg: std_logic;
	signal max_min: std_logic;
	signal cuent_12_59 : std_logic;
	signal visualizador_q_minutos : std_logic_vector(4 downto 0);
	signal visualizador_q_segundos : std_logic_vector(5 downto 0);
begin

en_min<=en_seg and max_seg; 

g_reset_n<= (not(borrar) and reset_n)or (ini_pausa and reset_n);

en_seg<= clk_en and ini_pausa;
 
cuent_12_59<=max_min and max_seg;
min_value_p<=cuent_12_59;


--cuenta de los minutos descendente
etapa0: counter_mod_min port map (reset_n=>g_reset_n ,clk=>clk,en_min=>en_min,max_min=>max_min ,dmin_p_dec=>dmin_p_dec,dmin_p_uni=>dmin_p_uni,visualizador_q_minutos =>visualizador_q_minutos );

--cuenta de los segundos descendente
etapa1: counter_mod_seg port map (reset_n=>g_reset_n,clk=>clk , en_seg=>en_seg ,cuent_12_59=>cuent_12_59 , max_seg=>max_seg,dsec_p_dec=>dsec_p_dec,dsec_p_uni=>dsec_p_uni,visualizador_q_segundos=>visualizador_q_segundos );

--divisor de frecuencia 
etapa2:  divisor_freq  port map (reset_n=>reset_n ,clk=>clk,clk_o=>clk_en);

end estructura;