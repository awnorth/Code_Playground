function dXdt = twoSpringDamperODE(t,X,k,c)
%     k = 0.2;
%     c = 0.1; % damping and/or friction
    m1 = 1; % kg
    m2 = 1; % kg

    dX1 = X(2);
    dX2 = (-2*k/m1)*X(1)-(2*c/m1)*X(2)+(k/m1)*X(3)+(c/m1)*X(4);
    dX3 = X(4);
    dX4 = (k/m2)*X(1)+(c/m2)*X(2)-(2*k/m2)*X(3)-(2*c/m2)*X(4);

    dXdt = [dX1;dX2;dX3;dX4];
end