%{
Digital Image Processing

Name: Aadam
Roll# 6396
Program: BCS 8th
Semester: Spring 2018
Department of IT
Universiy of Haripur

Lab Quiz: 1B

1. Define a 5x5 matrix of all ones
2. Replace all elements of row3 with values 22, 23, 24, 25, 26
3. Print all values of column 4 on screen


%}

clearvars; close all; clc;

% 1. Define a 5x5 matrix of all ones
a = ones(5, 5)

% 2. Replace all elements of row3 with values 22, 23, 24, 25, 26
a(3, :) = [22 23 24 25 26]

% 3. Print all values of column 4 on screen
a(:, 4) 



