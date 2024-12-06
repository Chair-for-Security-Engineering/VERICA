/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Nov 29 09:42:21 2022
/////////////////////////////////////////////////////////////


module and_HPC3 ( a, b, r, clk, c );
  input [2:0] a;
  input [2:0] b;
  input [5:0] r;
  output [2:0] c;
  input clk;
  wire   s_in_2__1_, s_in_2__0_, s_in_1__2_, s_in_1__0_, s_in_0__2_,
         s_in_0__1_, p_0_in_2__1_, p_0_in_2__0_, p_0_in_1__2_, p_0_in_1__0_,
         p_0_in_0__2_, p_0_in_0__1_, s_out_2__1_, s_out_2__0_, s_out_1__2_,
         s_out_1__0_, s_out_0__2_, s_out_0__1_, p_0_out_2__1_, p_0_out_2__0_,
         p_0_out_1__2_, p_0_out_1__0_, p_0_out_0__2_, p_0_out_0__1_, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24;
  wire   [2:0] mul;
  wire   [2:0] z;
  wire   [2:0] a_reg;

  XNOR2_X1 U44 ( .A(z[0]), .B(p_0_out_0__2_), .ZN(n24) );
  XNOR2_X1 U45 ( .A(z[1]), .B(p_0_out_1__2_), .ZN(n19) );
  XNOR2_X1 U46 ( .A(z[2]), .B(p_0_out_2__1_), .ZN(n14) );
  XOR2_X1 U47 ( .A(r[3]), .B(b[1]), .Z(s_in_0__1_) );
  XOR2_X1 U48 ( .A(r[4]), .B(b[2]), .Z(s_in_0__2_) );
  XOR2_X1 U49 ( .A(r[3]), .B(b[0]), .Z(s_in_1__0_) );
  XOR2_X1 U50 ( .A(r[5]), .B(b[2]), .Z(s_in_1__2_) );
  XOR2_X1 U51 ( .A(r[4]), .B(b[0]), .Z(s_in_2__0_) );
  XOR2_X1 U52 ( .A(r[5]), .B(b[1]), .Z(s_in_2__1_) );
  XOR2_X1 U53 ( .A(n20), .B(n21), .Z(c[0]) );
  XNOR2_X1 U54 ( .A(n22), .B(n23), .ZN(n21) );
  XOR2_X1 U55 ( .A(n24), .B(p_0_out_0__1_), .Z(n20) );
  NAND2_X1 U56 ( .A1(s_out_0__2_), .A2(a_reg[0]), .ZN(n22) );
  XOR2_X1 U57 ( .A(n15), .B(n16), .Z(c[1]) );
  XNOR2_X1 U58 ( .A(n17), .B(n18), .ZN(n16) );
  XOR2_X1 U59 ( .A(n19), .B(p_0_out_1__0_), .Z(n15) );
  NAND2_X1 U60 ( .A1(s_out_1__2_), .A2(a_reg[1]), .ZN(n17) );
  XOR2_X1 U61 ( .A(n10), .B(n11), .Z(c[2]) );
  XNOR2_X1 U62 ( .A(n12), .B(n13), .ZN(n11) );
  XOR2_X1 U63 ( .A(n14), .B(p_0_out_2__0_), .Z(n10) );
  NAND2_X1 U64 ( .A1(s_out_2__1_), .A2(a_reg[2]), .ZN(n12) );
  XNOR2_X1 U65 ( .A(r[0]), .B(n9), .ZN(p_0_in_0__1_) );
  NAND2_X1 U66 ( .A1(r[3]), .A2(n3), .ZN(n9) );
  XNOR2_X1 U67 ( .A(r[1]), .B(n8), .ZN(p_0_in_0__2_) );
  NAND2_X1 U68 ( .A1(r[4]), .A2(n3), .ZN(n8) );
  XNOR2_X1 U69 ( .A(r[0]), .B(n7), .ZN(p_0_in_1__0_) );
  NAND2_X1 U70 ( .A1(r[3]), .A2(n2), .ZN(n7) );
  XNOR2_X1 U71 ( .A(r[2]), .B(n6), .ZN(p_0_in_1__2_) );
  NAND2_X1 U72 ( .A1(r[5]), .A2(n2), .ZN(n6) );
  XNOR2_X1 U73 ( .A(r[1]), .B(n5), .ZN(p_0_in_2__0_) );
  NAND2_X1 U74 ( .A1(r[4]), .A2(n1), .ZN(n5) );
  XNOR2_X1 U75 ( .A(r[2]), .B(n4), .ZN(p_0_in_2__1_) );
  NAND2_X1 U76 ( .A1(r[5]), .A2(n1), .ZN(n4) );
  NAND2_X1 U77 ( .A1(s_out_0__1_), .A2(a_reg[0]), .ZN(n23) );
  NAND2_X1 U78 ( .A1(s_out_1__0_), .A2(a_reg[1]), .ZN(n18) );
  NAND2_X1 U79 ( .A1(s_out_2__0_), .A2(a_reg[2]), .ZN(n13) );
  INV_X1 U80 ( .A(a[0]), .ZN(n3) );
  INV_X1 U81 ( .A(a[1]), .ZN(n2) );
  INV_X1 U82 ( .A(a[2]), .ZN(n1) );
  AND2_X1 U83 ( .A1(b[1]), .A2(a[1]), .ZN(mul[1]) );
  AND2_X1 U84 ( .A1(b[2]), .A2(a[2]), .ZN(mul[2]) );
  AND2_X1 U85 ( .A1(b[0]), .A2(a[0]), .ZN(mul[0]) );
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
endmodule

