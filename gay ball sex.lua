return(function(...)local H={"VkMdj3D=";"VkMUHX==","hwCqWwIxj3Jqs3W=";"pa/PgYjNgqJTuwYPy4a=","y4SDW3Jf+lBqg3RPywC6Z4BFjW==";"VkMx+4hBve==";"Z3JXH3RO";"hwCqywC6Z4BFjW==";"jwL/jW==";"uwCqHwIxuNSmHVSa"}local function E(E)return H[E+37346]end for E,N in ipairs({{1;10};{1;9};{10,10}})do while N[1]<N[2]do H[N[1]],H[N[2]],N[1],N[2]=H[N[2]],H[N[1]],N[1]+1,N[2]-1 end end do local E=string.len local N={F=35,i=46;h=17;["2"]=63;d=44,K=1,L=5,f=33;b=12;B=37;I=49,a=36,V=23,j=25;o=3;m=47;["7"]=14;c=58;["+"]=27,k=53,A=42;x=41,H=24,Z=29;P=51;q=52;E=34,y=20,T=2,["6"]=50;z=60,r=11,R=13;Y=4,t=59;["5"]=40;["9"]=31,N=6,["3"]=22;n=55,["1"]=15;U=39,v=30,D=56,l=7;X=48,Q=62;p=19,["0"]=32;["8"]=10,w=54;e=0;["4"]=38,G=8,C=21,W=16,J=57;["/"]=45;S=9,O=43;s=18;u=28;g=26,M=61}local Z=type local V=math.floor local l=string.sub local L=table.concat local G=string.char local u=H local S=table.insert for H=1,#u,1 do local c=u[H]if Z(c)=="string"then local Z=E(c)local A={}local Y=1 local C=0 local F=0 while Y<=Z do local H=l(c,Y,Y)local E=N[H]if E then C=C+E*64^(3-F)F=F+1 if F==4 then F=0 local H=V(C/65536)local E=V((C%65536)/256)local N=C%256 S(A,G(H,E,N))C=0 end elseif H=="="then S(A,G(V(C/65536)))if Y>=Z or l(c,Y+1,Y+1)~="="then S(A,G(V((C%65536)/256)))end break end Y=Y+1 end u[H]=L(A)end end end return(function(H,Z,V,l,L,G,u,Y,S,F,N,d,A,C,c,w)Y,C,w,F,A,N,c,S,d=0,function(H)for E=1,#H,1 do c[H[E]]=1+c[H[E]]end if V then local N=V(true)local Z=L(N)Z[E(-37341)],Z[E(-37345)],Z[E(-37336)]=H,F,function()return-1293510 end return N else return l({},{[E(-37345)]=F;[E(-37341)]=H,[E(-37336)]=function()return-1293510 end})end end,function(H)c[H]=c[H]-1 if 0==c[H]then c[H],S[H]=nil,nil end end,function(H)local E,N=1,H[1]while N do c[N],E=c[N]-1,1+E if c[N]==0 then c[N],S[N]=nil,nil end N=H[E]end end,function()Y=Y+1 c[Y]=1 return Y end,function(N,V,l,L)local A,c,u,Y,S while N do S=V Y=E(-37342)u=E(-37337)c=E(-37338)N=H[u]A=H[c]c=E(-37339)c=A[c]c=c(A,Y)Y=E(-37344)Y=c[Y]A={Y(c)}u=N(Z(A))N=H[E(-37343)]u={}end N=#L return Z(u)end,{},{},function(H,E)local Z=C(E)local V=function(...)return N(H,{...},E,Z)end return V end return(d(13600503,{}))(Z(u))end)(getfenv and getfenv()or _ENV,unpack or table[E(-37340)],newproxy,setmetatable,getmetatable,select,{...})end)(...)
