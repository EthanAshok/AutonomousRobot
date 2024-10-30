function [s, flag] = driverControl(speedMultiplier, key, Drive, Lift)
%DriveRCONTROL Summary of this function goes here
%   Detailed explanation goes here
    switch key
            case 'i'
                switch (speedMultiplier)
                    case 0.5
                        speedMultiplier = 1;
                    case 1
                        speedMultiplier = 0.25;
                    case 0.25
                        speedMultiplier = 0.5;
                    otherwise
                        speedMultiplier = 0.5; 
                end
                s = speedMultiplier %#ok<NOPRT>
            case 'w'
                Drive.move(Drive, speedMultiplier)
            case 's'
                Drive.move(Drive, -speedMultiplier)
            case 'd'
                Drive.turn(Drive, -speedMultiplier)
            case 'a'
                Drive.turn(Drive, speedMultiplier)
            case 'e'
                Lift.toggleLift(Lift, 0.5)
            case 'x'
                flag = 1;
            otherwise
                Drive.move(Drive, 0)
    end
end

