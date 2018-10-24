function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

%Create a "distance" matrix of size (m x K) and initialize it to all zeros.
% 'm' is the number of training examples, K is the number of centroids.
dist = zeros(size(X,1),K); 

% calculate the sum of the squares of the differences between 
% each row in the X matrix and a centroid  

for k = 1:K
    dist(:,k) = sum(bsxfun(@(x,mu_k) x-mu_k, X, centroids(k,:)) .^ 2, 2);
end
  
% return the index where the min() value was found for each example.

[min_dist, idx] = min(dist, [], 2);





% =============================================================

end

