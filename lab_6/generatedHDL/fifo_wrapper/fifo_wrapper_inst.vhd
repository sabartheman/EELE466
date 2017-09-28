	component fifo_wrapper is
		port (
			clk_clk                                      : in  std_logic                     := 'X';             -- clk
			reset_reset_n                                : in  std_logic                     := 'X';             -- reset_n
			fifo_wrapper_0_conduit_end_writebyteenable_n : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- writebyteenable_n
			fifo_wrapper_0_conduit_end_readdata          : out std_logic_vector(3 downto 0);                     -- readdata
			fifo_wrapper_0_s1_address                    : in  std_logic_vector(4 downto 0)  := (others => 'X'); -- address
			fifo_wrapper_0_s1_write                      : in  std_logic                     := 'X';             -- write
			fifo_wrapper_0_s1_writedata                  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			fifo_wrapper_0_s1_read                       : in  std_logic                     := 'X';             -- read
			fifo_wrapper_0_s1_readdata                   : out std_logic_vector(31 downto 0)                     -- readdata
		);
	end component fifo_wrapper;

	u0 : component fifo_wrapper
		port map (
			clk_clk                                      => CONNECTED_TO_clk_clk,                                      --                        clk.clk
			reset_reset_n                                => CONNECTED_TO_reset_reset_n,                                --                      reset.reset_n
			fifo_wrapper_0_conduit_end_writebyteenable_n => CONNECTED_TO_fifo_wrapper_0_conduit_end_writebyteenable_n, -- fifo_wrapper_0_conduit_end.writebyteenable_n
			fifo_wrapper_0_conduit_end_readdata          => CONNECTED_TO_fifo_wrapper_0_conduit_end_readdata,          --                           .readdata
			fifo_wrapper_0_s1_address                    => CONNECTED_TO_fifo_wrapper_0_s1_address,                    --          fifo_wrapper_0_s1.address
			fifo_wrapper_0_s1_write                      => CONNECTED_TO_fifo_wrapper_0_s1_write,                      --                           .write
			fifo_wrapper_0_s1_writedata                  => CONNECTED_TO_fifo_wrapper_0_s1_writedata,                  --                           .writedata
			fifo_wrapper_0_s1_read                       => CONNECTED_TO_fifo_wrapper_0_s1_read,                       --                           .read
			fifo_wrapper_0_s1_readdata                   => CONNECTED_TO_fifo_wrapper_0_s1_readdata                    --                           .readdata
		);

