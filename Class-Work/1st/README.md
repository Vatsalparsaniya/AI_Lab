
        --> img = imread('baboon.png');

        --> img_gray = rgb2gray(img);

        --> imshow(img_gray)

        -->  imhist(img_gray,[],1);

        --> help imnoise

        --> imn = imnoise(img_gray, 'gaussian');

        --> imshow(imn)

        --> imshow(imn); imshow(img_gray);

        --> figure(1);imshow(imn);figure(2); imshow(img_gray);

        --> help gaussianBlur

        --> imn = imnoise(img, 'salt & pepper');imshow(imn);

        --> imn = imnoise(img_gray, 'gaussian',5,2);

        --> imshow(imn)

        --> imn = imnoise(img_gray, 'gaussian',0.1,1);

        --> imshow(imn)
