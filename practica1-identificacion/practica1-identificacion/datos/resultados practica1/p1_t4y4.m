figure
plot (t4,y4)
s=tf('s')
g = (exp(-0.2*s)*10/(s+5));
step(g)
hold