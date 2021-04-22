function [traj_params] = one_d_generate_trajectory(x0, x0_dot, xf, xf_dot, tf, num_poly_params)

traj_params = zeros(1, num_poly_params);



if num_poly_params == 4
    %do the calculation as in the lecture slides Lec 6 slide 12
    A = [1, 0, 0, 0;
         0, 1, 0, 1;
         1, tf, tf^2, tf^3;
         0, 1, 2*tf, 3*tf^2];
    traj_params = inv(A)\[x0; x0_dot; xf; xf_dot];
else
    fprintf("currently only configured for 4 params")
end


end

