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
 %% SECOND SET
% RIMG= imread('300.jpg');
% subplot(7,5,6)
% imshow(RIMG);
% 
% redPlane = RIMG(:, :, 1);
% RHr=imhist(redPlane,96);
% 
% 
% greenPlane = RIMG(:, :, 2);
% RHg=imhist(greenPlane,96);
% 
% 
% bluePlane = RIMG(:, :, 3);
% RHb=imhist(bluePlane,96);
% 
% 
% 
% srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
% for a=1
% for i = 1:700
%      TIMG= imread(srcfile(i).name);
%      
%      TredPlane = TIMG(:, :, 1);
%      THr=imhist(TredPlane,96);
% 
% 
%      TgreenPlane = TIMG(:, :, 2);
%      THg=imhist(TgreenPlane,96);
% 
% 
%      TbluePlane = TIMG(:, :, 3);
%      THb=imhist(TbluePlane,96);
%    
%      %HISTOGRAM INTERSECTION FORMULA
% 
%      d1= sum(min(RHr,THr))+sum(min(RHg,THg))+sum(min(RHb,THb));
%      d=d1/(96.^3);
%     
%     
%      %store data in an array
%      D2(a,i)=d;   
% end
% end
% [sorted_array,pos]=sort(D2)
% m=pos(699);
% i=m;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,7)
% imshow(TIMG);
% n=pos(698);
% i=n;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,8)
% imshow(TIMG);
% o=pos(697);
% i=o;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,9)
% imshow(TIMG);
% p=pos(696);
% i=p;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,10)
% imshow(TIMG);
% %% THIRD SET
% RIMG= imread('500.jpg');
% subplot(7,5,11)
% imshow(RIMG);
% 
% redPlane = RIMG(:, :, 1);
% RHr=imhist(redPlane,96);
% 
% 
% greenPlane = RIMG(:, :, 2);
% RHg=imhist(greenPlane,96);
% 
% 
% bluePlane = RIMG(:, :, 3);
% RHb=imhist(bluePlane,96);
% 
% 
% 
% srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
% for a=1
% for i = 1:700
%      TIMG= imread(srcfile(i).name);
%      
%      TredPlane = TIMG(:, :, 1);
%      THr=imhist(TredPlane,96);
% 
% 
%      TgreenPlane = TIMG(:, :, 2);
%      THg=imhist(TgreenPlane,96);
% 
% 
%      TbluePlane = TIMG(:, :, 3);
%      THb=imhist(TbluePlane,96);
%    
%      %HISTOGRAM INTERSECTION FORMULA
% 
%      d1= sum(min(RHr,THr))+sum(min(RHg,THg))+sum(min(RHb,THb));
%      d=d1/(96.^3);
%     
%     
%      %store data in an array
%      D3(a,i)=d;   
% end
% end
% [sorted_array,pos]=sort(D3)
% m=pos(699);
% i=m;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,12)
% imshow(TIMG);
% n=pos(698);
% i=n;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,13)
% imshow(TIMG);
% o=pos(697);
% i=o;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,14)
% imshow(TIMG);
% p=pos(696);
% i=p;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,15)
% imshow(TIMG);
% %% FOURTH SET
% RIMG= imread('660.jpg');
% subplot(7,5,16)
% imshow(RIMG);
% 
% redPlane = RIMG(:, :, 1);
% RHr=imhist(redPlane,96);
% 
% 
% greenPlane = RIMG(:, :, 2);
% RHg=imhist(greenPlane,96);
% 
% 
% bluePlane = RIMG(:, :, 3);
% RHb=imhist(bluePlane,96);
% 
% 
% 
% srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
% for a=1
% for i = 1:700
%      TIMG= imread(srcfile(i).name);
%      
%      TredPlane = TIMG(:, :, 1);
%      THr=imhist(TredPlane,96);
% 
% 
%      TgreenPlane = TIMG(:, :, 2);
%      THg=imhist(TgreenPlane,96);
% 
% 
%      TbluePlane = TIMG(:, :, 3);
%      THb=imhist(TbluePlane,96);
%    
%      %HISTOGRAM INTERSECTION FORMULA
% 
%      d1= sum(min(RHr,THr))+sum(min(RHg,THg))+sum(min(RHb,THb));
%      d=d1/(96.^3);
%     
%     
%      %store data in an array
%      D4(a,i)=d;   
% end
% end
% [sorted_array,pos]=sort(D4)
% m=pos(699);
% i=m;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,17)
% imshow(TIMG);
% n=pos(698);
% i=n;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,18)
% imshow(TIMG);
% o=pos(697);
% i=o;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,19)
% imshow(TIMG);
% p=pos(696);
% i=p;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,20)
% imshow(TIMG);
% %% FIFTH SET
% 
% RIMG= imread('700.jpg');
% subplot(7,5,21)
% imshow(RIMG);
% 
% redPlane = RIMG(:, :, 1);
% RHr=imhist(redPlane,96);
% 
% 
% greenPlane = RIMG(:, :, 2);
% RHg=imhist(greenPlane,96);
% 
% 
% bluePlane = RIMG(:, :, 3);
% RHb=imhist(bluePlane,96);
% 
% 
% 
% srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
% for a=1
% for i = 1:700
%      TIMG= imread(srcfile(i).name);
%      
%      TredPlane = TIMG(:, :, 1);
%      THr=imhist(TredPlane,96);
% 
% 
%      TgreenPlane = TIMG(:, :, 2);
%      THg=imhist(TgreenPlane,96);
% 
% 
%      TbluePlane = TIMG(:, :, 3);
%      THb=imhist(TbluePlane,96);
%    
%      %HISTOGRAM INTERSECTION FORMULA
% 
%      d1= sum(min(RHr,THr))+sum(min(RHg,THg))+sum(min(RHb,THb));
%      d=d1/(96.^3);
%     
%     
%      %store data in an array
%      D4(a,i)=d;   
% end
% end
% [sorted_array,pos]=sort(D4)
% m=pos(699);
% i=m;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,22)
% imshow(TIMG);
% n=pos(698);
% i=n;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,23)
% imshow(TIMG);
% o=pos(697);
% i=o;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,24)
% imshow(TIMG);
% p=pos(696);
% i=p;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,25)
% imshow(TIMG);
% %% SIXTH SET
% 
% RIMG= imread('800.jpg');
% subplot(7,5,26)
% imshow(RIMG);
% 
% redPlane = RIMG(:, :, 1);
% RHr=imhist(redPlane,96);
% 
% 
% greenPlane = RIMG(:, :, 2);
% RHg=imhist(greenPlane,96);
% 
% 
% bluePlane = RIMG(:, :, 3);
% RHb=imhist(bluePlane,96);
% 
% 
% 
% srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
% for a=1
% for i = 1:700
%      TIMG= imread(srcfile(i).name);
%      
%      TredPlane = TIMG(:, :, 1);
%      THr=imhist(TredPlane,96);
% 
% 
%      TgreenPlane = TIMG(:, :, 2);
%      THg=imhist(TgreenPlane,96);
% 
% 
%      TbluePlane = TIMG(:, :, 3);
%      THb=imhist(TbluePlane,96);
%    
%      %HISTOGRAM INTERSECTION FORMULA
% 
%      d1= sum(min(RHr,THr))+sum(min(RHg,THg))+sum(min(RHb,THb));
%      d=d1/(96.^3);
%     
%     
%      %store data in an array
%      D4(a,i)=d;   
% end
% end
% [sorted_array,pos]=sort(D4)
% m=pos(699);
% i=m;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,27)
% imshow(TIMG);
% n=pos(698);
% i=n;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,28)
% imshow(TIMG);
% o=pos(697);
% i=o;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,29)
% imshow(TIMG);
% p=pos(696);
% i=p;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,30)
% imshow(TIMG);
% %% SEVENTH SET
% 
% RIMG= imread('900.jpg');
% subplot(7,5,31)
% imshow(RIMG);
% 
% redPlane = RIMG(:, :, 1);
% RHr=imhist(redPlane,96);
% 
% 
% greenPlane = RIMG(:, :, 2);
% RHg=imhist(greenPlane,96);
% 
% 
% bluePlane = RIMG(:, :, 3);
% RHb=imhist(bluePlane,96);
% 
% 
% 
% srcfile = dir('/Users/harshdeep/Documents/MATLAB/Color_Images/*.jpg');
% for a=1
% for i = 1:700
%      TIMG= imread(srcfile(i).name);
%      
%      TredPlane = TIMG(:, :, 1);
%      THr=imhist(TredPlane,96);
% 
% 
%      TgreenPlane = TIMG(:, :, 2);
%      THg=imhist(TgreenPlane,96);
% 
% 
%      TbluePlane = TIMG(:, :, 3);
%      THb=imhist(TbluePlane,96);
%    
%      %HISTOGRAM INTERSECTION FORMULA
% 
%      d1= sum(min(RHr,THr))+sum(min(RHg,THg))+sum(min(RHb,THb));
%      d=d1/(96.^3);
%     
%     
%      %store data in an array
%      D4(a,i)=d;   
% end
% end
% [sorted_array,pos]=sort(D4)
% m=pos(699);
% i=m;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,32)
% imshow(TIMG);
% n=pos(698);
% i=n;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,33)
% imshow(TIMG);
% o=pos(697);
% i=o;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,34)
% imshow(TIMG);
% p=pos(696);
% i=p;
% TIMG= imread(srcfile(i).name);
% subplot(7,5,35)
% imshow(TIMG);
% %%
% 
% 
