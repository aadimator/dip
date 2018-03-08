%{
Digital Image Processing

Name: Aadam

Save the co-ordinates of pixels in a specific range in an image 
into an excel file.

%}

clearvars; close all; clc;

im = imread('../images/Baby_Po.jpg');

[rows, cols, channels] = size(im);

% create a mask
mask = zeros(rows, cols);
count = 0;

for i=1:rows
    for j = 1:cols
        % if the pixels are less than 028
        if im(i, j, :) < 028
            mask(i, j) = 1; % replace zero (black) with one (white)
            count = count + 1;
            coords(count, 1) = i;
            coords(count, 2) = j;
        end
    end
end

subplot(1, 2, 1); imshow(im);
subplot(1, 2, 2); imshow(mask);

xlswrite('coord.xlsx', coords);
