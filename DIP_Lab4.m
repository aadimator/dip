%% function to perform image zoom
%%
clear all; close all; clc;
%% Task-1
%% Nearest Neighbor - Example1
%%
% I1 = imread('cameraman.tif');
% I1 = imread('image_cross.jpg');
% M1 = size(I1,1); % Number of rows in I
% N1 = size(I1,2); % Number of columns in I
% % Pick size of output image
% factor=2;
% M2 = M1*factor; 
% N2 = N1*factor; 
% I2 = zeros(M2,N2); % Allocate output image
% cx = N2/N1; % Scale in x
% cy = M2/M1; % Scale in y
% for x=1:N2
%     for y=1:M2
%         % Calculate position in input image
%         v = x/cx;
%         w = y/cy;
%         % We'll just pick the nearest neighbor to (v,w)
%         v = round(v);
%         w = round(w);
%         I2(y,x) = I1(w,v);
%     end
% end
% imshow(I1);
% figure;imshow(uint8(I2));
% figure;subplot(1,2,1);imshow(I1);
% subplot(1,2,2);imshow(uint8(I2));
% %%
%% Task-2: Nearest Neighbor - Example2
%%
tic;
Img = imread('images/kitty.jpg');
factor=2;
[h w c] = size(Img);
wn = w*factor;
hn = h*factor;
Img_zoomed = uint8(zeros(hn, wn));
for i= 0:hn-1
  for j= 0:wn-1
    x = floor(j/factor);
    y = floor(i/factor);
    for k= 1:c
      Img_zoomed(i+1, j+1, k) = Img(y+1, x+1, k);
    end
  end
end
% figure;subplot(1,2,1);imshow(Img);
% subplot(1,2,2);imshow(uint8(Img_zoomed));
imshow(Img);
figure;imshow(Img_zoomed);
t1=toc
% 
% %%
%% Task-3: Bilinear Interpolation - Example1
%%
tic;
Img = imread('images/kitty.jpg');
factor=2;
 
[h w c] = size(Img);
r = factor;
hn = r*(h-1)+1; wn = r*(w-1)+1;
Img_zoomed = zeros(hn, wn, c);
 
% Padding the scaled image with 0 pixel value
for i= 1:h
   for j= 1:w
      Img_zoomed(r*(i-1)+1, r*(j-1)+1, : ) = Img(i, j, : );
   end
end
 
% Interpolation
for k= 1:c
    for i= 0:r:hn-r
        for j= 0:r:wn-r
            A = Img_zoomed(i+1, j+1, k);
            B = Img_zoomed(i+1, j+r+1, k);
            C = Img_zoomed(i+r+1, j+1, k);
            D = Img_zoomed(i+r+1, j+r+1, k);
            a0 = A;
            a1 = double((B-A)/r);
            a2 = double((C-A)/r);
            a3 = double((D-C-B+A)/(r*r));
            for l= 0:r
                for m= 0:r
                   Img_zoomed(i+l+1, j+m+1, k) = a0 + a1*m + a2*l + a3*m*l;
                end
            end
        end
    end
end
Img_zoomed = uint8(Img_zoomed);
imshow(Img);
figure;imshow(Img_zoomed);
t2=toc
%% 
%% Task-4: Bicubic Interpolation
%%
tic
image = imread('images/kitty.jpg');
zoom=2;
[r c d] = size(image);
rn = floor(zoom*r);
cn = floor(zoom*c);
s = zoom;
im_zoom = cast(zeros(rn,cn,d),'uint8');
im_pad = zeros(r+4,c+4,d);
im_pad(2:r+1,2:c+1,:) = image;
im_pad = cast(im_pad,'double');
for m = 1:rn
    x1 = ceil(m/s); x2 = x1+1; x3 = x2+1;
    p = cast(x1,'uint16');
    if(s>1)
       m1 = ceil(s*(x1-1));
       m2 = ceil(s*(x1));
       m3 = ceil(s*(x2));
       m4 = ceil(s*(x3));
    else
       m1 = (s*(x1-1));
       m2 = (s*(x1));
       m3 = (s*(x2));
       m4 = (s*(x3));
    end
    X = [ (m-m2)*(m-m3)*(m-m4)/((m1-m2)*(m1-m3)*(m1-m4)) ...
          (m-m1)*(m-m3)*(m-m4)/((m2-m1)*(m2-m3)*(m2-m4)) ...
          (m-m1)*(m-m2)*(m-m4)/((m3-m1)*(m3-m2)*(m3-m4)) ...
          (m-m1)*(m-m2)*(m-m3)/((m4-m1)*(m4-m2)*(m4-m3))];
    for n = 1:cn
        y1 = ceil(n/s); y2 = y1+1; y3 = y2+1;
        if (s>1)
           n1 = ceil(s*(y1-1));
           n2 = ceil(s*(y1));
           n3 = ceil(s*(y2));
           n4 = ceil(s*(y3));
        else
           n1 = (s*(y1-1));
           n2 = (s*(y1));
           n3 = (s*(y2));
           n4 = (s*(y3));
        end
        Y = [ (n-n2)*(n-n3)*(n-n4)/((n1-n2)*(n1-n3)*(n1-n4));...
              (n-n1)*(n-n3)*(n-n4)/((n2-n1)*(n2-n3)*(n2-n4));...
              (n-n1)*(n-n2)*(n-n4)/((n3-n1)*(n3-n2)*(n3-n4));...
              (n-n1)*(n-n2)*(n-n3)/((n4-n1)*(n4-n2)*(n4-n3))];
        q = cast(y1,'uint16');
        sample = im_pad(p:p+3,q:q+3,:);
        im_zoom(m,n,1) = X*sample(:,:,1)*Y;
        if(d~=1)
              im_zoom(m,n,2) = X*sample(:,:,2)*Y;
              im_zoom(m,n,3) = X*sample(:,:,3)*Y;
        end
    end
end
im_zoom = cast(im_zoom,'uint8');
imshow(image);
figure;imshow(im_zoom);
t3=toc
