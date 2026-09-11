%Duru Ozturk
%09/11/2026
%Varıant 3

x_vals = linspace(1, 32, 32);
y_vals = x_vals .^ 2;

plot(x_vals, y_vals, 'o-r', x_vals, y_vals ./ 3, 'xb')
title('Two functions')
xlabel('X-axis')
ylabel('F_1 [-o-]    |    F_2 [-x-]')

num = 3;
vec = (num + 1) : 0.5 : (num + 4);

mat = [num, num + 1, num + 2; 
       num + 3, num + 4, num + 5; 
       num + 6, num + 7, num + 8];

val_a = mat(3, 2);
block_b = mat(2:3, 1:2);
corners_c = mat([1, 3], [1, 3]);

combined_matrix = [mat; vec(1:3)];