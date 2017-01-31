library ieee;
use ieee.std_logic_1164.all;


entity cla_bottom_adder is
	port(A,B,Cin	:in  std_logic;
		Sum,P,G,Cout 	:out std_logic);

end entity;

architecture cla_bottom_adder_arch of cla_bottom_adder is 

--maybe define a time constant? --snider question
--	  constant tdelay : time := 1 ns;

begin

	Sum <= (A XOR B XOR Cin);
	P 	<= (A OR B);
	G 	<= (A AND B);
	Cout <= (A and B) OR (B AND Cin) OR (A AND Cin);


end architecture;