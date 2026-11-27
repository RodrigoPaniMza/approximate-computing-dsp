module MA_aprox3(S, Cout, a, b,Cin);
	output S, Cout;
	input a, b, Cin;
wire c,d,e,f;
supply1 pwr;
supply0 gnd;

pmos(c,pwr,b);
pmos(Cout,c,Cin);
nmos(d,gnd,a);
nmos(Cout,d,Cin);

pmos(e,pwr,b);
pmos(Cout,e,a);
nmos(Cout,gnd,b);

pmos(f,pwr,Cout);
nmos(f,gnd,Cout);

pmos(S,pwr,f);
nmos(S,gnd,f);
endmodule 
