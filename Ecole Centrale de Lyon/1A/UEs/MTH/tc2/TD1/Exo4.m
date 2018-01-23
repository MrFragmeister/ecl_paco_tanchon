mat1 = vertcat(zeros(1,3), [-eye(2) zeros(2,1)]);
mat2 = mat1.';
A = 2*eye(3)+mat1+mat2;
les_x=2*ones(3,1);
les_y=ones(3,1);
nb_iter=1000;
i=1
while (i<nb_iter)
    les_y=[les_y A*les_x(i)];
    les_x=[les_x les_y(i+1)/norm(les_y(i))];
    i=i+1;
end

les_x(i)
