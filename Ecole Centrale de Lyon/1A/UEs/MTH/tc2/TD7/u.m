function [ res ] = u( x,y,k )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

N=51;
B= Lap2D(N);

F=zeros(N^2,1);
h=1/(N+1);
tol=10^-5;

for i=1:N
    for j=1:N
        F((j+(i-1))*N)=f(i*h,j*h,k);
        if i==N
            F((j+(i-1))*N)=F((j+(i-1))*N)+g(1,j*h,k)/(h^2);    
        end 
    end
end

Err=1+tol;
iter=0;
limit=10;
V=Lap2D(N)\F;


while (Err>tol && iter<limit)
    iter=iter+1
    U=B\(F-8*V.^3);
    Err=norm(V-U,'inf');
    V=U;
    
end


res=U(floor(x*N),floor(y*N));
