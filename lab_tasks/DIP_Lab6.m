%% Lab6 - Digital Image Processing
%% Noise filtering

clear all; close all; clc;
%% Grayscale image partitioning

A=uint8(ones(500));
for i=150:250
    for j=150:250
        A(i,j)=80;
    end
end
for i=100:200
    for j=300:400
        A(i,j)=120;
    end
end
for i=300:400
    for j=100:200
        A(i,j)=160;
    end
end
for i=300:400
    for j=300:400
        A(i,j)=200;
    end
end
imshow(A);
%%
%%
% grayimage1=uint8(zeros(500));
% grayimage2=uint8(zeros(500));
% grayimage3=uint8(zeros(500));
% for i=100:200
%     for j=100:200
%         grayimage1(i,j)=255;
%     end
% end
% for i=100:200
%     for j=300:400
%         grayimage2(i,j)=255;
%     end
% end
% for i=300:400
%     for j=100:200
%         grayimage3(i,j)=255;
%     end
% end
% colorimage = cat(3,grayimage1,grayimage2,grayimage3);
% imshow(colorimage);
%%
% grayimage1=uint8(zeros(500));
% rgbimage = grayimage1(:,:,[1 1 1]);
%%
%% Negative of an image
%%

% Image = imread('CameraMan.tif');
% negativeImage = 255 - Image;
% subplot(1,2,1);imshow(Image);
% subplot(1,2,2);imshow(negativeImage);
% 
% img = imread('student.jpg');
% img = rgb2gray(img);
% negativeimg = 255 - img;
% figure;subplot(1,2,1);imshow(img);
% subplot(1,2,2);imshow(negativeimg);
% 
% img1 = imread('student.jpg');
% negativeimg1=imcomplement(img1);
% figure;subplot(1,2,1);imshow(img1);
% subplot(1,2,2);imshow(negativeimg1);
% imwrite(negativeimg1,'student_negative.jpg');

%%
%% Arithmetic operations on an image
%%

% background=imread('minar.jpg');
% A=imread('tom.jpg');
% B=imread('jerry.jpg');
% % % % subplot(1,2,1);imshow(A);
% % % % subplot(1,2,2);imshow(B);
% 
% % % % %Imagre addition
% % % % %Both A and B are of same size
% object=A+B;
% % % % figure;imshow(object);
% 
% background=imresize(background,[size(object,1) size(object,2)]);
% % % rfigure;imshow(background);
% 
% Im3=uint8(zeros(size(object)));
% % % % figure; imshow(Im3);
% 
% whiteImg=uint8(255*ones(size(object)));
% % % % figure; imshow(whiteImg);
% 
% % % %Array right division. A./B is the matrix with elements A(i,j)/B(i,j). A and B must
% % % %have the same size, unless one of them is a scalar.
% % % %Image Division
% mask=whiteImg./object;
% % % % figure; imshow(mask);
% 
% % % %Logical AND
% im3=uint8(mask&background);%uint8(and(mask,background));
% % % figure,imshow(mask);
% % % %Array multiplication. A.*B is the element-by-element product of the arrays A and B.
% 
% % % %Image multiplication
% % % %Multiply the background and the mask image
% % % %And the result with the foreground image to obtain the final Image.
% finalImg=(background.*im3)+object;
% figure,imshow(finalImg);

%%
%% Logical operations on an image
%%
% a=ones(3);
% b=[1 1 0;0 1 2;1 0 2];
% AND = and(a,b);
% OR = or(a,b);
% XOR = xor(a,b);
%%
% image_A = imread('image_A.jpg');
% image_B = imread('image_B.jpg');
% subplot(2,3,1);imshow(image_A);title('image-A');
% subplot(2,3,2);imshow(~image_A);title('NOT image-A');
% subplot(2,3,3);imshow(and(image_A,image_B));title('image-A AND image-B');
% subplot(2,3,4);imshow(image_B);title('image-B');
% subplot(2,3,5);imshow(~image_B);title('NOT image-B');
% subplot(2,3,6);imshow(or(image_A,image_B));title('image-A OR image-B');
% 
% figure;
% subplot(1,3,1);imshow(image_A);title('image-A');
% subplot(1,3,2);imshow(image_B);title('image-B');
% subplot(1,3,3);imshow(xor(image_A,image_B));title('image-A XOR image-B');

%%
%% image masking
%%
% im = imread('student.jpg');
% mask = uint8(zeros(size(im)));
% new_im = uint8(zeros(size(im)));
% new_im = mask;
% [r,c]=size(im);
% for i=50:250
%     for j=150:300
%        new_im(i,j,1) = im(i,j,1);
%        new_im(i,j,2) = im(i,j,2);
%        new_im(i,j,3) = im(i,j,3);
%        mask(i,j,:) = 255;
%     end
% end
% subplot(1,3,1); imshow(im);
% subplot(1,3,2); imshow(mask);
% subplot(1,3,3); imshow(new_im);
%%
%% Geometric spatial transformation
%%
% im = imread('student.jpg');
% img1 = imrotate(im,-45,'bilinear');
% img2 = imrotate(im,-45,'nearest');
% img3 = imrotate(im,-45,'bicubic');
% subplot(2,2,1);imshow(im);title('Original image');
% subplot(2,2,2);imshow(img1);title('bilinear');
% subplot(2,2,3);imshow(img2);title('nearest');
% subplot(2,2,4);imshow(img3);title('bicubic');
% 
% figure;
% img4 = imrotate(im,-45,'bilinear','crop');
% img5 = imrotate(im,-45,'bilinear','loose');
% subplot(1,3,1);imshow(im);title('Original image');
% subplot(1,3,2);imshow(img4);title('crop');
% subplot(1,3,3);imshow(img5);title('loose');
%%
% % im = imread('grayscale_image.png');
% % subplot(1,3,1); imshow(im(:,:,1));
% % subplot(1,3,2); imshow(im(:,:,2));
% % subplot(1,3,3); imshow(im(:,:,3));
% 
% img = imread('student.jpg');
% img_noise1 = imnoise(img,'gaussian');
% % figure;imshow(img);
% img1(:,:,1)=medfilt2(img_noise1(:,:,1));
% img1(:,:,2)=medfilt2(img_noise1(:,:,2));
% img1(:,:,3)=medfilt2(img_noise1(:,:,3));
% figure;
% subplot(1,2,1);imshow(img_noise1); title('Noise Image');
% subplot(1,2,2);imshow(img1);title('Filtered Image');
%% Image A and Image B
%% 
% image_A=uint8(zeros(500));
% image_B=uint8(zeros(500));
% for i=100:300
%     for j=100:300
%         image_A(i,j)=255;
%     end
% end
% for i=200:400
%     for j=200:400
%         image_B(i,j)=255;
%     end
% end
% subplot(1,2,1);imshow(image_A);
% subplot(1,2,2);imshow(image_B);
% imwrite(image_A,'image_A.jpg');
% imwrite(image_B,'image_B.jpg');
% 
%%
%% separating Red, Green and Blue planes in a color image
%%
