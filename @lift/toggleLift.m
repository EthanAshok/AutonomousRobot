function toggleLift(obj, s)
%TOGGLELIFT Summary of this function goes here
%   Detailed explanation goes here
    disp(obj.brick.GetMotorAngle(obj.nosLift))

    if obj.brick.GetMotorAngle(obj.nosLift) < 100
        obj.brick.MoveMotorAngleAbs(obj.nosLift, 100*s, obj.liftDeg)
    else 
        obj.brick.MoveMotorAngleAbs(obj.nosLift, 100*s, 0)
    end
end
