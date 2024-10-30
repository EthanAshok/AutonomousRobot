function bool = atYellow(obj)
%Detects when robot hits yellow
bool = (obj.getColor() == 4);
end

