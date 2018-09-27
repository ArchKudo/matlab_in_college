clear all;
clc;
period = 15 % 2^n - 1
sd1 = [1 1 1 1]; % Initial state of shift register
pn1 = [];

for i = 1:period
    
    % Append value of 4th element to the sequence
    pn1 = [pn1 sd1(4)];
    
    % XOR between third state and fourth state
    if (sd1(3) == sd1(4))
        temp = 0; % XOR(a, b) = 0 if a == b
    else
        temp = 1; % XOR(a, b) = 1 if a != b
    end
    
    % temp = xor(sd1(4), sd1(3));
    
    % Shift the sequence
    sd1(4) = sd1(3);
    sd1(3) = sd1(2);
    sd1(2) = sd1(1);
    sd1(1) = temp;

    disp(sd1);

end

% Subplot to 1st row from 2 rows and 1 cols
subplot(2, 1, 1);
stem(pn1);
title("M-sequence generated using generator polynomial: x^4 + x + 1");

clear all;
clc;
period = 7 % 2^n - 1
sd1 = [1 1 1]; % Initial state of shift register
pn1 = [];

for i = 1:period
    
    % Append value of 4th element to the sequence
    pn1 = [pn1 sd1(3)];
    
    % XOR between third state and fourth state
    if (sd1(2) == sd1(3))
        temp = 0; % XOR(a, b) = 0 if a == b
    else
        temp = 1; % XOR(a, b) = 1 if a != b
    end
    
    % Shift the sequence
    sd1(3) = sd1(2);
    sd1(2) = sd1(1);
    sd1(1) = temp;

end

% Subplot to 2nd row from 2 rows and 1 cols
subplot(2, 1, 2);


stem(pn1);
title("M-sequence generated using generator polynomial: x^3 + x + 1");