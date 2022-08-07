% 2 Cart Spring Mass Damper (2 DOF)
% Andrew North 8/7/2022

% Constants
k = 0.2; % spring coefficient
c = 0.1; % damping coefficient
m1 = 2; % kg
m2 = 2; % kg

% A matrix
A = [0 1 0 0; ...
    -2*k/m1 -(2*c/m1) (k/m1) (c/m1);...
    0 0 0 1;...
    (k/m2) (c/m2) -(2*k/m2) -(2*c/m2)];

tSpan = [0 70];
X0 = [0;0;4;0]; % initial conditions
% [tSol xSol] = ode45(@twoSpringDamperODE,tSpan,X0);
[tSol XSol] = ode45(@(t,x) twoSpringDamperODE(t,x,k,c),tSpan,X0);

% plot(tSol,xSol(:,1),tSol,xSol(:,3))
% title("Two Mass EOM")
% xlabel('time (seconds)')
% ylabel('x position (m)')
% legend("m1","m2")
% yline(0,":",'color',[0.5 0.5 0.5])

for i = 1:length(tSol)
    animateTwoCart(XSol(i,:))
end
