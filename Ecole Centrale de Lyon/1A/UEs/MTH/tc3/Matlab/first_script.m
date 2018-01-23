%c'est un commentaire

%a = 3+4
%b=sqrt(16)

%A=[2*ones(2,2), 3*eye(2) ;[2 5; 10 -3] , -1*ones(2,2)]

%v1=A(2,:)
%v2=A(:,3)

%C=dot(v1,v2)

%v3=A(4,:)

%sort(v3)

%x=0:pi/200:2*pi
%y=sin(x)

%plot(x,y)

%somme_prod(2,7)

%D=zeros(1000,1)
%for k =1:1000
   % D(k)=moyenne(1000);
%end

X=random('unif',-1,1,100,1)

[V,F]=Lagrange(X)

p=F\V

t=-1:0.01:1
y=polyval(p(:1),t)

plot(t,y)
%histogram(D,100)