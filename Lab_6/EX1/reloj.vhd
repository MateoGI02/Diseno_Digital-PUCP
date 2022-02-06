Library ieee ;
Use ieee.std_logic_1164.all ;
Use work.my_components.all ;

Entity reloj is
	Port(clk, reset_n, ini_pausa, borrar: in std_logic ;
		  max_value: out std_logic ;
	     segundos_decenas : out std_logic_vector (1 to 7);
		  segundos_unidades : out std_logic_vector (1 to 7);
		  minutos_decenas: out std_logic_vector (1 to 7);
		  minutos_unidades: out std_logic_vector (1 to 7));
End reloj;

Architecture logica of reloj is
	signal en_seg: std_logic;
	signal en_min: std_logic;
	signal clk_en: std_logic;
	signal g_reset_n: std_logic;
	signal q1: std_logic_vector (3 DOWNTO 0);
	signal q2: std_logic_vector (3 DOWNTO 0);
	signal max_seg: std_logic;
	signal max_min: std_logic;
	signal p1: std_logic_vector (3 DOWNTO 0);
	signal p2: std_logic_vector (3 DOWNTO 0);
Begin
	contadorseg: counter_mod_seg PORT MAP (clk,g_reset_n,en_seg,q1,q2,max_seg);
	contadormin: counter_mod_min PORT MAP (clk,g_reset_n,en_min,p1,p2,max_min);
	divisorfre : divisor_freq    PORT MAP (g_reset_n,clk,clk_en);

-- señales internas --
Process (clk_en, ini_pausa, en_seg, max_seg, borrar, reset_n)
begin
	g_reset_n <= (not(borrar) or ini_pausa) and reset_n;
	en_seg <= clk_en and ini_pausa;
	en_min <= en_seg and max_seg;
End Process;

-- salidas --
Process (max_seg, max_min, q1)
begin
	max_value <= max_min and max_seg;
		case (q1) is
			when "0000" => segundos_unidades<="1111110"; --abcdefg--
			when "0001" => segundos_unidades<="0110000";
			when "0010" => segundos_unidades<="1101101";
			when "0011" => segundos_unidades<="1111001";
			when "0100" => segundos_unidades<="0110011";
			when "0101" => segundos_unidades<="1011011";
			when "0110" => segundos_unidades<="1011111";
			when "0111" => segundos_unidades<="1110000";
			when "1000" => segundos_unidades<="1111111";
			when "1001" => segundos_unidades<="1111011";
			when OTHERS => segundos_unidades<="-------";
		end case;
		case (q2) is
			when "0000" => segundos_decenas<="1111110"; --abcdefg--
			when "0001" => segundos_decenas<="0110000";
			when "0010" => segundos_decenas<="1101101";
			when "0011" => segundos_decenas<="1111001";
			when "0100" => segundos_decenas<="0110011";
			when OTHERS => segundos_decenas<="-------";
		end case;
		case (p1) is
			when "0000" => minutos_unidades<="1111110"; --abcdefg--
			when "0001" => minutos_unidades<="0110000";
			when "0010" => minutos_unidades<="1101101";
			when "0011" => minutos_unidades<="1111001";
			when "0100" => minutos_unidades<="0110011";
			when "0101" => minutos_unidades<="1011011";
			when "0110" => minutos_unidades<="1011111";
			when "0111" => minutos_unidades<="1110000";
			when "1000" => minutos_unidades<="1111111";
			when "1001" => minutos_unidades<="1111011";
			when OTHERS => minutos_unidades<="-------";
		end case;
		case (p2) is
			when "0000" => minutos_decenas<="1111110"; --abcdefg--
			when "0001" => minutos_decenas<="0110000";
			when "0010" => minutos_decenas<="1101101";
			when OTHERS => minutos_decenas<="-------";
		end case;
End Process;
End logica;