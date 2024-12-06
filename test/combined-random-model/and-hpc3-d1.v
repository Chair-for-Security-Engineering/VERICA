/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Nov 29 09:41:31 2022
/////////////////////////////////////////////////////////////


module and_HPC3 ( a, b, r, clk, c );
  input [1:0] a;
  input [1:0] b;
  input [1:0] r;
  output [1:0] c;
  input clk;
  wire   s_in_1__0_, s_in_0__1_, p_0_in_1__0_, p_0_in_0__1_, s_out_1__0_,
         s_out_0__1_, p_0_out_1__0_, p_0_out_0__1_, n1, n2, n3, n4, n5, n6, n7,
         n8;
  wire   [1:0] mul;
  wire   [1:0] z;
  wire   [1:0] a_reg;

  XOR2_X1 U18 ( .A(r[1]), .B(b[1]), .Z(s_in_0__1_) );
  XOR2_X1 U19 ( .A(r[1]), .B(b[0]), .Z(s_in_1__0_) );
  XOR2_X1 U20 ( .A(n7), .B(n8), .Z(c[0]) );
  NAND2_X1 U21 ( .A1(s_out_0__1_), .A2(a_reg[0]), .ZN(n7) );
  XNOR2_X1 U22 ( .A(z[0]), .B(p_0_out_0__1_), .ZN(n8) );
  XOR2_X1 U23 ( .A(n5), .B(n6), .Z(c[1]) );
  NAND2_X1 U24 ( .A1(s_out_1__0_), .A2(a_reg[1]), .ZN(n5) );
  XNOR2_X1 U25 ( .A(z[1]), .B(p_0_out_1__0_), .ZN(n6) );
  XNOR2_X1 U26 ( .A(r[0]), .B(n4), .ZN(p_0_in_0__1_) );
  NAND2_X1 U27 ( .A1(r[1]), .A2(n2), .ZN(n4) );
  INV_X1 U28 ( .A(a[0]), .ZN(n2) );
  XNOR2_X1 U29 ( .A(r[0]), .B(n3), .ZN(p_0_in_1__0_) );
  NAND2_X1 U30 ( .A1(r[1]), .A2(n1), .ZN(n3) );
  INV_X1 U31 ( .A(a[1]), .ZN(n1) );
  AND2_X1 U32 ( .A1(b[1]), .A2(a[1]), .ZN(mul[1]) );
  AND2_X1 U33 ( .A1(b[0]), .A2(a[0]), .ZN(mul[0]) );
  DFF_X1 mul_pipe_s1_0_s_current_state_reg ( .D(mul[0]), .CK(clk), .Q(z[0]), 
        .QN() );
  DFF_X1 a_i_0_s_current_state_reg ( .D(a[0]), .CK(clk), .Q(a_reg[0]), .QN()
         );
  DFF_X1 s_reg_0_1_s_current_state_reg ( .D(s_in_0__1_), .CK(clk), .Q(
        s_out_0__1_), .QN() );
  DFF_X1 p_0_reg_0_1_s_current_state_reg ( .D(p_0_in_0__1_), .CK(clk), .Q(
        p_0_out_0__1_), .QN() );
  DFF_X1 mul_pipe_s1_1_s_current_state_reg ( .D(mul[1]), .CK(clk), .Q(z[1]), 
        .QN() );
  DFF_X1 a_i_1_s_current_state_reg ( .D(a[1]), .CK(clk), .Q(a_reg[1]), .QN()
         );
  DFF_X1 s_reg_1_0_s_current_state_reg ( .D(s_in_1__0_), .CK(clk), .Q(
        s_out_1__0_), .QN() );
  DFF_X1 p_0_reg_1_0_s_current_state_reg ( .D(p_0_in_1__0_), .CK(clk), .Q(
        p_0_out_1__0_), .QN() );
endmodule

