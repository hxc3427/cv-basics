close all;
clear all;
clc;

%% 96 BIN COLOR HISTOGRAM OF ALL THE IMAGES IN DATABASE
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
for i = 1:700
     j= imread(srcfile(i).name);
     subplot(2,2,1)
     imshow(j);
%     img{i} = imread(srcfile(i).name);
     redPlane = j(:, :, 1);
     h=imhist(redPlane,96);
     subplot(2,2,2)
     plot(h);
     y = bar(h,'hist');
     set(y,'FaceColor','r','EdgeColor','r');

     greenPlane = j(:, :, 2);
     subplot(2,2,3)
     h=imhist(greenPlane,96);
     y = bar(h,'hist');
     set(y,'FaceColor','g','EdgeColor','g');

     bluePlane = j(:, :, 3);
     h=imhist(bluePlane,96);
     subplot(2,2,4)
     plot(h);
     y = bar(h,'hist');
     set(y,'FaceColor','b','EdgeColor','b')
end
