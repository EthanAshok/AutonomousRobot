global key
global brick % assume brick has already been initialized with brick = ConnectBrick("8k")
InitKeyboard();
while 1
    pause(0.1)
    switch key
        case 'q' % kill switch
            brick.MoveMotor('1', 0)
            brick.MoveMotor('2', 0)
            brick.MoveMotor('3', 0)
            brick.MoveMotor('4', 0)
            brick.MoveMotor('A', 0)
            brick.MoveMotor('B', 0)
            brick.MoveMotor('C', 0)
            brick.MoveMotor('D', 0)

            break;
    end
end

CloseKeyboard();