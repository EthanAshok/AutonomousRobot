function toggleLift(obj, s)
%TOGGLELIFT Toggles the lift
%   Properties
%       s (Numeric) Speed to move, -1 to 1

    if obj.brick.GetMotorAngle(obj.nosLift) < 100
        obj.brick.MoveMotorAngleAbs(obj.nosLift, 100*s, obj.liftDeg)
    else 
        obj.brick.MoveMotorAngleAbs(obj.nosLift, 100*s, 0)
    end
end
