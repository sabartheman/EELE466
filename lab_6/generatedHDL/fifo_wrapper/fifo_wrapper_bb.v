
module fifo_wrapper (
	clk_clk,
	reset_reset_n,
	fifo_wrapper_0_conduit_end_writebyteenable_n,
	fifo_wrapper_0_conduit_end_readdata,
	fifo_wrapper_0_s1_address,
	fifo_wrapper_0_s1_write,
	fifo_wrapper_0_s1_writedata,
	fifo_wrapper_0_s1_read,
	fifo_wrapper_0_s1_readdata);	

	input		clk_clk;
	input		reset_reset_n;
	input	[3:0]	fifo_wrapper_0_conduit_end_writebyteenable_n;
	output	[3:0]	fifo_wrapper_0_conduit_end_readdata;
	input	[4:0]	fifo_wrapper_0_s1_address;
	input		fifo_wrapper_0_s1_write;
	input	[31:0]	fifo_wrapper_0_s1_writedata;
	input		fifo_wrapper_0_s1_read;
	output	[31:0]	fifo_wrapper_0_s1_readdata;
endmodule
