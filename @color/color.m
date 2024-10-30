classdef color
    %COLOR Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        brick
        nosColor
    end
    
    methods
        function obj = color(brick, nosColor)
            %COLOR Construct an instance of this class
            %   Detailed explanation goes here
            obj.brick = brick;
            obj.nosColor = nosColor;

            %obj.brick.setColorMode(2, 2);
        end
        color = getColor(obj)
    end
end

