function [flag, tMode, history] = autonomous(Drive, Ultra, Color, tColor, tMode, history)
    %DRIVERCONTROL Controller for manual control of robot
    %   INPUT
    %       Drive   (Obj)     Drive object
    %       Lift    (Obj)     Lift object
    %       Color   (Obj)     Color object
    %       tColor  (Numeric) Target color in color code
    %       tMode   (Numeric) Turn mode
    %       history (Array)   History of movement

    function shiftHistory(action)
        history(1) = history(2);
        history(2) = history(3);
        history(3) = action;
    end

    switch true
        case Color.atRed()
           Drive.move(0)
           pause(2)
           Drive.move(.5)
           pause(2)
           Drive.move(0)
           Drive.turnDeg(.5 * -tMode, 250)
           tMode = 1;
           shiftHistory("turn");

        case Color.atBlue() || Color.atYellow() || Color.atGreen()
           color = Color.getColor();
           disp(color);
           if Color.atBlue()
               Drive.move(0);
           elseif Color.atGreen()
               Drive.move(0);
           end
           if color == tColor
               flag = 0;
               history = ["move", "move", "move"];
               return
           end

           flag = 0;
           tMode = -1;
           history = ["move", "move", "move"];
           return;

        case Ultra.atWall()
            disp(" ")
            disp(history(3))
            disp(history(2))
            disp(history(1))
            disp(" ")
            Drive.move(0)
            pause(0.2)
            flag = 1;

            if (history(3) == "turn")
                if history(2) == "turn"
                    Drive.turnDeg(.5 * tMode * -1, 243)
                    Drive.move(0)
                    pause(0.1)
                    Drive.move(.5)
                    pause(2.5)
                    Drive.turnDeg(.5 * tMode * 1, 255)
                    history = ["drive", "drive", "turn"];
                    return;
                else
                    Drive.turnDeg(.5 * tMode * 1, 255)
                end
            end
            
            Drive.turnDeg(.5 * tMode, 255)

            shiftHistory("turn");
            Ultra.getDist()
            pause(.1)
            Ultra.getDist()
            pause(.1)
            Ultra.getDist()
            pause(1)
            return;
        otherwise

            Drive.move(.5)
            if (history(3) ~= "move")
                history = ["move", "move", "move"];
            end
    end
    flag = 1;
end
