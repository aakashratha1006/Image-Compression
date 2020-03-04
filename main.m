
tic
clc
clear all
fname=uigetfile('*.jpg');
I = imread(fname);
I=imresize(I,[256 256]);
I = (double(I))/255;

fprintf('Initialise variables');
K = 50; % number of clusters
imgSize = size(I); 
fprintf('Size of image=%d\n',imgSize);
itercentroids = 10; % number of times K means runs to find the best centroid
iterKMeans = 5; % number of times K means runs with different initial centroids
X = reshape(I, imgSize(1) * imgSize(2), 3); % resize into (total pixel x features)


%% Run K Means
for i=1:iterKMeans
    
    
    [centroids idx] = runKmeans(X, K, itercentroids);
    
    
    
        bestCentroids = centroids;
        bestidx = idx;   
   
    

%XCompressed = centroids(idx,:);

end

%% Display compressed image
XCompressed = bestCentroids(bestidx,:);

% Reshape the recovered image into proper dimensions
XCompressed = reshape(XCompressed, imgSize(1), imgSize(2), 3);
imshow(XCompressed);
title('compressed image');
t=toc



