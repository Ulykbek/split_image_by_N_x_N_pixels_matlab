i_files=dir('./Split/images/*.tif');
[is1,is2]=size(i_files);

for q=1:1
    I = imread(['./Split/images/' i_files(q).name]);
    [width,height] = size(I);
    %BW = imbinarize(I,'adaptive');
    c=8;d=8; %split into 16x16 matrices 

    count = 0;
    for i=1:c:width-16
    for j=1:d:height-16
    A = I((i:i+15),(j:j+15));
    %A = BW((i:i+15),(j:j+15));
    imwrite(A,[i_files(q).name num2str(count) '.png']);
    count=count+1;
    end
    end

end

