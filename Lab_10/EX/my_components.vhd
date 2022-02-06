library ieee;
use ieee.std_logic_1164.all;

package my_components is

component divisor_freq 
  port (signal reset_n :  in std_logic;
        signal clk     :  in std_logic;
        signal clk_o   : out std_logic);
end component;

component counter_mod_min 
  port (signal reset_n :  in std_logic;
        signal clk     :  in std_logic;
        signal en_min   : in std_logic;
		  signal max_min : out std_logic;
		  signal minutos_decenas:out std_logic_vector(6 downto 0);
		  signal minutos_unidades:out std_logic_vector(6 downto 0);
		 signal visualizador_q_minutos : out std_logic_vector(4 downto 0)	  );
end component;

component counter_mod_seg 
  port (signal reset_n :  in std_logic;
        signal clk     :  in std_logic;
        signal en_seg   : in std_logic;
		  signal max_seg : out std_logic;
		  signal cuent_12_59 : in std_logic;
		  signal segundos_decenas:out std_logic_vector(6 downto 0);
		  signal segundos_unidades:out std_logic_vector(6 downto 0);
		  signal visualizador_q_segundos : out std_logic_vector(5 downto 0));
end component;

component counter_mod_seg_lan
  port (signal reset_n :  in std_logic;
        signal clk     :  in std_logic;
        signal en_seg   : in std_logic;
		  signal max_seg : out std_logic;
		  signal segundos_decenas :out std_logic_vector(6 downto 0);
		  signal segundos_unidades:out std_logic_vector(6 downto 0);
		  signal visualizador_q_segundos2 : out std_logic_vector(5 downto 0));
end component;

component reloj_p 
  port (  signal  reset_n :  in std_logic;
          signal  clk     :  in std_logic;
		   signal  borrar : in std_logic;
		   signal  ini_pausa : in std_logic;
		   signal  min_value_p : out std_logic;
         signal  dsec_p_dec:  out std_logic_vector(6 downto 0);
		   signal  dsec_p_uni: out std_logic_vector(6 downto 0);
		   signal  dmin_p_dec:  out std_logic_vector(6 downto 0);
		   signal  dmin_p_uni: out std_logic_vector(6 downto 0));
end component;

component reloj_l 
  port ( reset_n :  in std_logic;
         clk     :  in std_logic;
		  borrar : in std_logic;
		  ini_pausa : in std_logic;
		  min_value_l : out std_logic;
        dsec_l_dec:  out std_logic_vector(6 downto 0);
		  dsec_l_uni: out std_logic_vector(6 downto 0));
end component;

component fsm 
port(  signal  reset_n : in std_logic;
		 signal  clk : in std_logic; 
		 signal  ini_pausa_per : in std_logic;
		 signal  ini_pausa_lan : in std_logic;
		 signal  borrar_lan : in std_logic;
		 signal  min_value_p : in std_logic;
		 signal min_value_l : in std_logic;
		 signal  ini_pausa_p : out std_logic;
		 signal  ini_pausa_l : out std_logic;
		 signal  borrar_l : out std_logic;
		 signal borrar_p : out std_logic;
		 signal  enable_del_periodo : out std_logic);
end component;

component contador_periodos 
port(		clock: in std_logic;
			reset_n: in std_logic;
				en : in std_logic;
			salida_periodo : out std_logic_vector(3 downto 0));
end component;



end my_components;