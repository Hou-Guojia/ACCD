function Tr = pca(X)
%Principal Component Analysis
% Centering processing
meanX = ones(size(X,1), 1) * mean(X);  
centredX = X - meanX;
% Directly call cov to calculate the covariance matrix
C = cov(centredX);
C(find(isnan(C)==1)) = 0;
% W is the matrix consisting of eigenvectors (4¡Á4) and Lambda is the diagonal matrix consisting of eigenvalues
[W, Lambda] = eig(C);     
% Extracting characteristic values
ev = (diag(Lambda))';	
% The computed eigenvalues are in ascending order, so here we manually reverse the order (similarly for W).
ev = ev(:, end:-1:1);		
W = W(:, end:-1:1);
% It can be verified that the sum of the squares of the elements of each eigenvector is 1
sum(W.*W, 1);
% Extract the eigenvectors of the first principal component
Wr = W(:,1);
% Data points in new coordinate space
Tr = centredX * Wr;

end

