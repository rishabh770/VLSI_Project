
.include TSMC_180nm.txt
.param SUPPLY = 1.8
.param h = 1.8
.param l = 0
.param LAMBDA = 0.18u
.param width_N = {10*LAMBDA}
.param width_P = {25*LAMBDA}
.param ckpd = 10ns
.global gnd vdd 

VDS vdd gnd 'SUPPLY'

* va0 a0 gnd dc 'h'
* va1 a1 gnd dc 'h'
* va2 a2 gnd dc 'l'
* va3 a3 gnd dc 'h'

* vb0 b0 gnd dc 'h'
* vb1 b1 gnd dc 'h'
* vb2 b2 gnd dc 'h'
* vb3 b3 gnd dc 'h'


va0 a0 gnd pulse(0 1.8 0 0.01p 0.01p 'ckpd' '2*ckpd')
va1 a1 gnd pulse(0 1.8 0 0.01p 0.01p '2*ckpd' '4*ckpd')
va2 a2 gnd pulse(0 1.8 0 0.01p 0.01p '4*ckpd' '8*ckpd')
va3 a3 gnd pulse(0 1.8 0 0.01p 0.01p '8*ckpd' '16*ckpd')


vb0 b0 gnd pulse(0 1.8 0 0.01p 0.01p '16*ckpd' '32*ckpd')
vb1 b1 gnd pulse(0 1.8 0 0.01p 0.01p '32*ckpd' '64*ckpd')
vb2 b2 gnd pulse(0 1.8 0 0.01p 0.01p '64*ckpd' '128*ckpd')
vb3 b3 gnd pulse(0 1.8 0 0.01p 0.01p '128*ckpd' '256*ckpd')


vcin cr_in gnd dc 0


M1000 a_513_n127# p0 vdd w_500_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1001 a_31_n269# a3 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1002 a_342_n127# g1 a_361_n87# w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1003 a_448_n158# a_365_n198# a_432_n158# w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1004 p3 g3 a_123_n229# w_18_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1005 a_530_n198# p3 vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1006 a_531_n127# cr_in gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1007 p2 g2 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1008 p1 g1 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1009 a_291_n87# p1 a_291_n127# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1010 a_575_n269# a_462_n269# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1011 a_314_n269# a_234_n229# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1012 a_225_n16# p0 vdd w_211_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1013 a_273_n56# g0 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1014 p0 g0 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1015 a_234_n229# p3 vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1016 a_559_n229# a_314_n269# a_543_n229# w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1017 a_462_n269# a_414_n229# vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1018 a_443_n127# a_425_n127# s2 w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1019 a_298_n198# a_234_n158# vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1020 p3 g3 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1021 a_530_n198# p3 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1022 a_432_n198# a_365_n198# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1023 a_32_n87# a1 vdd w_19_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1024 a_85_n198# b2 a_85_n158# w_19_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1025 a_365_n198# a_317_n158# vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1026 a_325_n56# c1 vdd w_211_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1027 a_531_n127# cr_in vdd w_500_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1028 a_432_n158# a_416_n198# vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1029 a_32_n16# a0 vdd w_19_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1030 a_225_n16# p0 a_225_n56# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1031 c2 a_393_n127# vdd w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1032 a_223_n87# p1 vdd w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1033 a_291_n127# g0 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1034 a_234_n229# p3 a_282_n269# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1035 a_559_n269# a_314_n269# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1036 a_462_n269# a_414_n229# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1037 a_394_n269# a_330_n229# a_387_n229# w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1038 a_298_n198# a_234_n158# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1039 a_273_n16# a_257_n56# vdd w_211_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1040 a_425_n127# c2 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1041 a_543_n229# a_394_n269# a_527_n229# w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1042 a_234_n229# cr_in vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1043 a_84_n269# b3 a_84_n229# w_18_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1044 a_414_n229# g1 vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1045 a_365_n198# a_317_n158# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1046 a_85_n198# b2 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1047 a_325_n56# c1 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1048 a_432_n198# a_416_n198# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1049 a_443_n127# c2 s2 Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1050 a_234_n158# cr_in vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1051 a_32_n56# a0 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1052 a_85_n127# b1 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1053 a_317_n158# g0 vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1054 a_343_n56# p1 vdd w_211_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1055 a_416_n198# a_384_n158# vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1056 g1 a_32_n87# vdd w_19_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1057 a_531_n127# a_513_n127# s0 w_500_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1058 a_223_n127# cr_in gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1059 a_85_n87# a1 vdd w_19_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1060 a_394_n269# a_330_n229# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1061 g0 a_32_n16# vdd w_19_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1062 a_273_n56# a_257_n56# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1063 c2i1 a_223_n87# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1064 a_543_n269# a_394_n269# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1065 a_282_n269# cr_in a_266_n269# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1066 a_84_n269# b3 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1067 a_414_n229# g1 a_430_n269# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1068 a_85_n16# a0 vdd w_19_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1069 a_291_n87# g0 vdd w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1070 a_342_n127# c2i1 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1071 a_330_n229# p2 vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1072 p2 c2 s2 w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1073 c2 a_393_n127# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1074 a_234_n158# cr_in a_266_n198# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1075 a_527_n229# a_511_n269# vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1076 a_234_n229# p2 vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1077 a_414_n229# p3 vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1078 a_317_n158# g0 a_333_n198# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1079 a_343_n56# p1 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1080 a_416_n198# a_384_n158# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1081 a_234_n158# p2 vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1082 a_361_n87# c2i2 a_342_n87# w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1083 a_512_n198# c3 vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1084 a_513_n127# p0 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1085 a_317_n158# p2 vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1086 g0 a_32_n16# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1087 a_384_n158# g1 vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1088 a_124_n158# a_85_n198# vdd w_19_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1089 p3 c3 s3 w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1090 a_85_n56# a0 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1091 a_531_n127# p0 s0 Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1092 a_330_n229# p2 a_362_n269# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1093 a_225_n16# cr_in vdd w_211_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1094 a_343_n56# a_325_n56# s1 w_211_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1095 a_223_n87# p1 a_243_n127# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1096 a_527_n269# a_511_n269# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1097 a_266_n269# p2 a_250_n269# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1098 a_124_n87# a_85_n127# vdd w_19_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1099 g2 a_32_n158# vdd w_19_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1100 a_430_n269# p3 a_414_n269# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1101 a_330_n229# p3 vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1102 a_393_n127# a_342_n127# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1103 a_511_n269# a_479_n229# vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1104 a_234_n229# p0 vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1105 a_266_n198# p2 a_250_n198# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1106 a_124_n16# a_85_n56# vdd w_19_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1107 c2i2 a_291_n87# vdd w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1108 a_414_n229# p2 vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1109 a_512_n198# c3 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1110 a_333_n198# p2 a_317_n198# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1111 c1 a_273_n56# vdd w_211_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1112 a_234_n158# p0 vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1113 a_123_n229# a_84_n269# vdd w_18_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1114 a_384_n158# g1 a_384_n198# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1115 p2 a_85_n198# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1116 a_317_n158# p1 vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1117 a_530_n198# c3 s3 Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1118 c3 a_432_n198# vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1119 a_225_n56# cr_in gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1120 p1 a_325_n56# s1 Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1121 cr_in p0 s0 w_500_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1122 p2 a_425_n127# s2 Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1123 a_384_n158# p2 vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1124 a_393_n127# a_342_n127# a_386_n87# w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1125 p1 a_85_n127# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1126 g3 a_31_n229# vdd w_18_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1127 a_223_n87# p0 vdd w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1128 g2 a_32_n158# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1129 a_362_n269# p3 a_346_n269# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1130 a_243_n127# p0 a_223_n127# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1131 a_511_n269# a_479_n229# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1132 a_250_n269# p0 a_234_n269# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1133 p0 a_85_n56# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1134 g1 a_32_n87# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1135 a_32_n158# b2 vdd w_19_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1136 a_414_n269# p2 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1137 a_257_n56# a_225_n16# vdd w_211_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1138 a_330_n229# g0 vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1139 c4 a_591_n269# vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1140 c1 a_273_n56# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1141 a_342_n127# g1 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1142 p3 a_84_n269# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1143 a_250_n198# p0 a_234_n198# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1144 a_479_n229# g2 vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1145 a_234_n229# p1 vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1146 a_85_n158# a2 vdd w_19_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1147 c3 a_432_n198# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1148 a_317_n198# p1 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1149 a_384_n198# p2 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1150 a_234_n158# p1 vdd w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1151 g3 a_31_n229# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1152 a_32_n87# b1 vdd w_19_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1153 a_432_n198# g2 a_464_n158# w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1154 p1 c1 s1 w_211_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1155 a_31_n229# b3 vdd w_18_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1156 a_32_n16# b0 vdd w_19_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1157 a_32_n158# b2 a_32_n198# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1158 a_257_n56# a_225_n16# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1159 a_346_n269# g0 a_330_n269# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1160 a_425_n127# c2 vdd w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1161 c4 a_591_n269# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1162 a_85_n127# b1 a_85_n87# w_19_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1163 c2i1 a_223_n87# vdd w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1164 a_32_n87# b1 a_32_n127# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1165 a_479_n229# g2 a_479_n269# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1166 a_234_n269# p1 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1167 a_84_n229# a3 vdd w_18_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1168 a_530_n198# a_512_n198# s3 w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1169 cr_in a_513_n127# s0 Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1170 a_32_n158# a2 vdd w_19_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1171 a_85_n198# a2 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1172 a_591_n269# g3 a_575_n229# w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1173 a_330_n229# p1 vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1174 a_85_n56# b0 a_85_n16# w_19_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1175 a_342_n127# c2i2 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1176 a_234_n198# p1 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1177 a_85_n127# a1 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1178 a_443_n127# p2 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1179 a_479_n229# p3 vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1180 a_432_n198# g2 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1181 a_343_n56# c1 s1 Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1182 a_31_n229# b3 a_31_n269# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1183 a_32_n16# b0 a_32_n56# Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1184 a_464_n158# a_298_n198# a_448_n158# w_221_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1185 a_223_n87# cr_in vdd w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1186 a_84_n269# a3 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1187 a_31_n229# a3 vdd w_18_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1188 p3 a_512_n198# s3 Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1189 a_32_n198# a2 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1190 c2i2 a_291_n87# gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1191 p2 g2 a_124_n158# w_19_n165# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1192 a_591_n269# g3 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1193 a_330_n269# p1 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1194 a_85_n56# b0 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1195 a_443_n127# p2 vdd w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1196 a_32_n127# a1 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1197 a_479_n269# p3 gnd Gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1198 p1 g1 a_124_n87# w_19_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1199 a_291_n87# p1 vdd w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1200 a_575_n229# a_462_n269# a_559_n229# w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1201 a_314_n269# a_234_n229# vdd w_221_n236# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1202 a_273_n56# g0 a_273_n16# w_211_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1203 a_432_n198# a_298_n198# gnd gnd CMOSN W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1204 p0 g0 a_124_n16# w_19_n23# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}

M1205 a_342_n87# c2i1 vdd w_209_n94# CMOSP W={width_P} L = {LAMBDA} 
+ AS = {5*width_P*LAMBDA} PS = {width_P+10*LAMBDA} AD = {5*width_P*LAMBDA} PD = {width_P+10*LAMBDA}





Cout1 s0 gnd 100fF
Cout2 s1 gnd 100fF
Cout3 s2 gnd 100fF
Cout4 s3 gnd 1000fF
Cout5 c4 gnd 100fF

.tran 1ns 2560ns

** Delay of S0
.measure tran trise_s0
+ TRIG v(a0) VAL = 'SUPPLY/2' FALL = 1
+ TARG v(s0) VAL = 'SUPPLY/2' RISE = 1

.measure tran tfall_s0
+ TRIG v(a0) VAL = 'SUPPLY/2' RISE = 2
+ TARG v(s0) VAL = 'SUPPLY/2' FALL = 1

.measure tran tpd_s0 param = '(trise_s0 + tfall_s0)/2' goal = 0

** Delay of S1
.measure tran trise_s1
+ TRIG v(a0) VAL = 'SUPPLY/2' RISE = 1
+ TARG v(s1) VAL = 'SUPPLY/2' RISE = 1

.measure tran tfall_s1
+ TRIG v(a0) VAL = 'SUPPLY/2' FALL = 1
+ TARG v(s1) VAL = 'SUPPLY/2' FALL = 1

.measure tran tpd_s1 param = '(trise_s1 + tfall_s1)/2' goal = 0

** Delay of S2
.measure tran trise_s2
+ TRIG v(a0) VAL = 'SUPPLY/2' RISE = 5
+ TARG v(s2) VAL = 'SUPPLY/2' RISE = 1

.measure tran tfall_s2
+ TRIG v(a0) VAL = 'SUPPLY/2' RISE = 3
+ TARG v(s2) VAL = 'SUPPLY/2' FALL = 1

.measure tran tpd_s2 param = '(trise_s2 + tfall_s2)/2' goal = 0

** Delay of S3
.measure tran trise_s3
+ TRIG v(a0) VAL = 'SUPPLY/2' RISE = 1
+ TARG v(s3) VAL = 'SUPPLY/2' RISE = 1

.measure tran tfall_s3
+ TRIG v(a0) VAL = 'SUPPLY/2' FALL = 4
+ TARG v(s3) VAL = 'SUPPLY/2' FALL = 1

.measure tran tpd_3 param = '(trise_s3 + tfall_s3)/2' goal = 0

** Delay of C_out
.measure tran trise_Cout
+ TRIG v(a0) VAL = 'SUPPLY/2' RISE = 1
+ TARG v(c4) VAL = 'SUPPLY/2' RISE = 1

.measure tran tfall_Cout
+ TRIG v(a0) VAL = 'SUPPLY/2' RISE = 5
+ TARG v(c4) VAL = 'SUPPLY/2' FALL = 1

.measure tran tpd_Cout param = '(trise_Cout + tfall_Cout)/2' goal = 0

.control 
run
set curplottitle= Rishabh_Agrawal_2020102038_input_A
plot v(a0) v(a1)+2 v(a2)+4 v(a3)+6
set curplottitle= Rishabh_Agrawal_2020102038_input_B
plot v(b0) v(b1)+2 v(b2)+4 v(b3)+6
set curplottitle= Rishabh_Agrawal_2020102038_A.B
plot v(p0) v(p1)+2 v(p2)+4 v(p3)+6
set curplottitle= Rishabh_Agrawal_2020102038_AxorB
plot v(g0) v(g1)+2 v(g2)+4 v(g3)+6
set curplottitle= Rishabh_Agrawal_2020102038_Sums
plot v(s0) v(s1)+2 v(s2)+4 v(s3)+6 v(c4)+8
set curplottitle= Rishabh_Agrawal_2020102038_Carry
plot v(cr_in) v(c1)+2 v(c2)+4 v(c3)+6 v(c4)+8

.endc
.end