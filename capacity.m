clc;
clear all;

cluster_count = input("Enter size of cluster(m): ");
channel_count = input("Enter channels allocated to the cell(k): ");
i_val = input("Enter the value of i: ");
j_val = input("Enter the value of j: ");

if (i_val >= 0 && j_val >= 1)
    neighbours = i_val^2 + j_val^2 + i_val*j_val;
    capacity = cluster_count * channel_count * neighbours;
    fprintf("Cells in a single cluster(N) = %d", neighbours)
    fprintf("Capacity of system(C) = %d", capacity)
else
    disp("Values of i, j are invalid!")
end
