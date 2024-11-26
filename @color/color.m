classdef color
    %COLOR Controls the color sensor
    
    properties
        brick
        nosColor
    end
    
    methods
        function obj = color(brick, nosColor)
            %COLOR Construct an instance of this class
            %   INPUT
            %       brick    (Obj)   Brick object
            %       nosColor (Char)  Color sensor port 
            obj.brick = brick;
            obj.nosColor = nosColor;

            %obj.brick.setColorMode(2, 2);
        end
        color = getColor(obj)
        bool = atRed(s)
    end
end

