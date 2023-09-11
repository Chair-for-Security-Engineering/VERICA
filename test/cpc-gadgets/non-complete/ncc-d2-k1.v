/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Fri Apr 28 13:41:45 2023
/////////////////////////////////////////////////////////////


module NCC_AND_3SHARE ( clk, a0, a1, a2, b0, b1, b2, r0, r1, r2, r3, r4, r5, 
        r6, c0, c1, c2 );
  input [2:0] a0;
  input [2:0] a1;
  input [2:0] a2;
  input [2:0] b0;
  input [2:0] b1;
  input [2:0] b2;
  output [2:0] c0;
  output [2:0] c1;
  output [2:0] c2;
  input clk, r0, r1, r2, r3, r4, r5, r6;
  wire   n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, BMaj0_0_ab_ac, BMaj0_0_bc,
         BMaj0_0_ac, BMaj0_0_ab, BMaj1_0_ab_ac, BMaj1_0_bc, BMaj1_0_ac,
         BMaj1_0_ab, BMaj2_0_ab_ac, BMaj2_0_bc, BMaj2_0_ac, BMaj2_0_ab,
         CMaj0_0_ab_ac, CMaj0_0_bc, CMaj0_0_ac, CMaj0_0_ab, CMaj1_0_ab_ac,
         CMaj1_0_bc, CMaj1_0_ac, CMaj1_0_ab, CMaj2_0_ab_ac, CMaj2_0_bc,
         CMaj2_0_ac, CMaj2_0_ab, BMaj0_1_ab_ac, BMaj0_1_bc, BMaj0_1_ac,
         BMaj0_1_ab, BMaj1_1_ab_ac, BMaj1_1_bc, BMaj1_1_ac, BMaj1_1_ab,
         BMaj2_1_ab_ac, BMaj2_1_bc, BMaj2_1_ac, BMaj2_1_ab, CMaj0_1_ab_ac,
         CMaj0_1_bc, CMaj0_1_ac, CMaj0_1_ab, CMaj1_1_ab_ac, CMaj1_1_bc,
         CMaj1_1_ac, CMaj1_1_ab, CMaj2_1_ab_ac, CMaj2_1_bc, CMaj2_1_ac,
         CMaj2_1_ab, BMaj0_2_ab_ac, BMaj0_2_bc, BMaj0_2_ac, BMaj0_2_ab,
         BMaj1_2_ab_ac, BMaj1_2_bc, BMaj1_2_ac, BMaj1_2_ab, BMaj2_2_ab_ac,
         BMaj2_2_bc, BMaj2_2_ac, BMaj2_2_ab, CMaj0_2_ab_ac, CMaj0_2_bc,
         CMaj0_2_ac, CMaj0_2_ab, CMaj1_2_ab_ac, CMaj1_2_bc, CMaj1_2_ac,
         CMaj1_2_ab, CMaj2_2_ab_ac, CMaj2_2_bc, CMaj2_2_ac, CMaj2_2_ab;
  wire   [2:0] r01;
  wire   [2:0] r46;
  wire   [2:0] r01_r;
  wire   [2:0] b0_r;
  wire   [2:0] b1_r;
  wire   [2:0] b2_r;
  wire   [2:0] mb0;
  wire   [2:0] mb1;
  wire   [2:0] mb2;
  wire   [2:0] mb0_r;
  wire   [2:0] mb1_r;
  wire   [2:0] mb2_r;
  wire   [2:0] a1b1;
  wire   [2:0] a1b2;
  wire   [2:0] a2b1;
  wire   [2:0] a2b2;
  wire   [2:0] a0b2;
  wire   [2:0] a2b0;
  wire   [2:0] a0b0;
  wire   [2:0] a0b1;
  wire   [2:0] a1b0;
  wire   [2:0] a1b1_r;
  wire   [2:0] a1b2_r;
  wire   [2:0] a2b1_r;
  wire   [2:0] a2b2_r;
  wire   [2:0] a0b2_r;
  wire   [2:0] a2b0_r;
  wire   [2:0] a0b0_r;
  wire   [2:0] a0b1_r;
  wire   [2:0] a1b0_r;
  wire   [2:0] c0_r;
  wire   [2:0] c1_r;
  wire   [2:0] c2_r;
  wire   [2:0] mc0;
  wire   [2:0] mc1;
  wire   [2:0] mc2;

  XOR2_X1 U82 ( .A(r0), .B(b0[0]), .Z(b0_r[0]) );
  XOR2_X1 U83 ( .A(r1), .B(b1[0]), .Z(b1_r[0]) );
  XOR2_X1 U84 ( .A(r01_r[0]), .B(b2[0]), .Z(b2_r[0]) );
  NAND2_X1 U85 ( .A1(mb1_r[0]), .A2(a1[0]), .ZN(n37) );
  XNOR2_X1 U86 ( .A(n37), .B(r2), .ZN(a1b1[0]) );
  NAND2_X1 U87 ( .A1(mb2_r[0]), .A2(a1[0]), .ZN(n38) );
  XNOR2_X1 U88 ( .A(n38), .B(r3), .ZN(a1b2[0]) );
  NAND2_X1 U89 ( .A1(a2[0]), .A2(mb1_r[0]), .ZN(n39) );
  XNOR2_X1 U90 ( .A(n39), .B(r4), .ZN(a2b1[0]) );
  NAND2_X1 U91 ( .A1(a2[0]), .A2(mb2_r[0]), .ZN(n40) );
  XNOR2_X1 U92 ( .A(n40), .B(r2), .ZN(a2b2[0]) );
  NAND2_X1 U93 ( .A1(a0[0]), .A2(mb2_r[0]), .ZN(n41) );
  XNOR2_X1 U94 ( .A(n41), .B(r5), .ZN(a0b2[0]) );
  NAND2_X1 U95 ( .A1(mb0_r[0]), .A2(a2[0]), .ZN(n42) );
  XNOR2_X1 U96 ( .A(n42), .B(r6), .ZN(a2b0[0]) );
  NAND2_X1 U97 ( .A1(mb0_r[0]), .A2(a0[0]), .ZN(n43) );
  XNOR2_X1 U98 ( .A(n43), .B(r3), .ZN(a0b0[0]) );
  NAND2_X1 U99 ( .A1(a0[0]), .A2(mb1_r[0]), .ZN(n44) );
  XNOR2_X1 U100 ( .A(n44), .B(r5), .ZN(a0b1[0]) );
  NAND2_X1 U101 ( .A1(mb0_r[0]), .A2(a1[0]), .ZN(n45) );
  XNOR2_X1 U102 ( .A(n45), .B(r46[0]), .ZN(a1b0[0]) );
  XNOR2_X1 U103 ( .A(a1b1_r[0]), .B(a2b1_r[0]), .ZN(n46) );
  XNOR2_X1 U104 ( .A(n46), .B(a1b2_r[0]), .ZN(c0_r[0]) );
  XNOR2_X1 U105 ( .A(a2b2_r[0]), .B(a2b0_r[0]), .ZN(n47) );
  XNOR2_X1 U106 ( .A(n47), .B(a0b2_r[0]), .ZN(c1_r[0]) );
  XNOR2_X1 U107 ( .A(a0b0_r[0]), .B(a1b0_r[0]), .ZN(n48) );
  XNOR2_X1 U108 ( .A(n48), .B(a0b1_r[0]), .ZN(c2_r[0]) );
  XOR2_X1 U109 ( .A(r0), .B(b0[1]), .Z(b0_r[1]) );
  XOR2_X1 U110 ( .A(r1), .B(b1[1]), .Z(b1_r[1]) );
  XOR2_X1 U111 ( .A(r01_r[1]), .B(b2[1]), .Z(b2_r[1]) );
  NAND2_X1 U112 ( .A1(mb1_r[1]), .A2(a1[1]), .ZN(n49) );
  XNOR2_X1 U113 ( .A(n49), .B(r2), .ZN(a1b1[1]) );
  NAND2_X1 U114 ( .A1(mb2_r[1]), .A2(a1[1]), .ZN(n50) );
  XNOR2_X1 U115 ( .A(n50), .B(r3), .ZN(a1b2[1]) );
  NAND2_X1 U116 ( .A1(a2[1]), .A2(mb1_r[1]), .ZN(n51) );
  XNOR2_X1 U117 ( .A(n51), .B(r4), .ZN(a2b1[1]) );
  NAND2_X1 U118 ( .A1(a2[1]), .A2(mb2_r[1]), .ZN(n52) );
  XNOR2_X1 U119 ( .A(n52), .B(r2), .ZN(a2b2[1]) );
  NAND2_X1 U120 ( .A1(a0[1]), .A2(mb2_r[1]), .ZN(n53) );
  XNOR2_X1 U121 ( .A(n53), .B(r5), .ZN(a0b2[1]) );
  NAND2_X1 U122 ( .A1(mb0_r[1]), .A2(a2[1]), .ZN(n54) );
  XNOR2_X1 U123 ( .A(n54), .B(r6), .ZN(a2b0[1]) );
  NAND2_X1 U124 ( .A1(mb0_r[1]), .A2(a0[1]), .ZN(n55) );
  XNOR2_X1 U125 ( .A(n55), .B(r3), .ZN(a0b0[1]) );
  NAND2_X1 U126 ( .A1(a0[1]), .A2(mb1_r[1]), .ZN(n56) );
  XNOR2_X1 U127 ( .A(n56), .B(r5), .ZN(a0b1[1]) );
  NAND2_X1 U128 ( .A1(mb0_r[1]), .A2(a1[1]), .ZN(n57) );
  XNOR2_X1 U129 ( .A(n57), .B(r46[1]), .ZN(a1b0[1]) );
  XNOR2_X1 U130 ( .A(a1b1_r[1]), .B(a2b1_r[1]), .ZN(n58) );
  XNOR2_X1 U131 ( .A(n58), .B(a1b2_r[1]), .ZN(c0_r[1]) );
  XNOR2_X1 U132 ( .A(a2b2_r[1]), .B(a2b0_r[1]), .ZN(n59) );
  XNOR2_X1 U133 ( .A(n59), .B(a0b2_r[1]), .ZN(c1_r[1]) );
  XNOR2_X1 U134 ( .A(a0b0_r[1]), .B(a1b0_r[1]), .ZN(n60) );
  XNOR2_X1 U135 ( .A(n60), .B(a0b1_r[1]), .ZN(c2_r[1]) );
  XOR2_X1 U136 ( .A(r0), .B(b0[2]), .Z(b0_r[2]) );
  XOR2_X1 U137 ( .A(r1), .B(b1[2]), .Z(b1_r[2]) );
  XOR2_X1 U138 ( .A(r01_r[2]), .B(b2[2]), .Z(b2_r[2]) );
  NAND2_X1 U139 ( .A1(mb1_r[2]), .A2(a1[2]), .ZN(n61) );
  XNOR2_X1 U140 ( .A(n61), .B(r2), .ZN(a1b1[2]) );
  NAND2_X1 U141 ( .A1(mb2_r[2]), .A2(a1[2]), .ZN(n62) );
  XNOR2_X1 U142 ( .A(n62), .B(r3), .ZN(a1b2[2]) );
  NAND2_X1 U143 ( .A1(a2[2]), .A2(mb1_r[2]), .ZN(n63) );
  XNOR2_X1 U144 ( .A(n63), .B(r4), .ZN(a2b1[2]) );
  NAND2_X1 U145 ( .A1(a2[2]), .A2(mb2_r[2]), .ZN(n64) );
  XNOR2_X1 U146 ( .A(n64), .B(r2), .ZN(a2b2[2]) );
  NAND2_X1 U147 ( .A1(a0[2]), .A2(mb2_r[2]), .ZN(n65) );
  XNOR2_X1 U148 ( .A(n65), .B(r5), .ZN(a0b2[2]) );
  NAND2_X1 U149 ( .A1(mb0_r[2]), .A2(a2[2]), .ZN(n66) );
  XNOR2_X1 U150 ( .A(n66), .B(r6), .ZN(a2b0[2]) );
  NAND2_X1 U151 ( .A1(mb0_r[2]), .A2(a0[2]), .ZN(n67) );
  XNOR2_X1 U152 ( .A(n67), .B(r3), .ZN(a0b0[2]) );
  NAND2_X1 U153 ( .A1(a0[2]), .A2(mb1_r[2]), .ZN(n68) );
  XNOR2_X1 U154 ( .A(n68), .B(r5), .ZN(a0b1[2]) );
  NAND2_X1 U155 ( .A1(mb0_r[2]), .A2(a1[2]), .ZN(n69) );
  XNOR2_X1 U156 ( .A(n69), .B(r46[2]), .ZN(a1b0[2]) );
  XNOR2_X1 U157 ( .A(a1b1_r[2]), .B(a2b1_r[2]), .ZN(n70) );
  XNOR2_X1 U158 ( .A(n70), .B(a1b2_r[2]), .ZN(c0_r[2]) );
  XNOR2_X1 U159 ( .A(a2b2_r[2]), .B(a2b0_r[2]), .ZN(n71) );
  XNOR2_X1 U160 ( .A(n71), .B(a0b2_r[2]), .ZN(c1_r[2]) );
  XNOR2_X1 U161 ( .A(a0b0_r[2]), .B(a1b0_r[2]), .ZN(n72) );
  XNOR2_X1 U162 ( .A(n72), .B(a0b1_r[2]), .ZN(c2_r[2]) );
  XOR2_X1 RXOR01_0_U1 ( .A(r1), .B(r0), .Z(r01[0]) );
  XOR2_X1 RXOR46_0_U1 ( .A(r6), .B(r4), .Z(r46[0]) );
  DFF_X1 RFF01_0_Q_reg ( .D(r01[0]), .CK(clk), .Q(r01_r[0]) );
  AND2_X1 BMaj0_0_A1_U1 ( .A1(b0_r[1]), .A2(b0_r[0]), .ZN(BMaj0_0_ab) );
  AND2_X1 BMaj0_0_A2_U1 ( .A1(b0_r[2]), .A2(b0_r[0]), .ZN(BMaj0_0_ac) );
  AND2_X1 BMaj0_0_A3_U1 ( .A1(b0_r[2]), .A2(b0_r[1]), .ZN(BMaj0_0_bc) );
  XOR2_X1 BMaj0_0_X1_U1 ( .A(BMaj0_0_ac), .B(BMaj0_0_ab), .Z(BMaj0_0_ab_ac) );
  XOR2_X1 BMaj0_0_X2_U1 ( .A(BMaj0_0_bc), .B(BMaj0_0_ab_ac), .Z(mb0[0]) );
  AND2_X1 BMaj1_0_A1_U1 ( .A1(b1_r[1]), .A2(b1_r[0]), .ZN(BMaj1_0_ab) );
  AND2_X1 BMaj1_0_A2_U1 ( .A1(b1_r[2]), .A2(b1_r[0]), .ZN(BMaj1_0_ac) );
  AND2_X1 BMaj1_0_A3_U1 ( .A1(b1_r[2]), .A2(b1_r[1]), .ZN(BMaj1_0_bc) );
  XOR2_X1 BMaj1_0_X1_U1 ( .A(BMaj1_0_ac), .B(BMaj1_0_ab), .Z(BMaj1_0_ab_ac) );
  XOR2_X1 BMaj1_0_X2_U1 ( .A(BMaj1_0_bc), .B(BMaj1_0_ab_ac), .Z(mb1[0]) );
  AND2_X1 BMaj2_0_A1_U1 ( .A1(b2_r[1]), .A2(b2_r[0]), .ZN(BMaj2_0_ab) );
  AND2_X1 BMaj2_0_A2_U1 ( .A1(b2_r[2]), .A2(b2_r[0]), .ZN(BMaj2_0_ac) );
  AND2_X1 BMaj2_0_A3_U1 ( .A1(b2_r[2]), .A2(b2_r[1]), .ZN(BMaj2_0_bc) );
  XOR2_X1 BMaj2_0_X1_U1 ( .A(BMaj2_0_ac), .B(BMaj2_0_ab), .Z(BMaj2_0_ab_ac) );
  XOR2_X1 BMaj2_0_X2_U1 ( .A(BMaj2_0_bc), .B(BMaj2_0_ab_ac), .Z(mb2[0]) );
  DFF_X1 BFF0_0_Q_reg ( .D(mb0[0]), .CK(clk), .Q(mb0_r[0]) );
  DFF_X1 BFF1_0_Q_reg ( .D(mb1[0]), .CK(clk), .Q(mb1_r[0]) );
  DFF_X1 BFF2_0_Q_reg ( .D(mb2[0]), .CK(clk), .Q(mb2_r[0]) );
  DFF_X1 ABFF11_0_Q_reg ( .D(a1b1[0]), .CK(clk), .Q(a1b1_r[0]) );
  DFF_X1 ABFF12_0_Q_reg ( .D(a1b2[0]), .CK(clk), .Q(a1b2_r[0]) );
  DFF_X1 ABFF21_0_Q_reg ( .D(a2b1[0]), .CK(clk), .Q(a2b1_r[0]) );
  DFF_X1 ABFF22_0_Q_reg ( .D(a2b2[0]), .CK(clk), .Q(a2b2_r[0]) );
  DFF_X1 ABFF02_0_Q_reg ( .D(a0b2[0]), .CK(clk), .Q(a0b2_r[0]) );
  DFF_X1 ABFF20_0_Q_reg ( .D(a2b0[0]), .CK(clk), .Q(a2b0_r[0]) );
  DFF_X1 ABFF00_0_Q_reg ( .D(a0b0[0]), .CK(clk), .Q(a0b0_r[0]) );
  DFF_X1 ABFF01_0_Q_reg ( .D(a0b1[0]), .CK(clk), .Q(a0b1_r[0]) );
  DFF_X1 ABFF10_0_Q_reg ( .D(a1b0[0]), .CK(clk), .Q(a1b0_r[0]) );
  AND2_X1 CMaj0_0_A1_U1 ( .A1(c0_r[1]), .A2(c0_r[0]), .ZN(CMaj0_0_ab) );
  AND2_X1 CMaj0_0_A2_U1 ( .A1(c0_r[2]), .A2(c0_r[0]), .ZN(CMaj0_0_ac) );
  AND2_X1 CMaj0_0_A3_U1 ( .A1(c0_r[2]), .A2(c0_r[1]), .ZN(CMaj0_0_bc) );
  XOR2_X1 CMaj0_0_X1_U1 ( .A(CMaj0_0_ac), .B(CMaj0_0_ab), .Z(CMaj0_0_ab_ac) );
  XOR2_X1 CMaj0_0_X2_U1 ( .A(CMaj0_0_bc), .B(CMaj0_0_ab_ac), .Z(mc0[0]) );
  AND2_X1 CMaj1_0_A1_U1 ( .A1(c1_r[1]), .A2(c1_r[0]), .ZN(CMaj1_0_ab) );
  AND2_X1 CMaj1_0_A2_U1 ( .A1(c1_r[2]), .A2(c1_r[0]), .ZN(CMaj1_0_ac) );
  AND2_X1 CMaj1_0_A3_U1 ( .A1(c1_r[2]), .A2(c1_r[1]), .ZN(CMaj1_0_bc) );
  XOR2_X1 CMaj1_0_X1_U1 ( .A(CMaj1_0_ac), .B(CMaj1_0_ab), .Z(CMaj1_0_ab_ac) );
  XOR2_X1 CMaj1_0_X2_U1 ( .A(CMaj1_0_bc), .B(CMaj1_0_ab_ac), .Z(mc1[0]) );
  AND2_X1 CMaj2_0_A1_U1 ( .A1(c2_r[1]), .A2(c2_r[0]), .ZN(CMaj2_0_ab) );
  AND2_X1 CMaj2_0_A2_U1 ( .A1(c2_r[2]), .A2(c2_r[0]), .ZN(CMaj2_0_ac) );
  AND2_X1 CMaj2_0_A3_U1 ( .A1(c2_r[2]), .A2(c2_r[1]), .ZN(CMaj2_0_bc) );
  XOR2_X1 CMaj2_0_X1_U1 ( .A(CMaj2_0_ac), .B(CMaj2_0_ab), .Z(CMaj2_0_ab_ac) );
  XOR2_X1 CMaj2_0_X2_U1 ( .A(CMaj2_0_bc), .B(CMaj2_0_ab_ac), .Z(mc2[0]) );
  DFF_X1 CFF0_0_Q_reg ( .D(mc0[0]), .CK(clk), .Q(c0[0]) );
  DFF_X1 CFF1_0_Q_reg ( .D(mc1[0]), .CK(clk), .Q(c1[0]) );
  DFF_X1 CFF2_0_Q_reg ( .D(mc2[0]), .CK(clk), .Q(c2[0]) );
  XOR2_X1 RXOR01_1_U1 ( .A(r1), .B(r0), .Z(r01[1]) );
  XOR2_X1 RXOR46_1_U1 ( .A(r6), .B(r4), .Z(r46[1]) );
  DFF_X1 RFF01_1_Q_reg ( .D(r01[1]), .CK(clk), .Q(r01_r[1]) );
  AND2_X1 BMaj0_1_A1_U1 ( .A1(b0_r[1]), .A2(b0_r[0]), .ZN(BMaj0_1_ab) );
  AND2_X1 BMaj0_1_A2_U1 ( .A1(b0_r[2]), .A2(b0_r[0]), .ZN(BMaj0_1_ac) );
  AND2_X1 BMaj0_1_A3_U1 ( .A1(b0_r[2]), .A2(b0_r[1]), .ZN(BMaj0_1_bc) );
  XOR2_X1 BMaj0_1_X1_U1 ( .A(BMaj0_1_ac), .B(BMaj0_1_ab), .Z(BMaj0_1_ab_ac) );
  XOR2_X1 BMaj0_1_X2_U1 ( .A(BMaj0_1_bc), .B(BMaj0_1_ab_ac), .Z(mb0[1]) );
  AND2_X1 BMaj1_1_A1_U1 ( .A1(b1_r[1]), .A2(b1_r[0]), .ZN(BMaj1_1_ab) );
  AND2_X1 BMaj1_1_A2_U1 ( .A1(b1_r[2]), .A2(b1_r[0]), .ZN(BMaj1_1_ac) );
  AND2_X1 BMaj1_1_A3_U1 ( .A1(b1_r[2]), .A2(b1_r[1]), .ZN(BMaj1_1_bc) );
  XOR2_X1 BMaj1_1_X1_U1 ( .A(BMaj1_1_ac), .B(BMaj1_1_ab), .Z(BMaj1_1_ab_ac) );
  XOR2_X1 BMaj1_1_X2_U1 ( .A(BMaj1_1_bc), .B(BMaj1_1_ab_ac), .Z(mb1[1]) );
  AND2_X1 BMaj2_1_A1_U1 ( .A1(b2_r[1]), .A2(b2_r[0]), .ZN(BMaj2_1_ab) );
  AND2_X1 BMaj2_1_A2_U1 ( .A1(b2_r[2]), .A2(b2_r[0]), .ZN(BMaj2_1_ac) );
  AND2_X1 BMaj2_1_A3_U1 ( .A1(b2_r[2]), .A2(b2_r[1]), .ZN(BMaj2_1_bc) );
  XOR2_X1 BMaj2_1_X1_U1 ( .A(BMaj2_1_ac), .B(BMaj2_1_ab), .Z(BMaj2_1_ab_ac) );
  XOR2_X1 BMaj2_1_X2_U1 ( .A(BMaj2_1_bc), .B(BMaj2_1_ab_ac), .Z(mb2[1]) );
  DFF_X1 BFF0_1_Q_reg ( .D(mb0[1]), .CK(clk), .Q(mb0_r[1]) );
  DFF_X1 BFF1_1_Q_reg ( .D(mb1[1]), .CK(clk), .Q(mb1_r[1]) );
  DFF_X1 BFF2_1_Q_reg ( .D(mb2[1]), .CK(clk), .Q(mb2_r[1]) );
  DFF_X1 ABFF11_1_Q_reg ( .D(a1b1[1]), .CK(clk), .Q(a1b1_r[1]) );
  DFF_X1 ABFF12_1_Q_reg ( .D(a1b2[1]), .CK(clk), .Q(a1b2_r[1]) );
  DFF_X1 ABFF21_1_Q_reg ( .D(a2b1[1]), .CK(clk), .Q(a2b1_r[1]) );
  DFF_X1 ABFF22_1_Q_reg ( .D(a2b2[1]), .CK(clk), .Q(a2b2_r[1]) );
  DFF_X1 ABFF02_1_Q_reg ( .D(a0b2[1]), .CK(clk), .Q(a0b2_r[1]) );
  DFF_X1 ABFF20_1_Q_reg ( .D(a2b0[1]), .CK(clk), .Q(a2b0_r[1]) );
  DFF_X1 ABFF00_1_Q_reg ( .D(a0b0[1]), .CK(clk), .Q(a0b0_r[1]) );
  DFF_X1 ABFF01_1_Q_reg ( .D(a0b1[1]), .CK(clk), .Q(a0b1_r[1]) );
  DFF_X1 ABFF10_1_Q_reg ( .D(a1b0[1]), .CK(clk), .Q(a1b0_r[1]) );
  AND2_X1 CMaj0_1_A1_U1 ( .A1(c0_r[1]), .A2(c0_r[0]), .ZN(CMaj0_1_ab) );
  AND2_X1 CMaj0_1_A2_U1 ( .A1(c0_r[2]), .A2(c0_r[0]), .ZN(CMaj0_1_ac) );
  AND2_X1 CMaj0_1_A3_U1 ( .A1(c0_r[2]), .A2(c0_r[1]), .ZN(CMaj0_1_bc) );
  XOR2_X1 CMaj0_1_X1_U1 ( .A(CMaj0_1_ac), .B(CMaj0_1_ab), .Z(CMaj0_1_ab_ac) );
  XOR2_X1 CMaj0_1_X2_U1 ( .A(CMaj0_1_bc), .B(CMaj0_1_ab_ac), .Z(mc0[1]) );
  AND2_X1 CMaj1_1_A1_U1 ( .A1(c1_r[1]), .A2(c1_r[0]), .ZN(CMaj1_1_ab) );
  AND2_X1 CMaj1_1_A2_U1 ( .A1(c1_r[2]), .A2(c1_r[0]), .ZN(CMaj1_1_ac) );
  AND2_X1 CMaj1_1_A3_U1 ( .A1(c1_r[2]), .A2(c1_r[1]), .ZN(CMaj1_1_bc) );
  XOR2_X1 CMaj1_1_X1_U1 ( .A(CMaj1_1_ac), .B(CMaj1_1_ab), .Z(CMaj1_1_ab_ac) );
  XOR2_X1 CMaj1_1_X2_U1 ( .A(CMaj1_1_bc), .B(CMaj1_1_ab_ac), .Z(mc1[1]) );
  AND2_X1 CMaj2_1_A1_U1 ( .A1(c2_r[1]), .A2(c2_r[0]), .ZN(CMaj2_1_ab) );
  AND2_X1 CMaj2_1_A2_U1 ( .A1(c2_r[2]), .A2(c2_r[0]), .ZN(CMaj2_1_ac) );
  AND2_X1 CMaj2_1_A3_U1 ( .A1(c2_r[2]), .A2(c2_r[1]), .ZN(CMaj2_1_bc) );
  XOR2_X1 CMaj2_1_X1_U1 ( .A(CMaj2_1_ac), .B(CMaj2_1_ab), .Z(CMaj2_1_ab_ac) );
  XOR2_X1 CMaj2_1_X2_U1 ( .A(CMaj2_1_bc), .B(CMaj2_1_ab_ac), .Z(mc2[1]) );
  DFF_X1 CFF0_1_Q_reg ( .D(mc0[1]), .CK(clk), .Q(c0[1]) );
  DFF_X1 CFF1_1_Q_reg ( .D(mc1[1]), .CK(clk), .Q(c1[1]) );
  DFF_X1 CFF2_1_Q_reg ( .D(mc2[1]), .CK(clk), .Q(c2[1]) );
  XOR2_X1 RXOR01_2_U1 ( .A(r1), .B(r0), .Z(r01[2]) );
  XOR2_X1 RXOR46_2_U1 ( .A(r6), .B(r4), .Z(r46[2]) );
  DFF_X1 RFF01_2_Q_reg ( .D(r01[2]), .CK(clk), .Q(r01_r[2]) );
  AND2_X1 BMaj0_2_A1_U1 ( .A1(b0_r[1]), .A2(b0_r[0]), .ZN(BMaj0_2_ab) );
  AND2_X1 BMaj0_2_A2_U1 ( .A1(b0_r[2]), .A2(b0_r[0]), .ZN(BMaj0_2_ac) );
  AND2_X1 BMaj0_2_A3_U1 ( .A1(b0_r[2]), .A2(b0_r[1]), .ZN(BMaj0_2_bc) );
  XOR2_X1 BMaj0_2_X1_U1 ( .A(BMaj0_2_ac), .B(BMaj0_2_ab), .Z(BMaj0_2_ab_ac) );
  XOR2_X1 BMaj0_2_X2_U1 ( .A(BMaj0_2_bc), .B(BMaj0_2_ab_ac), .Z(mb0[2]) );
  AND2_X1 BMaj1_2_A1_U1 ( .A1(b1_r[1]), .A2(b1_r[0]), .ZN(BMaj1_2_ab) );
  AND2_X1 BMaj1_2_A2_U1 ( .A1(b1_r[2]), .A2(b1_r[0]), .ZN(BMaj1_2_ac) );
  AND2_X1 BMaj1_2_A3_U1 ( .A1(b1_r[2]), .A2(b1_r[1]), .ZN(BMaj1_2_bc) );
  XOR2_X1 BMaj1_2_X1_U1 ( .A(BMaj1_2_ac), .B(BMaj1_2_ab), .Z(BMaj1_2_ab_ac) );
  XOR2_X1 BMaj1_2_X2_U1 ( .A(BMaj1_2_bc), .B(BMaj1_2_ab_ac), .Z(mb1[2]) );
  AND2_X1 BMaj2_2_A1_U1 ( .A1(b2_r[1]), .A2(b2_r[0]), .ZN(BMaj2_2_ab) );
  AND2_X1 BMaj2_2_A2_U1 ( .A1(b2_r[2]), .A2(b2_r[0]), .ZN(BMaj2_2_ac) );
  AND2_X1 BMaj2_2_A3_U1 ( .A1(b2_r[2]), .A2(b2_r[1]), .ZN(BMaj2_2_bc) );
  XOR2_X1 BMaj2_2_X1_U1 ( .A(BMaj2_2_ac), .B(BMaj2_2_ab), .Z(BMaj2_2_ab_ac) );
  XOR2_X1 BMaj2_2_X2_U1 ( .A(BMaj2_2_bc), .B(BMaj2_2_ab_ac), .Z(mb2[2]) );
  DFF_X1 BFF0_2_Q_reg ( .D(mb0[2]), .CK(clk), .Q(mb0_r[2]) );
  DFF_X1 BFF1_2_Q_reg ( .D(mb1[2]), .CK(clk), .Q(mb1_r[2]) );
  DFF_X1 BFF2_2_Q_reg ( .D(mb2[2]), .CK(clk), .Q(mb2_r[2]) );
  DFF_X1 ABFF11_2_Q_reg ( .D(a1b1[2]), .CK(clk), .Q(a1b1_r[2]) );
  DFF_X1 ABFF12_2_Q_reg ( .D(a1b2[2]), .CK(clk), .Q(a1b2_r[2]) );
  DFF_X1 ABFF21_2_Q_reg ( .D(a2b1[2]), .CK(clk), .Q(a2b1_r[2]) );
  DFF_X1 ABFF22_2_Q_reg ( .D(a2b2[2]), .CK(clk), .Q(a2b2_r[2]) );
  DFF_X1 ABFF02_2_Q_reg ( .D(a0b2[2]), .CK(clk), .Q(a0b2_r[2]) );
  DFF_X1 ABFF20_2_Q_reg ( .D(a2b0[2]), .CK(clk), .Q(a2b0_r[2]) );
  DFF_X1 ABFF00_2_Q_reg ( .D(a0b0[2]), .CK(clk), .Q(a0b0_r[2]) );
  DFF_X1 ABFF01_2_Q_reg ( .D(a0b1[2]), .CK(clk), .Q(a0b1_r[2]) );
  DFF_X1 ABFF10_2_Q_reg ( .D(a1b0[2]), .CK(clk), .Q(a1b0_r[2]) );
  AND2_X1 CMaj0_2_A1_U1 ( .A1(c0_r[1]), .A2(c0_r[0]), .ZN(CMaj0_2_ab) );
  AND2_X1 CMaj0_2_A2_U1 ( .A1(c0_r[2]), .A2(c0_r[0]), .ZN(CMaj0_2_ac) );
  AND2_X1 CMaj0_2_A3_U1 ( .A1(c0_r[2]), .A2(c0_r[1]), .ZN(CMaj0_2_bc) );
  XOR2_X1 CMaj0_2_X1_U1 ( .A(CMaj0_2_ac), .B(CMaj0_2_ab), .Z(CMaj0_2_ab_ac) );
  XOR2_X1 CMaj0_2_X2_U1 ( .A(CMaj0_2_bc), .B(CMaj0_2_ab_ac), .Z(mc0[2]) );
  AND2_X1 CMaj1_2_A1_U1 ( .A1(c1_r[1]), .A2(c1_r[0]), .ZN(CMaj1_2_ab) );
  AND2_X1 CMaj1_2_A2_U1 ( .A1(c1_r[2]), .A2(c1_r[0]), .ZN(CMaj1_2_ac) );
  AND2_X1 CMaj1_2_A3_U1 ( .A1(c1_r[2]), .A2(c1_r[1]), .ZN(CMaj1_2_bc) );
  XOR2_X1 CMaj1_2_X1_U1 ( .A(CMaj1_2_ac), .B(CMaj1_2_ab), .Z(CMaj1_2_ab_ac) );
  XOR2_X1 CMaj1_2_X2_U1 ( .A(CMaj1_2_bc), .B(CMaj1_2_ab_ac), .Z(mc1[2]) );
  AND2_X1 CMaj2_2_A1_U1 ( .A1(c2_r[1]), .A2(c2_r[0]), .ZN(CMaj2_2_ab) );
  AND2_X1 CMaj2_2_A2_U1 ( .A1(c2_r[2]), .A2(c2_r[0]), .ZN(CMaj2_2_ac) );
  AND2_X1 CMaj2_2_A3_U1 ( .A1(c2_r[2]), .A2(c2_r[1]), .ZN(CMaj2_2_bc) );
  XOR2_X1 CMaj2_2_X1_U1 ( .A(CMaj2_2_ac), .B(CMaj2_2_ab), .Z(CMaj2_2_ab_ac) );
  XOR2_X1 CMaj2_2_X2_U1 ( .A(CMaj2_2_bc), .B(CMaj2_2_ab_ac), .Z(mc2[2]) );
  DFF_X1 CFF0_2_Q_reg ( .D(mc0[2]), .CK(clk), .Q(c0[2]) );
  DFF_X1 CFF1_2_Q_reg ( .D(mc1[2]), .CK(clk), .Q(c1[2]) );
  DFF_X1 CFF2_2_Q_reg ( .D(mc2[2]), .CK(clk), .Q(c2[2]) );
endmodule
