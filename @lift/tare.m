function tare(obj)
%TARE Tares the lift motor
%   Set's the lift motor potentiometer to degrees = 0
    obj.brick.ResetMotorAngle(obj.nosLift);
end

