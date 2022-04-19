
module MultiplicationDetection ( port_a_0, port_a_1, port_a_2, port_b_0, 
        port_b_1, port_b_2, port_c_0_0, port_c_0_1, port_c_0_2, port_c_1_0, 
        port_c_1_1, port_c_1_2, port_c_2_0, port_c_2_1, port_c_2_2, port_r, 
        clk, reset );
  input [1:0] port_a_0;
  input [1:0] port_a_1;
  input [1:0] port_a_2;
  input [1:0] port_b_0;
  input [1:0] port_b_1;
  input [1:0] port_b_2;
  output [1:0] port_c_0_0;
  output [1:0] port_c_0_1;
  output [1:0] port_c_0_2;
  output [1:0] port_c_1_0;
  output [1:0] port_c_1_1;
  output [1:0] port_c_1_2;
  output [1:0] port_c_2_0;
  output [1:0] port_c_2_1;
  output [1:0] port_c_2_2;
  input [2:0] port_r;
  input clk, reset;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  DFF_X1 u_2_2_reg_1_ ( .D(N16), .CK(clk), .Q(port_c_2_2[1]), .QN() );
  DFF_X1 u_2_2_reg_0_ ( .D(N17), .CK(clk), .Q(port_c_2_2[0]), .QN() );
  DFF_X1 u_1_1_reg_1_ ( .D(N8), .CK(clk), .Q(port_c_1_1[1]), .QN() );
  DFF_X1 u_1_1_reg_0_ ( .D(N9), .CK(clk), .Q(port_c_1_1[0]), .QN() );
  DFF_X1 u_0_1_reg_1_ ( .D(N2), .CK(clk), .Q(port_c_0_1[1]), .QN() );
  DFF_X1 u_0_1_reg_0_ ( .D(N3), .CK(clk), .Q(port_c_0_1[0]), .QN() );
  DFF_X1 u_2_1_reg_1_ ( .D(N14), .CK(clk), .Q(port_c_2_1[1]), .QN() );
  DFF_X1 u_2_1_reg_0_ ( .D(N15), .CK(clk), .Q(port_c_2_1[0]), .QN() );
  DFF_X1 u_0_2_reg_1_ ( .D(N4), .CK(clk), .Q(port_c_0_2[1]), .QN() );
  DFF_X1 u_0_2_reg_0_ ( .D(N5), .CK(clk), .Q(port_c_0_2[0]), .QN() );
  DFF_X1 u_1_2_reg_1_ ( .D(N10), .CK(clk), .Q(port_c_1_2[1]), .QN() );
  DFF_X1 u_1_2_reg_0_ ( .D(N11), .CK(clk), .Q(port_c_1_2[0]), .QN() );
  DFF_X1 u_0_0_reg_1_ ( .D(N0), .CK(clk), .Q(port_c_0_0[1]), .QN() );
  DFF_X1 u_0_0_reg_0_ ( .D(N1), .CK(clk), .Q(port_c_0_0[0]), .QN() );
  DFF_X1 u_2_0_reg_1_ ( .D(N12), .CK(clk), .Q(port_c_2_0[1]), .QN() );
  DFF_X1 u_2_0_reg_0_ ( .D(N13), .CK(clk), .Q(port_c_2_0[0]), .QN() );
  DFF_X1 u_1_0_reg_1_ ( .D(N6), .CK(clk), .Q(port_c_1_0[1]), .QN() );
  DFF_X1 u_1_0_reg_0_ ( .D(N7), .CK(clk), .Q(port_c_1_0[0]), .QN() );
  AND2_X1 U3 ( .A1(port_b_0[1]), .A2(port_a_0[1]), .ZN(N0) );
  AND2_X1 U4 ( .A1(port_b_0[0]), .A2(port_a_0[0]), .ZN(N1) );
  NAND2_X1 U5 ( .A1(port_b_2[1]), .A2(port_a_1[1]), .ZN(n1) );
  XNOR2_X1 U6 ( .A(n1), .B(port_r[2]), .ZN(N10) );
  NAND2_X1 U7 ( .A1(port_b_2[0]), .A2(port_a_1[0]), .ZN(n2) );
  XNOR2_X1 U8 ( .A(n2), .B(port_r[2]), .ZN(N11) );
  NAND2_X1 U9 ( .A1(port_a_2[1]), .A2(port_b_0[1]), .ZN(n3) );
  XNOR2_X1 U10 ( .A(n3), .B(port_r[1]), .ZN(N12) );
  NAND2_X1 U11 ( .A1(port_a_2[0]), .A2(port_b_0[0]), .ZN(n4) );
  XNOR2_X1 U12 ( .A(n4), .B(port_r[1]), .ZN(N13) );
  NAND2_X1 U13 ( .A1(port_b_1[1]), .A2(port_a_2[1]), .ZN(n5) );
  XNOR2_X1 U14 ( .A(n5), .B(port_r[2]), .ZN(N14) );
  NAND2_X1 U15 ( .A1(port_b_1[0]), .A2(port_a_2[0]), .ZN(n6) );
  XNOR2_X1 U16 ( .A(n6), .B(port_r[2]), .ZN(N15) );
  AND2_X1 U17 ( .A1(port_b_2[1]), .A2(port_a_2[1]), .ZN(N16) );
  AND2_X1 U18 ( .A1(port_b_2[0]), .A2(port_a_2[0]), .ZN(N17) );
  NAND2_X1 U19 ( .A1(port_a_0[1]), .A2(port_b_1[1]), .ZN(n7) );
  XNOR2_X1 U20 ( .A(n7), .B(port_r[0]), .ZN(N2) );
  NAND2_X1 U21 ( .A1(port_a_0[0]), .A2(port_b_1[0]), .ZN(n8) );
  XNOR2_X1 U22 ( .A(n8), .B(port_r[0]), .ZN(N3) );
  NAND2_X1 U23 ( .A1(port_a_0[1]), .A2(port_b_2[1]), .ZN(n9) );
  XNOR2_X1 U24 ( .A(n9), .B(port_r[1]), .ZN(N4) );
  NAND2_X1 U25 ( .A1(port_a_0[0]), .A2(port_b_2[0]), .ZN(n10) );
  XNOR2_X1 U26 ( .A(n10), .B(port_r[1]), .ZN(N5) );
  NAND2_X1 U27 ( .A1(port_b_0[1]), .A2(port_a_1[1]), .ZN(n11) );
  XNOR2_X1 U28 ( .A(n11), .B(port_r[0]), .ZN(N6) );
  NAND2_X1 U29 ( .A1(port_b_0[0]), .A2(port_a_1[0]), .ZN(n12) );
  XNOR2_X1 U30 ( .A(n12), .B(port_r[0]), .ZN(N7) );
  AND2_X1 U31 ( .A1(port_a_1[1]), .A2(port_b_1[1]), .ZN(N8) );
  AND2_X1 U32 ( .A1(port_a_1[0]), .A2(port_b_1[0]), .ZN(N9) );
endmodule


module Detection ( port_u_0_0, port_u_0_1, port_u_0_2, port_u_1_0, port_u_1_1, 
        port_u_1_2, port_u_2_0, port_u_2_1, port_u_2_2, port_errorFlag_0, 
        port_errorFlag_1, port_errorFlag_2, clk, reset );
  input [1:0] port_u_0_0;
  input [1:0] port_u_0_1;
  input [1:0] port_u_0_2;
  input [1:0] port_u_1_0;
  input [1:0] port_u_1_1;
  input [1:0] port_u_1_2;
  input [1:0] port_u_2_0;
  input [1:0] port_u_2_1;
  input [1:0] port_u_2_2;
  output [0:0] port_errorFlag_0;
  output [0:0] port_errorFlag_1;
  output [0:0] port_errorFlag_2;
  input clk, reset;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n16, n17, n18, n19, n20, n21;
  wire   [1:0] t_0;
  wire   [1:0] t_1;
  wire   [1:0] t_2;

  DFF_X1 t_2_reg_2_ ( .D(n12), .CK(clk), .Q(), .QN(n18) );
  DFF_X1 t_2_reg_1_ ( .D(n11), .CK(clk), .Q(t_2[1]), .QN() );
  DFF_X1 t_2_reg_0_ ( .D(n10), .CK(clk), .Q(t_2[0]), .QN() );
  DFF_X1 t_1_reg_2_ ( .D(n9), .CK(clk), .Q(), .QN(n17) );
  DFF_X1 t_1_reg_1_ ( .D(n8), .CK(clk), .Q(t_1[1]), .QN() );
  DFF_X1 t_1_reg_0_ ( .D(n7), .CK(clk), .Q(t_1[0]), .QN() );
  DFF_X1 t_0_reg_2_ ( .D(n6), .CK(clk), .Q(), .QN(n16) );
  DFF_X1 t_0_reg_1_ ( .D(n5), .CK(clk), .Q(t_0[1]), .QN() );
  DFF_X1 t_0_reg_0_ ( .D(n4), .CK(clk), .Q(t_0[0]), .QN() );
  NAND2_X1 U3 ( .A1(t_0[0]), .A2(t_0[1]), .ZN(n19) );
  NOR2_X1 U4 ( .A1(n16), .A2(n19), .ZN(port_errorFlag_0[0]) );
  NAND2_X1 U5 ( .A1(t_1[0]), .A2(t_1[1]), .ZN(n20) );
  NOR2_X1 U6 ( .A1(n17), .A2(n20), .ZN(port_errorFlag_1[0]) );
  NAND2_X1 U7 ( .A1(t_2[0]), .A2(t_2[1]), .ZN(n21) );
  NOR2_X1 U8 ( .A1(n18), .A2(n21), .ZN(port_errorFlag_2[0]) );
  XNOR2_X1 U9 ( .A(port_u_2_0[0]), .B(port_u_2_0[1]), .ZN(n10) );
  XNOR2_X1 U10 ( .A(port_u_2_1[0]), .B(port_u_2_1[1]), .ZN(n11) );
  XNOR2_X1 U11 ( .A(port_u_2_2[0]), .B(port_u_2_2[1]), .ZN(n12) );
  XNOR2_X1 U12 ( .A(port_u_0_0[0]), .B(port_u_0_0[1]), .ZN(n4) );
  XNOR2_X1 U13 ( .A(port_u_0_1[0]), .B(port_u_0_1[1]), .ZN(n5) );
  XNOR2_X1 U14 ( .A(port_u_0_2[0]), .B(port_u_0_2[1]), .ZN(n6) );
  XNOR2_X1 U15 ( .A(port_u_1_0[0]), .B(port_u_1_0[1]), .ZN(n7) );
  XNOR2_X1 U16 ( .A(port_u_1_1[0]), .B(port_u_1_1[1]), .ZN(n8) );
  XNOR2_X1 U17 ( .A(port_u_1_2[0]), .B(port_u_1_2[1]), .ZN(n9) );
endmodule


module Compression ( port_u_0_0, port_u_0_1, port_u_0_2, port_u_1_0, 
        port_u_1_1, port_u_1_2, port_u_2_0, port_u_2_1, port_u_2_2, port_c_0, 
        port_c_1, port_c_2 );
  input [1:0] port_u_0_0;
  input [1:0] port_u_0_1;
  input [1:0] port_u_0_2;
  input [1:0] port_u_1_0;
  input [1:0] port_u_1_1;
  input [1:0] port_u_1_2;
  input [1:0] port_u_2_0;
  input [1:0] port_u_2_1;
  input [1:0] port_u_2_2;
  output [1:0] port_c_0;
  output [1:0] port_c_1;
  output [1:0] port_c_2;
  wire   n1, n2, n3, n4, n5, n6;

  XNOR2_X1 U1 ( .A(port_u_0_0[0]), .B(port_u_0_1[0]), .ZN(n1) );
  XNOR2_X1 U2 ( .A(n1), .B(port_u_0_2[0]), .ZN(port_c_0[0]) );
  XNOR2_X1 U3 ( .A(port_u_0_0[1]), .B(port_u_0_1[1]), .ZN(n2) );
  XNOR2_X1 U4 ( .A(n2), .B(port_u_0_2[1]), .ZN(port_c_0[1]) );
  XNOR2_X1 U5 ( .A(port_u_1_0[0]), .B(port_u_1_1[0]), .ZN(n3) );
  XNOR2_X1 U6 ( .A(n3), .B(port_u_1_2[0]), .ZN(port_c_1[0]) );
  XNOR2_X1 U7 ( .A(port_u_1_0[1]), .B(port_u_1_1[1]), .ZN(n4) );
  XNOR2_X1 U8 ( .A(n4), .B(port_u_1_2[1]), .ZN(port_c_1[1]) );
  XNOR2_X1 U9 ( .A(port_u_2_0[0]), .B(port_u_2_1[0]), .ZN(n5) );
  XNOR2_X1 U10 ( .A(n5), .B(port_u_2_2[0]), .ZN(port_c_2[0]) );
  XNOR2_X1 U11 ( .A(port_u_2_0[1]), .B(port_u_2_1[1]), .ZN(n6) );
  XNOR2_X1 U12 ( .A(n6), .B(port_u_2_2[1]), .ZN(port_c_2[1]) );
endmodule


module andSNINA ( port_a_0, port_a_1, port_a_2, port_b_0, port_b_1, port_b_2, 
        port_c_0, port_c_1, port_c_2, port_r, port_errorFlag_0, 
        port_errorFlag_1, port_errorFlag_2, clk, reset );
  input [1:0] port_a_0;
  input [1:0] port_a_1;
  input [1:0] port_a_2;
  input [1:0] port_b_0;
  input [1:0] port_b_1;
  input [1:0] port_b_2;
  output [1:0] port_c_0;
  output [1:0] port_c_1;
  output [1:0] port_c_2;
  input [2:0] port_r;
  output [0:0] port_errorFlag_0;
  output [0:0] port_errorFlag_1;
  output [0:0] port_errorFlag_2;
  input clk, reset;

  wire   [1:0] mul_port_c_0_0;
  wire   [1:0] mul_port_c_0_1;
  wire   [1:0] mul_port_c_0_2;
  wire   [1:0] mul_port_c_1_0;
  wire   [1:0] mul_port_c_1_1;
  wire   [1:0] mul_port_c_1_2;
  wire   [1:0] mul_port_c_2_0;
  wire   [1:0] mul_port_c_2_1;
  wire   [1:0] mul_port_c_2_2;
  wire   [1:0] comp_port_c_0;
  wire   [1:0] comp_port_c_1;
  wire   [1:0] comp_port_c_2;

  MultiplicationDetection mul ( .port_a_0(port_a_0), .port_a_1(port_a_1), 
        .port_a_2(port_a_2), .port_b_0(port_b_0), .port_b_1(port_b_1), 
        .port_b_2(port_b_2), .port_c_0_0(mul_port_c_0_0), .port_c_0_1(
        mul_port_c_0_1), .port_c_0_2(mul_port_c_0_2), .port_c_1_0(
        mul_port_c_1_0), .port_c_1_1(mul_port_c_1_1), .port_c_1_2(
        mul_port_c_1_2), .port_c_2_0(mul_port_c_2_0), .port_c_2_1(
        mul_port_c_2_1), .port_c_2_2(mul_port_c_2_2), .port_r(port_r), .clk(
        clk), .reset(1'b0) );
  Detection det ( .port_u_0_0(mul_port_c_0_0), .port_u_0_1(mul_port_c_0_1), 
        .port_u_0_2(mul_port_c_0_2), .port_u_1_0(mul_port_c_1_0), .port_u_1_1(
        mul_port_c_1_1), .port_u_1_2(mul_port_c_1_2), .port_u_2_0(
        mul_port_c_2_0), .port_u_2_1(mul_port_c_2_1), .port_u_2_2(
        mul_port_c_2_2), .port_errorFlag_0(port_errorFlag_0[0]), 
        .port_errorFlag_1(port_errorFlag_1[0]), .port_errorFlag_2(
        port_errorFlag_2[0]), .clk(clk), .reset(1'b0) );
  Compression comp ( .port_u_0_0(mul_port_c_0_0), .port_u_0_1(mul_port_c_0_1), 
        .port_u_0_2(mul_port_c_0_2), .port_u_1_0(mul_port_c_1_0), .port_u_1_1(
        mul_port_c_1_1), .port_u_1_2(mul_port_c_1_2), .port_u_2_0(
        mul_port_c_2_0), .port_u_2_1(mul_port_c_2_1), .port_u_2_2(
        mul_port_c_2_2), .port_c_0(comp_port_c_0), .port_c_1(comp_port_c_1), 
        .port_c_2(comp_port_c_2) );
  DFF_X1 result_0_reg_1_ ( .D(comp_port_c_0[1]), .CK(clk), .Q(port_c_0[1]), 
        .QN() );
  DFF_X1 result_0_reg_0_ ( .D(comp_port_c_0[0]), .CK(clk), .Q(port_c_0[0]), 
        .QN() );
  DFF_X1 result_1_reg_1_ ( .D(comp_port_c_1[1]), .CK(clk), .Q(port_c_1[1]), 
        .QN() );
  DFF_X1 result_1_reg_0_ ( .D(comp_port_c_1[0]), .CK(clk), .Q(port_c_1[0]), 
        .QN() );
  DFF_X1 result_2_reg_1_ ( .D(comp_port_c_2[1]), .CK(clk), .Q(port_c_2[1]), 
        .QN() );
  DFF_X1 result_2_reg_0_ ( .D(comp_port_c_2[0]), .CK(clk), .Q(port_c_2[0]), 
        .QN() );
endmodule

