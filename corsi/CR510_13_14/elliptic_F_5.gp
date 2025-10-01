V=matrix(20,2,0);S=0;for(A=0,4,for(B=0,4,if((4*A^3+27*B^2)%5==0,V[S++,1]=A;V[S,2]=B));


V=matrix(12,3);S=0;for(A=0,4,for(B=0,2,if((4*A^3+27*B^2)%5,S++;V[S,1]=A;V[S,2]=B)));

for(h=1,12,A=V[h,1];B=V[h,2];N=1;for(x=0,4,for(y=0,4,U=(y^2-(x^3+A*x+B))%5;N=N+(U==0);if(U==0,print1("("x","y"), "))));V[h,3]=N;print(N));(mattranspose(V))
