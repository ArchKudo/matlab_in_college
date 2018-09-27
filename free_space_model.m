clc;
clear all;
frequency = 800 * 10^6;
speed_light = 3 * 10^8;

lambda = speed_light / frequency

% Some variable
gain_tx = 1;
gain_rx = 1;
power_tx = 1;
los = 1;
ht = 30;
hr = 2;

dist = 1:10 % Similar to 1:1:10
dist_m = dist * 10^3 % 1000:10000

% .^ is point-wise wise exponent operator
power_rx = power_tx * gain_tx * gain_rx * (lambda / (4 * pi))^2 * (1/los) * (dist_m.^(-2))

power_rx_db = 10 * log10(power_rx)

figure;

% Straight continous lines with 'o' as marker
plot(dist, power_rx_db, '-o')

xlabel('Distance between Transmitter and Receiver');
ylabel('Power received in dB');
title('Free space model');