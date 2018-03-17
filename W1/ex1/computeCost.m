function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% .^ = Element-by-element power operator. If both operands are 
% matrices, the number of rows and columns must both agree, or they 
% must be broadcastable to the same shape. If several complex results 
% are possible, the one with smallest non-negative argument (angle) is 
% taken. This rule may return a complex root even when a real root is 
% also possible. Use realpow, realsqrt, cbrt, or nthroot if a 
% real result is preferred.

J = (1/(2*m)) * sum(((X*theta)-y).^2);


% =========================================================================

end
