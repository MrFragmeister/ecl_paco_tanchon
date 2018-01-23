%% Declaration des variables
d=3;
les_ai=[1 1 1];
les_bi=[2 2];
les_ci=[2 2];
les_ui=[1];
les_vi=les_ci;
les_li=[];

%% Decomposition LU
for i = 2:d:1
    les_li=[les_li les_bi(i-1)/les_ui(i-1)];
    les_ui=[les_ui les_ai(i)- les_bi(i-1)/les_ui(i-1)];
end

les_ui
les_vi
les_li