clc;
coverage_area = input("Enter coverage area: ")
base_count = input("Enter number of base stations: ")
channel_count = input("Enter number of channels per base station: ")
cell_radius = input("Enter radius of cell: ")
microcell_radius = input("Enter micro-cell radius: ")
mmcell_radius = input("Enter radius of mini-micro cell: ")

% tx_power = input("Enter transmission power: ")

area_cell = 2.598 * cell_radius^2
area_microcell = 2.589 * microcell_radius^2
area_mmcell = 2.589 * mmcell_radius^2

cell_count = int32(coverage_area / cell_radius)
microcell_count = int32(area_cell / area_microcell)
mmcell_count = int32(area_microcell / area_mmcell)

total_microcells = cell_count * microcell_count
total_mmcells = total_microcells * mmcell_count

channels_nosplit = cell_count * channel_count
channels_split = total_microcells * channel_count
