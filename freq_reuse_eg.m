%{ WAP TO PROVE THAT S/I= 17DB IN WORST CASE WITH
% FREQUENCY REUSE FACTOR(N)= 7 & CO-CHANNEL REUSE RATIO(Q)= 4.6 
%}

clc;
clear all;

reuse_factor = input("Enter reuse factor(N): ");
reuse_ratio = sqrt(3 * reuse_factor);

fprintf("Co-channel reuse ratio(Q) is: %.3f\n", reuse_ratio);

s_i_ratio = 1/((2 * (reuse_ratio + 1)^(-4) +
                2 * (reuse_ratio)^(-4) +
                2 * (reuse_ratio - 1)^(-4)));

fprintf("S/I ratio is %.3f\n", s_i_ratio);

s_i_db = int8(10*log10(s_i_ratio));

fprintf("S/I(dB) is %d\n", s_i_db);