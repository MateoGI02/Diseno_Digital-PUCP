Library ieee;
Use ieee.std_logic_1164.all;

Entity seguidor_moore is
	Port (reset_n, clk, P, L, R : In Std_logic;
			M1a, M2a, M2l, M2r : Out Std_logic);
End seguidor_moore;

Architecture logic of seguidor_moore is
Type estados is (NSM, SMD, SMI, SMF);
Signal estado_presente, estado_siguiente : estados;
Begin
-- estados--
Process (reset_n, clk) 
Begin
	If reset_n='0' then
		estado_presente <= NSM;
	Elsif (rising_edge(clk)) then
		estado_presente <= estado_siguiente;
	End If;
End Process;
--logica estados y salidas--
Process (estado_presente, P, L, R)
Begin
	Case estado_presente Is
		When NSM=>
			If (P='0') then
				estado_siguiente <= NSM ;
			ElsIf ( P='1' and L='0' and R='0' ) then
				estado_siguiente <= NSM ;
			Elsif ( P='1' and L='0' and R='1' ) then
				estado_siguiente <= SMD ;
			Elsif ( P='1' and L='1' and R='0' ) then
				estado_siguiente <= SMI ;
			Elsif ( P='1' and L='1' and R='1' ) then
				estado_siguiente <= SMF ;
			End If;
			M1a <= '0' ;
			M2a <= '0' ;
			M2l <= '0' ;
			M2r <= '0' ;
		When SMD=>
			If (P='0') then
				estado_siguiente <= NSM ;
			ElsIf ( P='1' and L='0' and R='0' ) then
				estado_siguiente <= NSM ;
			Elsif ( P='1' and L='0' and R='1' ) then
				estado_siguiente <= SMD ;
			Elsif ( P='1' and L='1' and R='0' ) then
				estado_siguiente <= SMI ;
			Elsif ( P='1' and L='1' and R='1' ) then
				estado_siguiente <= SMF ;
			End If;
			M1a <= '1' ;
			M2a <= '1' ;
			M2l <= '0' ;
			M2r <= '1' ;	
		When SMI=>
			If (P='0') then
				estado_siguiente <= NSM ;
			ElsIf ( P='1' and L='0' and R='0' ) then
				estado_siguiente <= NSM ;
			Elsif ( P='1' and L='0' and R='1' ) then
				estado_siguiente <= SMD ;
			Elsif ( P='1' and L='1' and R='0' ) then
				estado_siguiente <= SMI ;
			Elsif ( P='1' and L='1' and R='1' ) then
				estado_siguiente <= SMF ;
			End If;
			M1a <= '1' ;
			M2a <= '1' ;
			M2l <= '1' ;
			M2r <= '0' ;
		When SMF=>
			If (P='0') then
				estado_siguiente <= NSM ;
			ElsIf ( P='1' and L='0' and R='0' ) then
				estado_siguiente <= NSM ;
			Elsif ( P='1' and L='0' and R='1' ) then
				estado_siguiente <= SMD ;
			Elsif ( P='1' and L='1' and R='0' ) then
				estado_siguiente <= SMI ;
			Elsif ( P='1' and L='1' and R='1' ) then
				estado_siguiente <= SMF ;
			End If;
			M1a <= '1' ;
			M2a <= '0' ;
			M2l <= '0' ;
			M2r <= '0' ;
	End case;			
End Process;
End logic;


