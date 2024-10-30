classdef lift
    %LIFT Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        brick
        nosLift
        liftDeg
    end
    
    methods
        function obj = lift(brick, nosLift, liftDeg)
            %LIFT Construct an instance of this class
            %   Detailed explanation goes here
            obj.brick = brick;
            obj.nosLift = nosLift;
            obj.liftDeg = liftDeg;

            obj.tare();
        end

        tare(obj)
        toggleLift(obj, s)
    end
end

