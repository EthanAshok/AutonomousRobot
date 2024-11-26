global key
InitKeyboard()

Lift = lift(brick, 'C', 300);
Ultra = ultrasonic(brick, 4, 20);
Color = color(brick, 3);
Drive = drive(brick, 'B', 'D');

speedMultiplier = 1;
modeFlag = 0;
tcolor = 4; %target color
tMode = 1; %turn direciton
history = ["move", "move", "move"]; %movement history

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
                    [modeFlag, tMode, history] = autonomous(Drive, Ultra, Color, tcolor, tMode, history);
                case 2
                    Drive.move( 0)
                case 3
                    Drive.turnDeg(.5, 243)
            end
    end
end

CloseKeyboard();