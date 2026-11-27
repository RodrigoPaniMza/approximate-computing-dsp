module MA_8b_TB;
	reg [7:0] A, B;
	reg Cin;
	wire [8:0] R [0:16];

MA_8B_v0 uut0(A,B,Cin,R[0][7:0],R[0][8]);
MA_8B_v1 uut1(A,B,Cin,R[1][7:0],R[1][8]);
MA_8B_v2 uut2(A,B,Cin,R[2][7:0],R[2][8]);
MA_8B_v3 uut3(A,B,Cin,R[3][7:0],R[3][8]);
MA_8B_v4 uut4(A,B,Cin,R[4][7:0],R[4][8]);
MA_8B_v5 uut5(A,B,Cin,R[5][7:0],R[5][8]);
MA_8B_v6 uut6(A,B,Cin,R[6][7:0],R[6][8]);
MA_8B_v7 uut7(A,B,Cin,R[7][7:0],R[7][8]);
MA_8B_v8 uut8(A,B,Cin,R[8][7:0],R[8][8]);
MA_8B_v1_5 uut9(A,B,Cin,R[9][7:0],R[9][8]);
MA_8B_v2_5 uut10(A,B,Cin,R[10][7:0],R[10][8]);
MA_8B_v3_5 uut11(A,B,Cin,R[11][7:0],R[11][8]);
MA_8B_v4_5 uut12(A,B,Cin,R[12][7:0],R[12][8]);
MA_8B_v5_5 uut13(A,B,Cin,R[13][7:0],R[13][8]);
MA_8B_v6_5 uut14(A,B,Cin,R[14][7:0],R[14][8]);
MA_8B_v7_5 uut15(A,B,Cin,R[15][7:0],R[15][8]);
MA_8B_v8_5 uut16(A,B,Cin,R[16][7:0],R[16][8]);

integer fin,fout;
integer status;
integer a_read, b_read, cin_read;
integer contador=0;
initial begin
fin = $fopen("inputs.csv","r");
fout = $fopen("outputs.csv","w");
if (fin == 0 || fout == 0) begin
    $display("ERROR: No se pudieron abrir los archivos");
    $finish;
end

while(! $feof(fin))begin
	status = $fscanf(fin,"%d,%d,%d\n",a_read,b_read,cin_read);
    if (status == 3) begin
	A = a_read;
	B = b_read;
	Cin = cin_read;
	#10;
	$fwrite(fout,"%0d,%0d,%0d",A,B,Cin);
	$fwrite(fout,",%0d",R[0]);
	$fwrite(fout,",%0d",R[1]);
	$fwrite(fout,",%0d",R[2]);
	$fwrite(fout,",%0d",R[3]);
	$fwrite(fout,",%0d",R[4]);
	$fwrite(fout,",%0d",R[5]);
	$fwrite(fout,",%0d",R[6]);
	$fwrite(fout,",%0d",R[7]);
	$fwrite(fout,",%0d",R[8]);
	$fwrite(fout,",%0d",R[9]);
	$fwrite(fout,",%0d",R[10]);
	$fwrite(fout,",%0d",R[11]);
	$fwrite(fout,",%0d",R[12]);
	$fwrite(fout,",%0d",R[13]);
	$fwrite(fout,",%0d",R[14]);
	$fwrite(fout,",%0d",R[15]);
	$fwrite(fout,",%0d\n",R[16]);
	contador = contador +1;
    end
    else begin
        $display("ERROR: Lectura incorrecta del CSV");
        $finish;
    end
end
$fclose(fin);
$fclose(fout);
$display("Simulacion finalizada");
$display("Combinaciones evaluadas: %0d", contador);
$finish;
end
endmodule 
