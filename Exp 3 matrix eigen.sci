clc
A = [4,3,7; 1,2,7; 2,0,4];
B = [1,-%i,4+3*%i; %i,2,4; 3-4*%i,4,3];
C = [2,-%i,2*%i; %i,4,3; -2*%i,3,5];
[V1, D1] = spec(A);
[V2, D2] = spec(B);
[V3, D3] = spec(C);
disp("Eigenvalues of A are");
disp(diag(D1));
disp(" ")

disp("Eigenvectors of A are");
disp(V1);
disp(" ")


disp("Eigenvalues of B are");
disp(diag(D2));
disp(" ")

disp("Eigenvectors of B are");
disp(V2);
disp(" ")


disp("Eigenvalues of C are");
disp(diag(D3));
disp(" ")

disp("Eigenvectors of C are");
disp(V3);
