close all;
clear all;
clc;
%%
i=imread('lena_color_512.tif');
subplot(2,2,1)
imshow(i,[]);
title('Orignal image');

redPlane = i(:, :, 1);
h=imhist(redPlane);
subplot(2,2,2)
plot(h);
y = bar(h,'hist');
set(y,'FaceColor','r','EdgeColor','r');
title('RedPlane');
xlabel('No. of Bins')
ylabel('Intensity')

greenPlane = i(:, :, 2);
subplot(2,2,3)
h=imhist(greenPlane);
y = bar(h,'hist');
set(y,'FaceColor','g','EdgeColor','g');
title('GreenPlane');
xlabel('No. of Bins')
ylabel('Intensity')

bluePlane = i(:, :, 3);
h=imhist(bluePlane);
subplot(2,2,4)
plot(h);
y = bar(h,'hist');
set(y,'FaceColor','b','EdgeColor','b');
title('BluePlane');
xlabel('No. of Bins')
ylabel('Intensity')

 %%
figure;subplot(2,2,1)
imshow(i,[]);
title('Orignal image');

h1=imhist(redPlane,384);
subplot(2,2,2)
plot(h1);
y = bar(h1,'hist');
set(y,'FaceColor','r','EdgeColor','r');
title('RedPlane');
xlabel('No. of Bins')
ylabel('Intensity')

subplot(2,2,3)
h2=imhist(greenPlane,384);
y = bar(h2,'hist');
set(y,'FaceColor','g','EdgeColor','g');
title('GreenPlane');
xlabel('No. of Bins')
ylabel('Intensity')

h3=imhist(bluePlane,384);
subplot(2,2,4)
plot(h3);
y = bar(h3,'hist');
set(y,'FaceColor','b','EdgeColor','b');
title('BluePlane');
xlabel('No. of Bins')
ylabel('Intensity')

%%
H=cat(1,h1,h2,h3);
figure;plot(H);
title('Concatenated Histogram');
xlabel('No. of Bins')
ylabel('Intensity')
