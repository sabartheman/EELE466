library ieee;
use ieee.std_logic_1164.all;


entity fourbit_cla is 

	port(A,B 	:in  std_logic_vector(3 downto 0);
		 Sum	:out std_logic_vector(3 downto 0);
		 Cout	:out std_logic);

end entity;


architecture fourbit_cla_arch of fourbit_cla is

component cla_bottom_adder
	port(A,B,Cin	:in  std_logic;
		Sum,P,G 	:out std_logic);
end component;


	signal P,G 				:std_logic_vector(3 downto 0);    --Propagation and Generation bits
	signal C0,C1,C2,C3 		:std_logic; 				   	  --predicted carrybit 

begin

--The logic of predicting the carry bits for each adder.
--Have to ask Prof. Snider if you can just variable these through or not.
--for now just have it listed out as not.


	C1 = G0 OR (P0 AND C0);
	C2 = G1 OR (P1 AND (G0 OR (P0 AND C0)));
	C3 = G2 OR (P2 AND (G1 OR (P1 AND (G0 OR (P0 AND C0)))));
	C4 = G3 OR (P3 AND (G2 OR (P2 AND (G1 OR (P1 AND (G0 OR (P0 AND C0)))))));

	A0 : cla_bottom_adder port map(A(0),B(0),C0,Sum(0),P(0),G(0));
	A1 : cla_bottom_adder port map(A(1),B(1),C1,Sum(1),P(1),G(1));
	A2 : cla_bottom_adder port map(A(2),B(2),C2,Sum(2),P(2),G(2));
	A3 : cla_bottom_adder port map(A(3),B(3),C3,Sum(3),P(3),G(3));


end architecture;