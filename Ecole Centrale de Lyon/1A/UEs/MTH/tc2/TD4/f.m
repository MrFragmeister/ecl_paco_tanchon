function d = f( t,u,mode )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
v=[0 0];
v(1)= u(2);
v(2)= -u(1) - exp(t)*sin(u(2));
if mode==1
    d=v(1);
elseif mode==2
    d=v(2);
else 
    d=[v(1) v(2)];
end
end

