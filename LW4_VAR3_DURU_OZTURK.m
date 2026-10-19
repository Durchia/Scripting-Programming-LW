%Lab 4
%Duru Ozturk-Variant 3
x= linspace(-1,1,50);
y=linspace(-1,1,50);
[X,Y]= meshgrid(x,y);

R=sqrt(X.^2+Y.^2);
Z= exp(R.^2);
figure(1);
surf(X,Y,Z)
colormap(winter); %
shading interp; %faceted, flat
view(10, 10);
xlabel('x axis');
ylabel('y axis');
zlabel('z = e^{r^2}');
title('Task 1a: z(r) = e^{r^2}, where r = sqrt(x^2 + y^2)');
grid on;
%% Task 1b
x = linspace(-2, 2, 20);
y = linspace(-2, 2, 20);
[X, Y] = meshgrid(x, y);

S = X.^2 + Y.^2;
F = sin(S / 20) .* exp(-S);

figure(2);
surf(X, Y, F);
colormap(parula);
shading flat;
view(18, 18);

xlabel('x axis');
ylabel('y axis');
zlabel('f(x,y)');
title('Task 1b: f(x,y) = sin((x^2 + y^2)/20) \cdot e^{-(x^2 + y^2)}');
grid on;
%% extra task

x = linspace(-1, 1, 40);
y = linspace(-1, 1, 40);
[X, Y] = meshgrid(x, y);

Z = 1 - (X.^2 + Y.^2);

figure(3);
ax1 = subplot(2, 2, 1);
surf(X, Y, Z);
colormap(ax1, jet);
shading interp;
colorbar;
title('1) Colormap name: jet');
xlabel('x'); ylabel('y'); zlabel('z');
grid on;


ax2 = subplot(2, 2, 2);
surf(X, Y, Z);
colormap(ax2, hot);
shading interp;
colorbar;
title('2) Colormap name: hot');
xlabel('x'); ylabel('y'); zlabel('z');
grid on;


ax3 = subplot(2, 2, 3);
surf(X, Y, Z);
myMap1 = [0 0 1;    
          0 1 1;    
          0 1 0;    
          1 1 0;     
          1 0 0];    
colormap(ax3, myMap1);
shading faceted;
colorbar;
title('3) Color codes: 5 RGB colors');
xlabel('x'); ylabel('y'); zlabel('z');
grid on;

ax4 = subplot(2, 2, 4);
surf(X, Y, Z);
n = 64;
myMap2 = [linspace(0.3, 1, n)', ...   
          linspace(0,   1, n)', ...  
          linspace(0.5, 0.6, n)'];    
colormap(ax4, myMap2);
shading interp;
colorbar;
title('4) Color codes: purple to yellow gradient');
xlabel('x'); ylabel('y'); zlabel('z');
grid on;