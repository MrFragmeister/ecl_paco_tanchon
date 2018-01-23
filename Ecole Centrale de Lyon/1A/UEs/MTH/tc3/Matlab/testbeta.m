t=[];
for i=1:100000
    t=[t 15*betarnd(3,4)];
end

histogram(t);