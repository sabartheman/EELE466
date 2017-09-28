library ieee;
use ieee.std_logic_1164.all;


entity wrapper is
	port(

		clk						:in std_logic;
		reset_n					:in std_logic;

		------------------------------
		-- sink
		------------------------------
		ast_sink_data			:in  std_logic_vector(31 downto 0);
		ast_sink_error			:in  std_logic_vector(1 downto 0);
		ast_sink_valid			:in  std_logic;

		------------------------------
		-- source
		------------------------------
		ast_source_data			:out std_logic_vector(31 downto 0);
		ast_source_error		:out std_logic_vector(1 downto 0);
		ast_source_valid		:out std_logic;

		------------------------------
		-- MMS
		------------------------------
		avs_s1_address		   	:in  std_logic_vector(4 downto 0);
		avs_s1_write 		  	:in  std_logic;
		avs_s1_writedata    	:in  std_logic_vector(31 downto 0);
		avs_s1_read        	:in  std_logic;
		avs_s1_readdata		:out std_logic_vector(31 downto 0);

		------------------------------
		-- conduit
		------------------------------
		external_in				:in  std_logic_vector(3 downto 0);
		external_out			:out std_logic_vector(3 downto 0)
		);

	end entity;


architecture wrapper_arch of wrapper is	
	

	--------------------------------------------------------
	---- component(FIFO)
	--------------------------------------------------------
	
	component FIFO
		PORT
		(
			clock		: IN  STD_LOGIC ;
			data		: IN  STD_LOGIC_VECTOR (12 DOWNTO 0);
			rdreq		: IN  STD_LOGIC ;
			wrreq		: IN  STD_LOGIC ;
			empty		: OUT STD_LOGIC ;
			full		: OUT STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (12 DOWNTO 0)
		);
	end component;
	
	
		
		
	--------------------------------------------------------
	---- shadow registers
	--------------------------------------------------------
	
	signal reg00_pll_ctrl0		:std_logic_vector(7 downto 0);
	signal reg01_pll_ctrl1		:std_logic_vector(7 downto 0);
	signal reg02_DAC_ctrl0		:std_logic_vector(7 downto 0);
	signal reg03_DAC_ctrl1		:std_logic_vector(7 downto 0);
	signal reg04_DAC_ctrl2		:std_logic_vector(7 downto 0);
	signal reg05_DAC_mutes		:std_logic_vector(7 downto 0);
	signal reg06_DAC_L1_VOL		:std_logic_vector(7 downto 0);
	signal reg07_DAC_R1_VOL		:std_logic_vector(7 downto 0);
	signal reg08_DAC_L2_VOL		:std_logic_vector(7 downto 0);
	signal reg09_DAC_R2_VOL		:std_logic_vector(7 downto 0);
	signal reg10_DAC_L3_VOL		:std_logic_vector(7 downto 0);
	signal reg11_DAC_R3_VOL		:std_logic_vector(7 downto 0);
	signal reg12_DAC_L4_VOL		:std_logic_vector(7 downto 0);
	signal reg13_DAC_R4_VOL		:std_logic_vector(7 downto 0);
	signal reg14_ADC_ctrl0		:std_logic_vector(7 downto 0);
	signal reg15_ADC_ctrl1		:std_logic_vector(7 downto 0);
	signal reg16_ADC_ctrl2		:std_logic_vector(7 downto 0);
	
	
	--------------------------------------------------------
	--internal signals for handling data
	--------------------------------------------------------
	
	
	signal dummy					: std_logic;
	signal fullbit, emptybit, readbit, writebit  	: std_logic;
	signal data_in, data_out			: std_logic_vector(31 downto 0);
	signal FIFO_data, FIFOoutput			: std_logic_vector(12 downto 0);


	begin
	
	FIFO_data <= avs_s1_address & avs_s1_writedata(7 downto 0);

	------------------------------------------------------------
	--   Shadow register Write
	------------------------------------------------------------
	A0 : FIFO port map (clk, FIFO_data, readbit,writebit,emptybit,fullbit,FIFOoutput);


	register_write : process(clk, avs_s1_write)

	begin
	
		if(rising_edge(clk) AND avs_s1_write = '1') then
			case avs_s1_address is
			
			   --writing to the shadow registers here
				when "00000" => reg00_pll_ctrl0  <= avs_s1_writedata(7 downto 0);

				when "00001" => reg01_pll_ctrl1  <= avs_s1_writedata(7 downto 0);

				when "00010" => reg02_DAC_ctrl0  <= avs_s1_writedata(7 downto 0);

				when "00011" => reg03_DAC_ctrl1  <= avs_s1_writedata(7 downto 0);
	 
				when "00100" => reg04_DAC_ctrl2  <= avs_s1_writedata(7 downto 0);

				when "00101" => reg05_DAC_mutes  <= avs_s1_writedata(7 downto 0);

				when "00110" => reg06_DAC_L1_VOL <= avs_s1_writedata(7 downto 0);

				when "00111" => reg07_DAC_R1_VOL <= avs_s1_writedata(7 downto 0);

				when "01000" => reg08_DAC_L2_VOL <= avs_s1_writedata(7 downto 0);

				when "01001" => reg09_DAC_R2_VOL <= avs_s1_writedata(7 downto 0);

				when "01010" => reg10_DAC_L3_VOL <= avs_s1_writedata(7 downto 0);

				when "01011" => reg11_DAC_R3_VOL <= avs_s1_writedata(7 downto 0);
	
				when "01100" => reg12_DAC_L4_VOL <= avs_s1_writedata(7 downto 0);

				when "01101" => reg13_DAC_R4_VOL <= avs_s1_writedata(7 downto 0);

				when "01110" => reg14_ADC_ctrl0  <= avs_s1_writedata(7 downto 0);

				when "01111" => reg15_ADC_ctrl1  <= avs_s1_writedata(7 downto 0);
				
				when "10000" => reg16_ADC_ctrl2  <= avs_s1_writedata(7 downto 0);
	

				
				when others => dummy <= '0';
			end case;
		end if;

	end process;
	
	
	------------------------------------------------------------
	--   FIFO Write
	------------------------------------------------------------
	
	


	--needs to be finished.
	FIFO_write : process(clk, avs_s1_write,fullbit)
	
	begin
	
		if(rising_edge(clk) AND avs_s1_write = '1' AND fullbit = '1') then
			writebit <= '0';
			readbit  <= '0';
		elsif(rising_edge(clk) AND avs_s1_write = '1') then 
			writebit <= '1';
			readbit  <= '0';	
		end if;

	end process;


	
	
	
	
	
	---------------------------------------------------
	--  Shadow register Read
	---------------------------------------------------
	
	register_read  : process(clk,avs_s1_write)

	begin 

		if(rising_edge(clk) AND avs_s1_read = '1')then
			case avs_s1_address is
				when "00000" => avs_s1_readdata(7 downto 0)  <= reg00_pll_ctrl0;  

				when "00001" => avs_s1_readdata(7 downto 0)  <= reg01_pll_ctrl1;

				when "00010" => avs_s1_readdata(7 downto 0)  <= reg02_DAC_ctrl0;

				when "00011" => avs_s1_readdata(7 downto 0)  <= reg03_DAC_ctrl1;
	 
				when "00100" => avs_s1_readdata(7 downto 0)  <= reg04_DAC_ctrl2;

				when "00101" => avs_s1_readdata(7 downto 0)  <= reg05_DAC_mutes;

				when "00110" => avs_s1_readdata(7 downto 0)  <= reg06_DAC_L1_VOL;

				when "00111" => avs_s1_readdata(7 downto 0)  <= reg07_DAC_R1_VOL;

				when "01000" => avs_s1_readdata(7 downto 0)  <= reg08_DAC_L2_VOL;

				when "01001" => avs_s1_readdata(7 downto 0)  <= reg09_DAC_R2_VOL;

				when "01010" => avs_s1_readdata(7 downto 0)  <= reg10_DAC_L3_VOL;

				when "01011" => avs_s1_readdata(7 downto 0)  <= reg11_DAC_R3_VOL;
	
				when "01100" => avs_s1_readdata(7 downto 0)  <= reg12_DAC_L4_VOL;

				when "01101" => avs_s1_readdata(7 downto 0)  <= reg13_DAC_R4_VOL;

				when "01110" => avs_s1_readdata(7 downto 0)  <= reg14_ADC_ctrl0;

				when "01111" => avs_s1_readdata(7 downto 0)  <= reg15_ADC_ctrl1;
				
				when "10000" => avs_s1_readdata(7 downto 0)  <= reg16_ADC_ctrl2;
				when others => dummy <= '0';
				end case;
		end if;
		--making sure that the values for the upper bits are 0
		avs_s1_readdata(31 downto 8) <= "000000000000000000000000";
		
	end process;

	
	------------------------------------------------------------
	--   FIFO Read
	------------------------------------------------------------
	
	--needs to be finished.
	FIFO_read : process(clk, avs_s1_write,emptybit)
	
	begin
		
		if(rising_edge(clk) AND avs_s1_read  = '1' AND emptybit = '1') then
			readbit  <= '0';
			writebit <= '0';
		elsif(rising_edge(clk) AND avs_s1_read = '1') then
			readbit  <= '1';
			writebit <= '0';
		end if;

	end process;

	
	
	
	valid_sink : process(clk, ast_sink_valid)

	begin

		if(rising_edge(clk) AND ast_sink_valid = '1') then
			data_in <= ast_sink_data;
			ast_source_data <= data_out;
		end if;

	end process;


		
	end architecture; -- arch