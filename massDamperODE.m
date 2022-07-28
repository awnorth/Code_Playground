function dxdt = massDamperODE(t,x)
    g = 9.81; % gravity
    c = 0.1; % damping constant
    k = .5; % spring constant
    dxdt(1,1) = x(2);
    dxdt(2,1) = (c/m)*x(2)+(k/m)*x(1)-g;
%     dxdt = 5*t-2*t^2+30;
end