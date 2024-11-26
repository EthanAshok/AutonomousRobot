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
            %Lift Construct an instance of this class
            %   INPUT
            %       brick     (Obj)   Brick object
            %       nosLift  (Char)   Lift sensor port 
            %       liftDeg (Numeric) Degree amount to actuate lift
            obj.brick = brick;
            obj.nosLift = nosLift;
            obj.liftDeg = liftDeg;
        
            obj.brick.MoveMotor(nosLift, -100)
            pause(2)
            obj.brick.MoveMotor(nosLift, 0)
            obj.tare();

        end

        tare(obj)
        toggleLift(obj, s)
    end
end

