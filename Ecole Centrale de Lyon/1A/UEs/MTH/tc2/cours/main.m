clear
close all

T = 1;
N = 100;

h = T/N;
t = linspace(0,T,N+1);

u0 = 1;

u = zeros(1,N+1);
u(1) = u0;

for i = 1 : N
    u(i+1) = u(i) + h*f(t(i),u(i));
end

uex = exp(t.^2);
plot(t,u,t,uex)