function bool = atWall(obj)
%ATWALL Summary of this function goes here
%   Detailed explanation goes here
dist = obj.getDist()
bool = (dist <= obj.threshold);
end

