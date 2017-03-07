library ieee;
use ieee.std_logic_1164.all;

entity bit_ripple is
	port(	
	A,B	:in std_logic_vector(7 downto 0);
	sub	:in std_logic_vector (1 downto 0);
	S	:out std_logic_vector(7 downto 0);
	Cout 	:out std_logic
	);

end entity;

architecture bit_ripple_arch of bit_ripple is

component full_adder
	port(
	A,B,Cin		:in  std_logic;
	Cout, S     	:out std_logic
	);
end component;

signal C1,C2,C3,C4,C5,C6,C7,C8	:std_logic;  --Carry bits for each of the adders
signal X1,X2,X3,X4,X5,X6,X7,X8 :std_logic;

begin 
	X1 <= B(0) XOR sub(0);
	X2 <= B(1) XOR sub(0);
	X3 <= B(2) XOR sub(0);
	X4 <= B(3) XOR sub(0);
	X5 <= B(4) XOR sub(0);
	X6 <= B(5) XOR sub(0);
	X7 <= B(6) XOR sub(0);
	X8 <= B(7) XOR sub(0);
	
	
	A0: full_adder port map(A(0),X1,sub(0),C1,S(0));	--1
	A1: full_adder port map(A(1),X2,C1,C2,S(1));	--2
	A2: full_adder port map(A(2),X3,C2,C3,S(2));	--3
	A3: full_adder port map(A(3),X4,C3,C4,S(3));	--4
	A4: full_adder port map(A(4),X5,C4,C5,S(4));	--5	
	A5: full_adder port map(A(5),X6,C5,C6,S(5));	--6
	A6: full_adder port map(A(6),X7,C6,C7,S(6));	--7
	A7: full_adder port map(A(7),X8,C7,C8,S(7));	
--8
	
	Cout <= C8;					--the carry out
			

end architecture;