function FIR_testbench

%------------------------------------------------------------
% Note: it appears that the cosimWizard needs to be re-run if
% this is moved to a different machine (VHDL needs to be
% recompile in ModelSim).
%------------------------------------------------------------

% HdlCosimulation System Object creation (this Matlab function was created
% by the cosimWizard).
fir_testing = hdlcosim_fir_wrapper;

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
    
    for I= 1:1:50
        inputvalue = fi(I, 0, 32, 28);
        data_valid = fi(1, 0, 1, 0);
        switches       = fi(1, 0, 4, 0)
        outputvector(I) = step(fir_testing,data_valid,switches, inputvalue);
        
    end;
    %input_history{clki} = input_vector1;  % capture the inputs
    
    switches.bin
    x = linspace(0,50,50);
    plot(x, outputvector);
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
