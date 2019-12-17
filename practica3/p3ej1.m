%Ejercicio 1 de la práctica 3
%a)
A=[0,-6,0,4;1,-3,0,0;0,4,0,-4;0,0,1,-5];
B=[0;0;1;0];
C=[0,1,0,0;0,0,0,1];
g=ss(A,B,C,0)
%b)
    %b.1:escalon)
    step(g)
    %b.2:rampa)
    t=0:0.1:100;
    u=t;
    lsim(g,u,t)
    %b.3:parabola)
    u=0.5*t.^2;
    lsim(g,u,t)
%c)
x0=[0,1,0,0];
initial(g,x0)
%d)
    %d.1:controlabilidad)
    Q=ctrb(g);
    rank(Q)%=4, por tanto, controlable
    %d.2:observabilidad)
    P=obsv(A,C);
    rank(P)%=4, por tanto, observable
