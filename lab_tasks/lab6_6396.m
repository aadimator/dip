%{
Digital Image Processing

Name: Aadam
Roll# 6396
Program: BCS 8th
Semester: Spring 2018
Department of IT
Universiy of Haripur

Lab: 6

RGB boxes on white background

%}

clearvars; close all; clc;

m = uint8(ones(400, 400, 3)) * 255;

size = [50 50];


red_start = [50 50];
red_end = red_start + size;

x0 = 75;
y0 = 75;
r = 25;

for i = red_start(1):red_end(1)
    for j = red_start(2):red_end(2)
%         m(i, j, 2:3) = 0;
        if ((i-x0)^2 + (j-y0)^2 < r^2)
            m(i, j, 2:3) = 0;
        end
    end
end
   
green_start = [50 300];
green_end = green_start + size;

for i = green_start(1):green_end(1)
    for j = green_start(2):green_end(2)
        m(i, j, 1) = 200;
        m(i, j, 3) = 100;
    end
end

blue_start = [300 50];
blue_end = blue_start + size;

for i = blue_start(1):blue_end(1)
    for j = blue_start(2):blue_end(2)
        m(i, j, 1:2) = 0;
    end
end

purple_start = [300 300];
purple_end = purple_start + size;

for i = purple_start(1):purple_end(1)
    for j = purple_start(2):purple_end(2)
        m(i, j, 2) = 0;
    end
end

imshow(m)




% xc = 5;
% yc = 7;
% r = 3;
% circle(xc, yc, r);


