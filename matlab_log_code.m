workspace;  % Make sure the workspace panel is showing.
% Read in and display the original gray scale image.
grayImage = imread('Cameraman.tif');
grayImage = double(grayImage);
subplot(2,1,1);
imshow(grayImage, []);
axis on;
title('Original Image', 'FontSize', 15);
% Enlarge figure to full screen.
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
% Give a name to the title bar.
set(gcf, 'Name', 'Demo by ImageAnalyst', 'NumberTitle', 'Off') 
% Take the log of it.  Add 1 to avoid taking log of zero.
logImage = log(grayImage+1);
% Normalize to the range 0-1.
normalizedImage = mat2gray(logImage);
% Display it.
subplot(2,1,2);
imshow(normalizedImage, []);
axis on;
title('Log Image', 'FontSize', 15);
% If you want a uint8 version, then you can multiply by 255
% uint8Image = uint8(255 * normalizedImage);
msgbox('Note how the coat has more details');