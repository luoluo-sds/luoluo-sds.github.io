% input enter to show the next step

close all
input_str = '';

figure;
xlim([-8, 8]);
ylim([-2, 2]);

% horizon asymptote
fprintf('horizon asymptote')
x=input(input_str);
plot(xlim, [0,0], 'c', 'LineWidth', 1); hold on; 
xlim([-8, 8]);
ylim([-2, 2]);
legend('horizon asymptote')

% vertical asymptoe
fprintf('vertical asymptote')
x=input(input_str);
plot([0,0], ylim, 'g', 'LineWidth', 1); hold on; 
xlim([-8, 8]);
ylim([-2, 2]);
legend('horizon asymptote', 'vertical asymptote')

% x-intercept
fprintf('x-intercept')
x=input(input_str);
plot([sqrt(3), -sqrt(3)], [0, 0], 'b.', 'MarkerSize',20); hold on 
xlim([-8, 8]);
ylim([-2, 2]);
legend('horizon asymptote', 'vertical asymptote', 'x-intercept')

% critical points
fprintf('local maximum and local minimum')
x=input(input_str);
plot(3, 2/9, 'r.', 'MarkerSize', 20); hold on 
plot(-3, -2/9, 'm.', 'MarkerSize', 20); hold on  
xlim([-8, 8]);
ylim([-2, 2]);
legend('horizon asymptote', 'vertical asymptote', 'x-intercept', 'local maximum', 'local minimum')

% Inflection points
fprintf('inflection points')
x=input(input_str);
plot([-3*sqrt(2), 3*sqrt(2)], [-5*sqrt(2)/36, 5*sqrt(2)/36], 'y.', 'MarkerSize',20); hold on 
xlim([-8, 8]);
ylim([-2, 2]);
legend('horizon asymptote', 'vertical asymptote', 'x-intercept', 'local maximum', 'local minimum', 'inflection points')

% function
fprintf('connect these key points')
x=input(input_str);
x = -8: 0.01: 8;
y = (x.^2 - 3)./x.^3;
plot(x, y, 'k-'); hold on;
legend('horizon asymptote', 'vertical asymptote', 'x-intercept', 'local maximum', 'local minimum', 'inflection points', 'y=f(x)')
xlim([-8, 8]);
ylim([-2, 2]);
plot([0,0], ylim, 'g', 'LineWidth', 1); hold on; 
legend('horizon asymptote', 'vertical asymptote', 'x-intercept', 'local maximum', 'local minimum', 'inflection points', 'y=f(x)')

%title('$y=f(x)=\frac{x^2-3}{x^3}$', 'Interpreter', 'latex')

