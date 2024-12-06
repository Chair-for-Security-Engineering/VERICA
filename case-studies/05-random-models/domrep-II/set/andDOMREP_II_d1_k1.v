/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Wed Aug 28 08:55:26 2024
/////////////////////////////////////////////////////////////


module andDOMREP_II_d1_k1 ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, 
        port_c_1, port_r, clk, reset );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  input [1:0] port_r;
  input clk, reset;
  wire   mul_n12, mul_n11, mul_n10, mul_n9, mul_n8, mul_n7, mul_n6, mul_n5,
         mul_n4, mul_n3, mul_n2, mul_n1, mul_N13, mul_N12, mul_N11, mul_N10,
         mul_N9, mul_N8;
  wire   [2:0] mul_port_c_0_0;
  wire   [2:0] mul_port_c_0_1;
  wire   [2:0] mul_port_c_1_0;
  wire   [2:0] mul_port_c_1_1;
  wire   [2:0] comp_0;
  wire   [2:0] comp_1;
  wire   [2:0] mul_xor2_7_port_z;
  wire   [2:0] mul_xor2_6_port_z;
  wire   [2:0] mul_xor2_6_port_a0;
  wire   [2:0] mul_xor2_5_port_z;
  wire   [2:0] mul_xor2_4_port_z;
  wire   [2:0] mul_xor2_4_port_a0;

  DFF_X1 result_0_reg_2_ ( .D(comp_0[2]), .CK(clk), .Q(port_c_0[2]), .QN() );
  DFF_X1 result_0_reg_1_ ( .D(comp_0[1]), .CK(clk), .Q(port_c_0[1]), .QN() );
  DFF_X1 result_0_reg_0_ ( .D(comp_0[0]), .CK(clk), .Q(port_c_0[0]), .QN() );
  DFF_X1 result_1_reg_2_ ( .D(comp_1[2]), .CK(clk), .Q(port_c_1[2]), .QN() );
  DFF_X1 result_1_reg_1_ ( .D(comp_1[1]), .CK(clk), .Q(port_c_1[1]), .QN() );
  DFF_X1 result_1_reg_0_ ( .D(comp_1[0]), .CK(clk), .Q(port_c_1[0]), .QN() );
  XOR2_X1 U9 ( .A(mul_port_c_1_1[0]), .B(mul_port_c_1_0[0]), .Z(comp_1[0]) );
  XOR2_X1 U10 ( .A(mul_port_c_1_1[1]), .B(mul_port_c_1_0[1]), .Z(comp_1[1]) );
  XOR2_X1 U11 ( .A(mul_port_c_1_1[2]), .B(mul_port_c_1_0[2]), .Z(comp_1[2]) );
  XOR2_X1 U12 ( .A(mul_port_c_0_1[0]), .B(mul_port_c_0_0[0]), .Z(comp_0[0]) );
  XOR2_X1 U13 ( .A(mul_port_c_0_1[1]), .B(mul_port_c_0_0[1]), .Z(comp_0[1]) );
  XOR2_X1 U14 ( .A(mul_port_c_0_1[2]), .B(mul_port_c_0_0[2]), .Z(comp_0[2]) );
  INV_X1 mul_U26 ( .A(port_b_1[2]), .ZN(mul_n10) );
  INV_X1 mul_U25 ( .A(port_b_1[1]), .ZN(mul_n11) );
  INV_X1 mul_U24 ( .A(port_b_1[0]), .ZN(mul_n12) );
  INV_X1 mul_U23 ( .A(port_a_0[2]), .ZN(mul_n1) );
  INV_X1 mul_U22 ( .A(port_a_0[1]), .ZN(mul_n2) );
  INV_X1 mul_U21 ( .A(port_a_0[0]), .ZN(mul_n3) );
  INV_X1 mul_U20 ( .A(port_b_0[2]), .ZN(mul_n7) );
  INV_X1 mul_U19 ( .A(port_b_0[1]), .ZN(mul_n8) );
  INV_X1 mul_U18 ( .A(port_b_0[0]), .ZN(mul_n9) );
  INV_X1 mul_U17 ( .A(port_a_1[2]), .ZN(mul_n4) );
  INV_X1 mul_U16 ( .A(port_a_1[1]), .ZN(mul_n5) );
  INV_X1 mul_U15 ( .A(port_a_1[0]), .ZN(mul_n6) );
  NOR2_X1 mul_U14 ( .A1(mul_n1), .A2(mul_n10), .ZN(mul_xor2_4_port_a0[2]) );
  NOR2_X1 mul_U13 ( .A1(mul_n2), .A2(mul_n11), .ZN(mul_xor2_4_port_a0[1]) );
  NOR2_X1 mul_U12 ( .A1(mul_n3), .A2(mul_n12), .ZN(mul_xor2_4_port_a0[0]) );
  NOR2_X1 mul_U11 ( .A1(mul_n4), .A2(mul_n7), .ZN(mul_xor2_6_port_a0[2]) );
  NOR2_X1 mul_U10 ( .A1(mul_n5), .A2(mul_n8), .ZN(mul_xor2_6_port_a0[1]) );
  NOR2_X1 mul_U9 ( .A1(mul_n6), .A2(mul_n9), .ZN(mul_xor2_6_port_a0[0]) );
  NOR2_X1 mul_U8 ( .A1(mul_n7), .A2(mul_n1), .ZN(mul_N8) );
  NOR2_X1 mul_U7 ( .A1(mul_n8), .A2(mul_n2), .ZN(mul_N9) );
  NOR2_X1 mul_U6 ( .A1(mul_n9), .A2(mul_n3), .ZN(mul_N10) );
  NOR2_X1 mul_U5 ( .A1(mul_n4), .A2(mul_n10), .ZN(mul_N11) );
  NOR2_X1 mul_U4 ( .A1(mul_n5), .A2(mul_n11), .ZN(mul_N12) );
  NOR2_X1 mul_U3 ( .A1(mul_n6), .A2(mul_n12), .ZN(mul_N13) );
  DFF_X1 mul_u_1_1_reg_0_ ( .D(mul_N13), .CK(clk), .Q(mul_port_c_1_1[0]), 
        .QN() );
  DFF_X1 mul_u_1_1_reg_1_ ( .D(mul_N12), .CK(clk), .Q(mul_port_c_1_1[1]), 
        .QN() );
  DFF_X1 mul_u_1_1_reg_2_ ( .D(mul_N11), .CK(clk), .Q(mul_port_c_1_1[2]), 
        .QN() );
  DFF_X1 mul_u_1_0_reg_0_ ( .D(mul_xor2_7_port_z[0]), .CK(clk), .Q(
        mul_port_c_1_0[0]), .QN() );
  DFF_X1 mul_u_1_0_reg_1_ ( .D(mul_xor2_7_port_z[1]), .CK(clk), .Q(
        mul_port_c_1_0[1]), .QN() );
  DFF_X1 mul_u_1_0_reg_2_ ( .D(mul_xor2_7_port_z[2]), .CK(clk), .Q(
        mul_port_c_1_0[2]), .QN() );
  DFF_X1 mul_u_0_1_reg_0_ ( .D(mul_xor2_5_port_z[0]), .CK(clk), .Q(
        mul_port_c_0_1[0]), .QN() );
  DFF_X1 mul_u_0_1_reg_1_ ( .D(mul_xor2_5_port_z[1]), .CK(clk), .Q(
        mul_port_c_0_1[1]), .QN() );
  DFF_X1 mul_u_0_1_reg_2_ ( .D(mul_xor2_5_port_z[2]), .CK(clk), .Q(
        mul_port_c_0_1[2]), .QN() );
  DFF_X1 mul_u_0_0_reg_0_ ( .D(mul_N10), .CK(clk), .Q(mul_port_c_0_0[0]), 
        .QN() );
  DFF_X1 mul_u_0_0_reg_1_ ( .D(mul_N9), .CK(clk), .Q(mul_port_c_0_0[1]), .QN()
         );
  DFF_X1 mul_u_0_0_reg_2_ ( .D(mul_N8), .CK(clk), .Q(mul_port_c_0_0[2]), .QN()
         );
  XOR2_X1 mul_xor2_4_U3 ( .A(port_r[0]), .B(mul_xor2_4_port_a0[2]), .Z(
        mul_xor2_4_port_z[2]) );
  XOR2_X1 mul_xor2_4_U2 ( .A(port_r[0]), .B(mul_xor2_4_port_a0[1]), .Z(
        mul_xor2_4_port_z[1]) );
  XOR2_X1 mul_xor2_4_U1 ( .A(port_r[0]), .B(mul_xor2_4_port_a0[0]), .Z(
        mul_xor2_4_port_z[0]) );
  XOR2_X1 mul_xor2_5_U3 ( .A(port_r[1]), .B(mul_xor2_4_port_z[2]), .Z(
        mul_xor2_5_port_z[2]) );
  XOR2_X1 mul_xor2_5_U2 ( .A(port_r[1]), .B(mul_xor2_4_port_z[1]), .Z(
        mul_xor2_5_port_z[1]) );
  XOR2_X1 mul_xor2_5_U1 ( .A(port_r[1]), .B(mul_xor2_4_port_z[0]), .Z(
        mul_xor2_5_port_z[0]) );
  XOR2_X1 mul_xor2_6_U3 ( .A(port_r[0]), .B(mul_xor2_6_port_a0[2]), .Z(
        mul_xor2_6_port_z[2]) );
  XOR2_X1 mul_xor2_6_U2 ( .A(port_r[0]), .B(mul_xor2_6_port_a0[1]), .Z(
        mul_xor2_6_port_z[1]) );
  XOR2_X1 mul_xor2_6_U1 ( .A(port_r[0]), .B(mul_xor2_6_port_a0[0]), .Z(
        mul_xor2_6_port_z[0]) );
  XOR2_X1 mul_xor2_7_U3 ( .A(port_r[1]), .B(mul_xor2_6_port_z[2]), .Z(
        mul_xor2_7_port_z[2]) );
  XOR2_X1 mul_xor2_7_U2 ( .A(port_r[1]), .B(mul_xor2_6_port_z[1]), .Z(
        mul_xor2_7_port_z[1]) );
  XOR2_X1 mul_xor2_7_U1 ( .A(port_r[1]), .B(mul_xor2_6_port_z[0]), .Z(
        mul_xor2_7_port_z[0]) );
endmodule

