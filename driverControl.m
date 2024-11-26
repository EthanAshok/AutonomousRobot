function [flag, s] = driverControl(speedMultiplier, key, Drive, Lift)
    %DRIVERCONTROL Controller for manual control of robot
    %   INPUT
    %       speedMultiplier (Numeric) Speed to move, -1 to 1
    %       key             (Char)    key pressed
    %       Drive           (Obj)     Drive object
    %       Lift            (Obj)     Lift object
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
                flag = 0;
                return;
            case 'w'
                Drive.move(speedMultiplier)
            case 's'
                Drive.move(-speedMultiplier)
            case 'd'
                Drive.turn(speedMultiplier)
            case 'a'
                Drive.turn(-speedMultiplier)
            case 'e'
                Lift.toggleLift(.25)
            case 'x'
                flag = 1;
                s = speedMultiplier;
                return;
            otherwise
                Drive.move(0)
    end
    s = speedMultiplier;
    flag = 0;
end

