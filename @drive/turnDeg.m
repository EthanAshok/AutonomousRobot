function turnDeg(obj, s, tdeg)
%TURNDEG Turns drivetrain right at speed %s for deg amount of degrees
%   Moves motors set in obj at speed 100 * s
%   INPUT
%       obj (drive)    drive object
%       s   (Numeric)  perecent of max speed to move, between -1 and 1
%           turns right if s is positive
%       deg (Numberic) amount of degrees to turn

    obj.brick.ResetMotorAngle(obj.nosL);
    obj.brick.MoveMotorAngleRel(obj.nosL, 100*s, tdeg)
    obj.brick.MoveMotorAngleRel(obj.nosR, 90*s * -1, tdeg)
    pause(2)
    obj.move(0)
end

