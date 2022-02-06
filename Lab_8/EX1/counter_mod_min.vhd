Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity counter_mod_min is
  port (signal reset_n 							:  in std_logic;
        signal clk    							 :  in std_logic;
        signal en_min 							  : in std_logic;
		  signal max_min 							: out std_logic;
		  signal dmin_p_dec        			:out std_logic_vector(6 downto 0);
		   signal dmin_p_uni  					:out std_logic_vector(6 downto 0);
		   signal visualizador_q_minutos 	: out std_logic_vector(4 downto 0));
end counter_mod_min;

architecture logic of counter_mod_min is

signal k,q : unsigned(4 downto 0);
signal q_interno,f : std_logic_vector(7 downto 0);

signal decenas,unidades : std_logic_vector(3 downto 0);
begin
			process(k,clk,en_min,reset_n)
			begin
					if reset_n='0' then
					q<="01100";
					elsif rising_edge(clk) then
							if en_min='1' then
							q<=k;
							end if;
					end if;
			end process;

k<="01100" when q=0 else (q-1);					
max_min <= '1' when q=0 else '0';

visualizador_q_minutos<=std_logic_vector(q);

q_interno<="000"&std_logic_vector(q);
--binario a BCD
  with q_interno select
    f <= x"00" when x"00", --0000 0000     
         x"01" when x"01", --0000 0001     
         x"02" when x"02",
         x"03" when x"03",
         x"04" when x"04",
         x"05" when x"05",
         x"06" when x"06",
         x"07" when x"07",
         x"08" when x"08",
         x"09" when x"09",			 
         x"10" when x"0A",
         x"11" when x"0b",
         x"12" when x"0C",
        
         	 
        "--------" when others;

decenas<=f(7 downto 4);
unidades<=f(3 downto 0);

---representacion con ayuda del laboratorio 2 activo en baja
with unidades select
dmin_p_uni			 <= "1000000" when x"0", --binario when hexadecimal
							"0110000" when x"1",
							"1101101" when x"2",
							"1111001" when x"3",
							"0110011" when x"4",
							"1011011" when x"5",
							"1011111" when x"6",
							"1110000" when x"7",
							"1111111" when x"8",
							"1111011" when x"9",			 			 
								"-------"when others;

			
with decenas select
dmin_p_dec <=  "1000000" when x"0", --binario when hexadecimal
							"0110000" when x"1",
							"1101101" when x"2",
							"1111001" when x"3",
							"0110011" when x"4",
							"1011011" when x"5",
							"1011111" when x"6",
							"1110000" when x"7",
							"1111111" when x"8",
							"1111011" when x"9",				 
									 
								"-------"when others;

end logic;