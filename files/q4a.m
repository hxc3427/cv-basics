close all;
clear all;
clc;

%% 96 BIN COLOR HISTOGRAM OF ALL THE IMAGES IN DATABASE
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Texture_Images/*.jpg');
for v = 1:40
     img= imread(srcfile(v).name);
     imshow(img);
     wavelength = [20 30 40 60 80];
     orientation = [0 45 90 135 180];
     g= gabor(wavelength,orientation);
     [mag,phase] = imgaborfilt(img,g);
     gaborMag = imgaborfilt(img,g);
     figure;subplot(5,5,1);
     for p = 1:25
         subplot(5,5,p)
         imshow(gaborMag(:,:,p),[]);
     end
end