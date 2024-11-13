function turnDeg(obj, s, tdeg)
%TURNDEG Turns drivetrain right at speed %s for deg amount of degrees
%   Moves motors set in obj at speed 100 * s
%   INPUT
%       obj (drive)    drive object
%       s   (Numeric)  perecent of max speed to move, between -1 and 1
%           turns right if s is positive
%       deg (Numberic) amount of degrees to turn

    
    obj.brick.MoveMotorAngleRel(obj.nosL, 100*s, tdeg)
    obj.brick.MoveMotorAngleRel(obj.nosR, 97*s * -1, tdeg)
    %obj.brick.WaitForMotor(obj.nosL)
    pause(.5)
    obj.move(0)

    return;
    tar = -1;
    pDeg = 0;
    deg = 0;
    for c = 1:5
        while (tar == -1 || isnan(tar))
            pause(0.5)
            try
                deg = obj.Gyro.getDeg();
                if (s <= 0)
                    tar = deg + tdeg;
                else 
                    tar = deg - tdeg;
                end
                %if (tar > 360)
                %    tar = tar - 360;
                %end
                disp("ideg:" + deg)
                disp("itar:" + tar)
                disp("degunddar")
            catch e
                disp(e)
            end
        end
    end

    while (true)
        pause(0.1)
        disp("Deg:" + deg)
        disp("Tar:" + tar)
        try
            deg = obj.Gyro.getDeg();
            %pDeg = deg;

            if (deg >= tar && s <= 0) || (deg <= tar && s > 0)
                disp("done!")
                break;
            end
        catch e
            %deg = pDeg;
            disp("err")
        end
        obj.turn(s)
    end
    obj.move(0)
end

