
module shared_toffoli_chi_stated ( clk, a_in, b_in, c_in, a_out, b_out, c_out
 );
  input [1:0] a_in;
  input [1:0] b_in;
  input [1:0] c_in;
  output [1:0] a_out;
  output [1:0] b_out;
  output [1:0] c_out;
  input clk;
  wire   a_chi, a, t0_n2, t0_n1, t2_n1, t1_n4, t1_n3, t3_n2;
  wire   [1:0] a_reg;

  DFF_X1 a_reg_reg_1_ ( .D(a), .CK(clk), .Q(a_reg[1]), .QN() );
  DFF_X1 a_reg_reg_0_ ( .D(a_chi), .CK(clk), .Q(a_reg[0]), .QN() );
  DFF_X1 b_reg_reg_1_ ( .D(b_in[1]), .CK(clk), .Q(b_out[1]), .QN() );
  DFF_X1 b_reg_reg_0_ ( .D(b_in[0]), .CK(clk), .Q(b_out[0]), .QN() );
  DFF_X1 c_reg_reg_1_ ( .D(c_in[1]), .CK(clk), .Q(c_out[1]), .QN() );
  DFF_X1 c_reg_reg_0_ ( .D(c_in[0]), .CK(clk), .Q(c_out[0]), .QN() );
  INV_X1 t0_U3 ( .A(b_in[0]), .ZN(t0_n1) );
  AND2_X1 t0_U2 ( .A1(c_in[1]), .A2(t0_n1), .ZN(t0_n2) );
  XOR2_X1 t0_U1 ( .A(a_in[0]), .B(t0_n2), .Z(a_chi) );
  AND2_X1 t2_U2 ( .A1(c_in[1]), .A2(b_in[1]), .ZN(t2_n1) );
  XOR2_X1 t2_U1 ( .A(a_in[1]), .B(t2_n1), .Z(a) );
  INV_X1 t1_U3 ( .A(b_out[0]), .ZN(t1_n4) );
  AND2_X1 t1_U2 ( .A1(c_out[0]), .A2(t1_n4), .ZN(t1_n3) );
  XOR2_X1 t1_U1 ( .A(a_reg[0]), .B(t1_n3), .Z(a_out[0]) );
  AND2_X1 t3_U2 ( .A1(c_out[0]), .A2(b_out[1]), .ZN(t3_n2) );
  XOR2_X1 t3_U1 ( .A(a_reg[1]), .B(t3_n2), .Z(a_out[1]) );
endmodule

