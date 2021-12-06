module adder(a0,a1,a2,a3,b0,b1,b2,b3,cin,cout,s0,s1,s2,s3);

input a0,a1,a2,a3,b0,b1,b2,b3,cin;
output cout,s0,s1,s2,s3;
wire p0,p1,p2,p3,g0,g1,g2,g3,c1,c2,c3,c1_i1,c2_i1,c2_i2,c3_i1,c3_i2,c3_i3,c4_i1,c4_i2,c4_i3,c4_i4;

// P and G block 
xor G1(p0,a0,b0);
xor G2(p1,a1,b1);
xor G3(p2,a2,b2);
xor G4(p3,a3,b3);

and G5(g0,a0,b0);
and G6(g1,a1,b1);
and G7(g2,a2,b2);
and G8(g3,a3,b3);

// CLA block 

and G9(c1_i1,p0,cin);
or G10(c1,g0,c1_i1);
//
and G11(c2_i1,p1,p0,cin);
and G12(c2_i2,p1,g0);
or G13(c2,g1,c2_i1,c2_i2);
//
and G14(c3_i1,p2,p1,p0,cin);
and G15(c3_i2,p2,p1,g0);
and G16(c3_i3,p2,g1);
or G17(c3,g2,c3_i1,c3_i2,c3_i3);
//
and G18(c4_i1,p3,p2,p1,p0,cin);
and G19(c4_i2,p3,p2,p1,g0);
and G20(c4_i3,p3,p2,g1);
and G21(c4_i4,p3,g2);
or G22(cout,g3,c4_i1,c4_i2,c4_i3,c4_i4);

// SUM block

xor X5(s0,cin,p0);
xor X6(s1,c1,p1);
xor X7(s2,c2,p2);
xor X8(s3,c3,p3);

endmodule
