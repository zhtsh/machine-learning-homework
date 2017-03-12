function J = costFuncitonJ( X, y, theta )
% X is input examples
% y is label values
% theta is params

m = size(X, 1);
prediction = X*theta;
bias = (prediction - y) .^ 2;
J = 1/(2*m)*sum(bias);

end

