%% 2
image = imread('dog.jpg');    % read a image

imshow(image)                 % show image

%% 3
size(image)

%% 4

resizedimage = imresize(image, [318 634])     % resize image

imshow(resizedimage)         % show image


imshowpair(image,resizedimage)     % compare both image


%% exercise 2
grey_scale = rgb2gray(imread('dog.jpg'));
imshow(grey_scale)

I2 = flipdim(grey_scale ,2);           %# horizontal flip
imshow(I2);

I3 = flipdim(grey_scale ,1);            %# vertical flip
imshow(I3);
I4 = flipdim(I3,2);            %# horizontal+vertical flip
imshow(I4)









