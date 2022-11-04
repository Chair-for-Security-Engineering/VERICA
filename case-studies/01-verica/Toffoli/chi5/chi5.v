
module masked_chi5_v2_stated ( clk, share0_in, share1_in, rand, share0_out, 
        share1_out );
  input [4:0] share0_in;
  input [4:0] share1_in;
  output [4:0] share0_out;
  output [4:0] share1_out;
  input clk;
  input rand;
  wire   t0_b_out_0_, b_reg_0_, d_reg_0_, t0_a, t0_a_chi, t0_t0_n2, t0_t0_n1,
         t0_t2_n1, t0_t1_n4, t0_t1_n3, t0_t3_n2, t1_a, t1_a_chi, t1_t0_n4,
         t1_t0_n3, t1_t2_n2, t1_t1_n4, t1_t1_n3, t1_t3_n2, t2_c, t2_a,
         t2_a_chi, t2_t0_n4, t2_t0_n3, t2_t2_n2, t2_t1_n4, t2_t1_n3, t2_t3_n2,
         t3_c, t3_b, t3_a, t3_b_chi, t3_a_chi, t3_t0_n4, t3_t0_n3, t3_t2_n2,
         t3_t1_n4, t3_t1_n3, t3_t3_n2, t4_c, t4_b, t4_a, t4_b_chi, t4_a_chi,
         t4_t0_n4, t4_t0_n3, t4_t2_n2, t4_t1_n4, t4_t1_n3, t4_t3_n2;
  wire   [1:0] t0_a_out;
  wire   [1:0] t0_c_out;
  wire   [1:0] t1_a_out;
  wire   [1:0] t1_b_out;
  wire   [1:0] t1_c_out;
  wire   [1:0] t2_a_out;
  wire   [1:0] t2_b_out;
  wire   [1:0] t2_c_out;
  wire   [1:0] r_reg;
  wire   [1:0] e_reg;
  wire   [1:0] t3_c_out;
  wire   [1:0] t4_c_out;
  wire   [1:0] t0_a_reg;
  wire   [1:0] t1_a_reg;
  wire   [1:0] t2_a_reg;
  wire   [1:0] t3_a_reg;
  wire   [1:0] t4_a_reg;

  DFF_X1 r_reg_reg_1_ ( .D(t0_a_out[1]), .CK(clk), .Q(r_reg[1]), .QN() );
  DFF_X1 r_reg_reg_0_ ( .D(t0_a_out[0]), .CK(clk), .Q(r_reg[0]), .QN() );
  DFF_X1 a_reg_reg_1_ ( .D(t1_a_out[1]), .CK(clk), .Q(t3_b), .QN() );
  DFF_X1 a_reg_reg_0_ ( .D(t1_a_out[0]), .CK(clk), .Q(t3_b_chi), .QN() );
  DFF_X1 b_reg_reg_1_ ( .D(t1_b_out[1]), .CK(clk), .Q(t3_c), .QN() );
  DFF_X1 b_reg_reg_0_ ( .D(t1_b_out[0]), .CK(clk), .Q(b_reg_0_), .QN() );
  DFF_X1 c_reg_reg_1_ ( .D(t2_a_out[1]), .CK(clk), .Q(t4_b), .QN() );
  DFF_X1 c_reg_reg_0_ ( .D(t2_a_out[0]), .CK(clk), .Q(t4_b_chi), .QN() );
  DFF_X1 d_reg_reg_1_ ( .D(t2_b_out[1]), .CK(clk), .Q(t4_c), .QN() );
  DFF_X1 d_reg_reg_0_ ( .D(t2_b_out[0]), .CK(clk), .Q(d_reg_0_), .QN() );
  DFF_X1 e_reg_reg_1_ ( .D(t2_c_out[1]), .CK(clk), .Q(e_reg[1]), .QN() );
  DFF_X1 e_reg_reg_0_ ( .D(t2_c_out[0]), .CK(clk), .Q(e_reg[0]), .QN() );
  XOR2_X1 U5 ( .A(t4_c_out[1]), .B(r_reg[1]), .Z(share1_out[3]) );
  XOR2_X1 U6 ( .A(t4_c_out[0]), .B(r_reg[0]), .Z(share0_out[3]) );
  DFF_X1 t0_c_reg_reg_0_ ( .D(share0_in[0]), .CK(clk), .Q(t0_c_out[0]), .QN()
         );
  DFF_X1 t0_c_reg_reg_1_ ( .D(share1_in[0]), .CK(clk), .Q(t0_c_out[1]), .QN()
         );
  DFF_X1 t0_b_reg_reg_0_ ( .D(share0_in[4]), .CK(clk), .Q(t0_b_out_0_), .QN()
         );
  DFF_X1 t0_b_reg_reg_1_ ( .D(share1_in[4]), .CK(clk), .Q(t2_c), .QN() );
  DFF_X1 t0_a_reg_reg_0_ ( .D(t0_a_chi), .CK(clk), .Q(t0_a_reg[0]), .QN() );
  DFF_X1 t0_a_reg_reg_1_ ( .D(t0_a), .CK(clk), .Q(t0_a_reg[1]), .QN() );
  INV_X1 t0_t0_U3 ( .A(share0_in[4]), .ZN(t0_t0_n1) );
  AND2_X1 t0_t0_U2 ( .A1(share1_in[0]), .A2(t0_t0_n1), .ZN(t0_t0_n2) );
  XOR2_X1 t0_t0_U1 ( .A(rand), .B(t0_t0_n2), .Z(t0_a_chi) );
  AND2_X1 t0_t2_U2 ( .A1(share1_in[0]), .A2(share1_in[4]), .ZN(t0_t2_n1) );
  XOR2_X1 t0_t2_U1 ( .A(rand), .B(t0_t2_n1), .Z(t0_a) );
  INV_X1 t0_t1_U3 ( .A(t0_b_out_0_), .ZN(t0_t1_n4) );
  AND2_X1 t0_t1_U2 ( .A1(t0_c_out[0]), .A2(t0_t1_n4), .ZN(t0_t1_n3) );
  XOR2_X1 t0_t1_U1 ( .A(t0_a_reg[0]), .B(t0_t1_n3), .Z(t0_a_out[0]) );
  AND2_X1 t0_t3_U2 ( .A1(t0_c_out[0]), .A2(t2_c), .ZN(t0_t3_n2) );
  XOR2_X1 t0_t3_U1 ( .A(t0_a_reg[1]), .B(t0_t3_n2), .Z(t0_a_out[1]) );
  DFF_X1 t1_c_reg_reg_0_ ( .D(share0_in[2]), .CK(clk), .Q(t1_c_out[0]), .QN()
         );
  DFF_X1 t1_c_reg_reg_1_ ( .D(share1_in[2]), .CK(clk), .Q(t1_c_out[1]), .QN()
         );
  DFF_X1 t1_b_reg_reg_0_ ( .D(share0_in[1]), .CK(clk), .Q(t1_b_out[0]), .QN()
         );
  DFF_X1 t1_b_reg_reg_1_ ( .D(share1_in[1]), .CK(clk), .Q(t1_b_out[1]), .QN()
         );
  DFF_X1 t1_a_reg_reg_0_ ( .D(t1_a_chi), .CK(clk), .Q(t1_a_reg[0]), .QN() );
  DFF_X1 t1_a_reg_reg_1_ ( .D(t1_a), .CK(clk), .Q(t1_a_reg[1]), .QN() );
  INV_X1 t1_t0_U3 ( .A(share0_in[1]), .ZN(t1_t0_n4) );
  AND2_X1 t1_t0_U2 ( .A1(share1_in[2]), .A2(t1_t0_n4), .ZN(t1_t0_n3) );
  XOR2_X1 t1_t0_U1 ( .A(t0_c_out[0]), .B(t1_t0_n3), .Z(t1_a_chi) );
  AND2_X1 t1_t2_U2 ( .A1(share1_in[2]), .A2(share1_in[1]), .ZN(t1_t2_n2) );
  XOR2_X1 t1_t2_U1 ( .A(t0_c_out[1]), .B(t1_t2_n2), .Z(t1_a) );
  INV_X1 t1_t1_U3 ( .A(t1_b_out[0]), .ZN(t1_t1_n4) );
  AND2_X1 t1_t1_U2 ( .A1(t1_c_out[0]), .A2(t1_t1_n4), .ZN(t1_t1_n3) );
  XOR2_X1 t1_t1_U1 ( .A(t1_a_reg[0]), .B(t1_t1_n3), .Z(t1_a_out[0]) );
  AND2_X1 t1_t3_U2 ( .A1(t1_c_out[0]), .A2(t1_b_out[1]), .ZN(t1_t3_n2) );
  XOR2_X1 t1_t3_U1 ( .A(t1_a_reg[1]), .B(t1_t3_n2), .Z(t1_a_out[1]) );
  DFF_X1 t2_c_reg_reg_0_ ( .D(t0_b_out_0_), .CK(clk), .Q(t2_c_out[0]), .QN()
         );
  DFF_X1 t2_c_reg_reg_1_ ( .D(t2_c), .CK(clk), .Q(t2_c_out[1]), .QN() );
  DFF_X1 t2_b_reg_reg_0_ ( .D(share0_in[3]), .CK(clk), .Q(t2_b_out[0]), .QN()
         );
  DFF_X1 t2_b_reg_reg_1_ ( .D(share1_in[3]), .CK(clk), .Q(t2_b_out[1]), .QN()
         );
  DFF_X1 t2_a_reg_reg_0_ ( .D(t2_a_chi), .CK(clk), .Q(t2_a_reg[0]), .QN() );
  DFF_X1 t2_a_reg_reg_1_ ( .D(t2_a), .CK(clk), .Q(t2_a_reg[1]), .QN() );
  INV_X1 t2_t0_U3 ( .A(share0_in[3]), .ZN(t2_t0_n4) );
  AND2_X1 t2_t0_U2 ( .A1(t2_c), .A2(t2_t0_n4), .ZN(t2_t0_n3) );
  XOR2_X1 t2_t0_U1 ( .A(t1_c_out[0]), .B(t2_t0_n3), .Z(t2_a_chi) );
  AND2_X1 t2_t2_U2 ( .A1(t2_c), .A2(share1_in[3]), .ZN(t2_t2_n2) );
  XOR2_X1 t2_t2_U1 ( .A(t1_c_out[1]), .B(t2_t2_n2), .Z(t2_a) );
  INV_X1 t2_t1_U3 ( .A(t2_b_out[0]), .ZN(t2_t1_n4) );
  AND2_X1 t2_t1_U2 ( .A1(t2_c_out[0]), .A2(t2_t1_n4), .ZN(t2_t1_n3) );
  XOR2_X1 t2_t1_U1 ( .A(t2_a_reg[0]), .B(t2_t1_n3), .Z(t2_a_out[0]) );
  AND2_X1 t2_t3_U2 ( .A1(t2_c_out[0]), .A2(t2_b_out[1]), .ZN(t2_t3_n2) );
  XOR2_X1 t2_t3_U1 ( .A(t2_a_reg[1]), .B(t2_t3_n2), .Z(t2_a_out[1]) );
  DFF_X1 t3_c_reg_reg_0_ ( .D(b_reg_0_), .CK(clk), .Q(t3_c_out[0]), .QN() );
  DFF_X1 t3_c_reg_reg_1_ ( .D(t3_c), .CK(clk), .Q(t3_c_out[1]), .QN() );
  DFF_X1 t3_b_reg_reg_0_ ( .D(t3_b_chi), .CK(clk), .Q(share0_out[0]), .QN() );
  DFF_X1 t3_b_reg_reg_1_ ( .D(t3_b), .CK(clk), .Q(share1_out[0]), .QN() );
  DFF_X1 t3_a_reg_reg_0_ ( .D(t3_a_chi), .CK(clk), .Q(t3_a_reg[0]), .QN() );
  DFF_X1 t3_a_reg_reg_1_ ( .D(t3_a), .CK(clk), .Q(t3_a_reg[1]), .QN() );
  INV_X1 t3_t0_U3 ( .A(t3_b_chi), .ZN(t3_t0_n4) );
  AND2_X1 t3_t0_U2 ( .A1(t3_c), .A2(t3_t0_n4), .ZN(t3_t0_n3) );
  XOR2_X1 t3_t0_U1 ( .A(e_reg[0]), .B(t3_t0_n3), .Z(t3_a_chi) );
  AND2_X1 t3_t2_U2 ( .A1(t3_c), .A2(t3_b), .ZN(t3_t2_n2) );
  XOR2_X1 t3_t2_U1 ( .A(e_reg[1]), .B(t3_t2_n2), .Z(t3_a) );
  INV_X1 t3_t1_U3 ( .A(share0_out[0]), .ZN(t3_t1_n4) );
  AND2_X1 t3_t1_U2 ( .A1(t3_c_out[0]), .A2(t3_t1_n4), .ZN(t3_t1_n3) );
  XOR2_X1 t3_t1_U1 ( .A(t3_a_reg[0]), .B(t3_t1_n3), .Z(share0_out[4]) );
  AND2_X1 t3_t3_U2 ( .A1(t3_c_out[0]), .A2(share1_out[0]), .ZN(t3_t3_n2) );
  XOR2_X1 t3_t3_U1 ( .A(t3_a_reg[1]), .B(t3_t3_n2), .Z(share1_out[4]) );
  DFF_X1 t4_c_reg_reg_0_ ( .D(d_reg_0_), .CK(clk), .Q(t4_c_out[0]), .QN() );
  DFF_X1 t4_c_reg_reg_1_ ( .D(t4_c), .CK(clk), .Q(t4_c_out[1]), .QN() );
  DFF_X1 t4_b_reg_reg_0_ ( .D(t4_b_chi), .CK(clk), .Q(share0_out[2]), .QN() );
  DFF_X1 t4_b_reg_reg_1_ ( .D(t4_b), .CK(clk), .Q(share1_out[2]), .QN() );
  DFF_X1 t4_a_reg_reg_0_ ( .D(t4_a_chi), .CK(clk), .Q(t4_a_reg[0]), .QN() );
  DFF_X1 t4_a_reg_reg_1_ ( .D(t4_a), .CK(clk), .Q(t4_a_reg[1]), .QN() );
  INV_X1 t4_t0_U3 ( .A(t4_b_chi), .ZN(t4_t0_n4) );
  AND2_X1 t4_t0_U2 ( .A1(t4_c), .A2(t4_t0_n4), .ZN(t4_t0_n3) );
  XOR2_X1 t4_t0_U1 ( .A(t3_c_out[0]), .B(t4_t0_n3), .Z(t4_a_chi) );
  AND2_X1 t4_t2_U2 ( .A1(t4_c), .A2(t4_b), .ZN(t4_t2_n2) );
  XOR2_X1 t4_t2_U1 ( .A(t3_c_out[1]), .B(t4_t2_n2), .Z(t4_a) );
  INV_X1 t4_t1_U3 ( .A(share0_out[2]), .ZN(t4_t1_n4) );
  AND2_X1 t4_t1_U2 ( .A1(t4_c_out[0]), .A2(t4_t1_n4), .ZN(t4_t1_n3) );
  XOR2_X1 t4_t1_U1 ( .A(t4_a_reg[0]), .B(t4_t1_n3), .Z(share0_out[1]) );
  AND2_X1 t4_t3_U2 ( .A1(t4_c_out[0]), .A2(share1_out[2]), .ZN(t4_t3_n2) );
  XOR2_X1 t4_t3_U1 ( .A(t4_a_reg[1]), .B(t4_t3_n2), .Z(share1_out[1]) );
endmodule

