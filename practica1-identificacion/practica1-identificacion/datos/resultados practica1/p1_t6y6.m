plot (t6,y6);
num = [5.797];
dem = [1 2.8985];
g = tf(num,dem)
figure
step (g)
hold