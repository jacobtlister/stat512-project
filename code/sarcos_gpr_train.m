% ---------------------------------------------------------------------------
% Jacob Lister
% STAT 512
% SARCOS Robotic Arm GPR Model Training
% ---------------------------------------------------------------------------

clear;
clc;

% load the data from the .mat files
data_tr = load("data/sarcos_inv.mat");
data_tr = data_tr.sarcos_inv;

% seperate the inputs and outputs into their own variables
x_tr = data_tr(:,  1 :  21);
y_tr = data_tr(:, 22 : end);

clear data_tr

models = {};

for i = 1 : 7
    models{i} = fitrgp(x_tr, y_tr(:, i), "KernelFunction", "squaredexponential", ...
                       "OptimizeHyperparameters", "all", "HyperparameterOptimizationOptions", ...
                       struct(UseParallel = 1, MaxObjectiveEvaluations = 8), "PredictMethod", "fic");
end

save("models.mat", models)