function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    
    % Hypothesis
    h = X * theta;
    
    % Temp theta will be # of input parameters + 1 
    % size(X, 1) will be the # of samples
    % +1 for theta0
    thetaCount = size(X, 2);
    % create a theta vector
    thetaTemp = zeros(thetaCount, 1);
    
    for row = 1 : thetaCount
      thetaTemp(row) = theta(row) - (alpha*(1/m)) * sum((h - y) .* X(:, row));
    end
     
     theta = thetaTemp;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
