function [V,F] = Lagrange( l )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
V=zeros(length(l),length(l));
F=zeros(length(l),1);
for k=1:length(l)
    V(:,k)=l.^(k-1);
    F(k)=cos(l(k));
end
end

