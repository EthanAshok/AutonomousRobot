function dist = getDist(obj)
%GETDIST Gets the distance from the ultrasonic sensor
dist = obj.brick.UltrasonicDist(obj.nosUltra);
end

