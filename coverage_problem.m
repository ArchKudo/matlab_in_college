% Consider a single high power transmitter that can support 40 channels
% over the area of 40km^2 with the available spectrum. If the area is equally divided into
% seven smaller cells each supported by lower power transmitter so that each cells support 
% 30% of the channels
% Then determine (a) Coverage area of the cell(b) Total no. of voice channels

% Code
clc;
clear all;

area = input("Enter total area: ");
ch = input("Enter total number of channels: ");
q = input("Enter reuse ratio: ");

coverage_area = area / q;
fprintf("Coverage area: %.2f\n", coverage_area);

voice_ch = ch*0.3;
tot_voice_ch = voice_ch * q;

fprintf("No. of voice channels: %d\n", voice_ch);
fprintf("Total no. of voice channels: %d\n", tot_voice_ch); 
