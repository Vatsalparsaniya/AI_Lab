clf
alpha = 0.5;
x=-200:200;

for i=1:401;
    if x(i)<0 then
        y(i) = alpha.*x(i);
    else
        y(i)=x(i);
    end
end
plot(x,y);
