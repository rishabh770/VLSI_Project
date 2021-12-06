module test();

reg a0,a1,a2,a3,b0,b1,b2,b3,cin;
wire s0,s1,s2,s3,cout;
integer k;

adder dut(a0,a1,a2,a3,b0,b1,b2,b3,cin,cout,s0,s1,s2,s3);

initial begin
cin=0;
$dumpfile("adder.vcd");
$dumpvars(0,test);

for(k=0;k<257;k=k+1)
begin
{a3,b3,a2,b2,a1,b1,a0,b0}=k;#5;
end
end

always @ (*)
begin
#1
$display("A = %b%b%b%b  B = %b%b%b%b  Cin = %b \nS = %b%b%b%b Cout = %b" ,a3,a2,a1,a0,b3,b2,b1,b0,cin,s3,s2,s1,s0,cout);
end

endmodule
