Library ieee;
Use ieee.std_logic_1164.all;

Entity shift_reg is
	Port (serial_input,reset_n,clk,s_l  :  in  std_logic; 
			p             :  in  std_logic_vector(3 downto 0); 
			q             :  out std_logic_vector(3 downto 0));
End shift_reg;

Architecture logic of shift_reg is
   Signal n  : std_logic_vector(3 downto 0);
	Signal m  : std_logic_vector(3 downto 0);
	Component mux2a1
	      Port (X,Y,Sel :  in std_logic;
		         S       : out std_logic);
	End Component;
	Component ff_d
       Port (clk,resetn,d  :  in std_logic; 
				 q             : out std_logic);
	End Component;	
Begin
	mux1: mux2a1 Port Map (serial_input,p(3),S_l,n(3));
	flip1: ff_d Port Map (clk,reset_n,n(3),m(3));
	mux2: mux2a1 Port Map (m(3),p(2),S_l,n(2));
	flip2: ff_d Port Map (clk,reset_n,n(2),m(2));
	mux3: mux2a1 Port Map (m(2),p(1),S_l,n(1));
	flip3: ff_d Port Map (clk,reset_n,n(1),m(1));
	mux4: mux2a1 Port Map (m(1),p(0),S_l,n(0));
	flip4: ff_d Port Map (clk,reset_n,n(0),m(0));
	q<=m;
End logic;
