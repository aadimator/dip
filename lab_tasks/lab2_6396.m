%{
Digit Image Processing

Name: Aadam
Roll# 6396
Program: BCS 8th
Semester: Spring 2018
Department of IT
Universiy of Haripur

Lab# 2
Basic Matrix operations in MATLAB
Displaying some common plots
%}

clearvars; close all; clc;

% Create a 1-by-20 vector of random integers between 0 and 50
r = randi([0 50],1,20);

subplot(3, 1, 1)     % add first plot in 3 x 1 grid

% Show a simple line chart
plot(r, ':or')       % use a red dotted line with circle at the data points
axis([0 21 0 52])
title('Line Chart')

subplot(3, 1, 2)     % add second plot in 3 x 1 grid

% Show a bar graph
bar(r);
axis([0 21 0 52])
xlabel('Sample #');
ylabel('Random Value');
title('Bar Graph');

subplot(3, 1, 3)     % add third plot in 3 x 1 grid

% Plot using pentagram markers
plot(r, 'p');
axis([0 21 0 52])
xlabel('Sample #');
ylabel('Random Star');
title('Star Graph');



