function bool = atWall(obj)
%ATWALL Returns if the robot is at a wall.
bool = (obj.getDist() <= obj.threshold);
end

