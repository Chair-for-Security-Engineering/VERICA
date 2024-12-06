/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Thu Aug 29 14:11:29 2024
/////////////////////////////////////////////////////////////


module andDOMREP_d1_k1 ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, 
        port_c_1, port_r, clk, reset );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  input [0:0] port_r;
  input clk, reset;
  wire   maj_6_port_o, maj_7_port_o, maj_8_port_o, maj_9_port_o, maj_10_port_o,
         maj_11_port_o, z_tilde_0_0_0, z_tilde_0_1_0, z_tilde_0_0_1,
         z_tilde_0_1_1, z_tilde_0_0_2, z_tilde_0_1_2, z_tilde_1_1_0,
         z_tilde_1_0_0, z_tilde_1_1_1, z_tilde_1_0_1, z_tilde_1_1_2,
         z_tilde_1_0_2, N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, n1,
         n2, n3, n4, n5, n6, maj_6_n3, maj_6_n2, maj_6_n1, maj_7_n6, maj_7_n5,
         maj_7_n4, maj_8_n6, maj_8_n5, maj_8_n4, maj_9_n6, maj_9_n5, maj_9_n4,
         maj_10_n6, maj_10_n5, maj_10_n4, maj_11_n6, maj_11_n5, maj_11_n4;
  wire   [2:0] comp_0;
  wire   [2:0] comp_1;

  DFF_X1 z_tilde_1_0_0_reg ( .D(N2), .CK(clk), .Q(z_tilde_1_0_0), .QN() );
  DFF_X1 z_tilde_0_1_0_reg ( .D(N1), .CK(clk), .Q(z_tilde_0_1_0), .QN() );
  DFF_X1 z_tilde_0_0_1_reg ( .D(N4), .CK(clk), .Q(z_tilde_0_0_1), .QN() );
  DFF_X1 z_tilde_1_0_2_reg ( .D(N10), .CK(clk), .Q(z_tilde_1_0_2), .QN() );
  DFF_X1 z_tilde_1_1_0_reg ( .D(N3), .CK(clk), .Q(z_tilde_1_1_0), .QN() );
  DFF_X1 z_tilde_0_1_1_reg ( .D(N5), .CK(clk), .Q(z_tilde_0_1_1), .QN() );
  DFF_X1 z_tilde_1_1_2_reg ( .D(N11), .CK(clk), .Q(z_tilde_1_1_2), .QN() );
  DFF_X1 z_tilde_0_1_2_reg ( .D(N9), .CK(clk), .Q(z_tilde_0_1_2), .QN() );
  DFF_X1 z_tilde_0_0_2_reg ( .D(N8), .CK(clk), .Q(z_tilde_0_0_2), .QN() );
  DFF_X1 z_tilde_1_0_1_reg ( .D(N6), .CK(clk), .Q(z_tilde_1_0_1), .QN() );
  DFF_X1 z_tilde_1_1_1_reg ( .D(N7), .CK(clk), .Q(z_tilde_1_1_1), .QN() );
  DFF_X1 result_1_reg_2_ ( .D(maj_11_port_o), .CK(clk), .Q(port_c_1[2]), .QN()
         );
  DFF_X1 result_1_reg_1_ ( .D(maj_9_port_o), .CK(clk), .Q(port_c_1[1]), .QN()
         );
  DFF_X1 result_1_reg_0_ ( .D(maj_7_port_o), .CK(clk), .Q(port_c_1[0]), .QN()
         );
  DFF_X1 z_tilde_0_0_0_reg ( .D(N0), .CK(clk), .Q(z_tilde_0_0_0), .QN() );
  DFF_X1 result_0_reg_2_ ( .D(maj_10_port_o), .CK(clk), .Q(port_c_0[2]), .QN()
         );
  DFF_X1 result_0_reg_1_ ( .D(maj_8_port_o), .CK(clk), .Q(port_c_0[1]), .QN()
         );
  DFF_X1 result_0_reg_0_ ( .D(maj_6_port_o), .CK(clk), .Q(port_c_0[0]), .QN()
         );
  XOR2_X1 U27 ( .A(z_tilde_0_1_0), .B(z_tilde_0_0_0), .Z(comp_0[0]) );
  XOR2_X1 U28 ( .A(z_tilde_0_1_1), .B(z_tilde_0_0_1), .Z(comp_0[1]) );
  XOR2_X1 U29 ( .A(z_tilde_1_1_0), .B(z_tilde_1_0_0), .Z(comp_1[0]) );
  XOR2_X1 U30 ( .A(z_tilde_1_1_1), .B(z_tilde_1_0_1), .Z(comp_1[1]) );
  XOR2_X1 U31 ( .A(z_tilde_0_1_2), .B(z_tilde_0_0_2), .Z(comp_0[2]) );
  XOR2_X1 U32 ( .A(z_tilde_1_1_2), .B(z_tilde_1_0_2), .Z(comp_1[2]) );
  XNOR2_X1 U33 ( .A(port_r[0]), .B(n2), .ZN(N6) );
  NAND2_X1 U34 ( .A1(port_b_0[1]), .A2(port_a_1[1]), .ZN(n2) );
  XNOR2_X1 U35 ( .A(port_r[0]), .B(n1), .ZN(N9) );
  NAND2_X1 U36 ( .A1(port_b_1[2]), .A2(port_a_0[2]), .ZN(n1) );
  XNOR2_X1 U37 ( .A(port_r[0]), .B(n3), .ZN(N5) );
  NAND2_X1 U38 ( .A1(port_a_0[1]), .A2(port_b_1[1]), .ZN(n3) );
  XNOR2_X1 U39 ( .A(port_r[0]), .B(n5), .ZN(N10) );
  NAND2_X1 U40 ( .A1(port_a_1[2]), .A2(port_b_0[2]), .ZN(n5) );
  XNOR2_X1 U41 ( .A(port_r[0]), .B(n6), .ZN(N1) );
  NAND2_X1 U42 ( .A1(port_a_0[0]), .A2(port_b_1[0]), .ZN(n6) );
  XNOR2_X1 U43 ( .A(port_r[0]), .B(n4), .ZN(N2) );
  NAND2_X1 U44 ( .A1(port_b_0[0]), .A2(port_a_1[0]), .ZN(n4) );
  AND2_X1 U45 ( .A1(port_b_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U46 ( .A1(port_a_1[1]), .A2(port_b_1[1]), .ZN(N7) );
  AND2_X1 U47 ( .A1(port_a_0[2]), .A2(port_b_0[2]), .ZN(N8) );
  AND2_X1 U48 ( .A1(port_b_1[2]), .A2(port_a_1[2]), .ZN(N11) );
  AND2_X1 U49 ( .A1(port_a_1[0]), .A2(port_b_1[0]), .ZN(N3) );
  AND2_X1 U50 ( .A1(port_b_0[1]), .A2(port_a_0[1]), .ZN(N4) );
  OR2_X1 maj_6_U4 ( .A1(comp_0[1]), .A2(comp_0[0]), .ZN(maj_6_n3) );
  NAND2_X1 maj_6_U3 ( .A1(comp_0[2]), .A2(maj_6_n3), .ZN(maj_6_n2) );
  NAND2_X1 maj_6_U2 ( .A1(comp_0[1]), .A2(comp_0[0]), .ZN(maj_6_n1) );
  NAND2_X1 maj_6_U1 ( .A1(maj_6_n1), .A2(maj_6_n2), .ZN(maj_6_port_o) );
  OR2_X1 maj_7_U4 ( .A1(comp_1[1]), .A2(comp_1[0]), .ZN(maj_7_n4) );
  NAND2_X1 maj_7_U3 ( .A1(comp_1[2]), .A2(maj_7_n4), .ZN(maj_7_n5) );
  NAND2_X1 maj_7_U2 ( .A1(comp_1[1]), .A2(comp_1[0]), .ZN(maj_7_n6) );
  NAND2_X1 maj_7_U1 ( .A1(maj_7_n6), .A2(maj_7_n5), .ZN(maj_7_port_o) );
  OR2_X1 maj_8_U4 ( .A1(comp_0[1]), .A2(comp_0[0]), .ZN(maj_8_n4) );
  NAND2_X1 maj_8_U3 ( .A1(comp_0[2]), .A2(maj_8_n4), .ZN(maj_8_n5) );
  NAND2_X1 maj_8_U2 ( .A1(comp_0[1]), .A2(comp_0[0]), .ZN(maj_8_n6) );
  NAND2_X1 maj_8_U1 ( .A1(maj_8_n6), .A2(maj_8_n5), .ZN(maj_8_port_o) );
  OR2_X1 maj_9_U4 ( .A1(comp_1[1]), .A2(comp_1[0]), .ZN(maj_9_n4) );
  NAND2_X1 maj_9_U3 ( .A1(comp_1[2]), .A2(maj_9_n4), .ZN(maj_9_n5) );
  NAND2_X1 maj_9_U2 ( .A1(comp_1[1]), .A2(comp_1[0]), .ZN(maj_9_n6) );
  NAND2_X1 maj_9_U1 ( .A1(maj_9_n6), .A2(maj_9_n5), .ZN(maj_9_port_o) );
  OR2_X1 maj_10_U4 ( .A1(comp_0[1]), .A2(comp_0[0]), .ZN(maj_10_n4) );
  NAND2_X1 maj_10_U3 ( .A1(comp_0[2]), .A2(maj_10_n4), .ZN(maj_10_n5) );
  NAND2_X1 maj_10_U2 ( .A1(comp_0[1]), .A2(comp_0[0]), .ZN(maj_10_n6) );
  NAND2_X1 maj_10_U1 ( .A1(maj_10_n6), .A2(maj_10_n5), .ZN(maj_10_port_o) );
  OR2_X1 maj_11_U4 ( .A1(comp_1[1]), .A2(comp_1[0]), .ZN(maj_11_n4) );
  NAND2_X1 maj_11_U3 ( .A1(comp_1[2]), .A2(maj_11_n4), .ZN(maj_11_n5) );
  NAND2_X1 maj_11_U2 ( .A1(comp_1[1]), .A2(comp_1[0]), .ZN(maj_11_n6) );
  NAND2_X1 maj_11_U1 ( .A1(maj_11_n6), .A2(maj_11_n5), .ZN(maj_11_port_o) );
endmodule

