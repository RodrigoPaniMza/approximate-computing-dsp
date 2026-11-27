module MA_aprox2(S, Cout, a, b,Cin);
	output S, Cout;
	input a, b, Cin;
wire c,d,e,f,g;
supply1 pwr;
supply0 gnd;

pmos(c,pwr,a);
pmos(c,pwr,b);
pmos(Cout,c,Cin);
nmos(d,gnd,a);
nmos(d,gnd,b);
nmos(Cout,d,Cin);

pmos(e,pwr,b);
pmos(Cout,e,a);
nmos(f,gnd,b);
nmos(Cout,f,a);

pmos(g,pwr,Cout);
nmos(g,gnd,Cout);

pmos(S,pwr,g);
nmos(S,gnd,g);

endmodule 