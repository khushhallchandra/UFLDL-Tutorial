function [ac] = act(x, type)
% this funtion activate different type of funtion
switch type
    case 'logistic'
        ac = 1./(1+exp(-x));
    case 'tanh'
        ac = tanh(x);
    case 'reLU'
        ac = bsxfun(@max, zeros(size(x)), x);
end

end
