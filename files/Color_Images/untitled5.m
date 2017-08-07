close all;
clear all;
clc;
%%
img = imread('lena_color_512.tif'); % Read image
red = img(:,:,1); % Red channel
red =red(:);
green = img(:,:,2); % Green channel
green=green(:);
blue = img(:,:,3);% Blue channel
blue=blue(:);
c = linspace(1,10,length(red));
s=scatter(red,blue,[],c);
% [idx, c] =kmeans(s,2);
% IDX=kmeans(red(:),2);
% plot(IDX,'r')