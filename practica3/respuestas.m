%GENERAL
A=[0,1;-10,-5];
B=[0;1];
C=[1,0];
g1=ss(A,B,C,0);
%respuesta al escalon
step(g1);
%respuesta a entrada a rampa
t=0:0.1:10;
u=t;
lsim(g1,u,t);
%respuesta a parabola
u=0.5*t.^2;
lsim(g1,u,t);
%respuesta a entrada senoidal
u=sin(t);
lsim(g1,u,t);