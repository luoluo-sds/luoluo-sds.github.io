% we use gradient descent and newton method to minimize f(x), where
% f(x) = log(1+exp(-x))+0.1*x^2
% f'(x) = -exp(-x)/(exp(-x)+1)+x/5
% f''(x) = (exp(x)^2 + 7*exp(x) + 1)/(5*(exp(x)+1)^2);

x = 50; % initial point
n = 10; % total number of iterations
f_grad = zeros(n, 1); % record the function values of gradient descent
g_grad = zeros(n, 1); % record the function values of gradient descent
f_newton = zeros(n, 1); % record the function values of Newton's method
g_newton = zeros(n, 1); % record the function values of Newton's method
L = 0.45;

% run gradient descent
for k=1: n
    x = x - 1 / L * (-exp(-x)/(exp(-x)+1)+x/5);  
    g_grad(k) = -exp(-x)/(exp(-x)+1)+x/5;
    f_grad(k) = log(1+exp(-x))+0.1*x^2;
end

% run Newton's method
for k=1: n
    x = x - (-exp(-x)/(exp(-x)+1)+x/5) / ((exp(x)^2 + 7*exp(x) + 1)/(5*(exp(x)+1)^2)); 
    g_newton(k) = -exp(-x)/(exp(-x)+1)+x/5;
    f_newton(k) = log(1+exp(-x))+0.1*x^2;
end

% plot #iteration vs f(x)  
close all;
figure;
plot(f_grad, 'rs-', 'LineWidth', 1.5); hold on;
plot(f_newton, 'bo-', 'LineWidth', 1.5); hold on;
xlabel('number of iterations');
ylabel('$f(x)$', 'interpreter', 'latex');
lgd = legend('Gradient Descent', 'Newton''s Method');
set(gca,'FontSize',12);
lgd.FontSize = 13;

% plot #iteration vs |f'(x)|  
figure;
plot(log(abs(g_grad)), 'rs-', 'LineWidth', 1.5); hold on;
plot(log(abs(g_newton)), 'bo-', 'LineWidth', 1.5); hold on;
xlabel('number of iterations');
ylabel('$\ln|f''(x)|$', 'interpreter', 'latex');
lgd = legend('Gradient Descent', 'Newton''s Method');
set(gca,'FontSize',12);
lgd.FontSize = 13;





