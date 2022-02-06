Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_mod_seg is
  port (signal reset_n :  in std_logic;
        signal clk     :  in std_logic;
        signal en_seg   : in std_logic;
		  signal max_seg : out std_logic;
		  cuent_12_59 : in std_logic;
		  segundos_decenas:out std_logic_vector(6 downto 0);
		  segundos_unidades:out std_logic_vector(6 downto 0);
		  visualizador_q_segundos : out std_logic_vector(5 downto 0)
);
end counter_mod_seg;

architecture structural of counter_mod_seg is

signal d,q : unsigned(5 downto 0);
signal q_aux,f : std_logic_vector(7 downto 0);
signal decenas,unidades : std_logic_vector(3 downto 0);
signal reset_12_59 : std_logic;
begin
reset_12_59<=reset_n and not(cuent_12_59);
			process(d,clk,en_seg,reset_12_59)
			begin
					if reset_12_59='0' then
					q<=(others=>'0');
					elsif rising_edge(clk) then
							if en_seg='1' then
							q<=d;
							end if;
					end if;
			end process;

d<=to_unsigned(59,6) when q=0 else (q-1);					
max_seg <= '1' when q=0 else '0';

visualizador_q_segundos<=std_logic_vector(q);
--del binario al bcd
q_aux<="00"&std_logic_vector(q);

  with q_aux select
    f <= x"00" when x"00",
         x"01" when x"01",
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
         x"13" when x"0d",
         x"14" when x"0E",
         x"15" when x"0F",
         x"16" when x"10",
         x"17" when x"11",		 
         x"18" when x"12",
         x"19" when x"13",
         x"20" when x"14",	
         x"21" when x"15",
         x"22" when x"16",		 
         x"23" when x"17",
         x"24" when x"18",
         x"25" when x"19",	
         x"26" when x"1A",
         x"27" when x"1b",		 
         x"28" when x"1C",
         x"29" when x"1d",
         x"30" when x"1E",	
         x"31" when x"1F",	 
         x"32" when x"20",
         x"33" when x"21",
         x"34" when x"22",
         x"35" when x"23",
         x"36" when x"24",
         x"37" when x"25",
         x"38" when x"26",
         x"39" when x"27",
         x"40" when x"28",
         x"41" when x"29",			 
         x"42" when x"2A",
         x"43" when x"2b",
         x"44" when x"2C",
         x"45" when x"2d",
         x"46" when x"2E",
         x"47" when x"2F",
         x"48" when x"30",
         x"49" when x"31",		 
         x"50" when x"32",
         x"51" when x"33",
         x"52" when x"34",	
         x"53" when x"35",
         x"54" when x"36",		 
         x"55" when x"37",
         x"56" when x"38",
         x"57" when x"39",	
         x"58" when x"3A",
         x"59" when x"3b",		 
         x"60" when x"3C",
         x"61" when x"3D",
         x"62" when x"3E",	
         x"63" when x"3F",
         "--------" when others;
--los separamos en dos partes de la misma cantidad de bits
decenas<=f(7 downto 4);
unidades<=f(3 downto 0);

---señales pasra el display
with unidades select
segundos_unidades <= "1000000" when x"0",
							"1111001" when x"1",
							"0100100" when x"2",
							"0110000" when x"3",
							"0011001" when x"4",
							"0010010" when x"5",
							"0000010" when x"6",
							"1111000" when x"7",
							"0000000" when x"8",
							"0010000" when x"9",			 
							"0001000" when x"A",
							"0000011" when x"b",
							"1000110" when x"C",
							"0100001" when x"d",
							"0000110" when x"E",
							"0001110" when x"F",			 
							"-------" when others;

			
with decenas select
segundos_decenas <= "1000000" when x"0",
							"1111001" when x"1",
							"0100100" when x"2",
							"0110000" when x"3",
							"0011001" when x"4",
							"0010010" when x"5",
							"0000010" when x"6",
							"1111000" when x"7",
							"0000000" when x"8",
							"0010000" when x"9",			 
							"0001000" when x"A",
							"0000011" when x"b",
							"1000110" when x"C",
							"0100001" when x"d",
							"0000110" when x"E",
							"0001110" when x"F",			 
							"-------" when others;

end structural;