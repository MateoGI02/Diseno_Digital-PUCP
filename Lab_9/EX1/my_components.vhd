library ieee;
use ieee.std_logic_1164.all;

package my_components is

component divisor_freq 
  port (signal reset_n :  in std_logic;
        signal clk     :  in std_logic;
        signal clk_o   : out std_logic);
end component;
end my_components;