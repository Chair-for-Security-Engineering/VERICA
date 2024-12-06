/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Nov 29 09:42:49 2022
/////////////////////////////////////////////////////////////


module and_HPC3 ( a, b, r, clk, c );
  input [3:0] a;
  input [3:0] b;
  input [11:0] r;
  output [3:0] c;
  input clk;
  wire   s_in_3__2_, s_in_3__1_, s_in_3__0_, s_in_2__3_, s_in_2__1_,
         s_in_2__0_, s_in_1__3_, s_in_1__2_, s_in_1__0_, s_in_0__3_,
         s_in_0__2_, s_in_0__1_, p_0_in_3__2_, p_0_in_3__1_, p_0_in_3__0_,
         p_0_in_2__3_, p_0_in_2__1_, p_0_in_2__0_, p_0_in_1__3_, p_0_in_1__2_,
         p_0_in_1__0_, p_0_in_0__3_, p_0_in_0__2_, p_0_in_0__1_, s_out_3__2_,
         s_out_3__1_, s_out_3__0_, s_out_2__3_, s_out_2__1_, s_out_2__0_,
         s_out_1__3_, s_out_1__2_, s_out_1__0_, s_out_0__3_, s_out_0__2_,
         s_out_0__1_, p_0_out_3__2_, p_0_out_3__1_, p_0_out_3__0_,
         p_0_out_2__3_, p_0_out_2__1_, p_0_out_2__0_, p_0_out_1__3_,
         p_0_out_1__2_, p_0_out_1__0_, p_0_out_0__3_, p_0_out_0__2_,
         p_0_out_0__1_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48;
  wire   [3:0] mul;
  wire   [3:0] z;
  wire   [3:0] a_reg;

  XNOR2_X1 U82 ( .A(n45), .B(n46), .ZN(n44) );
  NAND2_X1 U83 ( .A1(s_out_0__2_), .A2(a_reg[0]), .ZN(n45) );
  NAND2_X1 U84 ( .A1(s_out_0__1_), .A2(a_reg[0]), .ZN(n46) );
  XNOR2_X1 U85 ( .A(n37), .B(n38), .ZN(n36) );
  NAND2_X1 U86 ( .A1(s_out_1__2_), .A2(a_reg[1]), .ZN(n37) );
  NAND2_X1 U87 ( .A1(s_out_1__0_), .A2(a_reg[1]), .ZN(n38) );
  XNOR2_X1 U88 ( .A(n29), .B(n30), .ZN(n28) );
  NAND2_X1 U89 ( .A1(s_out_2__1_), .A2(a_reg[2]), .ZN(n29) );
  NAND2_X1 U90 ( .A1(s_out_2__0_), .A2(a_reg[2]), .ZN(n30) );
  XNOR2_X1 U91 ( .A(n21), .B(n22), .ZN(n20) );
  NAND2_X1 U92 ( .A1(s_out_3__1_), .A2(a_reg[3]), .ZN(n21) );
  NAND2_X1 U93 ( .A1(s_out_3__0_), .A2(a_reg[3]), .ZN(n22) );
  XNOR2_X1 U94 ( .A(p_0_out_0__2_), .B(p_0_out_0__1_), .ZN(n48) );
  XNOR2_X1 U95 ( .A(p_0_out_1__2_), .B(p_0_out_1__0_), .ZN(n40) );
  XNOR2_X1 U96 ( .A(p_0_out_2__1_), .B(p_0_out_2__0_), .ZN(n32) );
  XNOR2_X1 U97 ( .A(p_0_out_3__1_), .B(p_0_out_3__0_), .ZN(n24) );
  INV_X1 U98 ( .A(a[0]), .ZN(n4) );
  INV_X1 U99 ( .A(a[1]), .ZN(n3) );
  INV_X1 U100 ( .A(a[2]), .ZN(n2) );
  INV_X1 U101 ( .A(a[3]), .ZN(n1) );
  XOR2_X1 U102 ( .A(r[6]), .B(b[1]), .Z(s_in_0__1_) );
  XOR2_X1 U103 ( .A(r[7]), .B(b[2]), .Z(s_in_0__2_) );
  XOR2_X1 U104 ( .A(r[8]), .B(b[3]), .Z(s_in_0__3_) );
  XOR2_X1 U105 ( .A(r[6]), .B(b[0]), .Z(s_in_1__0_) );
  XOR2_X1 U106 ( .A(r[9]), .B(b[2]), .Z(s_in_1__2_) );
  XOR2_X1 U107 ( .A(r[10]), .B(b[3]), .Z(s_in_1__3_) );
  XOR2_X1 U108 ( .A(r[7]), .B(b[0]), .Z(s_in_2__0_) );
  XOR2_X1 U109 ( .A(r[9]), .B(b[1]), .Z(s_in_2__1_) );
  XOR2_X1 U110 ( .A(r[11]), .B(b[3]), .Z(s_in_2__3_) );
  XOR2_X1 U111 ( .A(r[8]), .B(b[0]), .Z(s_in_3__0_) );
  XOR2_X1 U112 ( .A(r[10]), .B(b[1]), .Z(s_in_3__1_) );
  XOR2_X1 U113 ( .A(r[11]), .B(b[2]), .Z(s_in_3__2_) );
  NAND2_X1 U114 ( .A1(s_out_0__3_), .A2(a_reg[0]), .ZN(n43) );
  NAND2_X1 U115 ( .A1(s_out_1__3_), .A2(a_reg[1]), .ZN(n35) );
  NAND2_X1 U116 ( .A1(s_out_2__3_), .A2(a_reg[2]), .ZN(n27) );
  NAND2_X1 U117 ( .A1(s_out_3__2_), .A2(a_reg[3]), .ZN(n19) );
  XOR2_X1 U118 ( .A(n41), .B(n42), .Z(c[0]) );
  XOR2_X1 U119 ( .A(n47), .B(n48), .Z(n41) );
  XOR2_X1 U120 ( .A(n43), .B(n44), .Z(n42) );
  XNOR2_X1 U121 ( .A(z[0]), .B(p_0_out_0__3_), .ZN(n47) );
  XOR2_X1 U122 ( .A(n33), .B(n34), .Z(c[1]) );
  XOR2_X1 U123 ( .A(n39), .B(n40), .Z(n33) );
  XOR2_X1 U124 ( .A(n35), .B(n36), .Z(n34) );
  XNOR2_X1 U125 ( .A(z[1]), .B(p_0_out_1__3_), .ZN(n39) );
  XOR2_X1 U126 ( .A(n25), .B(n26), .Z(c[2]) );
  XOR2_X1 U127 ( .A(n31), .B(n32), .Z(n25) );
  XOR2_X1 U128 ( .A(n27), .B(n28), .Z(n26) );
  XNOR2_X1 U129 ( .A(z[2]), .B(p_0_out_2__3_), .ZN(n31) );
  XOR2_X1 U130 ( .A(n17), .B(n18), .Z(c[3]) );
  XOR2_X1 U131 ( .A(n23), .B(n24), .Z(n17) );
  XOR2_X1 U132 ( .A(n19), .B(n20), .Z(n18) );
  XNOR2_X1 U133 ( .A(z[3]), .B(p_0_out_3__2_), .ZN(n23) );
  XNOR2_X1 U134 ( .A(r[0]), .B(n16), .ZN(p_0_in_0__1_) );
  NAND2_X1 U135 ( .A1(r[6]), .A2(n4), .ZN(n16) );
  XNOR2_X1 U136 ( .A(r[1]), .B(n15), .ZN(p_0_in_0__2_) );
  NAND2_X1 U137 ( .A1(r[7]), .A2(n4), .ZN(n15) );
  XNOR2_X1 U138 ( .A(r[2]), .B(n14), .ZN(p_0_in_0__3_) );
  NAND2_X1 U139 ( .A1(r[8]), .A2(n4), .ZN(n14) );
  XNOR2_X1 U140 ( .A(r[0]), .B(n13), .ZN(p_0_in_1__0_) );
  NAND2_X1 U141 ( .A1(r[6]), .A2(n3), .ZN(n13) );
  XNOR2_X1 U142 ( .A(r[3]), .B(n12), .ZN(p_0_in_1__2_) );
  NAND2_X1 U143 ( .A1(r[9]), .A2(n3), .ZN(n12) );
  XNOR2_X1 U144 ( .A(r[4]), .B(n11), .ZN(p_0_in_1__3_) );
  NAND2_X1 U145 ( .A1(r[10]), .A2(n3), .ZN(n11) );
  XNOR2_X1 U146 ( .A(r[1]), .B(n10), .ZN(p_0_in_2__0_) );
  NAND2_X1 U147 ( .A1(r[7]), .A2(n2), .ZN(n10) );
  XNOR2_X1 U148 ( .A(r[3]), .B(n9), .ZN(p_0_in_2__1_) );
  NAND2_X1 U149 ( .A1(r[9]), .A2(n2), .ZN(n9) );
  XNOR2_X1 U150 ( .A(r[5]), .B(n8), .ZN(p_0_in_2__3_) );
  NAND2_X1 U151 ( .A1(r[11]), .A2(n2), .ZN(n8) );
  XNOR2_X1 U152 ( .A(r[2]), .B(n7), .ZN(p_0_in_3__0_) );
  NAND2_X1 U153 ( .A1(r[8]), .A2(n1), .ZN(n7) );
  XNOR2_X1 U154 ( .A(r[4]), .B(n6), .ZN(p_0_in_3__1_) );
  NAND2_X1 U155 ( .A1(r[10]), .A2(n1), .ZN(n6) );
  XNOR2_X1 U156 ( .A(r[5]), .B(n5), .ZN(p_0_in_3__2_) );
  NAND2_X1 U157 ( .A1(r[11]), .A2(n1), .ZN(n5) );
  AND2_X1 U158 ( .A1(b[1]), .A2(a[1]), .ZN(mul[1]) );
  AND2_X1 U159 ( .A1(b[2]), .A2(a[2]), .ZN(mul[2]) );
  AND2_X1 U160 ( .A1(b[3]), .A2(a[3]), .ZN(mul[3]) );
  AND2_X1 U161 ( .A1(b[0]), .A2(a[0]), .ZN(mul[0]) );
  DFF_X1 mul_pipe_s1_0_s_current_state_reg ( .D(mul[0]), .CK(clk), .Q(z[0]), 
        .QN() );
  DFF_X1 a_i_0_s_current_state_reg ( .D(a[0]), .CK(clk), .Q(a_reg[0]), .QN()
         );
  DFF_X1 s_reg_0_1_s_current_state_reg ( .D(s_in_0__1_), .CK(clk), .Q(
        s_out_0__1_), .QN() );
  DFF_X1 p_0_reg_0_1_s_current_state_reg ( .D(p_0_in_0__1_), .CK(clk), .Q(
        p_0_out_0__1_), .QN() );
  DFF_X1 s_reg_0_2_s_current_state_reg ( .D(s_in_0__2_), .CK(clk), .Q(
        s_out_0__2_), .QN() );
  DFF_X1 p_0_reg_0_2_s_current_state_reg ( .D(p_0_in_0__2_), .CK(clk), .Q(
        p_0_out_0__2_), .QN() );
  DFF_X1 s_reg_0_3_s_current_state_reg ( .D(s_in_0__3_), .CK(clk), .Q(
        s_out_0__3_), .QN() );
  DFF_X1 p_0_reg_0_3_s_current_state_reg ( .D(p_0_in_0__3_), .CK(clk), .Q(
        p_0_out_0__3_), .QN() );
  DFF_X1 mul_pipe_s1_1_s_current_state_reg ( .D(mul[1]), .CK(clk), .Q(z[1]), 
        .QN() );
  DFF_X1 a_i_1_s_current_state_reg ( .D(a[1]), .CK(clk), .Q(a_reg[1]), .QN()
         );
  DFF_X1 s_reg_1_0_s_current_state_reg ( .D(s_in_1__0_), .CK(clk), .Q(
        s_out_1__0_), .QN() );
  DFF_X1 p_0_reg_1_0_s_current_state_reg ( .D(p_0_in_1__0_), .CK(clk), .Q(
        p_0_out_1__0_), .QN() );
  DFF_X1 s_reg_1_2_s_current_state_reg ( .D(s_in_1__2_), .CK(clk), .Q(
        s_out_1__2_), .QN() );
  DFF_X1 p_0_reg_1_2_s_current_state_reg ( .D(p_0_in_1__2_), .CK(clk), .Q(
        p_0_out_1__2_), .QN() );
  DFF_X1 s_reg_1_3_s_current_state_reg ( .D(s_in_1__3_), .CK(clk), .Q(
        s_out_1__3_), .QN() );
  DFF_X1 p_0_reg_1_3_s_current_state_reg ( .D(p_0_in_1__3_), .CK(clk), .Q(
        p_0_out_1__3_), .QN() );
  DFF_X1 mul_pipe_s1_2_s_current_state_reg ( .D(mul[2]), .CK(clk), .Q(z[2]), 
        .QN() );
  DFF_X1 a_i_2_s_current_state_reg ( .D(a[2]), .CK(clk), .Q(a_reg[2]), .QN()
         );
  DFF_X1 s_reg_2_0_s_current_state_reg ( .D(s_in_2__0_), .CK(clk), .Q(
        s_out_2__0_), .QN() );
  DFF_X1 p_0_reg_2_0_s_current_state_reg ( .D(p_0_in_2__0_), .CK(clk), .Q(
        p_0_out_2__0_), .QN() );
  DFF_X1 s_reg_2_1_s_current_state_reg ( .D(s_in_2__1_), .CK(clk), .Q(
        s_out_2__1_), .QN() );
  DFF_X1 p_0_reg_2_1_s_current_state_reg ( .D(p_0_in_2__1_), .CK(clk), .Q(
        p_0_out_2__1_), .QN() );
  DFF_X1 s_reg_2_3_s_current_state_reg ( .D(s_in_2__3_), .CK(clk), .Q(
        s_out_2__3_), .QN() );
  DFF_X1 p_0_reg_2_3_s_current_state_reg ( .D(p_0_in_2__3_), .CK(clk), .Q(
        p_0_out_2__3_), .QN() );
  DFF_X1 mul_pipe_s1_3_s_current_state_reg ( .D(mul[3]), .CK(clk), .Q(z[3]), 
        .QN() );
  DFF_X1 a_i_3_s_current_state_reg ( .D(a[3]), .CK(clk), .Q(a_reg[3]), .QN()
         );
  DFF_X1 s_reg_3_0_s_current_state_reg ( .D(s_in_3__0_), .CK(clk), .Q(
        s_out_3__0_), .QN() );
  DFF_X1 p_0_reg_3_0_s_current_state_reg ( .D(p_0_in_3__0_), .CK(clk), .Q(
        p_0_out_3__0_), .QN() );
  DFF_X1 s_reg_3_1_s_current_state_reg ( .D(s_in_3__1_), .CK(clk), .Q(
        s_out_3__1_), .QN() );
  DFF_X1 p_0_reg_3_1_s_current_state_reg ( .D(p_0_in_3__1_), .CK(clk), .Q(
        p_0_out_3__1_), .QN() );
  DFF_X1 s_reg_3_2_s_current_state_reg ( .D(s_in_3__2_), .CK(clk), .Q(
        s_out_3__2_), .QN() );
  DFF_X1 p_0_reg_3_2_s_current_state_reg ( .D(p_0_in_3__2_), .CK(clk), .Q(
        p_0_out_3__2_), .QN() );
endmodule

