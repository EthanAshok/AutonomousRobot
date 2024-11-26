classdef ultrasonic
    %ULTRASONIC Controls the ultrasonic sensor
    
    properties
        brick
        nosUltra
        threshold
    end
    
    methods
        function obj = ultrasonic(brick, nosUltra, threshold)
            %ULTRASONIC Construct an instance of this class
            %   INPUT
            %       brick     (Obj)     Brick object
            %       nosUltra  (Char)    Ultrasonic sensor port 
            %       threshold (Numeric) Threshold to sense wall
            obj.brick = brick;
            obj.nosUltra = nosUltra;
            obj.threshold = threshold;
        end

        dist = getDist(obj)
        bool = atWall(obj)
        
    end
end

