x1 = input('Enter Value of x1 : ');
x2 = input('Enter Value of x2 : ');
x0 = 1;
t=0:.1:1
figure(1);
scatter([0 0 1 1],[0 1 0 1],"fill", "s");
for w0 = linspace(0,1,10)
    for w1 = linspace(0,1,10)
        for w2 = linspace(0,1,10)
            if w0*x0 + w1*x1 + w2*x2 >= 1 then
                w = [w0 w1 w2];
                //scatter([w1*x1-w0*x0 0],[w2*x2-w0*x0 0])
                y = w0*x0
                disp(w);
            end
         end
    end
end
