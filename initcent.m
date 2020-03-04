function initialisecentroids = initcent(X, K) %initialising new centroids

temp = (randperm(length(X)))'; % random permutation 
initialisecentroids = X(temp(1:K,1),:); % select first K rows as initial centroids
