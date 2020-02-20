clf
alpha = 1
x=-5:.1:5
y= 1./(1+alpha*exp(-x));
plot(x,y);

alpha = .7
x=-5:.1:5
y= 1./(1+alpha*exp(-x));
plot(x,y,"p");
 
alpha = .5
x=-5:.1:5
y= 1./(1+alpha*exp(-x));
plot(x,y,"g");


alpha = 0.3
x=-5:.1:5
y= 1./(1+alpha*exp(-x));
plot(x,y,"r");


alpha = 2
x=-5:.1:5
y= 1./(1+alpha*exp(-x));
plot(x,y,"y");

