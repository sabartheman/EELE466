	fifo_wrapper u0 (
		.clk_clk                                      (<connected-to-clk_clk>),                                      //                        clk.clk
		.reset_reset_n                                (<connected-to-reset_reset_n>),                                //                      reset.reset_n
		.fifo_wrapper_0_conduit_end_writebyteenable_n (<connected-to-fifo_wrapper_0_conduit_end_writebyteenable_n>), // fifo_wrapper_0_conduit_end.writebyteenable_n
		.fifo_wrapper_0_conduit_end_readdata          (<connected-to-fifo_wrapper_0_conduit_end_readdata>),          //                           .readdata
		.fifo_wrapper_0_s1_address                    (<connected-to-fifo_wrapper_0_s1_address>),                    //          fifo_wrapper_0_s1.address
		.fifo_wrapper_0_s1_write                      (<connected-to-fifo_wrapper_0_s1_write>),                      //                           .write
		.fifo_wrapper_0_s1_writedata                  (<connected-to-fifo_wrapper_0_s1_writedata>),                  //                           .writedata
		.fifo_wrapper_0_s1_read                       (<connected-to-fifo_wrapper_0_s1_read>),                       //                           .read
		.fifo_wrapper_0_s1_readdata                   (<connected-to-fifo_wrapper_0_s1_readdata>)                    //                           .readdata
	);

