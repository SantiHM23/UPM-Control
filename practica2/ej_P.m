 G=tf(1,[1,3,3,1]); 
 for Kp=[0.1:0.1:1], G_c=feedback(Kp*G,1); 
     step(G_c), hold on; 
 end
 figure;
 rlocus(G,[0,15]) 