function [ dx ] = dev(x, type)
%DEV derivative of the functions  sigmoid, tanh, and relu
switch type
    case 'logistic'
        dx = bsxfun(@times, sigmoid(x), (1 - sigmoid(x)));
    case 'tanh'
        dx = bsxfun(@power, sech(x), 2);
    case 'reLU'
        dx = bsxfun(@max, zeros(size(x)), x>0);
end
end
