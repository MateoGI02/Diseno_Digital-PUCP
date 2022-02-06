
Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_components.all;


entity reloj_p is
  port ( reset_n :  in std_logic;
         clk     :  in std_logic;
		  borrar : in std_logic;
		  ini_pausa : in std_logic;
		  min_value_p : out std_logic;
        dsec_p_dec:  out std_logic_vector(6 downto 0);
		  dsec_p_uni: out std_logic_vector(6 downto 0);
		  dmin_p_dec:  out std_logic_vector(6 downto 0);
		  dmin_p_uni: out std_logic_vector(6 downto 0)
);
end reloj_p;

architecture structural of reloj_p is
signal g_reset_n , en_min , en_seg ,clk_en,max_seg,max_min,cuent_12_59 : std_logic;
signal visualizador_q_minutos : std_logic_vector(4 downto 0);
signal visualizador_q_segundos : std_logic_vector(5 downto 0);

begin

g_reset_n<= (not(borrar) or ini_pausa) and reset_n;
en_seg<= clk_en and ini_pausa;
en_min<=en_seg and max_seg;  
cuent_12_59<=max_min and max_seg;
min_value_p<=cuent_12_59;

contador_minutos: counter_mod_min port map (reset_n=>g_reset_n ,clk=>clk,en_min=>en_min,max_min=>max_min ,minutos_decenas=>dmin_p_dec,minutos_unidades=>dmin_p_uni,visualizador_q_minutos =>visualizador_q_minutos );

contador_segundos: counter_mod_seg port map (reset_n=>g_reset_n,clk=>clk , en_seg=>en_seg , max_seg=>max_seg ,cuent_12_59=>cuent_12_59,segundos_decenas=>dsec_p_dec,segundos_unidades=>dsec_p_uni,visualizador_q_segundos=>visualizador_q_segundos );

div_frec:  divisor_freq  port map (reset_n=>reset_n ,clk=>clk,clk_o=>clk_en);
end structural;