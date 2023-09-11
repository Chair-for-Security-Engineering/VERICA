/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Tue Nov 16 13:40:51 2021
/////////////////////////////////////////////////////////////


module DOMmul ( port_a, port_b, port_u_0, port_u_1, port_u_2 );
  input [2:0] port_a;
  input [2:0] port_b;
  output [2:0] port_u_0;
  output [2:0] port_u_1;
  output [2:0] port_u_2;


  AND2_X1 U1 ( .A1(port_b[2]), .A2(port_a[2]), .ZN(port_u_2[2]) );
  AND2_X1 U2 ( .A1(port_b[1]), .A2(port_a[2]), .ZN(port_u_2[1]) );
  AND2_X1 U3 ( .A1(port_b[0]), .A2(port_a[2]), .ZN(port_u_2[0]) );
  AND2_X1 U4 ( .A1(port_b[2]), .A2(port_a[0]), .ZN(port_u_0[2]) );
  AND2_X1 U5 ( .A1(port_a[0]), .A2(port_b[1]), .ZN(port_u_0[1]) );
  AND2_X1 U6 ( .A1(port_b[0]), .A2(port_a[1]), .ZN(port_u_1[0]) );
  AND2_X1 U7 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(port_u_0[0]) );
  AND2_X1 U8 ( .A1(port_a[1]), .A2(port_b[2]), .ZN(port_u_1[2]) );
  AND2_X1 U9 ( .A1(port_a[1]), .A2(port_b[1]), .ZN(port_u_1[1]) );
endmodule


module DOMref ( port_u_0, port_u_1, port_u_2, port_v_0, port_v_1, port_v_2, 
        port_r, clk, reset );
  input [2:0] port_u_0;
  input [2:0] port_u_1;
  input [2:0] port_u_2;
  output [2:0] port_v_0;
  output [2:0] port_v_1;
  output [2:0] port_v_2;
  input [2:0] port_r;
  input clk, reset;
  wire   N0, N1, N2, N3, N4, N5;

  DFF_X1 ff_2_reg_2_ ( .D(port_u_2[2]), .CK(clk), .Q(port_v_2[2]), .QN() );
  DFF_X1 ff_2_reg_1_ ( .D(N5), .CK(clk), .Q(port_v_2[1]), .QN() );
  DFF_X1 ff_2_reg_0_ ( .D(N4), .CK(clk), .Q(port_v_2[0]), .QN() );
  DFF_X1 ff_0_reg_2_ ( .D(N1), .CK(clk), .Q(port_v_0[2]), .QN() );
  DFF_X1 ff_0_reg_1_ ( .D(N0), .CK(clk), .Q(port_v_0[1]), .QN() );
  DFF_X1 ff_0_reg_0_ ( .D(port_u_0[0]), .CK(clk), .Q(port_v_0[0]), .QN() );
  DFF_X1 ff_1_reg_2_ ( .D(N3), .CK(clk), .Q(port_v_1[2]), .QN() );
  DFF_X1 ff_1_reg_1_ ( .D(port_u_1[1]), .CK(clk), .Q(port_v_1[1]), .QN() );
  DFF_X1 ff_1_reg_0_ ( .D(N2), .CK(clk), .Q(port_v_1[0]), .QN() );
  XOR2_X1 U3 ( .A(port_r[0]), .B(port_u_1[0]), .Z(N2) );
  XOR2_X1 U4 ( .A(port_r[2]), .B(port_u_1[2]), .Z(N3) );
  XOR2_X1 U5 ( .A(port_r[0]), .B(port_u_0[1]), .Z(N0) );
  XOR2_X1 U6 ( .A(port_r[1]), .B(port_u_0[2]), .Z(N1) );
  XOR2_X1 U7 ( .A(port_r[1]), .B(port_u_2[0]), .Z(N4) );
  XOR2_X1 U8 ( .A(port_r[2]), .B(port_u_2[1]), .Z(N5) );
endmodule


module DOMcmp ( port_v_0, port_v_1, port_v_2, port_c );
  input [2:0] port_v_0;
  input [2:0] port_v_1;
  input [2:0] port_v_2;
  output [2:0] port_c;
  wire   n1, n2, n3;

  XNOR2_X1 U1 ( .A(port_v_0[2]), .B(port_v_0[0]), .ZN(n1) );
  XNOR2_X1 U2 ( .A(n1), .B(port_v_0[1]), .ZN(port_c[0]) );
  XNOR2_X1 U3 ( .A(port_v_1[2]), .B(port_v_1[0]), .ZN(n2) );
  XNOR2_X1 U4 ( .A(n2), .B(port_v_1[1]), .ZN(port_c[1]) );
  XNOR2_X1 U5 ( .A(port_v_2[2]), .B(port_v_2[0]), .ZN(n3) );
  XNOR2_X1 U6 ( .A(n3), .B(port_v_2[1]), .ZN(port_c[2]) );
endmodule


module DOM ( port_a, port_b, port_c, port_r, clk, reset );
  input [2:0] port_a;
  input [2:0] port_b;
  output [2:0] port_c;
  input [2:0] port_r;
  input clk, reset;

  wire   [2:0] mul_port_u_0;
  wire   [2:0] mul_port_u_1;
  wire   [2:0] mul_port_u_2;
  wire   [2:0] ref_1_port_v_0;
  wire   [2:0] ref_1_port_v_1;
  wire   [2:0] ref_1_port_v_2;

  DOMmul mul ( .port_a(port_a), .port_b(port_b), .port_u_0(mul_port_u_0), 
        .port_u_1(mul_port_u_1), .port_u_2(mul_port_u_2) );
  DOMref ref_1 ( .port_u_0(mul_port_u_0), .port_u_1(mul_port_u_1), .port_u_2(
        mul_port_u_2), .port_v_0(ref_1_port_v_0), .port_v_1(ref_1_port_v_1), 
        .port_v_2(ref_1_port_v_2), .port_r(port_r), .clk(clk), .reset(1'b0) );
  DOMcmp cmp ( .port_v_0(ref_1_port_v_0), .port_v_1(ref_1_port_v_1), 
        .port_v_2(ref_1_port_v_2), .port_c(port_c) );
endmodule

