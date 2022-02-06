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
		  signal dmin_p_dec:out std_logic_vector(6 downto 0);
		  signal dmin_p_uni :out std_logic_vector(6 downto 0);
		  signal visualizador_q_minutos : out std_logic_vector(4 downto 0));
end component;

component counter_mod_seg 
  port ( signal reset_n :  in std_logic;
         signal clk     :  in std_logic;
         signal en_seg   : in std_logic;
			signal cuent_12_59		: in std_logic;
		   signal max_seg : out std_logic;
		   signal dsec_p_dec:out std_logic_vector(6 downto 0);
		   signal dsec_p_uni:out std_logic_vector(6 downto 0);
		   signal visualizador_q_segundos : out std_logic_vector(5 downto 0));
end component;




end my_components;