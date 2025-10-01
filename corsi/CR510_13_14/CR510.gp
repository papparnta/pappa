S=0;while(S==0,A=1+2*prod(j=1,20,prime(1+random(1000))^random(100));if(isprime(A),print(A);S=1))

{N=40;Q=0;
for(a=1,N,
for(b=0,N,
for(c=0,N,
for(d=0,N,
for(e=0,N,
for(f=0,N,P=2^a*3^b*5^c*7^d*11^e*13^f+1;
if(P>Q,if(isprime(P)==1,Q=P;print(a," ",b," ",c," ",d," ",e," ",f)))
))))))}
print(Q" "1+floor(log(Q)/log(10))" "factor(Q-1))


g=znprimroot(Q);
h=Mod(12032014,Q);
p=vector(6,j,prime(j));
L=matsize(p)[2];
v=vector(L,j,valuation(Q-1,p[j]));
G=vector(L,j,g^((Q-1)/p[j]^v[j]));
T=vector(L,j,valuation(znorder(G[j]),p[j]));
GG=matrix(L,p[L],x,y,G[x]^((y-1)*znorder(G[x])/p[x]));
K=vector(L,x,Mod(0,p[x]^T[x]));

{for(x=1,L,
     H=h^((Q-1)/p[x]^v[x]);
     for(j=0,T[x]-1,
         HH=H^(p[x]^(T[x]-1-j));
         for(u=0,p[x]-1,
             if(HH==GG[x,u+1],K[x]=K[x]+u*p[x]^j;H=H*G[x]^(-u*p[x]^j)
               )
            )
        )
     )};
R=K[1];for(t=1,L-1,R=chinese(R,K[t+1]));DLOGO=lift(R);print(DLOGO" "lift(g^DLOGO))



