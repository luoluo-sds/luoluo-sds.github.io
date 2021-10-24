% crate the figure
figure;

% enumerate point: -8, -7.99 .... 7.99, 8
x = -8: 0.01: 8;  

% compute f(x): f(-8), f(-7.99) .... f(7.99), f(8)
y = (x.^2 - 3)./x.^3; 

% plot graph by connecting 
% (-8, f(-8)), (-7.99, f(-7.99)) ... (8, f(8)), (-8, f(-8))
plot(x, y, 'k-');  hold on; 

% set the range of display
xlim([-8, 8]); ylim([-2, 2]);

% draw x-axis and y-axis
plot(xlim, [0,0], 'b', 'LineWidth', 1); hold on; 
plot([0,0], ylim, 'r', 'LineWidth', 1); hold on; 

% add the legends
legend('y=f(x)', 'x-axis', 'y-axis')










