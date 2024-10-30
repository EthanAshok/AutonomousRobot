function bool = atWall(obj)
%ATWALL Summary of this function goes here
%   Detailed explanation goes here
bool = (obj.getDist(obj) <= obj.threshold);
end

