function [ x ] = triangle_inv( t,a,b,c )

if t<= (b-a)/(c-a)
    
    x= sqrt(t*(c-a)*(b-a))+a;
    
elseif t> (b-a)/(c-a)
    
    x= c-sqrt((1-t)*(c-a)*(c-b));
end



end

