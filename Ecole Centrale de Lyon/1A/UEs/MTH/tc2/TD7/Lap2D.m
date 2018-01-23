function A=Lap2D(N)
h=1/(N+1);
% Construction de la matrice
H=4*eye(N)-diag(ones(N-1,1),1)-diag(ones(N-1,1),-1);
I=eye(N);
A=zeros(N*N,N*N);
for i = 1 : N
A(1+(i-1)*N:i*N,1+(i-1)*N:i*N) = H;
if i>1
A(1+(i-1)*N:i*N,1+(i-2)*N:(i-1)*N) = -I;
end
if i<N
A(1+(i-1)*N:i*N,1+(i)*N:(i+1)*N) = -I;
end
end
A=A/h^2;
