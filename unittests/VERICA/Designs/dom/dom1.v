/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Tue Nov 16 13:40:43 2021
/////////////////////////////////////////////////////////////


module DOMmul ( port_a, port_b, port_u_0, port_u_1 );
  input [1:0] port_a;
  input [1:0] port_b;
  output [1:0] port_u_0;
  output [1:0] port_u_1;


  AND2_X1 U1 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(port_u_1[1]) );
  AND2_X1 U2 ( .A1(port_a[1]), .A2(port_b[0]), .ZN(port_u_1[0]) );
  AND2_X1 U3 ( .A1(port_a[0]), .A2(port_b[0]), .ZN(port_u_0[0]) );
  AND2_X1 U4 ( .A1(port_b[1]), .A2(port_a[0]), .ZN(port_u_0[1]) );
endmodule


module DOMref ( port_u_0, port_u_1, port_v_0, port_v_1, port_r, clk, reset );
  input [1:0] port_u_0;
  input [1:0] port_u_1;
  output [1:0] port_v_0;
  output [1:0] port_v_1;
  input [0:0] port_r;
  input clk;
  input [7:0] reset;
  wire   N0, N1;

  DFF_X1 ff_1_reg_1_ ( .D(port_u_1[1]), .CK(clk), .Q(port_v_1[1]), .QN() );
  DFF_X1 ff_1_reg_0_ ( .D(N1), .CK(clk), .Q(port_v_1[0]), .QN() );
  DFF_X1 ff_0_reg_1_ ( .D(N0), .CK(clk), .Q(port_v_0[1]), .QN() );
  DFF_X1 ff_0_reg_0_ ( .D(port_u_0[0]), .CK(clk), .Q(port_v_0[0]), .QN() );
  XOR2_X1 U3 ( .A(port_r[0]), .B(port_u_0[1]), .Z(N0) );
  XOR2_X1 U4 ( .A(port_r[0]), .B(port_u_1[0]), .Z(N1) );
endmodule


module DOMcmp ( port_v_0, port_v_1, port_c );
  input [1:0] port_v_0;
  input [1:0] port_v_1;
  output [1:0] port_c;


  XOR2_X1 U1 ( .A(port_v_0[0]), .B(port_v_0[1]), .Z(port_c[0]) );
  XOR2_X1 U2 ( .A(port_v_1[0]), .B(port_v_1[1]), .Z(port_c[1]) );
endmodule


module DOM ( port_a, port_b, port_c, port_r, clk, reset );
  input [1:0] port_a;
  input [1:0] port_b;
  output [1:0] port_c;
  input [0:0] port_r;
  input clk, reset;

  wire   [1:0] mul_port_u_0;
  wire   [1:0] mul_port_u_1;
  wire   [1:0] ref_1_port_v_0;
  wire   [1:0] ref_1_port_v_1;

  DOMmul mul ( .port_a(port_a), .port_b(port_b), .port_u_0(mul_port_u_0), 
        .port_u_1(mul_port_u_1) );
  DOMref ref_1 ( .port_u_0(mul_port_u_0), .port_u_1(mul_port_u_1), .port_v_0(
        ref_1_port_v_0), .port_v_1(ref_1_port_v_1), .port_r(port_r[0]), .clk(
        clk), .reset(1'b0) );
  DOMcmp cmp ( .port_v_0(ref_1_port_v_0), .port_v_1(ref_1_port_v_1), .port_c(
        port_c) );
endmodule

