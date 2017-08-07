close all;
clear all;
clc;
%%
L5 = [1 4 6 4 1];
E5 = [-1 -2 0 2 1];
S5 = [-1 0 2 0 -1];
R5 = [1 -4 6 -4 1];

%FILTER 1a L5E5

t= transpose(L5);
l5e5=t*E5;

%FILTER 1b E5L5

t= transpose(E5);
e5l5=t*L5;

%FILTER 2a L5R5

t= transpose(L5);
l5r5=t*R5;

%FILTER 2B R5L5

t= transpose(R5);
r5l5=t*L5;

%FILTER 3a L5S5

t= transpose(L5);
l5s5=t*S5;

%FILTER 3b S5L5

t= transpose(S5);
s5l5=t*L5;

%FILTER 4a E5R5

t= transpose(E5);
e5r5=t*R5;

%FILTER 4b R5E5

t= transpose(R5);
r5e5=t*E5;

%FILTER 5a E5S5

t= transpose(E5);
e5s5=t*S5;

%FILTER 5b S5E5

t= transpose(S5);
s5e5=t*E5;

%FILTER 6a s5r5

t= transpose(S5);
s5r5=t*R5;

%FILTER 6b S5R5

t= transpose(R5);
r5s5=t*S5;

%FILTER 7 E5E5

t= transpose(E5);
e5e5=t*E5;

%FILTER 8 r5r5

t= transpose(R5);
r5r5=t*R5;

%FILTER 9 s5s5

t= transpose(S5);
s5s5=t*S5;
%%
srcfile = dir('/Users/harshdeep/Documents/MATLAB/Texture_Images/*.jpg');

for i = 1:240
     img= imread(srcfile(i).name);
     img=im2double(img);
     
     j=1;
     
     d1=abs(conv2(img,l5e5));
     d2=abs(conv2(img,e5l5));
     D1=mean2(d1+d2);
     B(i,j)=D1;
%      a1=(D11+D1)./2;
%      A1=(((D11-a1).^2))./a1;
%      A1(g,i)=A1;
     
     d1=abs(conv2(img,l5r5));
     d2=abs(conv2(img,r5l5));
     D2=mean2(d1+d2);
     j=j+1;
     B(i,j)=D2;
%      a2=(D21+D2)./2;
%      A2=(((D21-a2).^2))./a2;
%      A2(g,i)=A2;
     
     d1=abs(conv2(img,l5s5));
     d2=abs(conv2(img,s5l5));
     D3=mean2(d1+d2);
     j=j+1;
     B(i,j)=D3;
%      a3=(D31+D3)./2;
%      A3=(((D31-a3).^2))./a3;
%      A3(g,i)=A3;
     
     d1=abs(conv2(img,e5r5));
     d2=abs(conv2(img,r5e5));
     D4=mean2(d1+d2);
     j=j+1;
     B(i,j)=D4;
%      a4=(D41+D4)./2;
%      A4=(((D41-a4).^2))./a4;
%      A4(g,i)=A4;
     
     d1=abs(conv2(img,e5s5));
     d2=abs(conv2(img,s5e5));
     D5=mean2(d1+d2);
     j=j+1;
     B(i,j)=D5;
%      a5=(D51+D5)./2;
%      A5=(((D51-a5).^2))./a5;
%      A5(g,i)=A5;
     
     d1=abs(conv2(img,s5r5));
     d2=abs(conv2(img,r5s5));
     D6=mean2(d1+d2);
     j=j+1;
     B(i,j)=D6;
%      a6=(D61+D6)./2;
%      A6=(((D61-a6).^2))./a6;
%      A6(g,i)=A6;
     
     
     D7=(mean2(abs(conv2(img,e5e5))));
     j=j+1;
     B(i,j)=D7;
%      a7=(D71+D7)./2;
%      A7=(((D71-a7).^2))./a7;
%      A7(g,i)=A7;
     
     D8=(mean2(abs(conv2(img,r5r5))));
     j=j+1;
     B(i,j)=D8;
%      a8=(D81+D8)./2;
%      A8=(((D81-a8).^2))./a8;
%      A8(g,i)=A8;
     
     D9=(mean2(abs(conv2(img,s5s5))));
     j=j+1;
     B(i,j)=D9;
%      a9=(D91+D9)./2;
%      A9=(((D91-a9).^2))./a9;
     
%      B{i}=(D1 D2 D3 D4 D5 D6 D7 D8 D9);
%      [sorted_array,pos]=sort(B);
%      A9(g,i)=A9;
%    F{i}= [A1 A2 A3 A4 A5 A6 A7 A8 A9];
end