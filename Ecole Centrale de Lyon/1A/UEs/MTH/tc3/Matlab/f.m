function [E] = f(t,p)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
E=zeros(length(t),1)
for k=1:length(t)
    E(k)=polyval(p,t);
end

