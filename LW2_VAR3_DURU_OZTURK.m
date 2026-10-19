%Lab2 
%Duru Ozturk -Var3

%Part 1- Vectors
a=(-5:0.6:5)';
b=sqrt(a);
c=b(end);
disp(c)
d=(a.*b)/c;
disp(d)
%% Part2-Matrices
X=[2*sqrt(2),log(2);
   2^5,       2*pi;
   3*sqrt(2), exp(2)]

X_m= [2*sqrt(2);5;2^-2 ]
x_new= [X,X_m]
determinant= det(x_new)
disp(determinant)
%% Part3-Practical Applications

A=6;
f=7;
sigma=1.2;
U1=4;
U2=2;
t=(0:0.002:2);
s= A*sin(2*pi*f*t);
n = sigma * randn(size(t));
signal= s+n;

above_U1= signal(signal>U1);
filtered = signal;
filtered(abs(filtered) < U2) = 0;

n_total = numel(signal)
%n_total = length(signal)
disp(n_total);
n_above = numel(above_U1);
disp(n_above);

min_val = min(filtered);
max_val = max(filtered);
disp(min_val);
disp(max_val);
%% Additional Task
A = [0 1 0 2 3 0 4;
     0 0 0 0 0 0 0;
     0 5 0 6 7 0 8;
     0 9 0 1 2 0 3;
     0 0 0 0 0 0 0;
     0 4 0 5 6 0 7];

rows_to_keep = any(A ~= 0, 2)

cols_to_keep = any(A ~= 0, 1)

B = A(rows_to_keep, cols_to_keep);
disp(B)
