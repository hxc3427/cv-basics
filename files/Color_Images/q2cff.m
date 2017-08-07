close all;
clear all;
clc;
%% First SET
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
for k=1:4
RIMG= imread(srcfile(k).name);
if k==1
e=1;
end
if k>1
e=e+1;
end

subplot(4,5,e)
imshow(RIMG);

redPlane = RIMG(:, :, 1);
RHr=imhist(redPlane,96);


greenPlane = RIMG(:, :, 2);
RHg=imhist(greenPlane,96);


bluePlane = RIMG(:, :, 3);
RHb=imhist(bluePlane,96);



srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
for a=1
for i = 1:700
     TIMG= imread(srcfile(i).name);
     
     TredPlane = TIMG(:, :, 1);
     THr=imhist(TredPlane,96);


     TgreenPlane = TIMG(:, :, 2);
     THg=imhist(TgreenPlane,96);


     TbluePlane = TIMG(:, :, 3);
     THb=imhist(TbluePlane,96);
   
     %HISTOGRAM INTERSECTION FORMULA

     d1= sum(min(RHr,THr))+sum(min(RHg,THg))+sum(min(RHb,THb));
     d=d1/(96.^3);
    
    
     %store data in an array
     D(a,i)=d;   
end
end
[sorted_array,pos]=sort(D)
m=pos(699);
i=m;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

n=pos(698);
i=n;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

o=pos(697);
i=o;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

p=pos(696);
i=p;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);
end
%% 2 set
figure;
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
for k=101:104
RIMG= imread(srcfile(k).name);
if k==101
e=1;
end
if k>101
e=e+1;
end

subplot(4,5,e)
imshow(RIMG);

redPlane = RIMG(:, :, 1);
RHr=imhist(redPlane,96);


greenPlane = RIMG(:, :, 2);
RHg=imhist(greenPlane,96);


bluePlane = RIMG(:, :, 3);
RHb=imhist(bluePlane,96);



srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
for a=1
for i = 1:700
     TIMG= imread(srcfile(i).name);
     
     TredPlane = TIMG(:, :, 1);
     THr=imhist(TredPlane,96);


     TgreenPlane = TIMG(:, :, 2);
     THg=imhist(TgreenPlane,96);


     TbluePlane = TIMG(:, :, 3);
     THb=imhist(TbluePlane,96);
   
     %HISTOGRAM INTERSECTION FORMULA

     d1= sum(min(RHr,THr))+sum(min(RHg,THg))+sum(min(RHb,THb));
     d=d1/(96.^3);
    
    
     %store data in an array
     D(a,i)=d;   
end
end
[sorted_array,pos]=sort(D)
m=pos(699);
i=m;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

n=pos(698);
i=n;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

o=pos(697);
i=o;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

p=pos(696);
i=p;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);
end
%% 3rd
figure;
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
for k=201:204
RIMG= imread(srcfile(k).name);
if k==201
e=1;
end
if k>201
e=e+1;
end

subplot(4,5,e)
imshow(RIMG);

redPlane = RIMG(:, :, 1);
RHr=imhist(redPlane,96);


greenPlane = RIMG(:, :, 2);
RHg=imhist(greenPlane,96);


bluePlane = RIMG(:, :, 3);
RHb=imhist(bluePlane,96);



srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
for a=1
for i = 1:700
     TIMG= imread(srcfile(i).name);
     
     TredPlane = TIMG(:, :, 1);
     THr=imhist(TredPlane,96);


     TgreenPlane = TIMG(:, :, 2);
     THg=imhist(TgreenPlane,96);


     TbluePlane = TIMG(:, :, 3);
     THb=imhist(TbluePlane,96);
   
     %HISTOGRAM INTERSECTION FORMULA

     d1= sum(min(RHr,THr))+sum(min(RHg,THg))+sum(min(RHb,THb));
     d=d1/(96.^3);
    
    
     %store data in an array
     D(a,i)=d;   
end
end
[sorted_array,pos]=sort(D)
m=pos(699);
i=m;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

n=pos(698);
i=n;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

o=pos(697);
i=o;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

p=pos(696);
i=p;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);
end
%% 4rth
figure;
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
for k=301:304
RIMG= imread(srcfile(k).name);
if k==301
e=1;
end
if k>301
e=e+1;
end

subplot(4,5,e)
imshow(RIMG);

redPlane = RIMG(:, :, 1);
RHr=imhist(redPlane,96);


greenPlane = RIMG(:, :, 2);
RHg=imhist(greenPlane,96);


bluePlane = RIMG(:, :, 3);
RHb=imhist(bluePlane,96);



srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
for a=1
for i = 1:700
     TIMG= imread(srcfile(i).name);
     
     TredPlane = TIMG(:, :, 1);
     THr=imhist(TredPlane,96);


     TgreenPlane = TIMG(:, :, 2);
     THg=imhist(TgreenPlane,96);


     TbluePlane = TIMG(:, :, 3);
     THb=imhist(TbluePlane,96);
   
     %HISTOGRAM INTERSECTION FORMULA

     d1= sum(min(RHr,THr))+sum(min(RHg,THg))+sum(min(RHb,THb));
     d=d1/(96.^3);
    
    
     %store data in an array
     D(a,i)=d;   
end
end
[sorted_array,pos]=sort(D)
m=pos(699);
i=m;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

n=pos(698);
i=n;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

o=pos(697);
i=o;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

p=pos(696);
i=p;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);
end
%% 5th 
figure;
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
for k=501:504
RIMG= imread(srcfile(k).name);
if k==501
e=1;
end
if k>501
e=e+1;
end

subplot(4,5,e)
imshow(RIMG);

redPlane = RIMG(:, :, 1);
RHr=imhist(redPlane,96);


greenPlane = RIMG(:, :, 2);
RHg=imhist(greenPlane,96);


bluePlane = RIMG(:, :, 3);
RHb=imhist(bluePlane,96);



srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
for a=1
for i = 1:700
     TIMG= imread(srcfile(i).name);
     
     TredPlane = TIMG(:, :, 1);
     THr=imhist(TredPlane,96);


     TgreenPlane = TIMG(:, :, 2);
     THg=imhist(TgreenPlane,96);


     TbluePlane = TIMG(:, :, 3);
     THb=imhist(TbluePlane,96);
   
     %HISTOGRAM INTERSECTION FORMULA

     d1= sum(min(RHr,THr))+sum(min(RHg,THg))+sum(min(RHb,THb));
     d=d1/(96.^3);
    
    
     %store data in an array
     D(a,i)=d;   
end
end
[sorted_array,pos]=sort(D)
m=pos(699);
i=m;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

n=pos(698);
i=n;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

o=pos(697);
i=o;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

p=pos(696);
i=p;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);
end
%% 6th
figure;
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
for k=601:604
RIMG= imread(srcfile(k).name);
if k==601
e=1;
end
if k>601
e=e+1;
end

subplot(4,5,e)
imshow(RIMG);

redPlane = RIMG(:, :, 1);
RHr=imhist(redPlane,96);


greenPlane = RIMG(:, :, 2);
RHg=imhist(greenPlane,96);


bluePlane = RIMG(:, :, 3);
RHb=imhist(bluePlane,96);



srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
for a=1
for i = 1:700
     TIMG= imread(srcfile(i).name);
     
     TredPlane = TIMG(:, :, 1);
     THr=imhist(TredPlane,96);


     TgreenPlane = TIMG(:, :, 2);
     THg=imhist(TgreenPlane,96);


     TbluePlane = TIMG(:, :, 3);
     THb=imhist(TbluePlane,96);
   
     %HISTOGRAM INTERSECTION FORMULA

     d1= sum(min(RHr,THr))+sum(min(RHg,THg))+sum(min(RHb,THb));
     d=d1/(96.^3);
    
    
     %store data in an array
     D(a,i)=d;   
end
end
[sorted_array,pos]=sort(D)
m=pos(699);
i=m;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

n=pos(698);
i=n;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

o=pos(697);
i=o;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);

p=pos(696);
i=p;
TIMG= imread(srcfile(i).name);
e=e+1;
subplot(4,5,e)
imshow(TIMG);
end
