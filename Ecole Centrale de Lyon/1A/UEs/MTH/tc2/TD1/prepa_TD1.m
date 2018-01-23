%% Paramètres généraux
d=5; % Dimension des matrices
alpha=0.01; % Coefficient alpha


%% Definition de A

mat1 = vertcat(zeros(1,d), [-eye(d-1) zeros(d-1,1)]);
mat2 = mat1.';
A = 2*eye(d)+mat1+mat2;

%% Definition de B

B= ones(d,1);

%% Methode iterative
n=1;
X=[ones(d,1)];
while norm(A*X(n)-B,inf)>=10^(-3)
    D=norm(A*X(n)-B,inf)
    Xnplusun=X(n)-alpha*(A*X(n)-B);
    X=[X Xnplusun];
    n=n+1;
end
norm(X(n)-(A/B),inf)