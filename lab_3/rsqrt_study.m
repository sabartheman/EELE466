%--------------------------------------------------------------------------
% Description:  Matlab simulation code for studying the hardware 
% implementation of y = 1/sqrt(x);
%--------------------------------------------------------------------------
% Author:       Ross K. Snider
% Company:      Montana State University
% Create Date:  Feb 17, 2013
% Script Name:  rsqrt.m
% Tool Version: MATLAB: 8.0.0.783 (R2012b)
% Revision:     1.0
%--------------------------------------------------------------------------
% Copyright (c) 2013 Ross K. Snider.
% All rights reserved. Redistribution and use in source and binary forms 
% are permitted provided that the above copyright notice and this paragraph 
% are duplicated in all such forms and that any documentation, advertising 
% materials, and other materials related to such distribution and use 
% acknowledge that the software was developed by Montana State University 
% (MSU).  The name of MSU may not be used to endorse or promote products 
% derived from this software without specific prior written permission.
% THIS SOFTWARE IS PROVIDED ``AS IS'' AND WITHOUT ANY EXPRESS OR
% IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
% WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. 
%--------------------------------------------------------------------------

clear all
close all
%-----------------------------------------------
% Newton's Method for y = 1/sqrt(x);
% Define F(y) = 1/(y^2) - x.
% Find F(y) = 0;
% Solution: y(k+1) = (y(k)*(3-x*y(k)^2))/2  where y0 is the initial guess
%------------------------------------------------


%----------------------------------------
% Plot the function y=1/sqrt(x)
%----------------------------------------
fs = 100;
xmax = 1000;
x=1/fs:1/fs:xmax;
y=1./(sqrt(x));
figure(1)
plot(x,y)
xlabel('x')
ylabel('y')
title('y=1/sqrt(x)')

%----------------------------------------
% Plot the function y=1/sqrt(x)
% on a loglog scale
%----------------------------------------
figure(2)
loglog(x,y)
xlabel('log(x)')
ylabel('log(y)')
title('y=1/sqrt(x)')

figure(3);
subplot(2,1,1)
x=10;
y=0.1:0.01:50;
fy = (1./(y.^2)) - x;
plot(y,fy)
xlabel('y')
ylabel('F(y)')
title('Finding the root of F(y)=1/y^2 - x   (plot given for x=10)')
subplot(2,1,2)
fy = -2./(y.^3);
plot(y,fy)
xlabel('y')
ylabel('F''(y)')
title('Slope (derivative) of F(y)=1/y^2 - x  => F''(y) = -3/y^3  (plot given for x=10)')
text(10,-500,'Notice that the slope becomes "flat" very quickly')
text(10,-800,'This means that Newton''s method will not work well for large values of y_o,')
a=axis;
a(4) = 500;
axis(a);

figure(5)
plot(floor(log2(x)),floor(a),'g'); hold on
xlabel('floor(log_2 (x))')
ylabel('floor(a)')
title('floor(a) vs floor(log_2(x))')
a=axis;
xv = a(1):a(2);
yv = xv*(-3/2);
plot(xv,yv,'r')
text(-2, 5, 'Red line : y = -3/2x')



%--------------------------------------------------------------------------
% Hardware Simulation
%--------------------------------------------------------------------------
WordLength = 28;
FractionLength = 14;
IntegerLength = WordLength-FractionLength;
%-------------------------------------
% Create lookup table for (x)^(-3/2)
%-------------------------------------
Nbits_address = 8;
Nbits_output  = FractionLength+1;
for i=0:(2^Nbits_address-1)
    x_beta_table{i+1}.address = i;
    fa = fi(i,0,Nbits_address,0);
    fa_bits = fa.bin;
    fb = fi(0, 0, Nbits_address+1, Nbits_address);
    fb.bin = ['1' fa_bits];
    x_beta_table{i+1}.input_value = double(fb);
    x_beta_table{i+1}.input_bits = fa.bin;
    fy = fi(double(fb)^(-3/2),0,Nbits_output,Nbits_output-1);
    x_beta_table{i+1}.output_value = double(fy);
    x_beta_table{i+1}.output_bits = fy.bin;
%     i
%     x_beta_table{i+1}
%     pause
end

%--------------------------------
% Only create values of x
% that can be represented by
% the fixed-point word
%--------------------------------
Nx = 1000;
minexp = log10(2^(-FractionLength));
maxexp = log10(2^IntegerLength-1);
exp_step = (maxexp-minexp)/(Nx-1);
v=minexp:exp_step:maxexp;  % create a line in exponential space
xv = 10.^v;
x = double(fi(xv,0,WordLength,FractionLength));  % only include values of x that can be represented by the fixed-point word

hs_iteration_count = size(x);
hs_initial_error   = size(x);
hs_final_error     = size(x);
for k=1:Nx
    if mod(k,100) == 0
       [k Nx]
    end
    
    fx = fi(x(k),0,WordLength,FractionLength);  % Fixed-point representation of x
    s1 = fx.bin;
    %-----------------------------------
    % step 1: Count leading zeros (lzc)
    %-----------------------------------
    lzc = 0;
    for i=1:WordLength
        if s1(i) == '0'
            lzc = lzc + 1;
        else
            break
        end
    end
    %-----------------------------------
    % step 2: compute beta
    %-----------------------------------    
    beta  = WordLength - FractionLength - lzc - 1;   % beta is the power of two (2^beta) of the first 1 in the unsigned word 
    beta_odd = mod(beta,2);
    %-----------------------------------
    % step 3: compute alpha
    %-----------------------------------    
    if beta_odd == 1
        alpha = -2*beta + beta/2 + 0.5;  % alpha = -3/2 beta  (written as powers of two for shift and add); 
    else
        alpha = -2*beta + beta/2;
    end
    %-----------------------------------
    % step 4: shift x by alpha bits
    %-----------------------------------    
    x_alpha_shifted = fx;
    x_alpha_shifted = bitshift(fx,alpha);   
    s2 = x_alpha_shifted.bin;
    %-----------------------------------
    % step 5: shift x by -beta bits
    %-----------------------------------    
    x_beta_shifted = fx;
    x_beta_shifted = bitshift(fx,-beta);   % alpha is made negative since the bitshift function shifts left for positive values of the bit shift
    s3 = x_beta_shifted.bin;
    %------------------------------------------------
    % step 6: get (x_beta)^(-3/2) from lookup table
    %------------------------------------------------  
    address = s3(IntegerLength+1:IntegerLength+Nbits_address);
    ta = fi(0,0,Nbits_address,0);
    ta.bin =  address;
    table_index = double(ta);
    table_bits = x_beta_table{table_index+1}.output_bits;
    x_beta_lookup = fi(0,0,WordLength,FractionLength);
    bs1 = fi(0,0,IntegerLength-1,0);
    x_beta_lookup.bin = [bs1.bin table_bits];
    %------------------------------------------------
    % step 7: Compute y0
    %------------------------------------------------      
    if beta_odd == 1
        y0 = double(x_alpha_shifted) * double(x_beta_lookup) * 0.707106781186547;
    else
        y0 = double(x_alpha_shifted) * double(x_beta_lookup); 
    end
    %------------------------------------------------
    % Get error of y0
    %------------------------------------------------      
    yt=1/sqrt(x(k));
    initial_error=y0-yt;
    %------------------------------------------------
    % Perform convergence and count iterations
    % Note: this is still not a "pure" fixed-point
    % study since we are not yet controlling
    % rounding modes, internal bitwidths, etc. ...
    %------------------------------------------------          
    iteration_threshold = 10^(-10);
    iteration_limit = 1000;
    iteration_count = 0;
    y = y0;
    iteration_error = abs(yt-y);
    while iteration_error > iteration_threshold
        y = y*(3-x(k)*y*y)/2;
        iteration_count = iteration_count + 1;
        iteration_error = abs(yt-y);
        if iteration_count > iteration_limit
            break;
        end
    end
    hs_iteration_count(k)    = iteration_count;
    hs_initial_error(k)      = initial_error;
    hs_final_error(k)        = iteration_error;
    
    display_this = 0;
    if display_this == 1
        %----------------------------------------------
        % visualize shifts (with binary point added)
        %----------------------------------------------
        disp(['k =' num2str(k) '  x=' num2str(x(k))   '   1/sqrt(x)=' num2str(1/sqrt(x(k))) ])
        disp(['binary of x               :  ' s1(1:IntegerLength) '.' s1(IntegerLength+1:end)])
        disp(['x = ' num2str(x(k))])
        disp(['binary of alpha shifted x :  ' s2(1:IntegerLength) '.' s2(IntegerLength+1:end)])
        disp(['x alpha shifted = ' num2str(double(x_alpha_shifted))])
        disp(['binary of beta shifted x  :  ' s3(1:IntegerLength) '.' s3(IntegerLength+1:end)])
        disp(['x beta shifted = ' num2str(double(x_beta_shifted))])
        disp(['y0 =' num2str(y0) '   1/sqrt(x)=' num2str(y) '   initial error = ' num2str(initial_error) '  beta odd = ' num2str(beta_odd)])
        disp(['iteration_count = ' num2str(iteration_count)])
        pause
    end
    
 
end

figure(6)
semilogx(x,hs_iteration_count)
xlabel('log10(x)')
ylabel('Iteration Count');
title([ 'Convergence for 1/sqrt(x)  Maximum iterations for x in the domain [' num2str(min(x)) '  ' num2str(max(x)) '] = '  num2str(max(hs_iteration_count)) ]);

figure(7)
subplot(2,1,1)
semilogx(x,abs(hs_initial_error))
xlabel('log10(x)')
ylabel('abs(Initial Error)');
title('Initial Error  (y_0 - x^{-1/2})');

subplot(2,1,2)
semilogx(x,hs_final_error)
xlabel('log10(x)')
ylabel('Final Error');
title(['Final Error  (convergence threshold = ' num2str(iteration_threshold) ')'  ]);


