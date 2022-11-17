%c1948154
function p = Ostrowski(f, df, p0, TOL, N0)
%fprintf('%3d:%16.9f\n', 0, p0); 
%Step 1:
i = 1;
%Step 2:
while i <= N0
   %Step 3:
   q = p0 - f(p0)/df(p0);
   p = p0 - (((f(p0)/df(p0)))*((f(p0)-f(q))/(f(p0)-2*f(q))));
   %fprintf('%3d:%16.9f\n', i, p); 
   %Step 4:
   if abs(p - p0) < TOL || f(p) == 0
       %fprintf('Solution found p = %g\n', p);
       return
   end
   %Step 5:
   i = i + 1;
   %Step 6:
   p0 = p;  
end
%fprintf('Method failed after %d iterations\n', N0);
p = NaN;
end