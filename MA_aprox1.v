module MA_aprox1(S, Cout, a, b,Cin);
	output S, Cout;
	input a, b, Cin;
wire c,d,e,f,g,h,i,nS,nCout;
supply1 pwr;
supply0 gnd;

pmos(c,pwr,b);
pmos(nCout,c,Cin);
nmos(d,gnd,a);
nmos(nCout,d,Cin);

pmos(e,pwr,b);
pmos(nCout,e,a);
nmos(nCout,gnd,b);

pmos(f,pwr,a);
pmos(f,pwr,b);
pmos(nS,f,nCout);
nmos(g,gnd,Cin);
nmos(nS,g,nCout);

pmos(nS,pwr,Cin);
nmos(h,gnd,b);
nmos(i,h,a);
nmos(nS,i,Cin);

//inversor
pmos(S,pwr,nS);
nmos(S,gnd,nS);

pmos(Cout,pwr,nCout);
nmos(Cout,gnd,nCout);

endmodule 