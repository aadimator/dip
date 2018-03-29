%% Name: Tehmina Enayat 
%% Roll No: 6382
%% Subject: Digital_Image_Processing        
%% Lab_work_05
%% Date: 26.March.2018.

close all; clear all; clc;
m = 0.07; var = 0.09;
original_image = imread('cameraman.tif');

% gaussian Noise without mean value
noise_image_gaus = imnoise(original_image, 'gaussian');   
noise_image_mean = imnoise(original_image, 'gaussian', m, var);

% Remove Noise with Averaging Filter
remove_noise = filter2(fspecial('average',3 ), noise_image_mean)/255;
imshowpair(noise_image_gaus, remove_noise , 'Montage');
title('Image with noise          Remove Noise with Averaging Filter');








% Remove Noise with Median Filter
remove_noise = medfilt2(noise_image_gaus);
imshowpair(noise_image_gaus, remove_noise , 'Montage');
title('Image with noise          Remove Noise with Median Filter');






 % gaussian Noise with mean value

noise_image_poi = imnoise(original_image, 'poisson');         % poisson Noise 
noise_image_snp = imnoise(original_image, 'salt & pepper');   % Salt & Pepper Noise 

noise_image_spe = imnoise(original_image, 'speckle');         % Speckle Noise 

subplot (3,2,1), imshow( original_image ), title('Orignal Image');
subplot (3,2,2), imshow( noise_image_gaus), title( 'Gaussian Noise without mean');
subplot (3,2,3), imshow( noise_image_mean), title( 'Gaussian Noise with mean');
subplot (3,2,4), imshow( noise_image_poi ), title('Poisson Noise');
subplot (3,2,5), imshow( noise_image_snp ), title('Salt & Pepper Noise');
subplot (3,2,6), imshow( noise_image_spe ), title('Speckle Noise');

