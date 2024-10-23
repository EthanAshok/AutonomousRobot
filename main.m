function move(s) % moves forward with both motors at speed 100 * s
    global brick
    global nos_l
    global nos_r

    brick.MoveMotor(nos_l, 100*s)
    brick.MoveMotor(nos_r, 100*s)
end

function turn(s)
    global brick
    global nos_l
    global nos_r

    brick.MoveMotor(nos_l, 100*s*-1)
    brick.MoveMotor(nos_r, 100*s)
end

function toggleLift(s)
    global lift_flag;
    global brick
    global nos_lift
    brick.MoveMotorAngleRel(nos_lift, 100*s*lift_flag, 550);
    lift_flag = lift_flag * -1;
end

function driver_control(key)
    global speed_multiplier
    switch key
            case 'i'
                switch (speed_multiplier)
                    case 1
                        speed_multiplier = 2;
                    case 2
                        speed_multiplier = 0.5;
                    case 0.5
                        speed_multiplier = 1;
                end
            case 'w'
                move(speed_multiplier)
            case 's'
                move(-speed_multiplier)
            case 'd'
                turn(-speed_multiplier)
            case 'a'
                turn(speed_multiplier)
            case 'e'
                toggleLift(0.5)
            case 'q' % kill switch
                move(0)
            otherwise
                move(0)
    end
end

function autonomous()
end

function setup(l, r, lift)
    global brick % assume brick has already been initialized with brick = ConnectBrick("8k")

    global nos_l
    global nos_r
    global nos_lift
    nos_l = l;
    nos_r = r;
    nos_lift = lift;

    global lift_flag;
    lift_flag = 1;

    global speed_multiplier
    speed_multiplier = .75;

    global key
    InitKeyboard();

    while 1
        pause(0.1)
            autonomous()
            %driver_control(key)
    end
end

setup('A', 'D', 'B');

CloseKeyboard();