library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Newtons_method is 
	port(
	clk				:in std_logic;
	Xin		 		:in std_logic_vector(27 downto 0);
	Yin		 		:in std_logic_vector(27 downto 0);
	Yguessout 		:out std_logic_vector(27 downto 0)	
	);
end entity;



architecture Newtons_method_arch of Newtons_method is 


   constant half	      :unsigned(27  downto 0) := "0000000000000010000000000000";  --.5
   constant three       :unsigned(83  downto 0) := "000000000000000000000000000000000000000011000000000000000000000000000000000000000000"; --3

	signal Yguessouttemp :std_logic_vector(139 downto 0);



begin 



Yguessouttemp <= std_logic_vector(unsigned(Yin)*(three - (unsigned(Xin)*(unsigned(Yin)*unsigned(Yin))))*half srl 1);

Yguessout <= (Yguessouttemp(82 downto 55));

--chopping downto to proper size


end architecture;