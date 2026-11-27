module ma_approx5(S, Cout, a, b,Cin);
	output S, Cout;
	input a, b, Cin;
wire c,d,e,f,g,h,i;
supply1 pwr;
supply0 gnd;

pmos(c,pwr,a);
nmos(c,gnd,a);
pmos(Cout,pwr,c);
nmos(Cout,gnd,c);

pmos(d,pwr,b);
nmos(d,gnd,b);
pmos(S,pwr,d);
nmos(S,gnd,d);

endmodule 