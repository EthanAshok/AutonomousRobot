

InitKeyboard()

Drive = drive(brick, 'A', 'D');
Lift = lift(brick, 'B', 425);
Ultra = ultrasonic(brick, 1, 50);
Color = color(brick, 2);

speedMultiplier = 1;
modeFlag = 3;

while true
    pause(0.01)
    switch key
        case 'q'
            Drive.drive(Drive, 0)
            break;
        otherwise
            switch modeFlag
                case 0
                    [modeFlag, speedMultiplier] = driverControl(speedMultiplier, key, Drive, Lift);
                case 1
                    modeFlag = autonomous(Drive, Lift, Ultra, Color);
                case 2
                    Drive.move(Drive, 0)
            end
    end
end

CloseKeyboard();