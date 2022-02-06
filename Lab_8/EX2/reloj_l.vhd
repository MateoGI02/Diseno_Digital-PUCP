Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_components.all;


entity reloj_l is
  port (  signal reset_n		 :  in std_logic;
         signal  clk     		 :  in std_logic;
		   signal  borrar 		 : in std_logic;
		   signal       ini_pausa : in std_logic;
		   signal       min_value_l : out std_logic;
         signal   dsec_p_dec:  out std_logic_vector(6 downto 0);
		   signal dsec_p_uni: out std_logic_vector(6 downto 0));
			
end reloj_l;

architecture estructura of reloj_l is
	signal g_reset_n : std_logic; 
	signal en_seg : std_logic;
	signal clk_en: std_logic;
	signal max_seg: std_logic;
	
	signal visualizador_q_segundos : std_logic_vector(5 downto 0);
begin



g_reset_n<= (not(borrar) and reset_n)or (ini_pausa and reset_n);

en_seg<= clk_en and ini_pausa;
 


--cuenta de los segundos descendente
etapa1: counter_mod_seg port map (reset_n=>g_reset_n,clk=>clk , en_seg=>en_seg, max_seg=>min_value_l,dsec_p_dec=>dsec_p_dec,dsec_p_uni=>dsec_p_uni,visualizador_q_segundos=>visualizador_q_segundos );

--divisor de frecuencia 
etapa2:  divisor_freq  port map (reset_n=>reset_n ,clk=>clk,clk_o=>clk_en);

end estructura;