 G=tf(1,[1,4,3]);  
 [Gc1,Kp1]=cc(1,[k,L,T,10]); 
 [Gc2,Kp2,Ti2]=cc(2,[k,L,T,10]); 
 [Gc3,Kp3,Ti3,Td3]=cc(5,[k,L,T,10]); 
 [Gc4,Kp4,Ti4,Td4]=cc(3,[k,L,T,10]);
 G_c1=feedback(G*Gc1,1); 
 G_c2=feedback(G*Gc2,1); 
 G_c3=feedback(G*Gc3,1); 
 G_c4=feedback(G*Gc4,1); 
 step(G_c1,G_c2,G_c3,G_c4,10)