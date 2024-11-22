function turn(obj,s)
%TURN Turns drivetrain right at speed %s
%   Moves motors set in obj at speed 100 * s
%   INPUT
%       obj(drive)   drive object
%       s  (Numeric) perecent of max speed to move, between -1 and 1

    obj.brick.MoveMotor(obj.nosL, 100*s*-1)
    obj.brick.MoveMotor(obj.nosR, 90*s)
end

