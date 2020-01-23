X = [[0 0] [0 1] [1 0] [1 1]]
Y = [0 1 1 1]

figure(1)
p = scatter([ 0 0 1 1],[ 0 1 0 1],"fill", "x")
xlabel('x1');
ylabel('x2');

// w2*x2 = w1*(-1)*x1 + 1.5

for x1 = linspace(0,2,5)
    for x2 = linspace(0,2,5)
        for w1 = linspace(0,10,10)
            for w2 = linspace(0,10,10)
                if  w1*x1 + w2*x2 < 1 then
                    if (1/w1 <1 )&&(1/w2<1) then
                        plot([0 1/w1],[1/w2 0]);
                    end
                end
            end
        end
    end
end
