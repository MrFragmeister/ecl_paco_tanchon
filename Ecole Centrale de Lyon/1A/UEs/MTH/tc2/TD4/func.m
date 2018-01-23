function r = func( t,y,z,mode )

if mode==1
    r= -50*y + exp(-(t.^2));
else
    r= 50*y - 2*(z^2);
    
end
end

