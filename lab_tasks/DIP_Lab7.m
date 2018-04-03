%% Code related to Chapter-3
%%
clear all; close all; clc;
%% Contrast stretching
% im = rgb2gray(imread('student.jpg'));
% % imshow(im);
% im1 = im - 100;
% subplot(1,2,1);imshow(im);
% subplot(1,2,2);imshow(im1);
% 
% im = im - 50;
% im = imread('cameraman.tif');
% 
% im = imread('xray_jpg.jpg');
% % % % subplot(2,2,1); imshow(im);
% % % % subplot(2,2,2); imshow(im-30);
% % % % subplot(2,2,3); imshow(im-50);
% % % % subplot(2,2,4); imshow(im-70);
% 
% img = imadjust(im,stretchlim(im),[]);
% figure;
% subplot(1,2,1); imshow(im); title('Original image');
% subplot(1,2,2); imshow(img); title('Contrast stretching');

%% Thresholding
% %%
% im = rgb2gray(imread('student.jpg'));
% th = 160;
% im_th = zeros(size(im));
% [r,c]=size(im);
% for i=1:r
%     for j=1:c
%         if(im(i,j) > th)
%             im_th(i,j) = im(i,j);
%         end
%     end
% end
% subplot(1,2,1); imshow(im);
% subplot(1,2,2); imshow(im_th);
%%
%% Log Transformation
%% 
% % im = imread('student.jpg');
% % im = imread('cameraman.tif');
% im1 = imread('flower.jpg');
% % g=rgb2gray(im);
% im2 = zeros(size(im1));
% c=.5;
% [r,col]=size(im1);
%         for x = 1:r
%             for y = 1:col
%                 m=double(im1(x,y));
%                 im2(x,y)=c.*log10(1+m); 
%             end
%         end
% subplot(1,2,1);imshow(im1);title('original image');
% subplot(1,2,2);imshow(im2);title('Log Transformed image');

%%
%% Power-Law Transformation1
%%
% % gamma = 0.05,0.2,0.67,1.5,2.5,5 and comment your results
% im = imread('cameraman.tif');
% % im = im2double(im);
% [m, n]=size(im); new_im = uint8(zeros(size(im)));
% c = 1;
% y = 2;
% for i=1:m
%     for j=1:n
%         new_im(i,j)=c*(im(i,j)^y);
%     end
% end
% subplot(1,2,1);imshow(im);title('Original image');
% subplot(1,2,2);imshow(new_im);title('After Power-Law Transformation');

%% Power-Law Transformation2
%%
% im = imread('student.jpg');
% 
% % % RGB to gray
% I=rgb2gray(im);
% % % In double format
% I=im2double(I);
% % % computing size m,n 
% [m, n] = size(I);
% % % Computing s = c * (r ^ gamma) where r and gamma are positive constants 
% c = 2;
% % g =[0.5 0.7 0.9 1 2 3 4 5 6];% Gamma Correction Array
% g=0.5;
% % for r=1:length(g)
%     for p = 1 : m
%         for q = 1 : n
%             I3(p, q) = c * I(p, q).^ g; % g(r);  
%         end
%     end
% % imshow(I); title('Original image');    
% % figure, imshow(I3);title('Power-law transformation');xlabel('Gamma=0.5')%,xlabel(g(r));
% subplot(1,2,1);imshow(I);title('Original image');
% subplot(1,2,2);imshow(I3);title('After Power-Law Transformation');xlabel('Gamma=0.5')

% % end
%% Arithmetic operations on images
%% SUBTRACTION (im1 - im2) and (im2 - im1)
%%
% im1 = imread('cameraman.tif');
% im2 = rgb2gray(imread('student.jpg'));
% im2 = imresize(im2, size(im1));
% subplot(2,2,1); imshow(im1);
% subplot(2,2,2); imshow(im2);
% % im3 = im1 + im2;
% % subplot(2,2,3); imshow(im3);
% % im4 = im1 .* im2;
% % subplot(2,2,4); imshow(im4);
% im5 = im1 - im2;
% subplot(2,2,3); imshow(im5);
% im6 = im2 - im1;
% subplot(2,2,4); imshow(im6);
% 
% % im1 = im1(:,:,1);
% % imshow(im1);
% % im2 = imread('tom.jpg');
% % im2 = rgb2gray(im2);
% % imshow(im2);
% % 
% % 
%% 

