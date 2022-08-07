% 2 Cart Spring Mass Damper (2 DOF)

% Constants
k = 0.2; % spring coefficient
c = 0.1; % damping coefficient
m1 = 1; % kg
m2 = 1; % kg

% A matrix
A = [0 1 0 0; ...
    -2*k/m1 -(2*c/m1) (k/m1) (c/m1);...
    0 0 0 1;...
    (k/m2) (c/m2) -(2*k/m2) -(2*c/m2)];

tSpan = [0 40];
X0 = [1;0;3;0];
% [tSol xSol] = ode45(@twoSpringDamperODE,tSpan,X0);
[tSol xSol] = ode45(@(t,x) twoSpringDamperODE(t,x,k),tSpan,X0);

plot(tSol,xSol(:,1),tSol,xSol(:,3))
title("Two Mass EOM")
xlabel('time (seconds)')
ylabel('x position (m)')
legend("m1","m2")
yline(0,":",'color',[0.5 0.5 0.5])
