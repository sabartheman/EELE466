library ieee;
use ieee.std_logic_1164.all;

entity bit_ripple is
	port(
		A,B,	:in std_logic;
		sub		:in std_logic;
		S       :out std_logic_vector(7 downto 0);
		Cout    :out std_logic
	);

end entity;


architecture bit_ripple_arch of bit_ripple is

	component full_adder
		port(
			A,B,Cin		:in  std_logic;
			Cout,S      :out std_logic
		);

	end component;

	signal S1,S2,S3,S4,S5,S6,S7,S8	:std_logic;
	signal C1,C2,C3,C4,C5,C6,C7,C8	:std_logic;
	signal X1,X2,X3,X4,X5,X6,X7,X8	:std_logic;

begin

	



	A0 : full_adder port map(A(0),B(0),sub,S1,C1);
	A0 : full_adder port map(A(1),B(1),C1,S2,C2);
	A0 : full_adder port map(A(2),B(2),C2,S3,C3);
	A0 : full_adder port map(A(3),B(3),C3,S4,C4);
	A0 : full_adder port map(A(4),B(4),C4,S5,C5);
	A0 : full_adder port map(A(5),B(5),C5,S6,C6);
	A0 : full_adder port map(A(6),B(6),C6,S7,C7);
	A0 : full_adder port map(A(7),B(7),C7,S8,C8);

	

	S <= S1 & S2 & S3 & S4 & S5 & S6 & S7 & S8;		--sumation of the 8 bit adder
	Cout <= c8;


end architecture;