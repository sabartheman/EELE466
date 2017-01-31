library ieee;
use ieee.std_logic_1164.all;

entity eightbit_cla is
	port(A,B		:in  std_logic_vector(7 downto 0);
		 Cin,Sub	:in  std_logic;
		 Sum		:out std_logic_vector(7 downto 0);
		 Cout		:out std_logic
		 );
end entity;

architecture eightbit_cla_arch of eightbit_cla is

component fourbit_cla 
	port(A,B 	:in  std_logic_vector(3 downto 0);
	     Sum	:out std_logic_vector(3 downto 0);
	     Cout	:out std_logic);
end component;

	signal Chout		:std_logic;		--carries the bit from carry out from the									--first 4bit_adder to the second
	signal X  			:std_logic_vector(7 downto 0);
	signal sumu,suml	:std_logic_vector(3 downto 0);


begin

	X(0) <= B(0) XOR sub(0);
	X(1) <= B(1) XOR sub(0);
	X(2) <= B(2) XOR sub(0);
	X(3) <= B(3) XOR sub(0);
	X(4) <= B(4) XOR sub(0);
	X(5) <= B(5) XOR sub(0);
	X(6) <= B(6) XOR sub(0);
	X(7) <= B(7) XOR sub(0);


	A0 : fourbit_cla port map(A(3 downto 0), X(3 downto 0),Sub(0),Sum(3 downto 0),Chout);
	A1 : fourbit_cla port map(A(7 downto 4), X(7 downto 4), Chout,Sum(7 downto 4), Cout);


end architecture;

