Library ieee;
Use ieee.std_logic_1164.all;

Entity mux2a1 is
	      Port (X,Y,Sel :  in std_logic;
		         S       : out std_logic);
End mux2a1;

Architecture logic1 of mux2a1 is
Begin
		Process (Sel,X,Y) 
			BEGIN
		      If Sel='0' THEN 
			    S <= X;
		      ELSIF Sel = '1' THEN 
			    S <= Y; 
				Else
				 S <= '-';
		      End If; 
	   End Process;
End logic1;
