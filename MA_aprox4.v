module MA_aprox4(S, Cout, a, b,Cin);
	output S, Cout;
	input a, b, Cin;
wire c,d,e,f,g;
supply1 pwr;
supply0 gnd;

pmos(Cout,pwr,a);
nmos(Cout,gnd,a);

pmos(c,pwr,a);
pmos(c,pwr,b);
pmos(S,c,Cout);
nmos(d,gnd,Cin);
nmos(S,d,Cout);

pmos(S,pwr,Cin);
nmos(e,gnd,b);
nmos(f,e,a);
nmos(S,f,Cin);

endmodule 