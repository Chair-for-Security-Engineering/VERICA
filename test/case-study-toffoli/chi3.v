
module masked_chi3_stated ( clk, share0_in, share1_in, share0_out, share1_out
 );
  input [2:0] share0_in;
  input [2:0] share1_in;
  output [2:0] share0_out;
  output [2:0] share1_out;
  input clk;
  wire   t1_c_in_0_, t2_c_in_0_, t0_a, t0_a_chi, t0_t0_n2, t0_t0_n1, t0_t2_n1,
         t0_t1_n4, t0_t1_n3, t0_t3_n2, t1_c, t1_b, t1_a, t1_b_chi, t1_a_chi,
         t1_t0_n4, t1_t0_n3, t1_t2_n2, t1_t1_n4, t1_t1_n3, t1_t3_n2, t2_c,
         t2_b, t2_a, t2_b_chi, t2_a_chi, t2_t0_n4, t2_t0_n3, t2_t2_n2,
         t2_t1_n4, t2_t1_n3, t2_t3_n2;
  wire   [1:0] t0_a_out;
  wire   [1:0] t0_b_out;
  wire   [1:0] t0_c_out;
  wire   [1:0] t1_a_in;
  wire   [1:0] t1_a_out;
  wire   [1:0] t1_b_out;
  wire   [1:0] t1_c_out;
  wire   [1:0] t2_a_in;
  wire   [1:0] t0_a_reg;
  wire   [1:0] t1_a_reg;
  wire   [1:0] t2_a_reg;

  DFF_X1 t1_a_in_reg_1_ ( .D(t0_b_out[1]), .CK(clk), .Q(t1_a_in[1]), .QN() );
  DFF_X1 t1_a_in_reg_0_ ( .D(t0_b_out[0]), .CK(clk), .Q(t1_a_in[0]), .QN() );
  DFF_X1 t1_b_in_reg_1_ ( .D(t0_c_out[1]), .CK(clk), .Q(t1_b), .QN() );
  DFF_X1 t1_b_in_reg_0_ ( .D(t0_c_out[0]), .CK(clk), .Q(t1_b_chi), .QN() );
  DFF_X1 t1_c_in_reg_1_ ( .D(t0_a_out[1]), .CK(clk), .Q(t1_c), .QN() );
  DFF_X1 t1_c_in_reg_0_ ( .D(t0_a_out[0]), .CK(clk), .Q(t1_c_in_0_), .QN() );
  DFF_X1 t2_a_in_reg_1_ ( .D(t1_b_out[1]), .CK(clk), .Q(t2_a_in[1]), .QN() );
  DFF_X1 t2_a_in_reg_0_ ( .D(t1_b_out[0]), .CK(clk), .Q(t2_a_in[0]), .QN() );
  DFF_X1 t2_b_in_reg_1_ ( .D(t1_c_out[1]), .CK(clk), .Q(t2_b), .QN() );
  DFF_X1 t2_b_in_reg_0_ ( .D(t1_c_out[0]), .CK(clk), .Q(t2_b_chi), .QN() );
  DFF_X1 t2_c_in_reg_1_ ( .D(t1_a_out[1]), .CK(clk), .Q(t2_c), .QN() );
  DFF_X1 t2_c_in_reg_0_ ( .D(t1_a_out[0]), .CK(clk), .Q(t2_c_in_0_), .QN() );
  DFF_X1 t0_c_reg_reg_0_ ( .D(share0_in[2]), .CK(clk), .Q(t0_c_out[0]), .QN()
         );
  DFF_X1 t0_c_reg_reg_1_ ( .D(share1_in[2]), .CK(clk), .Q(t0_c_out[1]), .QN()
         );
  DFF_X1 t0_b_reg_reg_0_ ( .D(share0_in[1]), .CK(clk), .Q(t0_b_out[0]), .QN()
         );
  DFF_X1 t0_b_reg_reg_1_ ( .D(share1_in[1]), .CK(clk), .Q(t0_b_out[1]), .QN()
         );
  DFF_X1 t0_a_reg_reg_0_ ( .D(t0_a_chi), .CK(clk), .Q(t0_a_reg[0]), .QN() );
  DFF_X1 t0_a_reg_reg_1_ ( .D(t0_a), .CK(clk), .Q(t0_a_reg[1]), .QN() );
  INV_X1 t0_t0_U3 ( .A(share0_in[1]), .ZN(t0_t0_n1) );
  AND2_X1 t0_t0_U2 ( .A1(share1_in[2]), .A2(t0_t0_n1), .ZN(t0_t0_n2) );
  XOR2_X1 t0_t0_U1 ( .A(share0_in[0]), .B(t0_t0_n2), .Z(t0_a_chi) );
  AND2_X1 t0_t2_U2 ( .A1(share1_in[2]), .A2(share1_in[1]), .ZN(t0_t2_n1) );
  XOR2_X1 t0_t2_U1 ( .A(share1_in[0]), .B(t0_t2_n1), .Z(t0_a) );
  INV_X1 t0_t1_U3 ( .A(t0_b_out[0]), .ZN(t0_t1_n4) );
  AND2_X1 t0_t1_U2 ( .A1(t0_c_out[0]), .A2(t0_t1_n4), .ZN(t0_t1_n3) );
  XOR2_X1 t0_t1_U1 ( .A(t0_a_reg[0]), .B(t0_t1_n3), .Z(t0_a_out[0]) );
  AND2_X1 t0_t3_U2 ( .A1(t0_c_out[0]), .A2(t0_b_out[1]), .ZN(t0_t3_n2) );
  XOR2_X1 t0_t3_U1 ( .A(t0_a_reg[1]), .B(t0_t3_n2), .Z(t0_a_out[1]) );
  DFF_X1 t1_c_reg_reg_0_ ( .D(t1_c_in_0_), .CK(clk), .Q(t1_c_out[0]), .QN() );
  DFF_X1 t1_c_reg_reg_1_ ( .D(t1_c), .CK(clk), .Q(t1_c_out[1]), .QN() );
  DFF_X1 t1_b_reg_reg_0_ ( .D(t1_b_chi), .CK(clk), .Q(t1_b_out[0]), .QN() );
  DFF_X1 t1_b_reg_reg_1_ ( .D(t1_b), .CK(clk), .Q(t1_b_out[1]), .QN() );
  DFF_X1 t1_a_reg_reg_0_ ( .D(t1_a_chi), .CK(clk), .Q(t1_a_reg[0]), .QN() );
  DFF_X1 t1_a_reg_reg_1_ ( .D(t1_a), .CK(clk), .Q(t1_a_reg[1]), .QN() );
  INV_X1 t1_t0_U3 ( .A(t1_b_chi), .ZN(t1_t0_n4) );
  AND2_X1 t1_t0_U2 ( .A1(t1_c), .A2(t1_t0_n4), .ZN(t1_t0_n3) );
  XOR2_X1 t1_t0_U1 ( .A(t1_a_in[0]), .B(t1_t0_n3), .Z(t1_a_chi) );
  AND2_X1 t1_t2_U2 ( .A1(t1_c), .A2(t1_b), .ZN(t1_t2_n2) );
  XOR2_X1 t1_t2_U1 ( .A(t1_a_in[1]), .B(t1_t2_n2), .Z(t1_a) );
  INV_X1 t1_t1_U3 ( .A(t1_b_out[0]), .ZN(t1_t1_n4) );
  AND2_X1 t1_t1_U2 ( .A1(t1_c_out[0]), .A2(t1_t1_n4), .ZN(t1_t1_n3) );
  XOR2_X1 t1_t1_U1 ( .A(t1_a_reg[0]), .B(t1_t1_n3), .Z(t1_a_out[0]) );
  AND2_X1 t1_t3_U2 ( .A1(t1_c_out[0]), .A2(t1_b_out[1]), .ZN(t1_t3_n2) );
  XOR2_X1 t1_t3_U1 ( .A(t1_a_reg[1]), .B(t1_t3_n2), .Z(t1_a_out[1]) );
  DFF_X1 t2_c_reg_reg_0_ ( .D(t2_c_in_0_), .CK(clk), .Q(share0_out[1]), .QN()
         );
  DFF_X1 t2_c_reg_reg_1_ ( .D(t2_c), .CK(clk), .Q(share1_out[1]), .QN() );
  DFF_X1 t2_b_reg_reg_0_ ( .D(t2_b_chi), .CK(clk), .Q(share0_out[0]), .QN() );
  DFF_X1 t2_b_reg_reg_1_ ( .D(t2_b), .CK(clk), .Q(share1_out[0]), .QN() );
  DFF_X1 t2_a_reg_reg_0_ ( .D(t2_a_chi), .CK(clk), .Q(t2_a_reg[0]), .QN() );
  DFF_X1 t2_a_reg_reg_1_ ( .D(t2_a), .CK(clk), .Q(t2_a_reg[1]), .QN() );
  INV_X1 t2_t0_U3 ( .A(t2_b_chi), .ZN(t2_t0_n4) );
  AND2_X1 t2_t0_U2 ( .A1(t2_c), .A2(t2_t0_n4), .ZN(t2_t0_n3) );
  XOR2_X1 t2_t0_U1 ( .A(t2_a_in[0]), .B(t2_t0_n3), .Z(t2_a_chi) );
  AND2_X1 t2_t2_U2 ( .A1(t2_c), .A2(t2_b), .ZN(t2_t2_n2) );
  XOR2_X1 t2_t2_U1 ( .A(t2_a_in[1]), .B(t2_t2_n2), .Z(t2_a) );
  INV_X1 t2_t1_U3 ( .A(share0_out[0]), .ZN(t2_t1_n4) );
  AND2_X1 t2_t1_U2 ( .A1(share0_out[1]), .A2(t2_t1_n4), .ZN(t2_t1_n3) );
  XOR2_X1 t2_t1_U1 ( .A(t2_a_reg[0]), .B(t2_t1_n3), .Z(share0_out[2]) );
  AND2_X1 t2_t3_U2 ( .A1(share0_out[1]), .A2(share1_out[0]), .ZN(t2_t3_n2) );
  XOR2_X1 t2_t3_U1 ( .A(t2_a_reg[1]), .B(t2_t3_n2), .Z(share1_out[2]) );
endmodule

