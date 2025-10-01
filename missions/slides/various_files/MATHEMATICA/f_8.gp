{S=0;for(j=0,6,for(i=0,6,T=1;
for(x=0,6,for(y=0,6,T=T+((a^(2*y)+a^(x+y)+a^(3*x)+a^(j+2*x)+a^i)==0)));
for(x=0,6,T=T+((a^(3*x)+a^(j+2*x)+a^i)==0));
for(y=0,6,T=T+((a^(2*y)+a^i)==0)); print(S++," ",i" ",j," ",T) ))}
