img4= imread('01.png');
% input the picture
imgGray5= rgb2gray(img5);
% change to gray
offsets = [0 1; -1 1;-1 0;-1 -1];
% four direction
[glcms4,SI4] = graycomatrix(imgGray4, 'offset', offsets, 'Symmetric', true);
% get the GLCM
M4=mean(glcms4,3);
% get the average of four direction
res1 = haralickTextureFeatures(M4);
% haralick texture features