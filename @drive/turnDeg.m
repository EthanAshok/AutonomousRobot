function turnDeg(obj, s, deg)
%TURNDEG Turns drivetrain right at speed %s for deg amount of degrees
%   Moves motors set in obj at speed 100 * s
%   INPUT
%       obj (drive)    drive object
%       s   (Numeric)  perecent of max speed to move, between -1 and 1
%       deg (Numberic) amount of degrees to turn

    obj.brick.MoveMotorAngleRel(obj.nosL, 100*s, deg)
    obj.brick.MoveMotorAngleRel(obj.nosR, 97*s * -1, deg)
    obj.brick.WaitForMotor(obj.nosR)
    obj.move(0)
end

