function flag = autonomous(Drive, Lift, Ultra, Color)
%AUTONOMOUS Summary of this function goes here
%   Detailed explanation goes here
    display(Ultra.getDist(Ultra))

    switch true
        case Color.atRed(Color)
            Drive.move(Drive, 0)
            pause(3)
            Drive.move(Drive, 1)
            pause(0.1)
        case Ultra.atWall(Ultra)
            Drive.move(Drive, 0)
            pause(0.2)
            Drive.turnDeg(Drive, 1, 1, 360)
        otherwise
            Drive.move(Drive, 1)
    end
    flag = 1;
end

