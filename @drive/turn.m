function turn(obj,s)
%TURN Turns drivetrain right at speed %s
%   Moves motors set in obj at speed 100 * s
%   INPUT
%       obj(drive)   drive object
%       s  (Numeric) perecent of max speed to move, between -1 and 1

    obj.brick.MoveMotor(obj.nos_l, 100*s*-1)
    obj.brick.MoveMotor(obj.nos_r, 97*s)
end
