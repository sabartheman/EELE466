function fir_tb

%------------------------------------------------------------
% Note: it appears that the cosimWizard needs to be re-run if
% this is moved to a different machine (VHDL needs to be
% recompile in ModelSim).
%------------------------------------------------------------

% HdlCosimulation System Object creation (this Matlab function was created
% by the cosimWizard).
bit_ripple_hdl = hdlcosim_wrapper;

% Simulate for Nclock rising edges (this will be the length of the
% simulation)
Nclock_edges = 2;

for clki=1:Nclock_edges
    %-----------------------------------------------------------------
    % Create our input vector at each clock edge, which must be a
    % fixed-point data type.  The word width of the fixed point data type
    % must match the width of the std_logic_vector input.
    %-----------------------------------------------------------------
    fixed_word_width     = 8;  % width of input to component
    fixed_point_value    = 0;     % choose a random input values over an appropriate range
    fixed_point_signed   = 1;  % unsiged = 0, signed = 1;
    fixed_point_fraction = 0;  % fraction width (location of binary point within word)
    
    input_vector1 = fi(4, fixed_point_signed, fixed_word_width, fixed_point_fraction); % make the input a fixed point data type
    input_vector2 = fi(6, fixed_point_signed, fixed_word_width, fixed_point_fraction); % make the input a fixed point data type
    input_vector3 = fi(-4, fixed_point_signed, fixed_word_width, fixed_point_fraction); % make the input a fixed point data type
    input_vector4 = fi(6, fixed_point_signed, fixed_word_width, fixed_point_fraction); % make the input a fixed point data type
    input_vector5 = fi(4, fixed_point_signed, fixed_word_width, fixed_point_fraction); % make the input a fixed point data type
    input_vector6 = fi(-6, fixed_point_signed, fixed_word_width, fixed_point_fraction); % make the input a fixed point data type
    input_vector7 = fi(-4, fixed_point_signed, fixed_word_width, fixed_point_fraction); % make the input a fixed point data type
    input_vector8 = fi(-6, fixed_point_signed, fixed_word_width, fixed_point_fraction); % make the input a fixed point data type
    add           = fi(0,fixed_point_signed, 2, 0); % make the input a fixed point data type
    sub           = fi(1,fixed_point_signed, 2, 0); % make the input a fixed point data type
    
    input_history{clki} = input_vector1;  % capture the inputs
    
    %-----------------------------------------------------------------
    % Push the input(s) into the component using the step function on the
    % system object fir_hdl
    % If there are multiple I/O, use
    % [out1, out2, out3] = step(fir_hdl, in1, in2, in3);
    % and understand all I/O data types are fixed-point objects
    % where the inputs can be created by the fi() function.
    %-----------------------------------------------------------------
    output_vector1 = step(bit_ripple_hdl,input_vector1,input_vector2,add);
    output_vector2 = step(bit_ripple_hdl,input_vector3,input_vector4,add);
    output_vector3 = step(bit_ripple_hdl,input_vector5,input_vector6,add);
    output_vector4 = step(bit_ripple_hdl,input_vector7,input_vector8,add);
    output_vector5 = step(bit_ripple_hdl,input_vector1,input_vector2,sub);
    output_vector6 = step(bit_ripple_hdl,input_vector3,input_vector4,sub);
    output_vector7 = step(bit_ripple_hdl,input_vector5,input_vector6,sub);
    output_vector8 = step(bit_ripple_hdl,input_vector7,input_vector8,sub);
    %-----------------------------------------------------------------
    % Save the outputs (which are fixed-point objects)
    %-----------------------------------------------------------------
    output_history{clki} = output_vector1;  % capture the output
    
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
