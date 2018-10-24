A = [1,3;4,6];
B = [2,1;1,3];
R = [0,1;1,0];


total = sum(sum((A * B) .* R));
C = A * B; total = sum(sum(C(R == 1)));
C = (A * B) * R; total = sum(C(:));

