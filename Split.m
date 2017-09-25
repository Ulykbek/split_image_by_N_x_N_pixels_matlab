I = imread('1_1.tif');
[width,height] = size(I);

c=16;d=16; %split into 16x16 matrices 

count = 0;
for i=1:c:width-16
for j=1:d:height-16
A = I((i:i+15),(j:j+15));
imwrite(A,[num2str(count) '.png']);
eval(['out_' num2str(count) '=A']);
count=count+1;
end
end