{POLLARD(n)=
           local(a=random(n-4)+1,s=random(n));
           U=s;V=s;g=1;
           while(g==1,U=(U^2+a)%n;V=(V^2+a)%n;V=(V^2+a)%n;g=gcd(U-V,n));
           if(g==n,POLLARD(n),g)}

