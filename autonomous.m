function [flag, tMode, history] = autonomous(Drive, Lift, Ultra, Color, tcolor, tMode, history)
%AUTONOMOUS Summary of this function goes here
%   Detailed explanation goes here

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

        case Color.atBlue() || Color.atYellow() || Color.atGreen()
           color = Color.getColor();
           disp(color);
           if Color.atBlue()
               Drive.move(0);
               Drive.brick.playTone(100, 100, 500);
               pause(0.2)
               Drive.brick.playTone(100, 100, 500);
               pause(1)
           elseif Color.atGreen()
               Drive.move(0);
               Drive.brick.playTone(100, 100, 500);
               pause(0.2)
               Drive.brick.playTone(100, 100, 500);
               pause(0.2)
               Drive.brick.playTone(100, 100, 500);
               pause(1)
           end
           if color == tcolor
               flag = 0;
               history = ["move", "move", "move"];
               return
           end

           flag = 0;
           tMode = -1;
           history = ["move", "move", "move"];
           return;

        case Ultra.atWall()
            Drive.move(0)
            pause(0.2)
            flag = 1;
            %tMode = tMode * -1;
            disp(history(3))
            if history(3) == "turn"
                Drive.turnDeg(.5 * tMode * 1, 255)
            end

            Drive.turnDeg(.5 * tMode, 255)
            if history(2) == "turn"
                Drive.turnDeg(-.5 * tMode * 1, 255)
                Drive.move(0)
                Drive.move(.5)
                pause(2.5)
                Drive.turnDeg(.5 * tMode * 1, 255)
            end
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
                shiftHistory("move")
            end
    end
    flag = 1;
end
