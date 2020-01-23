x1 = 1;
x2 = 1;
x0 = 1;
t=0:.1:1
figure(1);
scatter([0 0 1 1],[0 1 0 1],"fill", "s");
xlabel('x1');
ylabel('x2');
w0 = 0;
// y= mx+c
// x2*w2 = 2-w1*x1
for w1 = linspace(0,1,10)
    for w2 = linspace(0,1,10)
        if  w1*x1 + w2*x2 > 1 then
            w = [w0 w1 w2];
            point1= [1-w2 1];
            point2= [1 1-w1];
            plot(point1,point2);
            disp(w);
        end
     end
end

