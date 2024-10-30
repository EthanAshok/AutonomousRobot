function flag = autonomous(Drive, Lift, Ultra, Color)
%AUTONOMOUS Summary of this function goes here
%   Detailed explanation goes here
    %display(Ultra.getDist(Ultra))
disp(Ultra.getDist())
disp(Ultra.atWall())
    switch true
        case Color.atRed()
            Drive.move(0)
            pause(2)
            Drive.move(-.75)
            pause(.5)
        case Ultra.atWall()
            Drive.move(0)
            pause(0.2)
            Drive.turnDeg(-.5, 90)
        otherwise
            Drive.move(-.75)
    end
    flag = 1;
end

