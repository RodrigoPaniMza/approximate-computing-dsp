module MA_8B_v1(
	input wire [7:0] a, b,
	input wire Cin,
	output wire [7:0] s,
	output wire Cout
);
wire [6:0] Carry;

conventional_MA b8(
	.a(a[7]),
	.b(b[7]),
	.Cin(Carry[6]),
	.S(s[7]),
	.Cout(Cout)
);
conventional_MA b7(
	.a(a[6]),
	.b(b[6]),
	.Cin(Carry[5]),
	.S(s[6]),
	.Cout(Carry[6])
);
conventional_MA b6(
	.a(a[5]),
	.b(b[5]),
	.Cin(Carry[4]),
	.S(s[5]),
	.Cout(Carry[5])
);
conventional_MA b5(
	.a(a[4]),
	.b(b[4]),
	.Cin(Carry[3]),
	.S(s[4]),
	.Cout(Carry[4])
);
conventional_MA b4(
	.a(a[3]),
	.b(b[3]),
	.Cin(Carry[2]),
	.S(s[3]),
	.Cout(Carry[3])
);
conventional_MA b3(
	.a(a[2]),
	.b(b[2]),
	.Cin(Carry[1]),
	.S(s[2]),
	.Cout(Carry[2])
);
conventional_MA b2(
	.a(a[1]),
	.b(b[1]),
	.Cin(Carry[0]),
	.S(s[1]),
	.Cout(Carry[1])
);
MA_aprox1 b1(
	.a(a[0]),
	.b(b[0]),
	.Cin(Cin),
	.S(s[0]),
	.Cout(Carry[0])
);
endmodule
