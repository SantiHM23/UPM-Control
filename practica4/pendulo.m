%realizacion teorica
%a) y b) y c)
A=[0,1,0,0;0,0,-10,0;0,0,0,1;0,0,20,0]
B=[0;1;0;-1]
C=[1,0,0,0;0,0,1,0]
D=[0;0]
g=ss(A,B,C,D)
%d)
P=ctrb(g)
rank(P)
H=obsv(g)
rank(H)
%e)
[z,p,k]=ss2zp(A,B,C,D)
%f)
figure
step(g)
%Realizacion de la parte practica
%a)
p1=[-1 -1.1 -1.2 -1.3]
K1=place(A,B,p1)
%b)
Ar1=A-B*K1
g1=ss(Ar1,B,C,D)
figure
step(g1)
%c) y d)
p2=[-10 -10.1 -10.2 -10.3]
K2=place(A,B,p2)
Ar2=A-B*K2
g2=ss(Ar2,B,C,D)
figure
step(g2)
%e)
Anueva=[0,1,0,0;0,0,-4,0;0,0,0,1;0,0,46.666666667,0]
Bnueva=[0;2;0;-6.6666666667]
Q=[1,0,0,0;0,0,0,0;0,0,1,0;0,0,0,0]
R=[1]
K3=lqr(Anueva,Bnueva,Q,R)
Ar3=Anueva-Bnueva*K3
%f)
g3=ss(Ar3,Bnueva,C,D)
figure
step(g3)
%g)
Q1=[5000,0,0,0;0,0,0,0;0,0,100,0;0,0,0,0]
R1=[1]
K4=lqr(Anueva,Bnueva,Q1,R1)
Ar4=Anueva-Bnueva*K4
