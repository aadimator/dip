%{
Digital Image Processing

Name: Aadam
Roll# 6396
Program: BCS 8th
Semester: Spring 2018
Department of IT
Universiy of Haripur

Assignment: 2

%}

clearvars; close all; clc;

%% Read-in images
im1 = rgb2gray(imread('Baby_Po.jpg'));
im2 = rgb2gray(imread('kitty.jpg'));
im2 = imresize(im2, size(im1));

%% Arithematic Operation 
im_add = im1 + im2;    % Addition
im_sub = im1 - im2;    % Subtraction
im_mul = im1 .* im2;   % Multiplication
im_div = im1 ./ im2;   % Division

%% Logical Operation 
image_and = im1 & im2;    % AND Operation
image_or = im1 | im2;     % OR Operation
im1_not = ~im1;           % NOT Operator For 1st Image
im2_not = ~im2;           % NOT Operator For 2nd Image

%% Subploting The result of Arithematic Operations 
 figure, subplot(2,2,1); imshow(im_add) , title('Addition');
         subplot(2,2,2); imshow(im_sub) , title('Subtraction');
         subplot(2,2,3); imshow(im_mul) , title('Multiplication');
         subplot(2,2,4); imshow(im_div) , title('Division');

%% Subploting The result of Logical Operations 
 figure, subplot(2,2,1); imshow(image_and) , title('AND Operation');
         subplot(2,2,2); imshow(image_or) , title('OR Operation');
         subplot(2,2,3); imshow(im1_not) , title('NOT Operator For Image 1');
         subplot(2,2,4); imshow(im2_not) , title('NOT Operator For Image 2');
         




