a=Mod(Mod(1,2)*u,Mod(1,2)*(u^2+u+1))

ordinary

 {S=0;for(j=0,2,for(i=0,2,T=1;
for(x=0,2,for(y=0,2,T=T+((a^(2*y)+a^(x+y)+a^(3*x)+a^(j+2*x)+a^i)==0)));
for(x=0,2,T=T+((a^(3*x)+a^(j+2*x)+a^i)==0));
for(y=0,2,T=T+((a^(2*y)+a^i)==0)); print(S++," ",i" ",j," ",T) ))}

 {S=0;for(i=0,2,T=1;
for(x=0,2,for(y=0,2,T=T+((a^(2*y)+a^(x+y)+a^(3*x)+a^i)==0)));
for(x=0,2,T=T+((a^(3*x)+a^i)==0));
for(y=0,2,T=T+((a^(2*y)+a^i)==0)); print(S++," ",i" ",T))}

supersingular

{S=0;for(j=0,2,for(i=0,2,for(k=0,2,T=1;
for(x=0,2,for(y=0,2,T=T+((a^(2*y)+a^(k+y)+a^(3*x)+a^(j+x)+a^i)==0)));
for(x=0,2,T=T+((a^(3*x)+a^(j+x)+a^i)==0));
for(y=0,2,T=T+((a^(2*y)+a^(k+y)+a^i)==0)); if(9==9,
 print(S++," ",i" ",j," ",k," ",T) ))))}

{S=0;for(k=0,2,T=3;
for(x=0,2,for(y=0,2,T=T+((a^(2*y)+a^(k+y)+a^(3*x))==0)));
 print(S++," ",k," ",T) )}

{S=0;for(j=0,2,for(k=0,2,T=4;
for(x=0,2,for(y=0,2,T=T+((a^(2*y)+a^(k+y)+a^(3*x)+a^(j+x))==0)));
 print(S++," ",j," ",k," ",T) ))}

{S=0;for(i=0,2,for(k=0,2,T=1;
for(x=0,2,for(y=0,2,T=T+((a^(2*y)+a^(k+y)+a^(3*x)+a^i)==0)));
for(x=0,2,T=T+((a^(3*x)+a^i)==0));
for(y=0,2,T=T+((a^(2*y)+a^(k+y)+a^i)==0));
 print(S++," ",i" ",k," ",T)))}

{for(x=0,2,
  for(y=0,2,if(a^(2*y)+a^(y)+a^(3*x)==0,
  print(lift(lift(a^x))," , "lift(lift(a^y))))))}
