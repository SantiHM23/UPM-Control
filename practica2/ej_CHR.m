  s=tf('s'); 
 G=tf(1,[1,4,3]); 
 [Gc1,Kp,Ti,Td]=zn(3,[k,L,T,N])  
 [Gc2,Kp,Ti,Td]= CHR (3,1,[k,L,T,N,0])  
 [Gc2,Kp,Ti,Td]= CHR (3,1,[k,L,T,N,20])  
 [Gc2,Kp,Ti,Td]= CHR (3,2,[k,L,T,N,0]) 
 step(feedback(G*Gc1,1),feedback(G*Gc2,1),feedback(G*Gc3,1),feedback(G*Gc4,1),10);
 step(feedback(G,Gc1),feedback(G,Gc2),feedback(G,Gc3),feedback(G,Gc4),30);