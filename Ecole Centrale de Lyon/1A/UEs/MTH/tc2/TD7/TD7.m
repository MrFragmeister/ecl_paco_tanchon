%%Exo 1

k=0.7;
N=100;
mat1 = vertcat(zeros(1,N+1), [-eye(N) zeros(N,1)]);
mat2 = mat1.';
A = 4*eye(N+1)+mat1+mat2;
%A=(1/(N^2))*A;

