function [ fx ] = triangle( x ,a ,b ,c)

if x<a
    fx=0;
elseif x<=c
    fx=2*(x-a)/((b-a)*(c-a));
elseif x<=b
    fx=2*(b-x)/((b-a)*(b-c));
else
    fx=0;
end
