classdef ultrasonic
    %ULTRASONIC Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        brick
        nosUltra
        threshold
    end
    
    methods
        function obj = ultrasonic(brick, nosUltra, threshold)
            %ULTRASONIC Construct an instance of this class
            %   Detailed explanation goes here
            obj.brick = brick;
            obj.nosUltra = nosUltra;
            obj.threshold = threshold;
        end

        dist = getDist(obj)
        bool = atWall(obj)
        
    end
end

