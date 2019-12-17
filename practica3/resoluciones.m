%GENERAL
A=[0,1;-10,-5];
B=[0;1];
C=[1,0];
g1=ss(A,B,C,0);
%FDT a partir de modelo de estado
[num,den]=ss2tf(A,B,C,0);
g1s=tf(num,den);
%modelo de estado a partir de FDT
[A,B,C,D]=tf2ss(num,den);
%obtencion de polos, zeros y ganancia
[z,p,k]=ss2zp(A,B,C,0);
%Resolucion de la ecuacion de estado para CI
x0=[1,0];
initial(g1,x0);
%Matriz de controlabilidad
Q=ctrb(g1);
rank(Q);
%Matriz de observabilidad
P=obsv(A,C);
rank(P);