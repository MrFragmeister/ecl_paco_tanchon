N=100;
alpha=23;
U=zeros(1,N+1);
V=zeros(1,N+1);
F=zeros(1,N+1);
for n=1:N+1
    F(n)=f(n/(N+1),alpha);
    V(n)=n/(N+1)*sin(pi*n/(N+1));
end


mat1 = vertcat(zeros(1,N+1), [-eye(N) zeros(N,1)]);
mat2 = mat1.';
A = 2*eye(N+1)+mat1+mat2;
A=(1/(N^2))*A;

for i=1:10
    B=(F-alpha*(U.^3));
    U=A\B.';
end


plot(1:N+1,U,1:N+1,V)