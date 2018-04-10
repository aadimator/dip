%% DIP, LAB-8
%%
%% Histogram
%%
clear all; close all; clc;
% %%
% im = imread('cameraman.tif');
% % imshow(im);
% im1 = im - 50;
% figure;subplot(1,2,1);imhist(im);
% subplot(1,2,2);imhist(im1);
% %%
% im = imread('cameraman.tif');
% im1 = im - 50;
% subplot(2,2,1);imshow(im);title('original image');
% subplot(2,2,2);imshow(im1);title('original image - 50');
% subplot(2,2,3);imhist(im);
% subplot(2,2,4);imhist(im1);
%%
% im = imread('cameraman.tif');
% im1 = im + 100;
% subplot(2,2,1);imshow(im);title('original image');
% subplot(2,2,2);imshow(im1);title('original image + 100');
% subplot(2,2,3);imhist(im);
% subplot(2,2,4);imhist(im1);

%%
% im = imread('cameraman.tif');
% % % % im = imread('cat3.jpg');
% % % % im = rgb2gray(imread('animal.jpg'));
% % imhist(im);
% % imshow(im);
% % im = imadjust(im);
% % imshow(im);
% % imhist(im);
% im1 = im + 50;
% % figure;imhist(im1);
% figure;subplot(1,2,1);imhist(im);
% subplot(1,2,2);imhist(im1);

%%
%% Contrast Adjustment
%%
%% Example-1
% im = imread('cameraman.tif');
% im1 = imadjust(im);
% subplot(2,2,1);imshow(im);
% subplot(2,2,2);imshow(im1);
% subplot(2,2,3);imhist(im);
% subplot(2,2,4);imhist(im1);
%%
%% Example-2a
% im = imread('cameraman.tif');
% im = im - 100;
% im1 = imadjust(im);
% subplot(2,2,1);imshow(im);
% subplot(2,2,2);imshow(im1);
% subplot(2,2,3);imhist(im);
% subplot(2,2,4);imhist(im1);
%% Example-2b
% im = imread('cameraman.tif');
% im = im - 100;
% im1 = imadjust(im);
% im2 = imadjust(im1);
% subplot(2,2,1);imshow(im1);
% subplot(2,2,2);imshow(im2);
% subplot(2,2,3);imhist(im1);
% subplot(2,2,4);imhist(im2);

%%
%% Example-3
% im = imread('cameraman.tif');
% im = im + 100;
% im1 = imadjust(im);
% subplot(2,2,1);imshow(im);
% subplot(2,2,2);imshow(im1);
% subplot(2,2,3);imhist(im);
% subplot(2,2,4);imhist(im1);
%%
%% Histogram matching
im = imread('cameraman.tif');
im = im-100;
im1 = imadjust(im);
subplot(2,2,1);imshow(im);
subplot(2,2,2);imshow(im1);
im2 = imhistmatch(im,im1);
subplot(2,2,3);imshow(im2);
%%


