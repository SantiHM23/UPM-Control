%Ejercicio 2 de la práctica 3
%Ganancia estática de 5/3, polos en -1, -2 y -3
%a)
s=tf('s');
G=tf(5/3/[(s+1)*(s+2)*(s+3)])
num=[0,0,0,5/3]
den=[1,6,11,6]
[A,B,C,D]=tf2ss(num,den)
G=ss(A,B,C,D)
%b)
    %respuesta al escalon
    step(G);
    %respuesta a entrada a rampa
    t=0:0.1:10;
    u=t;
    lsim(G,u,t);
    %respuesta a parabola
    u=0.5*t.^2;
    lsim(G,u,t);
%c)
    %c.1)
    x0=[1,0,0];
    initial(G,x0);
    %c.2)
    x0=[0,1,0];
    initial(G,x0);
%d)
    %d.1)
    Q=ctrb(G);
    rank(Q);
	%d.2)
    P=obsv(A,C);
    rank(P);