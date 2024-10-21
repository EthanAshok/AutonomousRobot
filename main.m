global key
global brick % assume brick has already been initialized with brick = ConnectBrick("8k")
InitKeyboard();

speed_mulltiplier = 1;

brick.MoveMotor('A', 0)
brick.MoveMotor('B', 0)
brick.MoveMotor('C', 0)
brick.MoveMotor('D', 0)
while 1
    pause(0.1)
    switch key
        case 'i'
            speed_multiplier = 2;
        case 'w'
            brick.MoveMotor('A', 50 * speed_mulltiplier)
            brick.MoveMotor('D', 50 * speed_multiplier)
        case 's'
            brick.MoveMotor('A', -50 * speed_multiplier)
            brick.MoveMotor('D', -50 * speed_multiplier)
        case 'd'
            brick.MoveMotor('A', 50 * speed_multiplier)
            brick.MoveMotor('D', -50 * speed_multiplier)
        case 'a'
            brick.MoveMotor('A', -50 * speed_multiplier)
            brick.MoveMotor('D', 50 * speed_multiplier)
        case 'e'
            brick.MoveMotorAngleRel('B', 50 * speed_multiplier, 1000)
        case 'r'
            brick.MoveMotorAngleRel('B', -50 * speed_multiplier, 1000)
        case 'q' % kill switch
            brick.MoveMotor('A', 0)
            brick.MoveMotor('B', 0)
            brick.MoveMotor('C', 0)
            brick.MoveMotor('D', 0)
            break;
        otherwise
            brick.MoveMotor('A', 0)
            brick.MoveMotor('B', 0)
            brick.MoveMotor('C', 0)
            brick.MoveMotor('D', 0)
    end
end

CloseKeyboard();