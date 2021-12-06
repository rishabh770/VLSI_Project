* SPICE3 file created from ptl_xor.ext - technology: scmos

.option scale=0.09u
.include TSMC_180nm.txt
.param SUPPLY = 1.8
.param LAMBDA = 0.18u
.option scale=0.09u
.param width_N = {10*LAMBDA}
.param width_P = {25*LAMBDA}
.global gnd vdd 

VDS vdd gnd 'SUPPLY'


va0 a gnd pulse 1.8 0 0ns 0.1ns 0.1ns 19.9ns 40ns
vb0 b gnd pulse 1.8 0 0ns 0.1ns 0.1ns 39.9ns 80ns

M1000 a_15_n45# a a_8_4# w_2_n2# CMOSP w=13 l=2
+  ad=65 pd=36 as=130 ps=72
M1001 a_15_n45# a a_8_n45# Gnd CMOSN w=4 l=2
+  ad=20 pd=18 as=40 ps=36
M1002 b a out Gnd CMOSN w=4 l=2
+  ad=40 pd=36 as=40 ps=36
M1003 b b a_8_4# w_2_n2# CMOSP w=13 l=2
+  ad=130 pd=72 as=0 ps=0
M1004 b a_15_n45# out w_2_n2# CMOSP w=13 l=2
+  ad=0 pd=0 as=130 ps=72
M1005 b b a_8_n45# Gnd CMOSN w=4 l=2
+  ad=0 pd=0 as=0 ps=0
M1006 a_51_4# a_15_n45# out Gnd CMOSN w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1007 a_51_4# a out w_2_n2# CMOSP w=13 l=2
+  ad=65 pd=36 as=0 ps=0
C0 w_2_n2# Gnd 2.30fF

.tran 0.1ns 80ns 

.control 
run 
plot v(a) v(b)+2 v(out)+4

.endc
.end 
