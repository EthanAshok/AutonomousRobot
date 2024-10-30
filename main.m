global key
InitKeyboard()

Lift = lift(brick, 'B', 425);
Ultra = ultrasonic(brick, 1, 20);
Color = color(brick, 2);
Gyro = gyro(brick, 4);
Drive = drive(brick, Gyro, 'A', 'D');

speedMultiplier = 1;
modeFlag = 0;

while true
    pause(0.1)
    try
        disp(Gyro.getDeg())
    catch e
    end

    switch key
        case 'q'
            Drive.move(0)
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