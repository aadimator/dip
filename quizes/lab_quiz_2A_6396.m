%{
Digital Image Processing

Name: Aadam
Roll# 6396
Program: BCS 8th
Semester: Spring 2018
Department of IT
Universiy of Haripur

Lab Quiz: 2A

%}

clearvars; close all; clc;

m = ones(128, 128);

size = [32 32];

coords = [1 64];

for k = coords
    for l = coords
        box_start = [k l]
        box_end = box_start + size;

        for i = box_start(1):box_end(1)
            for j = box_start(2):box_end(2)
                m(i, j) = 0;
            end
        end
    end
end

coords = [32 96];

for k = coords
    for l = coords
        box_start = [k l]
        box_end = box_start + size;

        for i = box_start(1):box_end(1)
            for j = box_start(2):box_end(2)
                m(i, j) = 0;
            end
        end
    end
end


imshow(m)














