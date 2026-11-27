module conventional_MA(S, Cout, a, b,Cin);
	output S, Cout;
	input a, b, Cin;
wire c,d,e,f,g,h,p0,p1,n0,n1,nS,nCout;
supply1 pwr;
supply0 gnd;


pmos(c,pwr,a);
pmos(c,pwr,b);
pmos(nCout,c,Cin);
pmos(e,pwr,b);
pmos(nCout,e,a);

nmos(d,gnd,b);
nmos(d,gnd,a);
nmos(nCout,d,Cin);
nmos(f,gnd,b);
nmos(nCout,f,a);

pmos(g,pwr,a);
pmos(g,pwr,b);
pmos(g,pwr,Cin);
pmos(nS,g,nCout);

nmos(h,gnd,a);
nmos(h,gnd,b);
nmos(h,gnd,Cin);
nmos(nS,h,nCout);

pmos(p0,pwr,a);
pmos(p1,p0,b);
pmos(nS,p1,Cin);

nmos(n0,gnd,b);
nmos(n1,n0,a);
nmos(nS,n1,Cin);

//inversor
pmos(S,pwr,nS);
nmos(S,gnd,nS);

pmos(Cout,pwr,nCout);
nmos(Cout,gnd,nCout);


endmodule 