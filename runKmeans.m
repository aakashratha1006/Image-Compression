function [centroids idx] = runKmeans(X, K, iterCentroids)

% This function runs K means the number of times specified by iterKMeans.
% returns the final centroids

% Initialize centroids
fprintf('Initializing centroids\n');
centroids = initcent(X,K);
for num=1:iterCentroids
    % return index of closest centroid for each point
    idx = findclosestcentroids(X, centroids);
    
    % Compute New centroid of each cluster
    centroids = computenewcent(X, idx, K);
    
end
