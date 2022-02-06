Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_components.all;


entity reloj_l is
  port ( reset_n :  in std_logic;
         clk     :  in std_logic;
		  borrar : in std_logic;
		  ini_pausa : in std_logic;
		  min_value_l : out std_logic;
        dsec_l_dec:  out std_logic_vector(6 downto 0);
		  dsec_l_uni: out std_logic_vector(6 downto 0)
);
end reloj_l;

architecture structural of reloj_l is
signal 	g_reset_n: std_logic;
signal			clk_en: std_logic;
signal			en_seg: std_logic;
signal			max_seg: std_logic;
signal			max_min : std_logic;
signal visualizador_q_segundos2 : std_logic_vector(5 downto 0);
begin

g_reset_n<= (not(borrar) or ini_pausa) and reset_n;
en_seg<= clk_en and ini_pausa;




contador_segundos: counter_mod_seg_lan port map (reset_n=>g_reset_n,clk=>clk , en_seg=>en_seg , max_seg=>min_value_l,segundos_decenas=>dsec_l_dec,segundos_unidades=>dsec_l_uni,visualizador_q_segundos2=>visualizador_q_segundos2 );

div_frec:  divisor_freq  port map (reset_n=>reset_n ,clk=>clk,clk_o=>clk_en);
end structural;