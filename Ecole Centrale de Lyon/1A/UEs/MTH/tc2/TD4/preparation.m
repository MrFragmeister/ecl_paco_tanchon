
T = 5;
N = 250;

h = T/N;
t = linspace(0,T,N+1);

y0 = 0;
z0 = 0;

y = zeros(1,N+1);
z = zeros(1,N+1);
y(1) = y0;
z(1) = z0;

for i = 1 : N
    y(i+1) = y(i) + h*func(t(i),y(i),z(i),1);
    z(i+1) = z(i) + h*func(t(i),y(i),z(i),2);
end


plot(t,y,t,z)
z(N+1)

