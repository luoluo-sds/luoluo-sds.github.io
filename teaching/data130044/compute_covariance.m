% compute (N-1)S
% online octave: http://octave.jsrun.net/

N=800; p=600; 
X = randn(N, p);

bar_x = X' * ones(N, 1) / N;

fprintf('Use (1): ')
tic;
SN_1 = zeros(p, p);
for i=1: N 
    x_i = X(i, :)';
    SN_1 = SN_1 + (x_i - bar_x) * (x_i - bar_x)';
end
toc,

fprintf('Use (2): ')
tic; SN_2 = X' * (eye(N) - ones(N,1) * (ones(N,1)' / N)) *  X; toc,

fprintf('Use (3): ')
tic; XT1 = X' * ones(N,1); SN_3 = X' * X - XT1*XT1' / N; toc,

fprintf('error_1=%f, error_2=%f\n', norm(SN_1-SN_2), norm(SN_1-SN_3));


