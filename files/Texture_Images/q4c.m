close all;
clear all;
clc;

%% SET 1
% REFFERENCE IMAGE
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Texture_Images/*.jpg');
rimg=imread('T01_01.jpg');
subplot(6,5,1)
imshow(rimg);
wavelength = [20 30];
orientation = [0 90];
for i= 1:2
    for j=1:2
g= gabor(wavelength(1,i),orientation(1,i));
gaborMag = imgaborfilt(rimg,g);
if i==1 && j==1
r1=mean2(gaborMag);
end
if i==1 && j==2
r2=mean2(gaborMag);
end
if i==2 && j==1
r3=mean2(gaborMag);
end
if i==2 && j==2
r4=mean2(gaborMag);
end

    end
end


% TEST IMAGE
for v = 1:240
     timg= imread(srcfile(v).name);
%      imshow(img);
     wavelength = [20 30];
     orientation = [0 90];
     for i= 1:2
         for j=1:2
             g= gabor(wavelength(1,i),orientation(1,i));
             gaborMag = imgaborfilt(timg,g);
             if i==1 && j==1
t1=mean2(gaborMag);
end
if i==1 && j==2
t2=mean2(gaborMag);
end
if i==2 && j==1
t3=mean2(gaborMag);
end
if i==2 && j==2
t4=mean2(gaborMag);
end
         end
     end
     a1=(r1+t1)./2;
     A1=((r1-a1).^2)./a1;
     
      a2=(r2+t2)./2;
     A2=((r2-a2).^2)./a2;
     
      a3=(r3+t3)./2;
     A3=((r3-a3).^2)./a3;
     
      a4=(r4+t4)./2;
     A4=((r4-a4).^2)./a4;
     
     B(v)=(A1+A2+A3+A4);
     [sorted_array,pos]=sort(B);
end
m=pos(2);
i=m;
TIMG= imread(srcfile(i).name);
subplot(6,5,2)
imshow(TIMG);
n=pos(3);
i=n;
TIMG= imread(srcfile(i).name);
subplot(6,5,3)
imshow(TIMG);
o=pos(4)
i=o;
TIMG= imread(srcfile(i).name);
subplot(6,5,4)
imshow(TIMG);
p=pos(5)
i=p;
TIMG= imread(srcfile(i).name);
subplot(6,5,5)
imshow(TIMG);
%% SET 2
% REFFERENCE IMAGE
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Texture_Images/*.jpg');
rimg=imread('T05_01.jpg');
subplot(6,5,6)
imshow(rimg);
wavelength = [20 30];
orientation = [0 90];
for i= 1:2
    for j=1:2
g= gabor(wavelength(1,i),orientation(1,i));
gaborMag = imgaborfilt(rimg,g);
if i==1 && j==1
r1=mean2(gaborMag);
end
if i==1 && j==2
r2=mean2(gaborMag);
end
if i==2 && j==1
r3=mean2(gaborMag);
end
if i==2 && j==2
r4=mean2(gaborMag);
end

    end
end


% TEST IMAGE
for v = 1:240
     timg= imread(srcfile(v).name);
%      imshow(img);
     wavelength = [20 30];
     orientation = [0 90];
     for i= 1:2
         for j=1:2
             g= gabor(wavelength(1,i),orientation(1,i));
             gaborMag = imgaborfilt(timg,g);
             if i==1 && j==1
t1=mean2(gaborMag);
end
if i==1 && j==2
t2=mean2(gaborMag);
end
if i==2 && j==1
t3=mean2(gaborMag);
end
if i==2 && j==2
t4=mean2(gaborMag);
end
         end
     end
     a1=(r1+t1)./2;
     A1=((r1-a1).^2)./a1;
     
      a2=(r2+t2)./2;
     A2=((r2-a2).^2)./a2;
     
      a3=(r3+t3)./2;
     A3=((r3-a3).^2)./a3;
     
      a4=(r4+t4)./2;
     A4=((r4-a4).^2)./a4;
     
     B(v)=(A1+A2+A3+A4);
     [sorted_array,pos]=sort(B);
end
m=pos(2)
i=m;
TIMG= imread(srcfile(i).name);
subplot(6,5,7)
imshow(TIMG);
n=pos(3);
i=n;
TIMG= imread(srcfile(i).name);
subplot(6,5,8)
imshow(TIMG);
o=pos(4);
i=o;
TIMG= imread(srcfile(i).name);
subplot(6,5,9)
imshow(TIMG);
p=pos(5);
i=p;
TIMG= imread(srcfile(i).name);
subplot(6,5,10)
imshow(TIMG);
%% SET 3
% REFFERENCE IMAGE
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Texture_Images/*.jpg');
rimg=imread('T12_01.jpg');
subplot(6,5,11)
imshow(rimg);
wavelength = [20 30];
orientation = [0 90];
for i= 1:2
    for j=1:2
g= gabor(wavelength(1,i),orientation(1,i));
gaborMag = imgaborfilt(rimg,g);
if i==1 && j==1
r1=mean2(gaborMag);
end
if i==1 && j==2
r2=mean2(gaborMag);
end
if i==2 && j==1
r3=mean2(gaborMag);
end
if i==2 && j==2
r4=mean2(gaborMag);
end

    end
end


% TEST IMAGE
for v = 1:240
     timg= imread(srcfile(v).name);
%      imshow(img);
     wavelength = [20 30];
     orientation = [0 90];
     for i= 1:2
         for j=1:2
             g= gabor(wavelength(1,i),orientation(1,i));
             gaborMag = imgaborfilt(timg,g);
             if i==1 && j==1
t1=mean2(gaborMag);
end
if i==1 && j==2
t2=mean2(gaborMag);
end
if i==2 && j==1
t3=mean2(gaborMag);
end
if i==2 && j==2
t4=mean2(gaborMag);
end
         end
     end
     a1=(r1+t1)./2;
     A1=((r1-a1).^2)./a1;
     
      a2=(r2+t2)./2;
     A2=((r2-a2).^2)./a2;
     
      a3=(r3+t3)./2;
     A3=((r3-a3).^2)./a3;
     
      a4=(r4+t4)./2;
     A4=((r4-a4).^2)./a4;
     
     B(v)=(A1+A2+A3+A4);
     [sorted_array,pos]=sort(B);
end
m=pos(2)
i=m;
TIMG= imread(srcfile(i).name);
subplot(6,5,12)
imshow(TIMG);
n=pos(3);
i=n;
TIMG= imread(srcfile(i).name);
subplot(6,5,13)
imshow(TIMG);
o=pos(4)
i=o;
TIMG= imread(srcfile(i).name);
subplot(6,5,14)
imshow(TIMG);
p=pos(5)
i=p;
TIMG= imread(srcfile(i).name);
subplot(6,5,15)
imshow(TIMG);
%% SET 4
% REFFERENCE IMAGE
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Texture_Images/*.jpg');
rimg=imread('T13_01.jpg');
subplot(6,5,16)
imshow(rimg);
wavelength = [20 30];
orientation = [0 90];
for i= 1:2
    for j=1:2
g= gabor(wavelength(1,i),orientation(1,i));
gaborMag = imgaborfilt(rimg,g);
if i==1 && j==1
r1=mean2(gaborMag);
end
if i==1 && j==2
r2=mean2(gaborMag);
end
if i==2 && j==1
r3=mean2(gaborMag);
end
if i==2 && j==2
r4=mean2(gaborMag);
end

    end
end


% TEST IMAGE
for v = 1:240
     timg= imread(srcfile(v).name);
%      imshow(img);
     wavelength = [20 30];
     orientation = [0 90];
     for i= 1:2
         for j=1:2
             g= gabor(wavelength(1,i),orientation(1,i));
             gaborMag = imgaborfilt(timg,g);
             if i==1 && j==1
t1=mean2(gaborMag);
end
if i==1 && j==2
t2=mean2(gaborMag);
end
if i==2 && j==1
t3=mean2(gaborMag);
end
if i==2 && j==2
t4=mean2(gaborMag);
end
         end
     end
     a1=(r1+t1)./2;
     A1=((r1-a1).^2)./a1;
     
      a2=(r2+t2)./2;
     A2=((r2-a2).^2)./a2;
     
      a3=(r3+t3)./2;
     A3=((r3-a3).^2)./a3;
     
      a4=(r4+t4)./2;
     A4=((r4-a4).^2)./a4;
     
     B(v)=(A1+A2+A3+A4);
     [sorted_array,pos]=sort(B);
end
m=pos(2)
i=m;
TIMG= imread(srcfile(i).name);
subplot(6,5,17)
imshow(TIMG);
n=pos(3)
i=n;
TIMG= imread(srcfile(i).name);
subplot(6,5,18)
imshow(TIMG);
o=pos(4)
i=o;
TIMG= imread(srcfile(i).name);
subplot(6,5,19)
imshow(TIMG);
p=pos(5)
i=p;
TIMG= imread(srcfile(i).name);
subplot(6,5,20)
imshow(TIMG);
%% SET 5
% REFFERENCE IMAGE
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Texture_Images/*.jpg');
rimg=imread('T18_01.jpg');
subplot(6,5,21)
imshow(rimg);
wavelength = [20 30];
orientation = [0 90];
for i= 1:2
    for j=1:2
g= gabor(wavelength(1,i),orientation(1,i));
gaborMag = imgaborfilt(rimg,g);
if i==1 && j==1
r1=mean2(gaborMag);
end
if i==1 && j==2
r2=mean2(gaborMag);
end
if i==2 && j==1
r3=mean2(gaborMag);
end
if i==2 && j==2
r4=mean2(gaborMag);
end

    end
end


% TEST IMAGE
for v = 1:240
     timg= imread(srcfile(v).name);
%      imshow(img);
     wavelength = [20 30];
     orientation = [0 90];
     for i= 1:2
         for j=1:2
             g= gabor(wavelength(1,i),orientation(1,i));
             gaborMag = imgaborfilt(timg,g);
             if i==1 && j==1
t1=mean2(gaborMag);
end
if i==1 && j==2
t2=mean2(gaborMag);
end
if i==2 && j==1
t3=mean2(gaborMag);
end
if i==2 && j==2
t4=mean2(gaborMag);
end
         end
     end
     a1=(r1+t1)./2;
     A1=((r1-a1).^2)./a1;
     
      a2=(r2+t2)./2;
     A2=((r2-a2).^2)./a2;
     
      a3=(r3+t3)./2;
     A3=((r3-a3).^2)./a3;
     
      a4=(r4+t4)./2;
     A4=((r4-a4).^2)./a4;
     
     B(v)=(A1+A2+A3+A4);
     [sorted_array,pos]=sort(B);
end
m=pos(2)
i=m;
TIMG= imread(srcfile(i).name);
subplot(6,5,22)
imshow(TIMG);
n=pos(3)
i=n;
TIMG= imread(srcfile(i).name);
subplot(6,5,23)
imshow(TIMG);
o=pos(4)
i=o;
TIMG= imread(srcfile(i).name);
subplot(6,5,24)
imshow(TIMG);
p=pos(5)
i=p;
TIMG= imread(srcfile(i).name);
subplot(6,5,25)
imshow(TIMG);
%% SET 6
% REFFERENCE IMAGE
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Texture_Images/*.jpg');
rimg=imread('T25_01.jpg');
subplot(6,5,26)
imshow(rimg);
wavelength = [20 30];
orientation = [0 90];
for i= 1:2
    for j=1:2
g= gabor(wavelength(1,i),orientation(1,i));
gaborMag = imgaborfilt(rimg,g);
if i==1 && j==1
r1=mean2(gaborMag);
end
if i==1 && j==2
r2=mean2(gaborMag);
end
if i==2 && j==1
r3=mean2(gaborMag);
end
if i==2 && j==2
r4=mean2(gaborMag);
end

    end
end


% TEST IMAGE
for v = 1:240
     timg= imread(srcfile(v).name);
%      imshow(img);
     wavelength = [20 30];
     orientation = [0 90];
     for i= 1:2
         for j=1:2
             g= gabor(wavelength(1,i),orientation(1,i));
             gaborMag = imgaborfilt(timg,g);
             if i==1 && j==1
t1=mean2(gaborMag);
end
if i==1 && j==2
t2=mean2(gaborMag);
end
if i==2 && j==1
t3=mean2(gaborMag);
end
if i==2 && j==2
t4=mean2(gaborMag);
end
         end
     end
     a1=(r1+t1)./2;
     A1=((r1-a1).^2)./a1;
     
      a2=(r2+t2)./2;
     A2=((r2-a2).^2)./a2;
     
      a3=(r3+t3)./2;
     A3=((r3-a3).^2)./a3;
     
      a4=(r4+t4)./2;
     A4=((r4-a4).^2)./a4;
     
     B(v)=(A1+A2+A3+A4);
     [sorted_array,pos]=sort(B);
end
m=pos(2);
i=m;
TIMG= imread(srcfile(i).name);
subplot(6,5,27)
imshow(TIMG);
n=pos(3)
i=n;
TIMG= imread(srcfile(i).name);
subplot(6,5,28)
imshow(TIMG);
o=pos(4)
i=o;
TIMG= imread(srcfile(i).name);
subplot(6,5,29)
imshow(TIMG);
p=pos(5)
i=p;
TIMG= imread(srcfile(i).name);
subplot(6,5,30)
imshow(TIMG);