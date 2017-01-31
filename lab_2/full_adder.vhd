library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
	port(
	A,B,Cin		:in  std_logic;
	Cout, s     :out std_logic
	);

	end entity;


architecture full_adder_arch of full_adder is

begin

s    <= (A xor B) xor Cin;
Cout <= (A and B) OR (B AND Cin) OR (A AND Cin);

end architecture;