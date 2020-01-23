X = [[0 0] [0 1] [1 0] [1 1]]
Y = [0 0 0 1]

figure(1);
scatter([0 0 1 1],[0 1 0 1],"fill", "s");
xlabel('x1');
ylabel('x2');

// w2*x2 = w1*(-1)*x1 + 1.5

for x1 = linspace(0,2,10)
    for x2 = linspace(0,2,10)
        for w1 = linspace(0,1,10)
            for w2 = linspace(0,1,10)
                if  w1*x1 + w2*x2 > 1.5 then
                    if (1.5/w1 <2 )&&(1.5/w2<2) then
                        plot([0 1.5/w1],[1.5/w2 0]);
                    end
                end
            end
        end
    end
end
