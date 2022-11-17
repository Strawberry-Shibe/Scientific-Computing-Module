%c1948154
function p = RootFindingImproved(f, a, b, TOL, N0)
p = BisectionInitialise(f, a, b, TOL, N0);
df = matlabFunction(diff(sym(f)));
p = Ostrowski(f, df, p, TOL, N0);

x = linspace(a, b, 1000);

y = arrayfun(f, x);

plot(x, y, "b");

end