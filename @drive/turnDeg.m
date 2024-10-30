function turnDeg(obj, s, tdeg)
%TURNDEG Turns drivetrain right at speed %s for deg amount of degrees
%   Moves motors set in obj at speed 100 * s
%   INPUT
%       obj (drive)    drive object
%       s   (Numeric)  perecent of max speed to move, between -1 and 1
%       deg (Numberic) amount of degrees to turn

    tar = -1;
    pDeg = 0;
    deg = 0;
    for c = 1:5
        while (tar == -1 || isnan(tar))
            pause(0.5)
            try
                deg = obj.Gyro.getDeg();
                tar = deg + tdeg;
                if (tar > 360)
                    tar = tar - 360;
                end
                disp(deg)
                disp(tar)
                disp("degunddar")
            catch e
                disp(e)
            end
        end
    end

    while (true)
        pause(0.1)
        disp(deg)
        disp(tar)
        try
            deg = obj.Gyro.getDeg();
            pDeg = deg;

            if (abs(deg) >= tar)
                break
            end
        catch e
            deg = pDeg;
            disp("err")
        end
        obj.turn(s)
    end
    obj.move(0)
end

