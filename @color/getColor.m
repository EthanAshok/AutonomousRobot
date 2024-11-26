function color = getColor(obj)
%GETCOLOR Gets the current sensed color
    color = obj.brick.ColorCode(obj.nosColor);
end

