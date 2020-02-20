clf
alpha = 0.5;
x=-20:400;

for i=1:421;
    if x(i)<0 then
        y(i) = alpha*(exp(x(i)-1));
    else
        y(i)=x(i);
    end
end
plot(x,y);
