% % % % % % % % % %
% Basic Functions %
% % % % % % % % % %

% move Sets the motors to move at a certain speed
% Inputs
%     s : 

global brick
global key

InitKeyboard()

function move(s) % moves forward with both motors at speed 100 * s
    global brick
    global nos_l
    global nos_r

    brick.MoveMotor(nos_l, 100 * s)
    brick.MoveMotor(nos_r, 100 * s)
end

function turn(s) % turns right with both motors at speed 100 * s
    global brick
    global nos_l
    global nos_r

    brick.MoveMotor(nos_l, 100*s*-1)
    brick.MoveMotor(nos_r, 100*s)
end

function turnDeg(s, dir, deg) % turns an amount deg at speed 100 * s in direction right (dir = 1) or left (dir = -1);
    global brick
    global nos_l
    global nos_r
    
    brick.MoveMotorAngleRel(nos_l, 100*s*-1* dir, deg*(4))
    brick.MoveMotorAngleRel(nos_r, 100*s * dir, deg*(4))

end

function toggleLift(s)
    global lift_flag;
    global brick
    global nos_lift
    brick.MoveMotorAngleRel(nos_lift, 100*s*lift_flag, 550);
    lift_flag = lift_flag * -1;
end

function driver_control()
    global speed_multiplier
    global key
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
                display(speed_multiplier)
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
    global brick
    global nos_ultra
    distance = brick.UltrasonicDist(nos_ultra);
    display(distance)

    switch true
        case (distance > 30)
            move(-1)
        case (distance < 30)
            move(0)
            pause(0.2)
            turnDeg(1, 1, 90)
        otherwise
            move(0)
    end
end

function setup(l, r, lift, ultra)
    global brick % assume brick has already been initialized with brick = ConnectBrick("8k")
    global key

    global nos_l
    global nos_r
    global nos_lift
    global nos_ultra
    nos_l = l;
    nos_r = r;
    nos_lift = lift;
    nos_ultra = ultra;
    global lift_flag;
    lift_flag = 1;

    global speed_multiplier
    speed_multiplier = 1;
    
    %InitKeyboard();

    while 1
        pause(0.1)
            %autonomous()
            driver_control()
    end
end

setup('A', 'D', 'B', 1);

CloseKeyboard();