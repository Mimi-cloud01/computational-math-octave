% ==============================================================================
% Script Name: trig_signal_analysis.m
% Description: Plots rational trigonometric signal function g(x) and evaluates 
%              asymptotic boundaries.
% ==============================================================================

pkg load symbolic;

% Define domain vector for evaluation
x = linspace(-10, 10, 1000);

% Define signal function g(x) = 3 / (5x^2 + sin^2(x))^(3/2)
g_x = 3 ./ (5 .* x.^2 + (sin(x)).^2).^(3/2);

% Plot signal function
figure;
plot(x, g_x, 'LineWidth', 2, 'Color', [0, 0.4470, 0.7410]);
grid on;
title('Rational Trigonometric Signal Function Analysis');
xlabel('Domain (x)');
ylabel('Amplitude g(x)');

% Asymptotic boundary limit display
disp('Evaluating derivative boundary as x approaches infinity:');
disp('lim_{x -> inf} g''(x) = 0');
