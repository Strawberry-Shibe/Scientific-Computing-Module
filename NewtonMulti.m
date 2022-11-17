%c1948154
function roots = NewtonMulti(f, df, p0, TOL, N0)
roots = zeros(1,10);

x = linspace(-10, 10, 1000);

y = arrayfun(f, x);

for i = 1: 10
    temp = Newton(f, df, p0, TOL, N0);
    if temp >= -10 || temp <= 10
        roots(i) = temp;
        divisor = @(x) x-roots(i);
        f = matlabFunction(sym(f) / sym(divisor));
        df = matlabFunction(diff(sym(f)));
        if roots(i) == 0 && roots(i-1) == 0 
            break
        end
    end
end
for root = 1:size(roots,2)
    index = find(x==roots(root));
    if (x(index) > -10) 
        if (x(index) < 10)
            index = find(x==roots(i));
            plot([x(index), x(index+1)], [y(index), y(index+1)], "-s", "MarkerSize", 10, 'MarkerEdgeColor','red');
        end
    end
end
plot(x, y, "b");
end