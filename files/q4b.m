close all;
clear all;
clc;

%% GABOR FILTER
wavelength = [20 30 40 60 80 100];
orientation = [0 45 90 135 180 225];
% g = gabor(wavelength,orientation);
% figure;
% subplot(6,6,1)
% for p = 1:36
%     subplot(6,6,p);
%     imshow(real(g(p).SpatialKernel),[]);
%     lambda = g(p).Wavelength;
%     theta  = g(p).Orientation;
%     title(sprintf('Re[h(x,y)], \\lambda = %d, \\theta = %d',lambda,theta));
% end
%% FREQUENCY RESPONSE OF GABOR FILTER
for i= 1:6
    for j= 1:6
        w= wavelength(1,i);
        o= orientation(1,j);
        g= gabor(w,o);
        figure;freqz2(g.SpatialKernel);
        title(sprintf('Re[h(x,y)], \\lambda = %d, \\theta = %d',wavelength(1,i),orientation(1,j)));
    end
end
%%

