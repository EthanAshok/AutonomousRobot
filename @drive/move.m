function move(obj, s)
%MOVE Moves drivetrain forward at speed % s
%   Moves motors set in obj at speed 100 * s
%   INPUT
%       obj(drive)   drive object
%       s  (Numeric) perecent of max speed to move, between -1 and 1

    obj.brick.MoveMotor(obj.nosL, 100 * s)
    obj.brick.MoveMotor(obj.nosR, 97 * s)
end