function bool = atRed(obj)
%Detects when robot hits red
bool = (obj.getColor() == 5);
end

