%{
Digital Image Processing

Name: Aadam

Save the co-ordinates of a specific pixel in an image into an
excel file.

%}

clearvars; close all; clc;

im = imread('../images/Baby_Po.jpg');
% imshow(im);
[r, c, d] = size(im);
mask = ones(r, c);

for i=1:r
   for j = 1:c
      if im(i, j, :) > 150
         mask(i, j) = 0; 
      end
   end
end

subplot(1, 2, 1); imshow(im);
subplot(1, 2, 2); imshow(mask);
