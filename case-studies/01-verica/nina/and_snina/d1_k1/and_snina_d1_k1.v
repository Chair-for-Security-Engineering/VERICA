
module MultiplicationDetection ( port_a_0, port_a_1, port_b_0, port_b_1, 
        port_c_0_0, port_c_0_1, port_c_1_0, port_c_1_1, port_r, clk, reset );
  input [1:0] port_a_0;
  input [1:0] port_a_1;
  input [1:0] port_b_0;
  input [1:0] port_b_1;
  output [1:0] port_c_0_0;
  output [1:0] port_c_0_1;
  output [1:0] port_c_1_0;
  output [1:0] port_c_1_1;
  input [0:0] port_r;
  input clk, reset;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, n1, n2, n3, n4;

  DFF_X1 u_1_1_reg_1_ ( .D(N6), .CK(clk), .Q(port_c_1_1[1]), .QN() );
  DFF_X1 u_1_1_reg_0_ ( .D(N7), .CK(clk), .Q(port_c_1_1[0]), .QN() );
  DFF_X1 u_0_1_reg_1_ ( .D(N2), .CK(clk), .Q(port_c_0_1[1]), .QN() );
  DFF_X1 u_0_1_reg_0_ ( .D(N3), .CK(clk), .Q(port_c_0_1[0]), .QN() );
  DFF_X1 u_1_0_reg_1_ ( .D(N4), .CK(clk), .Q(port_c_1_0[1]), .QN() );
  DFF_X1 u_1_0_reg_0_ ( .D(N5), .CK(clk), .Q(port_c_1_0[0]), .QN() );
  DFF_X1 u_0_0_reg_1_ ( .D(N0), .CK(clk), .Q(port_c_0_0[1]), .QN() );
  DFF_X1 u_0_0_reg_0_ ( .D(N1), .CK(clk), .Q(port_c_0_0[0]), .QN() );
  AND2_X1 U3 ( .A1(port_a_0[1]), .A2(port_b_0[1]), .ZN(N0) );
  AND2_X1 U4 ( .A1(port_a_0[0]), .A2(port_b_0[0]), .ZN(N1) );
  NAND2_X1 U5 ( .A1(port_a_0[1]), .A2(port_b_1[1]), .ZN(n1) );
  XNOR2_X1 U6 ( .A(n1), .B(port_r[0]), .ZN(N2) );
  NAND2_X1 U7 ( .A1(port_a_0[0]), .A2(port_b_1[0]), .ZN(n2) );
  XNOR2_X1 U8 ( .A(n2), .B(port_r[0]), .ZN(N3) );
  NAND2_X1 U9 ( .A1(port_b_0[1]), .A2(port_a_1[1]), .ZN(n3) );
  XNOR2_X1 U10 ( .A(n3), .B(port_r[0]), .ZN(N4) );
  NAND2_X1 U11 ( .A1(port_b_0[0]), .A2(port_a_1[0]), .ZN(n4) );
  XNOR2_X1 U12 ( .A(n4), .B(port_r[0]), .ZN(N5) );
  AND2_X1 U13 ( .A1(port_b_1[1]), .A2(port_a_1[1]), .ZN(N6) );
  AND2_X1 U14 ( .A1(port_b_1[0]), .A2(port_a_1[0]), .ZN(N7) );
endmodule


module Detection ( port_u_0_0, port_u_0_1, port_u_1_0, port_u_1_1, 
        port_errorFlag_0, port_errorFlag_1, clk, reset );
  input [1:0] port_u_0_0;
  input [1:0] port_u_0_1;
  input [1:0] port_u_1_0;
  input [1:0] port_u_1_1;
  output [0:0] port_errorFlag_0;
  output [0:0] port_errorFlag_1;
  input clk, reset;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  DFF_X1 t_1_reg_1_ ( .D(n4), .CK(clk), .Q(n6), .QN() );
  DFF_X1 t_1_reg_0_ ( .D(n3), .CK(clk), .Q(n5), .QN() );
  DFF_X1 t_0_reg_1_ ( .D(n2), .CK(clk), .Q(n8), .QN() );
  DFF_X1 t_0_reg_0_ ( .D(n1), .CK(clk), .Q(n7), .QN() );
  AND2_X1 U3 ( .A1(n8), .A2(n7), .ZN(port_errorFlag_0[0]) );
  AND2_X1 U4 ( .A1(n6), .A2(n5), .ZN(port_errorFlag_1[0]) );
  XNOR2_X1 U5 ( .A(port_u_0_0[0]), .B(port_u_0_0[1]), .ZN(n1) );
  XNOR2_X1 U6 ( .A(port_u_0_1[0]), .B(port_u_0_1[1]), .ZN(n2) );
  XNOR2_X1 U7 ( .A(port_u_1_0[0]), .B(port_u_1_0[1]), .ZN(n3) );
  XNOR2_X1 U8 ( .A(port_u_1_1[0]), .B(port_u_1_1[1]), .ZN(n4) );
endmodule


module Compression ( port_u_0_0, port_u_0_1, port_u_1_0, port_u_1_1, port_c_0, 
        port_c_1 );
  input [1:0] port_u_0_0;
  input [1:0] port_u_0_1;
  input [1:0] port_u_1_0;
  input [1:0] port_u_1_1;
  output [1:0] port_c_0;
  output [1:0] port_c_1;


  XOR2_X1 U1 ( .A(port_u_0_0[0]), .B(port_u_0_1[0]), .Z(port_c_0[0]) );
  XOR2_X1 U2 ( .A(port_u_0_0[1]), .B(port_u_0_1[1]), .Z(port_c_0[1]) );
  XOR2_X1 U3 ( .A(port_u_1_0[0]), .B(port_u_1_1[0]), .Z(port_c_1[0]) );
  XOR2_X1 U4 ( .A(port_u_1_0[1]), .B(port_u_1_1[1]), .Z(port_c_1[1]) );
endmodule


module andSNINA ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, port_c_1, 
        port_r, port_errorFlag_0, port_errorFlag_1, clk, reset );
  input [1:0] port_a_0;
  input [1:0] port_a_1;
  input [1:0] port_b_0;
  input [1:0] port_b_1;
  output [1:0] port_c_0;
  output [1:0] port_c_1;
  input [0:0] port_r;
  output [0:0] port_errorFlag_0;
  output [0:0] port_errorFlag_1;
  input clk, reset;

  wire   [1:0] mul_port_c_0_0;
  wire   [1:0] mul_port_c_0_1;
  wire   [1:0] mul_port_c_1_0;
  wire   [1:0] mul_port_c_1_1;
  wire   [1:0] comp_port_c_0;
  wire   [1:0] comp_port_c_1;

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
  DFF_X1 result_0_reg_1_ ( .D(comp_port_c_0[1]), .CK(clk), .Q(port_c_0[1]), 
        .QN() );
  DFF_X1 result_0_reg_0_ ( .D(comp_port_c_0[0]), .CK(clk), .Q(port_c_0[0]), 
        .QN() );
  DFF_X1 result_1_reg_1_ ( .D(comp_port_c_1[1]), .CK(clk), .Q(port_c_1[1]), 
        .QN() );
  DFF_X1 result_1_reg_0_ ( .D(comp_port_c_1[0]), .CK(clk), .Q(port_c_1[0]), 
        .QN() );
endmodule

