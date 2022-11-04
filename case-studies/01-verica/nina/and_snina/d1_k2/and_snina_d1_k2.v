
module MultiplicationDetection ( port_a_0, port_a_1, port_b_0, port_b_1, 
        port_c_0_0, port_c_0_1, port_c_1_0, port_c_1_1, port_r, clk, reset );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  output [2:0] port_c_0_0;
  output [2:0] port_c_0_1;
  output [2:0] port_c_1_0;
  output [2:0] port_c_1_1;
  input [0:0] port_r;
  input clk, reset;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, n1, n2, n3, n4, n5,
         n6;

  DFF_X1 u_1_1_reg_2_ ( .D(N9), .CK(clk), .Q(port_c_1_1[2]), .QN() );
  DFF_X1 u_1_1_reg_1_ ( .D(N10), .CK(clk), .Q(port_c_1_1[1]), .QN() );
  DFF_X1 u_1_1_reg_0_ ( .D(N11), .CK(clk), .Q(port_c_1_1[0]), .QN() );
  DFF_X1 u_0_1_reg_2_ ( .D(N3), .CK(clk), .Q(port_c_0_1[2]), .QN() );
  DFF_X1 u_0_1_reg_1_ ( .D(N4), .CK(clk), .Q(port_c_0_1[1]), .QN() );
  DFF_X1 u_0_1_reg_0_ ( .D(N5), .CK(clk), .Q(port_c_0_1[0]), .QN() );
  DFF_X1 u_1_0_reg_2_ ( .D(N6), .CK(clk), .Q(port_c_1_0[2]), .QN() );
  DFF_X1 u_1_0_reg_1_ ( .D(N7), .CK(clk), .Q(port_c_1_0[1]), .QN() );
  DFF_X1 u_1_0_reg_0_ ( .D(N8), .CK(clk), .Q(port_c_1_0[0]), .QN() );
  DFF_X1 u_0_0_reg_2_ ( .D(N0), .CK(clk), .Q(port_c_0_0[2]), .QN() );
  DFF_X1 u_0_0_reg_1_ ( .D(N1), .CK(clk), .Q(port_c_0_0[1]), .QN() );
  DFF_X1 u_0_0_reg_0_ ( .D(N2), .CK(clk), .Q(port_c_0_0[0]), .QN() );
  AND2_X1 U3 ( .A1(port_a_0[2]), .A2(port_b_0[2]), .ZN(N0) );
  AND2_X1 U4 ( .A1(port_a_0[1]), .A2(port_b_0[1]), .ZN(N1) );
  AND2_X1 U5 ( .A1(port_b_1[1]), .A2(port_a_1[1]), .ZN(N10) );
  AND2_X1 U6 ( .A1(port_b_1[0]), .A2(port_a_1[0]), .ZN(N11) );
  AND2_X1 U7 ( .A1(port_a_0[0]), .A2(port_b_0[0]), .ZN(N2) );
  NAND2_X1 U8 ( .A1(port_a_0[2]), .A2(port_b_1[2]), .ZN(n1) );
  XNOR2_X1 U9 ( .A(n1), .B(port_r[0]), .ZN(N3) );
  NAND2_X1 U10 ( .A1(port_b_1[1]), .A2(port_a_0[1]), .ZN(n2) );
  XNOR2_X1 U11 ( .A(n2), .B(port_r[0]), .ZN(N4) );
  NAND2_X1 U12 ( .A1(port_a_0[0]), .A2(port_b_1[0]), .ZN(n3) );
  XNOR2_X1 U13 ( .A(n3), .B(port_r[0]), .ZN(N5) );
  NAND2_X1 U14 ( .A1(port_b_0[2]), .A2(port_a_1[2]), .ZN(n4) );
  XNOR2_X1 U15 ( .A(n4), .B(port_r[0]), .ZN(N6) );
  NAND2_X1 U16 ( .A1(port_a_1[1]), .A2(port_b_0[1]), .ZN(n5) );
  XNOR2_X1 U17 ( .A(n5), .B(port_r[0]), .ZN(N7) );
  NAND2_X1 U18 ( .A1(port_b_0[0]), .A2(port_a_1[0]), .ZN(n6) );
  XNOR2_X1 U19 ( .A(n6), .B(port_r[0]), .ZN(N8) );
  AND2_X1 U20 ( .A1(port_b_1[2]), .A2(port_a_1[2]), .ZN(N9) );
endmodule


module Detection ( port_u_0_0, port_u_0_1, port_u_1_0, port_u_1_1, 
        port_errorFlag_0, port_errorFlag_1, clk, reset );
  input [2:0] port_u_0_0;
  input [2:0] port_u_0_1;
  input [2:0] port_u_1_0;
  input [2:0] port_u_1_1;
  output [0:0] port_errorFlag_0;
  output [0:0] port_errorFlag_1;
  input clk, reset;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n1, n2, n3, n4;
  wire   [3:0] t_0;
  wire   [3:0] t_1;

  DFF_X1 t_0_reg_3_ ( .D(n7), .CK(clk), .Q(t_0[3]), .QN() );
  DFF_X1 t_0_reg_2_ ( .D(n8), .CK(clk), .Q(t_0[2]), .QN() );
  DFF_X1 t_0_reg_1_ ( .D(n5), .CK(clk), .Q(t_0[1]), .QN() );
  DFF_X1 t_0_reg_0_ ( .D(n6), .CK(clk), .Q(t_0[0]), .QN() );
  DFF_X1 t_1_reg_3_ ( .D(n11), .CK(clk), .Q(t_1[3]), .QN() );
  DFF_X1 t_1_reg_2_ ( .D(n12), .CK(clk), .Q(t_1[2]), .QN() );
  DFF_X1 t_1_reg_1_ ( .D(n9), .CK(clk), .Q(t_1[1]), .QN() );
  DFF_X1 t_1_reg_0_ ( .D(n10), .CK(clk), .Q(t_1[0]), .QN() );
  NAND2_X1 U3 ( .A1(t_0[2]), .A2(t_0[3]), .ZN(n2) );
  NAND2_X1 U4 ( .A1(t_0[0]), .A2(t_0[1]), .ZN(n1) );
  NOR2_X1 U5 ( .A1(n2), .A2(n1), .ZN(port_errorFlag_0[0]) );
  NAND2_X1 U6 ( .A1(t_1[2]), .A2(t_1[3]), .ZN(n4) );
  NAND2_X1 U7 ( .A1(t_1[0]), .A2(t_1[1]), .ZN(n3) );
  NOR2_X1 U8 ( .A1(n4), .A2(n3), .ZN(port_errorFlag_1[0]) );
  XNOR2_X1 U9 ( .A(port_u_1_0[0]), .B(port_u_1_0[1]), .ZN(n10) );
  XNOR2_X1 U10 ( .A(port_u_1_1[0]), .B(port_u_1_1[2]), .ZN(n11) );
  XNOR2_X1 U11 ( .A(port_u_1_1[0]), .B(port_u_1_1[1]), .ZN(n12) );
  XNOR2_X1 U12 ( .A(port_u_0_0[0]), .B(port_u_0_0[2]), .ZN(n5) );
  XNOR2_X1 U13 ( .A(port_u_0_0[0]), .B(port_u_0_0[1]), .ZN(n6) );
  XNOR2_X1 U14 ( .A(port_u_0_1[0]), .B(port_u_0_1[2]), .ZN(n7) );
  XNOR2_X1 U15 ( .A(port_u_0_1[0]), .B(port_u_0_1[1]), .ZN(n8) );
  XNOR2_X1 U16 ( .A(port_u_1_0[0]), .B(port_u_1_0[2]), .ZN(n9) );
endmodule


module Compression ( port_u_0_0, port_u_0_1, port_u_1_0, port_u_1_1, port_c_0, 
        port_c_1 );
  input [2:0] port_u_0_0;
  input [2:0] port_u_0_1;
  input [2:0] port_u_1_0;
  input [2:0] port_u_1_1;
  output [2:0] port_c_0;
  output [2:0] port_c_1;


  XOR2_X1 U1 ( .A(port_u_0_0[0]), .B(port_u_0_1[0]), .Z(port_c_0[0]) );
  XOR2_X1 U2 ( .A(port_u_0_0[1]), .B(port_u_0_1[1]), .Z(port_c_0[1]) );
  XOR2_X1 U3 ( .A(port_u_0_0[2]), .B(port_u_0_1[2]), .Z(port_c_0[2]) );
  XOR2_X1 U4 ( .A(port_u_1_0[0]), .B(port_u_1_1[0]), .Z(port_c_1[0]) );
  XOR2_X1 U5 ( .A(port_u_1_0[1]), .B(port_u_1_1[1]), .Z(port_c_1[1]) );
  XOR2_X1 U6 ( .A(port_u_1_0[2]), .B(port_u_1_1[2]), .Z(port_c_1[2]) );
endmodule


module andSNINA ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, port_c_1, 
        port_r, port_errorFlag_0, port_errorFlag_1, clk, reset );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  input [0:0] port_r;
  output [0:0] port_errorFlag_0;
  output [0:0] port_errorFlag_1;
  input clk, reset;

  wire   [2:0] mul_port_c_0_0;
  wire   [2:0] mul_port_c_0_1;
  wire   [2:0] mul_port_c_1_0;
  wire   [2:0] mul_port_c_1_1;
  wire   [2:0] comp_port_c_0;
  wire   [2:0] comp_port_c_1;

  MultiplicationDetection mul ( .port_a_0(port_a_0), .port_a_1(port_a_1), 
        .port_b_0(port_b_0), .port_b_1(port_b_1), .port_c_0_0(mul_port_c_0_0), 
        .port_c_0_1(mul_port_c_0_1), .port_c_1_0(mul_port_c_1_0), .port_c_1_1(
        mul_port_c_1_1), .port_r(port_r[0]), .clk(clk), .reset(1'b0) );
  Detection det ( .port_u_0_0(mul_port_c_0_0), .port_u_0_1(mul_port_c_0_1), 
        .port_u_1_0(mul_port_c_1_0), .port_u_1_1(mul_port_c_1_1), 
        .port_errorFlag_0(port_errorFlag_0[0]), .port_errorFlag_1(
        port_errorFlag_1[0]), .clk(clk), .reset(1'b0) );
  Compression comp ( .port_u_0_0(mul_port_c_0_0), .port_u_0_1(mul_port_c_0_1), 
        .port_u_1_0(mul_port_c_1_0), .port_u_1_1(mul_port_c_1_1), .port_c_0(
        comp_port_c_0), .port_c_1(comp_port_c_1) );
  DFF_X1 result_0_reg_2_ ( .D(comp_port_c_0[2]), .CK(clk), .Q(port_c_0[2]), 
        .QN() );
  DFF_X1 result_0_reg_1_ ( .D(comp_port_c_0[1]), .CK(clk), .Q(port_c_0[1]), 
        .QN() );
  DFF_X1 result_0_reg_0_ ( .D(comp_port_c_0[0]), .CK(clk), .Q(port_c_0[0]), 
        .QN() );
  DFF_X1 result_1_reg_2_ ( .D(comp_port_c_1[2]), .CK(clk), .Q(port_c_1[2]), 
        .QN() );
  DFF_X1 result_1_reg_1_ ( .D(comp_port_c_1[1]), .CK(clk), .Q(port_c_1[1]), 
        .QN() );
  DFF_X1 result_1_reg_0_ ( .D(comp_port_c_1[0]), .CK(clk), .Q(port_c_1[0]), 
        .QN() );
endmodule

