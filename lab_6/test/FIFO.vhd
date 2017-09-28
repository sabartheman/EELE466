library ieee;
use ieee.std_logic_1164.all;


entity FIFO is
	port(	clk 		:in std_logic;
		dataIn		:in std_logic_vector(12 downnto 0);
		writereg	:in std_logic;
		readreg		:in std_logic;
		dataOut		:out std_logic_vector(12 downto 0);
		empty		:out std_logic;
		full		:out std_logic;
		scl		:in std_logic
	);
end entity;

architecture FIFO_arch of FIFO is

begin 


end architecture;