g=tf(1,[1 -0.25 0.5],1) % sistema original
[y, t]=step(g) % generaci�n vector salida y vector tiempo
u=ones(24,1) % generaci�n vector entrada (escal�n entrada)
datos=iddata(y,u,1) %generaci�n objeto datos Entrada/salida
modelo=arx(datos,[1 1 0]) %generaci�n modelo ARX con retraso 0
garx0=tf([0.6 0.6 0],[1 -0.25 0.5],1) %considerando u(t-nk) en el modelo
step(g,garx0)