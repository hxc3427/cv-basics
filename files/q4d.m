close all;
clear all;
clc;

%% SET 1
% REFFERENCE IMAGE
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Texture_Images/*.jpg');
 for k=1:4
rimg= imread(srcfile(k).name);
if k==1
e=1;
end
if k>1
e=e+1;
end
% rimg=imread('T01_01.jpg');
subplot(4,5,e)
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
subplot(4,5,e)
imshow(TIMG);
n=pos(3);
i=n;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
o=pos(4)
i=o;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
p=pos(5)
i=p;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
 end
%% SET 2
% REFFERENCE IMAGE
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Texture_Images/*.jpg');
figure;
 for k=41:44
rimg= imread(srcfile(k).name);
if k==41
e=1;
end
if k>41
e=e+1;
end
% rimg=imread('T05_01.jpg');
subplot(4,5,e)
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
subplot(4,5,e)
imshow(TIMG);
n=pos(3);
i=n;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
o=pos(4);
i=o;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
p=pos(5);
i=p;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
 end
%% SET 3
% REFFERENCE IMAGE
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Texture_Images/*.jpg');
% rimg=imread('T12_01.jpg');
figure;
 for k=81:84
rimg= imread(srcfile(k).name);
if k==81
e=1;
end
if k>81
e=e+1;
end
subplot(4,5,e)
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
subplot(4,5,e)
imshow(TIMG);
n=pos(3);
i=n;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
o=pos(4)
i=o;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
p=pos(5)
i=p;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
end
%% SET 4
% REFFERENCE IMAGE
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Texture_Images/*.jpg');
% rimg=imread('T13_01.jpg');
figure;
for k=121:124
rimg= imread(srcfile(k).name);
if k==121
e=1;
end
if k>121
e=e+1;
end
subplot(4,5,e)
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
subplot(4,5,e)
imshow(TIMG);
n=pos(3)
i=n;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
o=pos(4)
i=o;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
p=pos(5)
i=p;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
end
%% SET 5
% REFFERENCE IMAGE
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Texture_Images/*.jpg');
% rimg=imread('T18_01.jpg');
figure;
 for k=161:164
rimg= imread(srcfile(k).name);
if k==161
e=1;
end
if k>161
e=e+1;
end
subplot(4,5,e)
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
subplot(4,5,e)
imshow(TIMG);
n=pos(3)
i=n;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
o=pos(4)
i=o;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
p=pos(5)
i=p;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
end
%% SET 6
% REFFERENCE IMAGE
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Texture_Images/*.jpg');
% rimg=imread('T25_01.jpg');
figure;
 for k=201:204
rimg= imread(srcfile(k).name);
if k==201
e=1;
end
if k>201
e=e+1;
end
subplot(4,5,e)
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
subplot(4,5,e)
imshow(TIMG);
n=pos(3)
i=n;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
o=pos(4)
i=o;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
p=pos(5)
i=p;
TIMG= imread(srcfile(i).name);
subplot(4,5,e)
imshow(TIMG);
 end