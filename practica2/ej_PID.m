Kp=6.95; Ti=0.405; s=tf('s'); 
for Td=[0.1:0.2:2], Gc=Kp*(1+1/Ti/s+Td*s); 
    G_c=feedback(G*Gc,1); 
    step(G_c), 
    hold on; 
end
figure