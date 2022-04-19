/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Tue Nov 16 13:41:05 2021
/////////////////////////////////////////////////////////////


module DOMmul ( port_a, port_b, port_u_0, port_u_1, port_u_2, port_u_3, 
        port_u_4 );
  input [4:0] port_a;
  input [4:0] port_b;
  output [4:0] port_u_0;
  output [4:0] port_u_1;
  output [4:0] port_u_2;
  output [4:0] port_u_3;
  output [4:0] port_u_4;


  AND2_X1 U1 ( .A1(port_b[4]), .A2(port_a[4]), .ZN(port_u_4[4]) );
  AND2_X1 U2 ( .A1(port_b[3]), .A2(port_a[4]), .ZN(port_u_4[3]) );
  AND2_X1 U3 ( .A1(port_b[2]), .A2(port_a[4]), .ZN(port_u_4[2]) );
  AND2_X1 U4 ( .A1(port_b[1]), .A2(port_a[4]), .ZN(port_u_4[1]) );
  AND2_X1 U5 ( .A1(port_b[0]), .A2(port_a[4]), .ZN(port_u_4[0]) );
  AND2_X1 U6 ( .A1(port_b[4]), .A2(port_a[0]), .ZN(port_u_0[4]) );
  AND2_X1 U7 ( .A1(port_b[3]), .A2(port_a[0]), .ZN(port_u_0[3]) );
  AND2_X1 U8 ( .A1(port_b[2]), .A2(port_a[0]), .ZN(port_u_0[2]) );
  AND2_X1 U9 ( .A1(port_b[1]), .A2(port_a[0]), .ZN(port_u_0[1]) );
  AND2_X1 U10 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(port_u_0[0]) );
  AND2_X1 U11 ( .A1(port_b[4]), .A2(port_a[3]), .ZN(port_u_3[4]) );
  AND2_X1 U12 ( .A1(port_b[3]), .A2(port_a[3]), .ZN(port_u_3[3]) );
  AND2_X1 U13 ( .A1(port_b[2]), .A2(port_a[3]), .ZN(port_u_3[2]) );
  AND2_X1 U14 ( .A1(port_b[0]), .A2(port_a[2]), .ZN(port_u_2[0]) );
  AND2_X1 U15 ( .A1(port_b[1]), .A2(port_a[3]), .ZN(port_u_3[1]) );
  AND2_X1 U16 ( .A1(port_b[0]), .A2(port_a[3]), .ZN(port_u_3[0]) );
  AND2_X1 U17 ( .A1(port_b[4]), .A2(port_a[1]), .ZN(port_u_1[4]) );
  AND2_X1 U18 ( .A1(port_b[3]), .A2(port_a[1]), .ZN(port_u_1[3]) );
  AND2_X1 U19 ( .A1(port_a[1]), .A2(port_b[2]), .ZN(port_u_1[2]) );
  AND2_X1 U20 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(port_u_1[1]) );
  AND2_X1 U21 ( .A1(port_b[0]), .A2(port_a[1]), .ZN(port_u_1[0]) );
  AND2_X1 U22 ( .A1(port_a[2]), .A2(port_b[4]), .ZN(port_u_2[4]) );
  AND2_X1 U23 ( .A1(port_a[2]), .A2(port_b[3]), .ZN(port_u_2[3]) );
  AND2_X1 U24 ( .A1(port_a[2]), .A2(port_b[2]), .ZN(port_u_2[2]) );
  AND2_X1 U25 ( .A1(port_a[2]), .A2(port_b[1]), .ZN(port_u_2[1]) );
endmodule


module DOMref ( port_u_0, port_u_1, port_u_2, port_u_3, port_u_4, port_v_0, 
        port_v_1, port_v_2, port_v_3, port_v_4, port_r, clk, reset );
  input [4:0] port_u_0;
  input [4:0] port_u_1;
  input [4:0] port_u_2;
  input [4:0] port_u_3;
  input [4:0] port_u_4;
  output [4:0] port_v_0;
  output [4:0] port_v_1;
  output [4:0] port_v_2;
  output [4:0] port_v_3;
  output [4:0] port_v_4;
  input [9:0] port_r;
  input clk, reset;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19;

  DFF_X1 ff_4_reg_4_ ( .D(port_u_4[4]), .CK(clk), .Q(port_v_4[4]), .QN() );
  DFF_X1 ff_4_reg_3_ ( .D(N19), .CK(clk), .Q(port_v_4[3]), .QN() );
  DFF_X1 ff_4_reg_2_ ( .D(N18), .CK(clk), .Q(port_v_4[2]), .QN() );
  DFF_X1 ff_4_reg_1_ ( .D(N17), .CK(clk), .Q(port_v_4[1]), .QN() );
  DFF_X1 ff_4_reg_0_ ( .D(N16), .CK(clk), .Q(port_v_4[0]), .QN() );
  DFF_X1 ff_0_reg_4_ ( .D(N3), .CK(clk), .Q(port_v_0[4]), .QN() );
  DFF_X1 ff_0_reg_3_ ( .D(N2), .CK(clk), .Q(port_v_0[3]), .QN() );
  DFF_X1 ff_0_reg_2_ ( .D(N1), .CK(clk), .Q(port_v_0[2]), .QN() );
  DFF_X1 ff_0_reg_1_ ( .D(N0), .CK(clk), .Q(port_v_0[1]), .QN() );
  DFF_X1 ff_0_reg_0_ ( .D(port_u_0[0]), .CK(clk), .Q(port_v_0[0]), .QN() );
  DFF_X1 ff_3_reg_4_ ( .D(N15), .CK(clk), .Q(port_v_3[4]), .QN() );
  DFF_X1 ff_3_reg_3_ ( .D(port_u_3[3]), .CK(clk), .Q(port_v_3[3]), .QN() );
  DFF_X1 ff_3_reg_2_ ( .D(N14), .CK(clk), .Q(port_v_3[2]), .QN() );
  DFF_X1 ff_3_reg_1_ ( .D(N13), .CK(clk), .Q(port_v_3[1]), .QN() );
  DFF_X1 ff_3_reg_0_ ( .D(N12), .CK(clk), .Q(port_v_3[0]), .QN() );
  DFF_X1 ff_1_reg_4_ ( .D(N7), .CK(clk), .Q(port_v_1[4]), .QN() );
  DFF_X1 ff_1_reg_3_ ( .D(N6), .CK(clk), .Q(port_v_1[3]), .QN() );
  DFF_X1 ff_1_reg_2_ ( .D(N5), .CK(clk), .Q(port_v_1[2]), .QN() );
  DFF_X1 ff_1_reg_1_ ( .D(port_u_1[1]), .CK(clk), .Q(port_v_1[1]), .QN() );
  DFF_X1 ff_1_reg_0_ ( .D(N4), .CK(clk), .Q(port_v_1[0]), .QN() );
  DFF_X1 ff_2_reg_4_ ( .D(N11), .CK(clk), .Q(port_v_2[4]), .QN() );
  DFF_X1 ff_2_reg_3_ ( .D(N10), .CK(clk), .Q(port_v_2[3]), .QN() );
  DFF_X1 ff_2_reg_2_ ( .D(port_u_2[2]), .CK(clk), .Q(port_v_2[2]), .QN() );
  DFF_X1 ff_2_reg_1_ ( .D(N9), .CK(clk), .Q(port_v_2[1]), .QN() );
  DFF_X1 ff_2_reg_0_ ( .D(N8), .CK(clk), .Q(port_v_2[0]), .QN() );
  XOR2_X1 U3 ( .A(port_r[1]), .B(port_u_2[0]), .Z(N8) );
  XOR2_X1 U4 ( .A(port_r[2]), .B(port_u_2[1]), .Z(N9) );
  XOR2_X1 U5 ( .A(port_r[5]), .B(port_u_2[3]), .Z(N10) );
  XOR2_X1 U6 ( .A(port_r[8]), .B(port_u_2[4]), .Z(N11) );
  XOR2_X1 U7 ( .A(port_r[0]), .B(port_u_1[0]), .Z(N4) );
  XOR2_X1 U8 ( .A(port_r[2]), .B(port_u_1[2]), .Z(N5) );
  XOR2_X1 U9 ( .A(port_r[4]), .B(port_u_1[3]), .Z(N6) );
  XOR2_X1 U10 ( .A(port_r[7]), .B(port_u_1[4]), .Z(N7) );
  XOR2_X1 U11 ( .A(port_r[3]), .B(port_u_3[0]), .Z(N12) );
  XOR2_X1 U12 ( .A(port_r[4]), .B(port_u_3[1]), .Z(N13) );
  XOR2_X1 U13 ( .A(port_r[5]), .B(port_u_3[2]), .Z(N14) );
  XOR2_X1 U14 ( .A(port_r[9]), .B(port_u_3[4]), .Z(N15) );
  XOR2_X1 U15 ( .A(port_r[0]), .B(port_u_0[1]), .Z(N0) );
  XOR2_X1 U16 ( .A(port_r[1]), .B(port_u_0[2]), .Z(N1) );
  XOR2_X1 U17 ( .A(port_r[3]), .B(port_u_0[3]), .Z(N2) );
  XOR2_X1 U18 ( .A(port_r[6]), .B(port_u_0[4]), .Z(N3) );
  XOR2_X1 U19 ( .A(port_r[6]), .B(port_u_4[0]), .Z(N16) );
  XOR2_X1 U20 ( .A(port_r[7]), .B(port_u_4[1]), .Z(N17) );
  XOR2_X1 U21 ( .A(port_r[8]), .B(port_u_4[2]), .Z(N18) );
  XOR2_X1 U22 ( .A(port_r[9]), .B(port_u_4[3]), .Z(N19) );
endmodule


module DOMcmp ( port_v_0, port_v_1, port_v_2, port_v_3, port_v_4, port_c );
  input [4:0] port_v_0;
  input [4:0] port_v_1;
  input [4:0] port_v_2;
  input [4:0] port_v_3;
  input [4:0] port_v_4;
  output [4:0] port_c;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;

  XOR2_X1 U1 ( .A(port_v_0[2]), .B(port_v_0[3]), .Z(n2) );
  XNOR2_X1 U2 ( .A(port_v_0[4]), .B(port_v_0[1]), .ZN(n1) );
  XNOR2_X1 U3 ( .A(n2), .B(n1), .ZN(n3) );
  XOR2_X1 U4 ( .A(port_v_0[0]), .B(n3), .Z(port_c[0]) );
  XOR2_X1 U5 ( .A(port_v_1[2]), .B(port_v_1[3]), .Z(n5) );
  XNOR2_X1 U6 ( .A(port_v_1[4]), .B(port_v_1[1]), .ZN(n4) );
  XNOR2_X1 U7 ( .A(n5), .B(n4), .ZN(n6) );
  XOR2_X1 U8 ( .A(port_v_1[0]), .B(n6), .Z(port_c[1]) );
  XOR2_X1 U9 ( .A(port_v_2[2]), .B(port_v_2[3]), .Z(n8) );
  XNOR2_X1 U10 ( .A(port_v_2[4]), .B(port_v_2[1]), .ZN(n7) );
  XNOR2_X1 U11 ( .A(n8), .B(n7), .ZN(n9) );
  XOR2_X1 U12 ( .A(port_v_2[0]), .B(n9), .Z(port_c[2]) );
  XOR2_X1 U13 ( .A(port_v_3[2]), .B(port_v_3[3]), .Z(n11) );
  XNOR2_X1 U14 ( .A(port_v_3[4]), .B(port_v_3[1]), .ZN(n10) );
  XNOR2_X1 U15 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U16 ( .A(port_v_3[0]), .B(n12), .Z(port_c[3]) );
  XOR2_X1 U17 ( .A(port_v_4[2]), .B(port_v_4[3]), .Z(n14) );
  XNOR2_X1 U18 ( .A(port_v_4[4]), .B(port_v_4[1]), .ZN(n13) );
  XNOR2_X1 U19 ( .A(n14), .B(n13), .ZN(n15) );
  XOR2_X1 U20 ( .A(port_v_4[0]), .B(n15), .Z(port_c[4]) );
endmodule


module DOM ( port_a, port_b, port_c, port_r, clk, reset );
  input [4:0] port_a;
  input [4:0] port_b;
  output [4:0] port_c;
  input [9:0] port_r;
  input clk, reset;

  wire   [4:0] mul_port_u_0;
  wire   [4:0] mul_port_u_1;
  wire   [4:0] mul_port_u_2;
  wire   [4:0] mul_port_u_3;
  wire   [4:0] mul_port_u_4;
  wire   [4:0] ref_1_port_v_0;
  wire   [4:0] ref_1_port_v_1;
  wire   [4:0] ref_1_port_v_2;
  wire   [4:0] ref_1_port_v_3;
  wire   [4:0] ref_1_port_v_4;

  DOMmul mul ( .port_a(port_a), .port_b(port_b), .port_u_0(mul_port_u_0), 
        .port_u_1(mul_port_u_1), .port_u_2(mul_port_u_2), .port_u_3(
        mul_port_u_3), .port_u_4(mul_port_u_4) );
  DOMref ref_1 ( .port_u_0(mul_port_u_0), .port_u_1(mul_port_u_1), .port_u_2(
        mul_port_u_2), .port_u_3(mul_port_u_3), .port_u_4(mul_port_u_4), 
        .port_v_0(ref_1_port_v_0), .port_v_1(ref_1_port_v_1), .port_v_2(
        ref_1_port_v_2), .port_v_3(ref_1_port_v_3), .port_v_4(ref_1_port_v_4), 
        .port_r(port_r), .clk(clk), .reset(1'b0) );
  DOMcmp cmp ( .port_v_0(ref_1_port_v_0), .port_v_1(ref_1_port_v_1), 
        .port_v_2(ref_1_port_v_2), .port_v_3(ref_1_port_v_3), .port_v_4(
        ref_1_port_v_4), .port_c(port_c) );
endmodule

