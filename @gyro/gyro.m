classdef gyro
    %GYRO Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        brick
        nosGyro
    end
    
    methods
        function obj = gyro(brick, nosGyro)
            %GYRO Construct an instance of this class
            %   Detailed explanation goes here
            obj.brick = brick;
            obj.nosGyro = nosGyro;

            obj.brick.GyroCalibrate(nosGyro);
            pause(5)
        end
    end
end

