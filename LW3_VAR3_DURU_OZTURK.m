%% 1a
x = linspace(0, 200, 300);
f1 = 2 * exp(-0.02 * x) .* cos(0.2 * x);
figure(1);
plot(x, f1, 'g', 'LineWidth', 10);

title('Function f(x) = 2e^{-0.02x} cos(0.2x)');
xlabel('x');
ylabel('f(x)');
axis([min(x) max(x) min(f1) max(f1)]);
legend('f(x) = 2e^{-0.02x}cos(0.2x)', 'Location', 'northeastoutside');
grid on;
%% 1b

z_left = linspace(-pi + 0.001, -0.001, 500); % step 0.001
z_right = linspace(0.001, pi - 0.001, 500);

g1 = cot(z_left);
g2 = cot(z_right);
figure(2);
plot(z_left, g1, 'b', 'LineWidth', 2);
hold on;
plot(z_right, g2, 'b', 'LineWidth', 2);
hold off;
xlabel('z');
ylabel('f(z)');
title('Function f(z) = cot(z)');
legend('f(z) = cot(z)', 'Location', 'best');
grid on;
axis([min(z_left) max(z_right) min([g1 g2]) max([g1 g2])]);
%% task2a- 3d
x3 = linspace(0, 10*pi, 1000); %step 0.031447$.
y3 = sin(x3) .* cos(x3);
z3 = cos(x3);
figure(3);
subplot(2,1,1)
plot3(x3, abs(y3), z3, 'r', 'LineWidth', 2);
xlabel('x');
ylabel('y(x)')
zlabel('z(x)')
title('3D curve');
legend('x, y(x), z(x)', 'Location', 'best');
grid on;
axis([min(x3) max(x3) min(y3) max(y3) min(z3) max(z3)]);

subplot(2,1,2);
polarplot(x3, y3, 'm','LineWidth', 1.5);
title('Polar plot of y(x) = sin(x)cos(x)');
rlim([0 max(abs(y3))]);
%% extra task
A = 6;  f = 7;  sigma = 1.2;
U1 = 4; U2 = 2;
t = 0:0.002:2;
s = A*sin(2*pi*f*t);
n = sigma*randn(size(t));
signal = s + n;
filtered = signal;
filtered(abs(filtered) < U2) = 0;

idx_above = signal > U1;
t_above   = t(idx_above);
above_U1  = signal(idx_above);

max_val = max(signal);
min_val = min(signal);
idx_max = find(signal == max_val);
idx_min = find(signal == min_val);

figure(4);

subplot(1, 2, 1);
plot(t, signal, '--', 'LineWidth', 1);
hold on;
plot(t, filtered, '-', 'LineWidth', 1.75);
yline(U1, 'b-.', 'LineWidth', 1.5);
yline(U2, 'r:',  'LineWidth', 1.5);
hold off;
title('a) Original and filtered signal', 'FontWeight', 'bold', 'FontSize', 13);
xlabel('Time t, s');
ylabel('Voltage U, V');
legend('Original signal', 'Filtered signal', 'U_1 threshold', 'U_2 threshold', ...
       'Location', 'southoutside', 'NumColumns', 2);
grid on;
xlim([t(1) t(end)]);
ylim([min([signal U1 U2]) - 0.5, max([signal U1 U2]) + 0.5]);

subplot(1, 2, 2);
stem(t_above, above_U1, 'MarkerSize', 3);
hold on;
yline(U1, 'b-.', 'LineWidth', 1.5);
plot(t(idx_max), signal(idx_max), 'ms', 'MarkerFaceColor', 'm', 'MarkerSize', 8);
plot(t(idx_min), signal(idx_min), 'v', 'Color', [0 0.6 0], ...
'MarkerFaceColor', [0 0.6 0], 'MarkerSize', 8);
hold off;
title('b) Samples above U_1', 'FontWeight', 'bold', 'FontSize', 13);
xlabel('Time t, s');
ylabel('Voltage U, V');
legend('Samples above U_1', 'U_1 threshold', 'Maximum', 'Minimum', ...
'Location', 'southoutside', 'NumColumns', 2);
grid on;
xlim([t(1) t(end)]);
ylim([min_val - 0.5, max_val + 0.5]); 