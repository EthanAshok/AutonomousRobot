
classdef drive
    %DRIVE Controls robot drivetrain
    
    properties
        brick
        nosL
        nosR
    end
    
    methods
        function obj = drive(brick, nosL, nosR)
            %DRIVE Construct an instance of this class
            %   INPUT
            %       brick (obj)    brick object
            %       nosL  (String) left motor port
            %       nosR  (String) right motor port
            obj.brick = brick;
            obj.nosL = nosL;
            obj.nosR = nosR;
        end
        
        move(obj, s)
        turn(obj, s)
        turnDeg(obj, s, deg)
    end
end

