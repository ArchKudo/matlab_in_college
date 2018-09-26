clear all;
clc;
G = 15; % Code length
sd1 = [1 0 0 1]; % Initial state of shift register
pn1 = [];

for i = 1:G
    pn1 = [pn1 sd1(4)];
    if (sd1(3) == sd1(4))
        temp = 0;
    else
        temp = 1;
    end
    sd1(4) = sd1(3);
    sd1(3) = sd1(2);
    sd1(2) = sd1(1);
    sd1(1) = temp;
    
    disp(sd1);
end

subplot(4, 1, 1);
stem(pn1);
title("M-sequence generated using generator polynomial: x^3 + x + 1");