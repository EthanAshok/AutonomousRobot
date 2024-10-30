function toggleLift(obj, s)
%TOGGLELIFT Summary of this function goes here
%   Detailed explanation goes here

    if obj.brick.getMotorAngle(obj.nosLift) > 100
        obj.brick.MoveMotorAngleAbs(obj.nosLift, 100*s, obj.liftDeg)
    else 
        obj.brick.MoveMotorAngleAbs(obj.nosLift, -100*s, 0)
    end
end
