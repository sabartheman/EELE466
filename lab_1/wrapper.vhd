library ieee;
use ieee.std_logic_1164.all;



entity wrapper is 
    port(
        Clock        :in std_logic;
        X,Y            :in std_logic_vector(7 downto 0);    
        Subtract    :in std_logic_vector(1 downto 0);
        Sum            :out std_logic_vector(7 downto 0);
        Carryout    :out std_logic
        );

end entity;



architecture wrapper_arch of wrapper is

component bit_ripple
   port(	
	A,B	:in std_logic_vector(7 downto 0);
	sub	:in std_logic_vector (1 downto 0);
	S	:out std_logic_vector(7 downto 0);
	Cout 	:out std_logic
	);
end component;

    signal A,B    :std_logic_vector (7 downto 0);
    signal S      :std_logic_vector (1 downto 0);

begin 

    process(Clock)
        begin

        if(rising_edge(Clock)) then
            A <= X;
            B <= y;
            S <= Subtract;

        end if;
    end process;

    A1 : bit_ripple port map(A,B,S,Sum,Carryout);

end architecture;
