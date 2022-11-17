%c1948154

function visualiseConvergence1(samples, max, min, func, dfFunc, TOL, N0)

x = linspace(min, max, samples);

y = arrayfun(func, x);
for i = 1:size(x,2)
    p1 = Newton(func, dfFunc, x(i), TOL, N0);
    
    subplot(1,2,1);
    if isnan(p1)
        if i+1 > 1000
            
        else
            plot([x(i), x(i+1)], [y(i), y(i+1)], "r");
            hold on
        end
    else
        if i+1 > 1000
            
        else
            plot([x(i), x(i+1)], [y(i), y(i+1)], "b");
            hold on
        end
    end
    
    p2 = Ostrowski(func, dfFunc, x(i), TOL, N0);
    subplot(1,2,2);
    if isnan(p2)
        if i+1 > 1000
            
        else
            plot([x(i), x(i+1)], [y(i), y(i+1)], "r");
            hold on
        end
    else
        if i+1 > 1000
            
        else
            plot([x(i), x(i+1)], [y(i), y(i+1)], "b");
            hold on
        end
    end
end
end