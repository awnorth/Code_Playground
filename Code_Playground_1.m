% Code_Playground

tspan = [-5 5];
x0 = [0;0];
[t,x] = ode45(@massDamperODE,tspan,x0);

plot(t,x)
yline(0,"--")
