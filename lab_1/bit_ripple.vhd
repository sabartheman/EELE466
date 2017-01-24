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

	signal C1,C2,C3,C4,C5,C6,C7,C8	:std_logic;
	signal X1,X2,X3,X4,X5,X6,X7,X8	:std_logic;

begin

	X1 <= B(0) XOR sub;
	x2 <= B(1) XOR sub;
	X3 <= B(2) XOR sub;
	X4 <= B(3) XOR sub;
	X5 <= B(4) XOR sub;
	X6 <= B(5) XOR sub;
	X7 <= B(6) XOR sub;
	X8 <= B(7) XOR sub;



	A0 : full_adder port map(A(0),X1,sub,S1,C1);
	A1 : full_adder port map(A(1),X2,C1,S2,C2);
	A2 : full_adder port map(A(2),X3,C2,S3,C3);
	A3 : full_adder port map(A(3),X4,C3,S4,C4);
	A4 : full_adder port map(A(4),X5,C4,S5,C5);
	A5 : full_adder port map(A(5),X6,C5,S6,C6);
	A6 : full_adder port map(A(6),X7,C6,S7,C7);
	A7 : full_adder port map(A(7),X8,C7,S8,C8);

	Cout <= c8;


end architecture;