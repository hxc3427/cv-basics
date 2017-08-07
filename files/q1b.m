close all;
clear all;
clc;
%% PART B
rgb=imread('lena_color_512.tif');
r=rgb(:,:,1);
g=rgb(:,:,2);
b=rgb(:,:,3);
slots =[r(:) g(:) b(:)];
[idx, c]=kmeans(slots,3);
imshow(idx,[]);
%%
%PART C
% I1= imread('lena_color_512.tif');
% I2=rgb2gray(I1);
% 
% I=double(I2);
% figure
% subplot(1,3,1)
% imshow(I1)
% subplot(1,3,2)
% imshow(I2)
% g=kmeans(I(:),4);
% J = reshape(g,size(I));
% subplot(1,3,3)
% imshow(J,[])
%%