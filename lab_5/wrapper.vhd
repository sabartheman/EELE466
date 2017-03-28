entity wrapper is
	port(

		clk					:in std_logic;
		reset_n				:in std_logic;

		------------------------------
		-- sink
		------------------------------
		ast_sink_data		:in  std_logic_vector(31 downto 0);
		ast_sink_error		:in  std_logic_vector(1 downto 0);
		ast_sink_valid		:in  std_logic;

		------------------------------
		-- source
		------------------------------
		ast_source_data		:out std_logic_vector(31 downto 0);
		ast_source_error	:out std_logic_vector(1 downto 0);
		ast_source_valid	:out std_logic;

		------------------------------
		-- MMS
		------------------------------
		avs_s1_address		:in  std_logic_vector(7 downto 0);
		avs_s1_write 		:in  std_logic;
		avs_s1_writedata    :in  std_logic_vector(31 downto 0);
		avs_s1_read         :out std_logic;
		avs_s1_readdata		:out std_logic_vector(31 downto 0);

		------------------------------
		-- conduit
		------------------------------
		external_in			:in  std_logic_vector(3 downto 0);
		external_out		:out std_logic_vector(3 downto 0)
		);

	end entity;


	architecture wrapper_arch of wrapper is	
	
	--internal registers
	signal reg1,reg2,reg3,reg4  :std_logic_vector(31 downto 0);

	--internal signals for handling data
	signal data_in, data_out	:std_logic_vector(31 downto 0);


	begin
		
	--process to write to the registers.
	register_write : process(rising_edge(clk) && reset_n = '1' && avs_s1_write = '1')

	begin
		if(rising_edge(clk) && reset_n = '1' && avs_s1_write = '1') then
			case avs_s1_address is
				when "00" => reg0 <= avs_s1_writedata;

				when "01" => reg1 <= avs_s1_writedata;

				when "10" => reg2 <= avs_s1_writedata;

				when "11" => reg3 <= avs_s1_writedata;
			end case;
		end if;

	end register_write;


	--process to read from the registers
	register_read  : process(clk,avs_s1_write)

	begin 

		if(rising_edge(clk) && reset_n = '1' && avs_s1_read = '1')then
			case avs_s1_address is
				when "00" => avs_s1_readdata <= reg0;

				when "01" => avs_s1_readdata <= reg1;

				when "10" => avs_s1_readdata <= reg2;

				when "11" => avs_s1_readdata <= reg3;
			end case;
		end if;

	end register_read;

	valid_sink : process(clk, ast_sink_valid)

	begin

		if(rising_edge(clk) && ast_sink_valid = '1') then
			data_in <= ast_sink_data;
			ast_source_data <= data_out;
		end if;

	end valid_sink;


		
	end architecture; -- arch