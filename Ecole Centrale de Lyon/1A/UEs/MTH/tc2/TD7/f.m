function [ res ] = f( x,y,k )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


res=(1+k^2)*(pi^2)*sin(pi*y)*sin(k*pi*x)+(8*(sin(pi*y)*sin(k*pi*x)+sin(pi*y)*sin(pi*x/2)*cos(pi*k))^3)+(5/4)*(pi^2)*sin(pi*y)*sin(pi*x/2)*cos(pi*k);

end

