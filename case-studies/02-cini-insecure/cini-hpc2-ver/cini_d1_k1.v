
module CINI ( io_a_0, io_a_1, io_b_0, io_b_1, io_c_0, io_c_1, io_rand, clk, 
        reset );
  input [2:0] io_a_0;
  input [2:0] io_a_1;
  input [2:0] io_b_0;
  input [2:0] io_b_1;
  output [2:0] io_c_0;
  output [2:0] io_c_1;
  input [0:0] io_rand;
  input clk, reset;
  wire   simpleNot_6_port_z, simpleNot_7_port_z, simpleNot_8_port_z,
         simpleNot_9_port_z, simpleNot_10_port_z, simpleNot_11_port_z,
         simpleXor_6_port_z, simpleXor_7_port_z, simpleXor_8_port_z,
         simpleXor_9_port_z, simpleXor_10_port_z, simpleXor_11_port_z,
         n_zz_io_c_0_2_1_, n_zz_io_c_0_0_, n_zz_io_c_1_2_1_, n_zz_io_c_1_0_,
         n_zz_io_c_0_5_1_, n_zz_io_c_0_3_0_, n_zz_io_c_1_5_1_,
         n_zz_io_c_1_3_0_, n_zz_io_c_0_8_1_, n_zz_io_c_0_6_0_,
         n_zz_io_c_1_8_1_, n_zz_io_c_1_6_0_, N0, N1, N2, N3, N4, N5, N6, N7,
         N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, cor_maj_11_port_o,
         cor_maj_10_port_o, cor_maj_9_port_o, cor_maj_8_port_o,
         cor_maj_7_port_o, cor_maj_6_port_o, cor_maj_6_n3, cor_maj_6_n2,
         cor_maj_6_n1, cor_maj_7_n6, cor_maj_7_n5, cor_maj_7_n4, cor_maj_8_n6,
         cor_maj_8_n5, cor_maj_8_n4, cor_maj_9_n6, cor_maj_9_n5, cor_maj_9_n4,
         cor_maj_10_n6, cor_maj_10_n5, cor_maj_10_n4, cor_maj_11_n6,
         cor_maj_11_n5, cor_maj_11_n4;
  wire   [2:0] v_1_0_1;
  wire   [2:0] v_1_1_0;
  wire   [2:0] cor_port_v_0_1;
  wire   [2:0] cor_port_v_1_0;
  wire   [2:0] u_0_1;
  wire   [2:0] u_1_0;
  wire   [2:0] rand_reg_0;
  wire   [2:0] rand_reg_1;
  wire   [2:0] b_reg_0;
  wire   [2:0] b_reg_1;

  DFF_X1 b_reg_1_reg_2_ ( .D(io_b_1[2]), .CK(clk), .Q(b_reg_1[2]), .QN() );
  DFF_X1 b_reg_1_reg_1_ ( .D(io_b_1[1]), .CK(clk), .Q(b_reg_1[1]), .QN() );
  DFF_X1 b_reg_1_reg_0_ ( .D(io_b_1[0]), .CK(clk), .Q(b_reg_1[0]), .QN() );
  DFF_X1 u_zz_io_c_0_2_reg_1_ ( .D(N7), .CK(clk), .Q(n_zz_io_c_0_2_1_), .QN()
         );
  DFF_X1 b_reg_0_reg_2_ ( .D(io_b_0[2]), .CK(clk), .Q(b_reg_0[2]), .QN() );
  DFF_X1 b_reg_0_reg_1_ ( .D(io_b_0[1]), .CK(clk), .Q(b_reg_0[1]), .QN() );
  DFF_X1 b_reg_0_reg_0_ ( .D(io_b_0[0]), .CK(clk), .Q(b_reg_0[0]), .QN() );
  DFF_X1 u_zz_io_c_0_2_reg_0_ ( .D(N6), .CK(clk), .Q(n_zz_io_c_0_0_), .QN() );
  DFF_X1 u_zz_io_c_1_8_reg_1_ ( .D(N17), .CK(clk), .Q(n_zz_io_c_1_8_1_), .QN()
         );
  DFF_X1 u_zz_io_c_1_8_reg_0_ ( .D(N16), .CK(clk), .Q(n_zz_io_c_1_6_0_), .QN()
         );
  DFF_X1 u_zz_io_c_0_8_reg_1_ ( .D(N15), .CK(clk), .Q(n_zz_io_c_0_8_1_), .QN()
         );
  DFF_X1 u_zz_io_c_0_8_reg_0_ ( .D(N14), .CK(clk), .Q(n_zz_io_c_0_6_0_), .QN()
         );
  DFF_X1 rand_reg_0_reg_2_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[2]), 
        .QN() );
  DFF_X1 rand_reg_0_reg_1_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[1]), 
        .QN() );
  DFF_X1 rand_reg_0_reg_0_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[0]), 
        .QN() );
  DFF_X1 u_zz_io_c_1_5_reg_1_ ( .D(N13), .CK(clk), .Q(n_zz_io_c_1_5_1_), .QN()
         );
  DFF_X1 u_zz_io_c_1_5_reg_0_ ( .D(N12), .CK(clk), .Q(n_zz_io_c_1_3_0_), .QN()
         );
  DFF_X1 u_0_1_reg_2_ ( .D(N4), .CK(clk), .Q(u_0_1[2]), .QN() );
  DFF_X1 u_0_1_reg_1_ ( .D(N2), .CK(clk), .Q(u_0_1[1]), .QN() );
  DFF_X1 u_0_1_reg_0_ ( .D(N0), .CK(clk), .Q(u_0_1[0]), .QN() );
  DFF_X1 u_zz_io_c_0_5_reg_1_ ( .D(N11), .CK(clk), .Q(n_zz_io_c_0_5_1_), .QN()
         );
  DFF_X1 u_zz_io_c_0_5_reg_0_ ( .D(N10), .CK(clk), .Q(n_zz_io_c_0_3_0_), .QN()
         );
  DFF_X1 rand_reg_1_reg_2_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_1[2]), 
        .QN() );
  DFF_X1 u_1_0_reg_2_ ( .D(N5), .CK(clk), .Q(u_1_0[2]), .QN() );
  DFF_X1 rand_reg_1_reg_1_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_1[1]), 
        .QN() );
  DFF_X1 u_1_0_reg_1_ ( .D(N3), .CK(clk), .Q(u_1_0[1]), .QN() );
  DFF_X1 rand_reg_1_reg_0_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_1[0]), 
        .QN() );
  DFF_X1 u_1_0_reg_0_ ( .D(N1), .CK(clk), .Q(u_1_0[0]), .QN() );
  DFF_X1 u_zz_io_c_1_2_reg_1_ ( .D(N9), .CK(clk), .Q(n_zz_io_c_1_2_1_), .QN()
         );
  DFF_X1 u_zz_io_c_1_2_reg_0_ ( .D(N8), .CK(clk), .Q(n_zz_io_c_1_0_), .QN() );
  XOR2_X1 U33 ( .A(io_rand[0]), .B(io_b_0[0]), .Z(v_1_1_0[0]) );
  XOR2_X1 U34 ( .A(io_rand[0]), .B(io_b_0[1]), .Z(v_1_1_0[1]) );
  XOR2_X1 U35 ( .A(io_rand[0]), .B(io_b_1[0]), .Z(v_1_0_1[0]) );
  XOR2_X1 U36 ( .A(io_rand[0]), .B(io_b_1[1]), .Z(v_1_0_1[1]) );
  AND2_X1 U37 ( .A1(b_reg_1[0]), .A2(io_a_1[0]), .ZN(N8) );
  AND2_X1 U38 ( .A1(b_reg_0[1]), .A2(io_a_0[1]), .ZN(N10) );
  AND2_X1 U39 ( .A1(b_reg_1[1]), .A2(io_a_1[1]), .ZN(N12) );
  AND2_X1 U40 ( .A1(b_reg_0[2]), .A2(io_a_0[2]), .ZN(N14) );
  AND2_X1 U41 ( .A1(b_reg_1[2]), .A2(io_a_1[2]), .ZN(N16) );
  AND2_X1 U42 ( .A1(b_reg_0[0]), .A2(io_a_0[0]), .ZN(N6) );
  AND2_X1 U43 ( .A1(io_a_1[0]), .A2(cor_port_v_1_0[0]), .ZN(N9) );
  AND2_X1 U44 ( .A1(simpleNot_7_port_z), .A2(rand_reg_1[0]), .ZN(N1) );
  AND2_X1 U45 ( .A1(simpleNot_9_port_z), .A2(rand_reg_1[1]), .ZN(N3) );
  AND2_X1 U46 ( .A1(simpleNot_11_port_z), .A2(rand_reg_1[2]), .ZN(N5) );
  AND2_X1 U47 ( .A1(io_a_0[1]), .A2(cor_port_v_0_1[1]), .ZN(N11) );
  AND2_X1 U48 ( .A1(simpleNot_6_port_z), .A2(rand_reg_0[0]), .ZN(N0) );
  AND2_X1 U49 ( .A1(simpleNot_8_port_z), .A2(rand_reg_0[1]), .ZN(N2) );
  AND2_X1 U50 ( .A1(simpleNot_10_port_z), .A2(rand_reg_0[2]), .ZN(N4) );
  AND2_X1 U51 ( .A1(io_a_1[1]), .A2(cor_port_v_1_0[1]), .ZN(N13) );
  AND2_X1 U52 ( .A1(io_a_0[2]), .A2(cor_port_v_0_1[2]), .ZN(N15) );
  AND2_X1 U53 ( .A1(io_a_1[2]), .A2(cor_port_v_1_0[2]), .ZN(N17) );
  AND2_X1 U54 ( .A1(io_a_0[0]), .A2(cor_port_v_0_1[0]), .ZN(N7) );
  XOR2_X1 U55 ( .A(io_rand[0]), .B(io_b_0[2]), .Z(v_1_1_0[2]) );
  XOR2_X1 U56 ( .A(io_rand[0]), .B(io_b_1[2]), .Z(v_1_0_1[2]) );
  XOR2_X1 U57 ( .A(simpleXor_7_port_z), .B(n_zz_io_c_1_0_), .Z(io_c_1[0]) );
  XOR2_X1 U58 ( .A(simpleXor_9_port_z), .B(n_zz_io_c_1_3_0_), .Z(io_c_1[1]) );
  XOR2_X1 U59 ( .A(simpleXor_11_port_z), .B(n_zz_io_c_1_6_0_), .Z(io_c_1[2])
         );
  XOR2_X1 U60 ( .A(simpleXor_6_port_z), .B(n_zz_io_c_0_0_), .Z(io_c_0[0]) );
  XOR2_X1 U61 ( .A(simpleXor_8_port_z), .B(n_zz_io_c_0_3_0_), .Z(io_c_0[1]) );
  XOR2_X1 U62 ( .A(simpleXor_10_port_z), .B(n_zz_io_c_0_6_0_), .Z(io_c_0[2])
         );
  INV_X1 simpleNot_6_U1 ( .A(io_a_0[0]), .ZN(simpleNot_6_port_z) );
  INV_X1 simpleNot_7_U1 ( .A(io_a_1[0]), .ZN(simpleNot_7_port_z) );
  INV_X1 simpleNot_8_U1 ( .A(io_a_0[1]), .ZN(simpleNot_8_port_z) );
  INV_X1 simpleNot_9_U1 ( .A(io_a_1[1]), .ZN(simpleNot_9_port_z) );
  INV_X1 simpleNot_10_U1 ( .A(io_a_0[2]), .ZN(simpleNot_10_port_z) );
  INV_X1 simpleNot_11_U1 ( .A(io_a_1[2]), .ZN(simpleNot_11_port_z) );
  DFF_X1 cor_m_1_0_reg_0_ ( .D(cor_maj_9_port_o), .CK(clk), .Q(
        cor_port_v_1_0[0]), .QN() );
  DFF_X1 cor_m_1_0_reg_1_ ( .D(cor_maj_10_port_o), .CK(clk), .Q(
        cor_port_v_1_0[1]), .QN() );
  DFF_X1 cor_m_1_0_reg_2_ ( .D(cor_maj_11_port_o), .CK(clk), .Q(
        cor_port_v_1_0[2]), .QN() );
  DFF_X1 cor_m_0_1_reg_0_ ( .D(cor_maj_6_port_o), .CK(clk), .Q(
        cor_port_v_0_1[0]), .QN() );
  DFF_X1 cor_m_0_1_reg_1_ ( .D(cor_maj_7_port_o), .CK(clk), .Q(
        cor_port_v_0_1[1]), .QN() );
  DFF_X1 cor_m_0_1_reg_2_ ( .D(cor_maj_8_port_o), .CK(clk), .Q(
        cor_port_v_0_1[2]), .QN() );
  OR2_X1 cor_maj_6_U4 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_6_n3) );
  NAND2_X1 cor_maj_6_U3 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_6_n1)
         );
  NAND2_X1 cor_maj_6_U2 ( .A1(v_1_0_1[2]), .A2(cor_maj_6_n3), .ZN(cor_maj_6_n2) );
  NAND2_X1 cor_maj_6_U1 ( .A1(cor_maj_6_n1), .A2(cor_maj_6_n2), .ZN(
        cor_maj_6_port_o) );
  OR2_X1 cor_maj_7_U4 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_7_n4) );
  NAND2_X1 cor_maj_7_U3 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_7_n6)
         );
  NAND2_X1 cor_maj_7_U2 ( .A1(v_1_0_1[2]), .A2(cor_maj_7_n4), .ZN(cor_maj_7_n5) );
  NAND2_X1 cor_maj_7_U1 ( .A1(cor_maj_7_n6), .A2(cor_maj_7_n5), .ZN(
        cor_maj_7_port_o) );
  OR2_X1 cor_maj_8_U4 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_8_n4) );
  NAND2_X1 cor_maj_8_U3 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_8_n6)
         );
  NAND2_X1 cor_maj_8_U2 ( .A1(v_1_0_1[2]), .A2(cor_maj_8_n4), .ZN(cor_maj_8_n5) );
  NAND2_X1 cor_maj_8_U1 ( .A1(cor_maj_8_n6), .A2(cor_maj_8_n5), .ZN(
        cor_maj_8_port_o) );
  OR2_X1 cor_maj_9_U4 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_9_n4) );
  NAND2_X1 cor_maj_9_U3 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_9_n6)
         );
  NAND2_X1 cor_maj_9_U2 ( .A1(v_1_1_0[2]), .A2(cor_maj_9_n4), .ZN(cor_maj_9_n5) );
  NAND2_X1 cor_maj_9_U1 ( .A1(cor_maj_9_n6), .A2(cor_maj_9_n5), .ZN(
        cor_maj_9_port_o) );
  OR2_X1 cor_maj_10_U4 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_10_n4)
         );
  NAND2_X1 cor_maj_10_U3 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_10_n6) );
  NAND2_X1 cor_maj_10_U2 ( .A1(v_1_1_0[2]), .A2(cor_maj_10_n4), .ZN(
        cor_maj_10_n5) );
  NAND2_X1 cor_maj_10_U1 ( .A1(cor_maj_10_n6), .A2(cor_maj_10_n5), .ZN(
        cor_maj_10_port_o) );
  OR2_X1 cor_maj_11_U4 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_11_n4)
         );
  NAND2_X1 cor_maj_11_U3 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_11_n6) );
  NAND2_X1 cor_maj_11_U2 ( .A1(v_1_1_0[2]), .A2(cor_maj_11_n4), .ZN(
        cor_maj_11_n5) );
  NAND2_X1 cor_maj_11_U1 ( .A1(cor_maj_11_n6), .A2(cor_maj_11_n5), .ZN(
        cor_maj_11_port_o) );
  XOR2_X1 simpleXor_6_U1 ( .A(n_zz_io_c_0_2_1_), .B(u_0_1[0]), .Z(
        simpleXor_6_port_z) );
  XOR2_X1 simpleXor_7_U1 ( .A(n_zz_io_c_1_2_1_), .B(u_1_0[0]), .Z(
        simpleXor_7_port_z) );
  XOR2_X1 simpleXor_8_U1 ( .A(n_zz_io_c_0_5_1_), .B(u_0_1[1]), .Z(
        simpleXor_8_port_z) );
  XOR2_X1 simpleXor_9_U1 ( .A(n_zz_io_c_1_5_1_), .B(u_1_0[1]), .Z(
        simpleXor_9_port_z) );
  XOR2_X1 simpleXor_10_U1 ( .A(n_zz_io_c_0_8_1_), .B(u_0_1[2]), .Z(
        simpleXor_10_port_z) );
  XOR2_X1 simpleXor_11_U1 ( .A(n_zz_io_c_1_8_1_), .B(u_1_0[2]), .Z(
        simpleXor_11_port_z) );
endmodule

