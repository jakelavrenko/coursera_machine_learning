function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


H= X*theta;
  
error = H-y;
error_sqr = error .^2;


J =  (1/(2*m)) * sum (error_sqr) +  lambda * (sum (theta .^2) - theta(1,1)^2)/(2*m); 
 

  
%grad =  (1/m)) * sum (error)*X +  lambda * (theta - theta(1,1)^2)/m; 



grad = X'*(H-y)/m;

theta_reg = theta;
theta_reg(1,1)=0;

grad+= (lambda*theta_reg)/m ;






% =========================================================================

grad = grad(:);

end
