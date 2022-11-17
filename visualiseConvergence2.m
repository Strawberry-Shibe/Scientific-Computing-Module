function visualiseConvergence2(f, df, TOL, N0)

a = linspace(-1, 1, 400);
b = linspace(-1, 1, 400);
colours = ["r","b","c","g","w","y","m","k"];
img1 = zeros(400,400);
img2 = zeros(400,400);

for i = 1:size(a,2)
    for j = 1:size(b,2)
        p1 = Newton(f, df, (a+bi), TOL, N0);
        img1(i,j) = p1;
        p2 = Ostrowski(f, df, (a+bi), TOL, N0);
        img1(i,j) = p2;
    end
end

roots1 = unique(img1);
roots2 = unique(img2);
rootColours = zeros(2,8);

for root = 1: roots1
    rootColours(i,1) = roots(root);
    rootColours(i,2) = colours(root);
end

for i = 1:size(img1, 2)
    rootval = img1(i);
    index = find(rootColour==rootval);
    %plot img1 root index as its corresponding colour from rootColours
end

for i = 1:size(img2, 2)
    rootval = img2(i);
    index = find(rootColour==rootval);
    %plot img2 root index as its corresponding colour from rootColours
end