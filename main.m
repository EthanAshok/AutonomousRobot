global key
InitKeyboard()

Lift = lift(brick, 'C', 300);
Ultra = ultrasonic(brick, 4, 20);
Color = color(brick, 3);
%Gyro = gyro(brick, 4);
Drive = drive(brick, 'B', 'D');

speedMultiplier = 1;
modeFlag = 0;
tcolor = 3; %yellow = 4
tMode = 1;
history = ["move", "move", "move"];

Ultra.getDist()
Ultra.getDist()
Ultra.getDist()

while true
    pause(0.1)

    switch key
        case 'q'
            Drive.move(0)
            break;
        otherwise
            switch modeFlag
                case 0
                    [modeFlag, speedMultiplier] = driverControl(speedMultiplier, key, Drive, Lift);
                case 1
                    [modeFlag, tMode, history] = autonomous(Drive, Lift, Ultra, Color, tcolor, tMode, history);
                case 2
                    Drive.move( 0)
                case 3
                    Drive.turnDeg(.5, 243)
            end
    end
end

CloseKeyboard();