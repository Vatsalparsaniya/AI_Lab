clf
alpha = 3
x=-100:1:100;
y=max(0,alpha*x);
plot(x,y,"g");


alpha = 2
x=-100:1:100;
y=max(0,alpha*x);
plot(x,y,"r");

alpha = 1
x=-100:1:100;
y=max(0,alpha*x);
plot(x,y,"p");


alpha = 0.5
x=-100:1:100;
y=max(0,alpha*x);
plot(x,y,"y");
