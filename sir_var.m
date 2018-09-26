clc;
clear all;

k = [7, 9, 12];
n = [4, 3, 2];

for i = 1:3
    for j = 1:3
        q(i,j) = sqrt(3 * k(i));
        sir(i, j) = 1/ ((2 * (q(i, j) + 1))^(-n(j)) +
                        (2 * (q(i, j))^(-n(j))) + 
                        (2 * (q(i, j) - 1)^(-n(j))));
        sir_db(i, j) = 10*log10(sir(i, j));
    endfor
endfor

disp("Q:"); disp(q);
disp("S/I:"); disp(sir);
disp("S/I(db): "); disp(sir_db);

plot(k, sir_db);
title("Average Case S/I");
xlabel("Cluster Size");
ylabel("S/I ratio");
