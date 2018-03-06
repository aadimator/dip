%{
Digit Image Processing

Name: Aadam
Roll# 6396
Program: BCS 8th
Semester: Spring 2018
Department of IT
Universiy of Haripur

Lab# 3
%}

clearvars; close all; clc;

% Task 1 : suplots

figure(1)
subplot(1, 2, 1);
imshow('images/kitty.jpg');
title('Kitty');

subplot(1, 2, 2);
imshow('images/teddy.jpg');
title('Teddy');

figure(2)
subplot(2, 1, 1);
imshow('images/kitty.jpg');
title('Kitty');

subplot(2, 1, 2);
imshow('images/teddy.jpg');
title('Teddy');

% Task 2: Difference b/w * and .*

A = [1 2 3; 4 5 6; 7 8 9];
B = [0 1 2; 0 1 2; 2 0 2];

C = A * B
D = A .* B


% Task 3: Peculiar addition

A = [1 2 3; 4 5 6; 7 8 9];
B = A(1, :)
C = A(:, 2)

D = B + C













