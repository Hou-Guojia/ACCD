function p = normalization(p)
% normalization
MIN = min(min(p)); 
MAX = max(max(p));
p = (p - MIN)/(MAX - MIN);
end

