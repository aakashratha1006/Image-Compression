%% K means clustering 
for num=1:itercentroids
    
    %fprintf('Starting iteration number %d\n\n',num);
    
    % return index of closest centroid for each point
    idx = findclosestcentroids(X, centroids);
    
    % Compute New centroid of each cluster
    centroids = computenewCent(X, idx, K);
    if i==1
        bestCentroids = centroids;
        
        bestidx = idx;
    elseif (i>1) % stores the clustering
        bestCentroids = centroids;
        bestidx = idx;   
    end
 