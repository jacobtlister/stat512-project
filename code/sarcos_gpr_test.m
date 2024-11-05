% ---------------------------------------------------------------------------
% Jacob Lister
% STAT 512
% SARCOS Robotic Arm GPR Validation Testing
% ---------------------------------------------------------------------------

clear;
clc;

% load the data from the .mat files
data_te = load("data/sarcos_inv_test.mat");
data_te = data_te.sarcos_inv_test;

% seperate the inputs and outputs into their own variables
x_te = data_te(:,  1 :  21);
y_te = data_te(:, 22 : end);

clear data_te

% load the gpr models for each torque variable
models = load("code/models.mat");
models = models.models;
losses = {};

for i = 1 : 7
    disp(models{i})
end

for i = 1 : 7
    losses{i} = loss(models{i}, x_te, y_te(:, i));
end

disp("Loss for q1 (Torque for Joint 1): " + sprintf("%2.4f", losses{1}))
for i = 2 : 7
    disp("Loss for q" + sprintf("%d", i) + " (Torque for Joint " + sprintf("%d", i) + "):  " + sprintf("%.4f", losses{i}))
end