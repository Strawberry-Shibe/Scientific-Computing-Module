% CM2208 Bisection Method
% Input: function f, interval [a, b] (a < b), 
% tolerance (as relative error)
% N0 (max. iterations)
% Output: the value p
function p = BisectionInitialise(f, a, b, TOL, N0)
%Step 0: check if f(a) and f(b) have opposite signs
a0 = a;
b0 = b;
if (a >= b) || (f(a) * f(b) >= 0)
    p=NaN;
    error('Incorrect interval.');
end
while b0-a0 ~= (a-b)/2^20
    a = (a + b)/2;
    for j = 1:5
    %Step 1:
    i = 1;
    FA = f(a);
    fprintf('%-3s %-16s %-16s %-16s %-16s\n', 'n', 'an', 'bn', 'pn', 'f(pn)'); 

    %Step 2:
    while i <= N0 
        %Step 3:
        p = a + (b-a)/2;
        FP = f(p);
        %Step 4:
        err = (b-a)/min(abs(a0),abs(b0));
        if err < TOL
            fprintf('Solution found: p = %g\n', p);
            return
        end
        fprintf('%3d %-16.9f %-16.9f %-16.9f %-16.9f\n', i, a, b, p, FP);
        %Step 5:
        i = i + 1;
        %Step 6:
        if FA * FP > 0
            a = p;
            FA = FP;
        else
            b = p;
        end
    end
    %Step 7
    fprintf('Method failed after %d iterations\n', N0);

    end
end
end
