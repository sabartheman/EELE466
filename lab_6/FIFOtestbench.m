function FIFOtestbench

%------------------------------------------------------------
% Note: it appears that the cosimWizard needs to be re-run if
% this is moved to a different machine (VHDL needs to be
% recompile in ModelSim).
%------------------------------------------------------------

% HdlCosimulation System Object creation (this Matlab function was created
% by the cosimWizard).
shadow_reg_hdl = hdlcosim_wrapper;

% Simulate for Nclock rising edges (this will be the length of the
% simulation)
Nclock_edges = 1;

for clki=1:Nclock_edges
    %-----------------------------------------------------------------
    % Create our input vector at each clock edge, which must be a
    % fixed-point data type.  The word width of the fixed point data type
    % must match the width of the std_logic_vector input.
    %-----------------------------------------------------------------
    %fixed_word_width     = 8;  % width of input to component
    %fixed_point_value    = 0;     % choose a random input values over an appropriate range
    %fixed_point_signed   = 1;  % unsiged = 0, signed = 1;
    %fixed_point_fraction = 0;  % fraction width (location of binary point within word)
    
    %inputs
    %   clk,reset_n, ast_sink_data, ast_sink_error, ast_sink_valid,
    %   avs_s1_address, avs_s1_write, avs_s1_writedata, avs_s1_read,
    %   external_in
    
    %example of input
    %input_vector1 = fi(fixed_point_value, fixed_point_signed, fixed_word_width, fixed_point_fraction); % make the input a fixed point data type
    ast_sink_data  = fi(1, 0, 32, 0);
    ast_sink_error = fi(0, 0, 2, 0);
    ast_sink_valid = fi(1, 0, 1, 0);
    
    
    % memory mapped slave
    avs_s1_address      = fi(0, 0, 5, 0);        %defines which register is written to
    
    avs_s1_writedata    = fi(2, 0, 32, 0);       %this value is the data being written to the registers
                    
    % made to read from the registers
    %
    avs_s1_read         = fi(0, 0, 1, 0);        %if we want to read using the MMS
    
    extn_in             = fi(0, 0, 4, 0);       %don't care about this, just a temp value
    
    AD_reg_busy         = fi(0, 0, 1, 0);       %matlab pretending to be the AD1939 saying that it is busy 
                                                %with writing to the registers when high
    
    
    
    
    %a for loop to write to all of the registers.
    %the FIFO will start to push values out once it has data in the q line.  
    for i =0:16
        AD_reg_busy      = fi(0, 0, 1, 0);
        avs_s1_write     = fi(1, 0, 1, 0);
        avs_s1_read      = fi(0, 0, 1, 0);
        avs_s1_address   = fi(i, 0, 5, 0);
        avs_s1_writedata = fi(i+5, 0, 32, 0);
        [source_data, source_error, source_valid, read_data, extn_out, FIFO_data_out, FIFO_addr_out, AD_start_read] = step(shadow_reg_hdl,ast_sink_data,ast_sink_error,ast_sink_valid,avs_s1_address,avs_s1_write,avs_s1_writedata,avs_s1_read,extn_in,AD_reg_busy);
        
        
        %when the state machine in the wrapper.vhd file tells the AD1939
        %that it wants to write to it from the FIFO the code below
        %simulates what the AD1939 could possibly do.
        if(AD_start_read == 1)
            AD_reg_busy         = fi(1, 0, 1, 0);
            avs_s1_write        = fi(0, 0, 1, 0);
            [source_data, source_error, source_valid, read_data, extn_out, FIFO_data_out, FIFO_addr_out, AD_start_read] = step(shadow_reg_hdl,ast_sink_data,ast_sink_error,ast_sink_valid,avs_s1_address,avs_s1_write,avs_s1_writedata,avs_s1_read,extn_in,AD_reg_busy);
        
            AD_reg_busy         = fi(1, 0, 1, 0);
            avs_s1_write        = fi(0, 0, 1, 0);
            [source_data, source_error, source_valid, read_data, extn_out, FIFO_data_out, FIFO_addr_out, AD_start_read] = step(shadow_reg_hdl,ast_sink_data,ast_sink_error,ast_sink_valid,avs_s1_address,avs_s1_write,avs_s1_writedata,avs_s1_read,extn_in,AD_reg_busy);
            
            AD_reg_busy         = fi(1, 0, 1, 0);
            avs_s1_write        = fi(0, 0, 1, 0);
            [source_data, source_error, source_valid, read_data, extn_out, FIFO_data_out, FIFO_addr_out, AD_start_read] = step(shadow_reg_hdl,ast_sink_data,ast_sink_error,ast_sink_valid,avs_s1_address,avs_s1_write,avs_s1_writedata,avs_s1_read,extn_in,AD_reg_busy);
        
            
        %if there is no start_read signal then the loop continues like
        %normal
        else
            AD_reg_busy         = fi(0, 0, 1, 0);
            avs_s1_write        = fi(0, 0, 1, 0);
            [source_data, source_error, source_valid, read_data, extn_out, FIFO_data_out, FIFO_addr_out, AD_start_read] = step(shadow_reg_hdl,ast_sink_data,ast_sink_error,ast_sink_valid,avs_s1_address,avs_s1_write,avs_s1_writedata,avs_s1_read,extn_in,AD_reg_busy);
        end
        
    end
    
    
    
    %this part of the code just lets the AD1939 finish pulling data from
    %the FIFO, the process to unload the FIFO with all 17 register values
    %takes longer since there is a AD1939_Busy signal.
    for i=0:50
        
        if(AD_start_read == 1)
            AD_reg_busy         = fi(1, 0, 1, 0);
            avs_s1_write        = fi(0, 0, 1, 0);
            [source_data, source_error, source_valid, read_data, extn_out, FIFO_data_out, FIFO_addr_out, AD_start_read] = step(shadow_reg_hdl,ast_sink_data,ast_sink_error,ast_sink_valid,avs_s1_address,avs_s1_write,avs_s1_writedata,avs_s1_read,extn_in,AD_reg_busy);
        
            AD_reg_busy         = fi(1, 0, 1, 0);
            avs_s1_write        = fi(0, 0, 1, 0);
            [source_data, source_error, source_valid, read_data, extn_out, FIFO_data_out, FIFO_addr_out, AD_start_read] = step(shadow_reg_hdl,ast_sink_data,ast_sink_error,ast_sink_valid,avs_s1_address,avs_s1_write,avs_s1_writedata,avs_s1_read,extn_in,AD_reg_busy);
            
            AD_reg_busy         = fi(1, 0, 1, 0);
            avs_s1_write        = fi(0, 0, 1, 0);
            [source_data, source_error, source_valid, read_data, extn_out, FIFO_data_out, FIFO_addr_out, AD_start_read] = step(shadow_reg_hdl,ast_sink_data,ast_sink_error,ast_sink_valid,avs_s1_address,avs_s1_write,avs_s1_writedata,avs_s1_read,extn_in,AD_reg_busy);
        
            
        
        else
            AD_reg_busy         = fi(0, 0, 1, 0);
            avs_s1_write        = fi(0, 0, 1, 0);
            [source_data, source_error, source_valid, read_data, extn_out, FIFO_data_out, FIFO_addr_out, AD_start_read] = step(shadow_reg_hdl,ast_sink_data,ast_sink_error,ast_sink_valid,avs_s1_address,avs_s1_write,avs_s1_writedata,avs_s1_read,extn_in,AD_reg_busy);
        end
        
        
    end
    

    %input_history{clki} = input_vector1;  % capture the inputs
    
    %-----------------------------------------------------------------
    % Push the input(s) into the component using the step function on the
    % system object fir_hdl
    % If there are multiple I/O, use
    % [out1, out2, out3] = step(fir_hdl, in1, in2, in3);
    % and understand all I/O data types are fixed-point objects
    % where the inputs can be created by the fi() function.
    %-----------------------------------------------------------------
    
    %finished.
%     [source_data, source_error, source_valid, read_data, extn_out, FIFO_data_out, FIFO_addr_out] = step(shadow_reg_hdl,ast_sink_data,ast_sink_error,ast_sink_valid,avs_s1_address,avs_s1_write,avs_s1_writedata,avs_s1_read,extn_in);

    %-----------------------------------------------------------------
    % Save the outputs (which are fixed-point objects)
    %-----------------------------------------------------------------
%     output_history{clki} = output_vector1;  % capture the output
    
%     source_data
%     source_error
%     source_valid
%     read_data
%     extn_out
%     FIFO_data_out
%     FIFO_addr_out
%     
    
    
    
end



















%-----------------------------------------------------------------
% Display the captured I/O
%-----------------------------------------------------------------
display_this = 0;
if display_this == 1
    for clki=1:Nclock_edges
        in1 = input_history{clki};
        in1.bin
        out1 = output_history{clki}
        out1.dec
        out1.WordLength
    end
end
%-----------------------------------------------------------------
% Perform the desired comparison (with the latency between input
% and output appropriately corrected).
%-----------------------------------------------------------------
latency     = 5;  % latency in clock cycles through the component
error_index = 1;
error_case  = [];
for clki=1:Nclock_edges-latency
    in1  = input_history{clki};
    out1 = output_history{clki+latency};  % get the output associated with current output
    %------------------------------------------------------
    % Perfom the comparison with the "true" output
    %------------------------------------------------------
    
    
    
end





end
