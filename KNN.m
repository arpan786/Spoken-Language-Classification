function [ ind_closest, x_closest] = KNN(X1,X)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
k = 1;
dists = sqrt(sum(bsxfun(@minus, X, X1).^2, 2));
[d,ind] = sort(dists);
ind_closest = ind(1:k);
x_closest = X(ind_closest,:);

end

