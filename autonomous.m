function flag = autonomous(Drive, Lift, Ultra, Color)
%AUTONOMOUS Summary of this function goes here
%   Detailed explanation goes here
    %display(Ultra.getDist(Ultra))

    switch true
        case Color.atRed()
            Drive.move(0)
            pause(2)
            Drive.move(-.75)
            pause(.5)
        case Color.atBlue()
            flag = 0;
            return;
        case Color.atYellow()
            flag = 0;
            return;
        case Color.atGreen()
            flag = 0;
            return;
          
        case Ultra.atWall()
            Drive.move(0)
            pause(0.2)
            Drive.turnDeg(1, 360)
        otherwise
            Drive.move(-.75)
    end
    flag = 1;
end

