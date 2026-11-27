module MA_TB;
reg a,b,Cin;
wire S,Cout; //conv
wire S1, Cout1; //aprox1
wire S2, Cout2; //aprox2
wire S3, Cout3; //aprox3
wire S4, Cout4; //aprox4


conventional_MA MA(S,Cout,a,b,Cin);
MA_aprox1 ap1 (S1,Cout1,a,b,Cin);
MA_aprox2 ap2 (S2,Cout2,a,b,Cin);
MA_aprox3 ap3 (S3,Cout3,a,b,Cin);
MA_aprox4 ap4 (S4,Cout4,a,b,Cin);
initial
begin
a=0;b=0;Cin=0;#10
a=0;b=0;Cin=1;#10
a=0;b=1;Cin=0;#10
a=0;b=1;Cin=1;#10
a=1;b=0;Cin=0;#10
a=1;b=0;Cin=1;#10
a=1;b=1;Cin=0;#10
a=1;b=1;Cin=1;#10
$stop;
end
endmodule
