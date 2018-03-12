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

% figure(1)
% subplot(1, 2, 1);
% imshow('../images/Baby_Po.jpg');
% title('Baby Po');
% 
% subplot(1, 2, 2);
% imshow('../images/kitty.jpg');
% title('MB');

% figure(2)
% subplot(2, 1, 1);
% imshow('../images/Baby_Po.jpg');
% title('Kitty');
% 
% subplot(2, 1, 2);
% imshow('../images/kitty.jpg');
% title('Teddy');

% Task 2: Difference b/w * and .*

A = [1 2 3; 4 5 6; 7 8 9];
B = [0 1 2; 0 1 2; 2 0 2];

C = A * B
D = A .* B


% Task 3: Peculiar addition

% A = [1 2 3; 4 5 6; 7 8 9];
% B = A(1, :)
% C = A(:, 2)
% 
% D = B + C


% Task 4: Add 5 to all elements of 3rd row of A and save
%         it in a variable M

% A = [1 2 3; 4 5 6; 7 8 9];
% M = A(3, :) + 5

% Task 5: 

% A = [1 2 3; 4 5 6; 7 8 9];
% min(A(1, :))

% Task 6: min and max of two images

% im1 = imread('images/kitty.jpg');
% im2 = imread('images/teddy.jpg');
% 
% min(min(min(im1)))
% max(max(max(im1)))
% 
% min(min(min(im2)))
% max(max(max(im2)))







