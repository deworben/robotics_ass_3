
% Initialise starting and ending linear positions
x0 = [0, 0, 0];
x0_dot = [0, 0, 0];
xf = [2, 5, 10];
xf_dot = [0, 0, 0];
num_poly_params = 5; % 4 is the minimum
tf = 1;


% Initialise trajectory parameters
traj_params = zeros(3, num_poly_params);

% Calculate the one dimensional trajectory in each axis. 
% Transpose each to make them a row vector
x_poly_params = one_d_generate_trajectory(x0(1), x0_dot(1), xf(1), xf_dot(1), tf, num_poly_params)';
y_poly_params = one_d_generate_trajectory(x0(2), x0_dot(2), xf(2), xf_dot(2), tf, num_poly_params)';
z_poly_params = one_d_generate_trajectory(x0(3), x0_dot(3), xf(3), xf_dot(3), tf, num_poly_params)';

% traj_params = [x_poly_params;
%                 y_poly_params;
%                z_poly_params;];

