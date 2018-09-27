clc;
clear all;

% Generate a pseudo random sequence(array) of length 32
pn_stream = round(rand(1, 32))

ip_sg = [0 1 0 0 1 0 1 1];
j = 1;

for i = 1:1:8
    if j < 32
        for k = j:1:j + 3
            tx(k) = xor(pn_stream(k), ip_sg(i));
        endfor
        j = j+4;
    endif
endfor


subplot(3, 1, 1)
stem(pn_stream)
title("Pseudo Noise Sequence")
subplot(3, 1, 2)
stem(ip_sg)
title("Input signal")
subplot(3, 1, 3)
stem(tx)
title("DSS sequence")
