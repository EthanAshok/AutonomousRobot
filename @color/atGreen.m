function bool = atGreen(obj)
%Detects when robot hits green
bool = (obj.getColor() == 3);
end

