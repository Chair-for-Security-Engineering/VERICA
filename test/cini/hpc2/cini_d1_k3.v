
module CINI ( io_a_0, io_a_1, io_b_0, io_b_1, io_c_0, io_c_1, io_rand, clk, 
        reset );
  input [6:0] io_a_0;
  input [6:0] io_a_1;
  input [6:0] io_b_0;
  input [6:0] io_b_1;
  output [6:0] io_c_0;
  output [6:0] io_c_1;
  input [0:0] io_rand;
  input clk, reset;
  wire   simpleNot_14_port_z, simpleNot_15_port_z, simpleNot_16_port_z,
         simpleNot_17_port_z, simpleNot_18_port_z, simpleNot_19_port_z,
         simpleNot_20_port_z, simpleNot_21_port_z, simpleNot_22_port_z,
         simpleNot_23_port_z, simpleNot_24_port_z, simpleNot_25_port_z,
         simpleNot_26_port_z, simpleNot_27_port_z, simpleXor_14_port_z,
         simpleXor_15_port_z, simpleXor_16_port_z, simpleXor_17_port_z,
         simpleXor_18_port_z, simpleXor_19_port_z, simpleXor_20_port_z,
         simpleXor_21_port_z, simpleXor_22_port_z, simpleXor_23_port_z,
         simpleXor_24_port_z, simpleXor_25_port_z, simpleXor_26_port_z,
         simpleXor_27_port_z, n_zz_io_c_0_2_1_, n_zz_io_c_0_0_,
         n_zz_io_c_1_2_1_, n_zz_io_c_1_0_, n_zz_io_c_0_5_1_, n_zz_io_c_0_3_0_,
         n_zz_io_c_1_5_1_, n_zz_io_c_1_3_0_, n_zz_io_c_0_8_1_,
         n_zz_io_c_0_6_0_, n_zz_io_c_1_8_1_, n_zz_io_c_1_6_0_,
         n_zz_io_c_0_11_1_, n_zz_io_c_0_9_0_, n_zz_io_c_1_11_1_,
         n_zz_io_c_1_9_0_, n_zz_io_c_0_14_1_, n_zz_io_c_0_12_0_,
         n_zz_io_c_1_14_1_, n_zz_io_c_1_12_0_, n_zz_io_c_0_17_1_,
         n_zz_io_c_0_15_0_, n_zz_io_c_1_17_1_, n_zz_io_c_1_15_0_,
         n_zz_io_c_0_20_1_, n_zz_io_c_0_18_0_, n_zz_io_c_1_20_1_,
         n_zz_io_c_1_18_0_, N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11,
         N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N26, N27, N28, N29, N30, N31, N32, N33, N34, N35, N36, N37, N38, N39,
         N40, N41, cor_maj_27_port_o, cor_maj_26_port_o, cor_maj_25_port_o,
         cor_maj_24_port_o, cor_maj_23_port_o, cor_maj_22_port_o,
         cor_maj_21_port_o, cor_maj_20_port_o, cor_maj_19_port_o,
         cor_maj_18_port_o, cor_maj_17_port_o, cor_maj_16_port_o,
         cor_maj_15_port_o, cor_maj_14_port_o, cor_maj_14_n17, cor_maj_14_n16,
         cor_maj_14_n15, cor_maj_14_n14, cor_maj_14_n13, cor_maj_14_n12,
         cor_maj_14_n11, cor_maj_14_n10, cor_maj_14_n9, cor_maj_14_n8,
         cor_maj_14_n7, cor_maj_14_n6, cor_maj_14_n5, cor_maj_14_n4,
         cor_maj_14_n3, cor_maj_14_n2, cor_maj_14_n1, cor_maj_15_n34,
         cor_maj_15_n33, cor_maj_15_n32, cor_maj_15_n31, cor_maj_15_n30,
         cor_maj_15_n29, cor_maj_15_n28, cor_maj_15_n27, cor_maj_15_n26,
         cor_maj_15_n25, cor_maj_15_n24, cor_maj_15_n23, cor_maj_15_n22,
         cor_maj_15_n21, cor_maj_15_n20, cor_maj_15_n19, cor_maj_15_n18,
         cor_maj_16_n34, cor_maj_16_n33, cor_maj_16_n32, cor_maj_16_n31,
         cor_maj_16_n30, cor_maj_16_n29, cor_maj_16_n28, cor_maj_16_n27,
         cor_maj_16_n26, cor_maj_16_n25, cor_maj_16_n24, cor_maj_16_n23,
         cor_maj_16_n22, cor_maj_16_n21, cor_maj_16_n20, cor_maj_16_n19,
         cor_maj_16_n18, cor_maj_17_n34, cor_maj_17_n33, cor_maj_17_n32,
         cor_maj_17_n31, cor_maj_17_n30, cor_maj_17_n29, cor_maj_17_n28,
         cor_maj_17_n27, cor_maj_17_n26, cor_maj_17_n25, cor_maj_17_n24,
         cor_maj_17_n23, cor_maj_17_n22, cor_maj_17_n21, cor_maj_17_n20,
         cor_maj_17_n19, cor_maj_17_n18, cor_maj_18_n34, cor_maj_18_n33,
         cor_maj_18_n32, cor_maj_18_n31, cor_maj_18_n30, cor_maj_18_n29,
         cor_maj_18_n28, cor_maj_18_n27, cor_maj_18_n26, cor_maj_18_n25,
         cor_maj_18_n24, cor_maj_18_n23, cor_maj_18_n22, cor_maj_18_n21,
         cor_maj_18_n20, cor_maj_18_n19, cor_maj_18_n18, cor_maj_19_n34,
         cor_maj_19_n33, cor_maj_19_n32, cor_maj_19_n31, cor_maj_19_n30,
         cor_maj_19_n29, cor_maj_19_n28, cor_maj_19_n27, cor_maj_19_n26,
         cor_maj_19_n25, cor_maj_19_n24, cor_maj_19_n23, cor_maj_19_n22,
         cor_maj_19_n21, cor_maj_19_n20, cor_maj_19_n19, cor_maj_19_n18,
         cor_maj_20_n34, cor_maj_20_n33, cor_maj_20_n32, cor_maj_20_n31,
         cor_maj_20_n30, cor_maj_20_n29, cor_maj_20_n28, cor_maj_20_n27,
         cor_maj_20_n26, cor_maj_20_n25, cor_maj_20_n24, cor_maj_20_n23,
         cor_maj_20_n22, cor_maj_20_n21, cor_maj_20_n20, cor_maj_20_n19,
         cor_maj_20_n18, cor_maj_21_n34, cor_maj_21_n33, cor_maj_21_n32,
         cor_maj_21_n31, cor_maj_21_n30, cor_maj_21_n29, cor_maj_21_n28,
         cor_maj_21_n27, cor_maj_21_n26, cor_maj_21_n25, cor_maj_21_n24,
         cor_maj_21_n23, cor_maj_21_n22, cor_maj_21_n21, cor_maj_21_n20,
         cor_maj_21_n19, cor_maj_21_n18, cor_maj_22_n34, cor_maj_22_n33,
         cor_maj_22_n32, cor_maj_22_n31, cor_maj_22_n30, cor_maj_22_n29,
         cor_maj_22_n28, cor_maj_22_n27, cor_maj_22_n26, cor_maj_22_n25,
         cor_maj_22_n24, cor_maj_22_n23, cor_maj_22_n22, cor_maj_22_n21,
         cor_maj_22_n20, cor_maj_22_n19, cor_maj_22_n18, cor_maj_23_n34,
         cor_maj_23_n33, cor_maj_23_n32, cor_maj_23_n31, cor_maj_23_n30,
         cor_maj_23_n29, cor_maj_23_n28, cor_maj_23_n27, cor_maj_23_n26,
         cor_maj_23_n25, cor_maj_23_n24, cor_maj_23_n23, cor_maj_23_n22,
         cor_maj_23_n21, cor_maj_23_n20, cor_maj_23_n19, cor_maj_23_n18,
         cor_maj_24_n34, cor_maj_24_n33, cor_maj_24_n32, cor_maj_24_n31,
         cor_maj_24_n30, cor_maj_24_n29, cor_maj_24_n28, cor_maj_24_n27,
         cor_maj_24_n26, cor_maj_24_n25, cor_maj_24_n24, cor_maj_24_n23,
         cor_maj_24_n22, cor_maj_24_n21, cor_maj_24_n20, cor_maj_24_n19,
         cor_maj_24_n18, cor_maj_25_n34, cor_maj_25_n33, cor_maj_25_n32,
         cor_maj_25_n31, cor_maj_25_n30, cor_maj_25_n29, cor_maj_25_n28,
         cor_maj_25_n27, cor_maj_25_n26, cor_maj_25_n25, cor_maj_25_n24,
         cor_maj_25_n23, cor_maj_25_n22, cor_maj_25_n21, cor_maj_25_n20,
         cor_maj_25_n19, cor_maj_25_n18, cor_maj_26_n34, cor_maj_26_n33,
         cor_maj_26_n32, cor_maj_26_n31, cor_maj_26_n30, cor_maj_26_n29,
         cor_maj_26_n28, cor_maj_26_n27, cor_maj_26_n26, cor_maj_26_n25,
         cor_maj_26_n24, cor_maj_26_n23, cor_maj_26_n22, cor_maj_26_n21,
         cor_maj_26_n20, cor_maj_26_n19, cor_maj_26_n18, cor_maj_27_n34,
         cor_maj_27_n33, cor_maj_27_n32, cor_maj_27_n31, cor_maj_27_n30,
         cor_maj_27_n29, cor_maj_27_n28, cor_maj_27_n27, cor_maj_27_n26,
         cor_maj_27_n25, cor_maj_27_n24, cor_maj_27_n23, cor_maj_27_n22,
         cor_maj_27_n21, cor_maj_27_n20, cor_maj_27_n19, cor_maj_27_n18;
  wire   [6:0] v_1_0_1;
  wire   [6:0] v_1_1_0;
  wire   [6:0] cor_port_v_0_1;
  wire   [6:0] cor_port_v_1_0;
  wire   [6:0] u_0_1;
  wire   [6:0] u_1_0;
  wire   [6:0] rand_reg_0;
  wire   [6:0] rand_reg_1;
  wire   [6:0] b_reg_0;
  wire   [6:0] b_reg_1;

  DFF_X1 b_reg_1_reg_6_ ( .D(io_b_1[6]), .CK(clk), .Q(b_reg_1[6]), .QN() );
  DFF_X1 b_reg_1_reg_5_ ( .D(io_b_1[5]), .CK(clk), .Q(b_reg_1[5]), .QN() );
  DFF_X1 b_reg_1_reg_4_ ( .D(io_b_1[4]), .CK(clk), .Q(b_reg_1[4]), .QN() );
  DFF_X1 b_reg_1_reg_3_ ( .D(io_b_1[3]), .CK(clk), .Q(b_reg_1[3]), .QN() );
  DFF_X1 b_reg_1_reg_2_ ( .D(io_b_1[2]), .CK(clk), .Q(b_reg_1[2]), .QN() );
  DFF_X1 b_reg_1_reg_1_ ( .D(io_b_1[1]), .CK(clk), .Q(b_reg_1[1]), .QN() );
  DFF_X1 b_reg_1_reg_0_ ( .D(io_b_1[0]), .CK(clk), .Q(b_reg_1[0]), .QN() );
  DFF_X1 u_zz_io_c_0_2_reg_1_ ( .D(N15), .CK(clk), .Q(n_zz_io_c_0_2_1_), .QN()
         );
  DFF_X1 b_reg_0_reg_6_ ( .D(io_b_0[6]), .CK(clk), .Q(b_reg_0[6]), .QN() );
  DFF_X1 b_reg_0_reg_5_ ( .D(io_b_0[5]), .CK(clk), .Q(b_reg_0[5]), .QN() );
  DFF_X1 b_reg_0_reg_4_ ( .D(io_b_0[4]), .CK(clk), .Q(b_reg_0[4]), .QN() );
  DFF_X1 b_reg_0_reg_3_ ( .D(io_b_0[3]), .CK(clk), .Q(b_reg_0[3]), .QN() );
  DFF_X1 b_reg_0_reg_2_ ( .D(io_b_0[2]), .CK(clk), .Q(b_reg_0[2]), .QN() );
  DFF_X1 b_reg_0_reg_1_ ( .D(io_b_0[1]), .CK(clk), .Q(b_reg_0[1]), .QN() );
  DFF_X1 b_reg_0_reg_0_ ( .D(io_b_0[0]), .CK(clk), .Q(b_reg_0[0]), .QN() );
  DFF_X1 u_zz_io_c_0_2_reg_0_ ( .D(N14), .CK(clk), .Q(n_zz_io_c_0_0_), .QN()
         );
  DFF_X1 u_zz_io_c_1_20_reg_1_ ( .D(N41), .CK(clk), .Q(n_zz_io_c_1_20_1_), 
        .QN() );
  DFF_X1 u_zz_io_c_1_20_reg_0_ ( .D(N40), .CK(clk), .Q(n_zz_io_c_1_18_0_), 
        .QN() );
  DFF_X1 u_zz_io_c_0_20_reg_1_ ( .D(N39), .CK(clk), .Q(n_zz_io_c_0_20_1_), 
        .QN() );
  DFF_X1 u_zz_io_c_0_20_reg_0_ ( .D(N38), .CK(clk), .Q(n_zz_io_c_0_18_0_), 
        .QN() );
  DFF_X1 rand_reg_0_reg_6_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[6]), 
        .QN() );
  DFF_X1 rand_reg_0_reg_5_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[5]), 
        .QN() );
  DFF_X1 rand_reg_0_reg_4_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[4]), 
        .QN() );
  DFF_X1 rand_reg_0_reg_3_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[3]), 
        .QN() );
  DFF_X1 rand_reg_0_reg_2_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[2]), 
        .QN() );
  DFF_X1 rand_reg_0_reg_1_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[1]), 
        .QN() );
  DFF_X1 rand_reg_0_reg_0_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[0]), 
        .QN() );
  DFF_X1 u_zz_io_c_1_17_reg_1_ ( .D(N37), .CK(clk), .Q(n_zz_io_c_1_17_1_), 
        .QN() );
  DFF_X1 u_zz_io_c_1_17_reg_0_ ( .D(N36), .CK(clk), .Q(n_zz_io_c_1_15_0_), 
        .QN() );
  DFF_X1 u_0_1_reg_6_ ( .D(N12), .CK(clk), .Q(u_0_1[6]), .QN() );
  DFF_X1 u_0_1_reg_5_ ( .D(N10), .CK(clk), .Q(u_0_1[5]), .QN() );
  DFF_X1 u_0_1_reg_4_ ( .D(N8), .CK(clk), .Q(u_0_1[4]), .QN() );
  DFF_X1 u_0_1_reg_3_ ( .D(N6), .CK(clk), .Q(u_0_1[3]), .QN() );
  DFF_X1 u_0_1_reg_2_ ( .D(N4), .CK(clk), .Q(u_0_1[2]), .QN() );
  DFF_X1 u_0_1_reg_1_ ( .D(N2), .CK(clk), .Q(u_0_1[1]), .QN() );
  DFF_X1 u_0_1_reg_0_ ( .D(N0), .CK(clk), .Q(u_0_1[0]), .QN() );
  DFF_X1 u_zz_io_c_0_17_reg_1_ ( .D(N35), .CK(clk), .Q(n_zz_io_c_0_17_1_), 
        .QN() );
  DFF_X1 u_zz_io_c_0_17_reg_0_ ( .D(N34), .CK(clk), .Q(n_zz_io_c_0_15_0_), 
        .QN() );
  DFF_X1 rand_reg_1_reg_6_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_1[6]), 
        .QN() );
  DFF_X1 u_1_0_reg_6_ ( .D(N13), .CK(clk), .Q(u_1_0[6]), .QN() );
  DFF_X1 rand_reg_1_reg_5_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_1[5]), 
        .QN() );
  DFF_X1 u_1_0_reg_5_ ( .D(N11), .CK(clk), .Q(u_1_0[5]), .QN() );
  DFF_X1 rand_reg_1_reg_4_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_1[4]), 
        .QN() );
  DFF_X1 u_1_0_reg_4_ ( .D(N9), .CK(clk), .Q(u_1_0[4]), .QN() );
  DFF_X1 rand_reg_1_reg_3_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_1[3]), 
        .QN() );
  DFF_X1 u_1_0_reg_3_ ( .D(N7), .CK(clk), .Q(u_1_0[3]), .QN() );
  DFF_X1 rand_reg_1_reg_2_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_1[2]), 
        .QN() );
  DFF_X1 u_1_0_reg_2_ ( .D(N5), .CK(clk), .Q(u_1_0[2]), .QN() );
  DFF_X1 rand_reg_1_reg_1_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_1[1]), 
        .QN() );
  DFF_X1 u_1_0_reg_1_ ( .D(N3), .CK(clk), .Q(u_1_0[1]), .QN() );
  DFF_X1 rand_reg_1_reg_0_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_1[0]), 
        .QN() );
  DFF_X1 u_1_0_reg_0_ ( .D(N1), .CK(clk), .Q(u_1_0[0]), .QN() );
  DFF_X1 u_zz_io_c_1_14_reg_1_ ( .D(N33), .CK(clk), .Q(n_zz_io_c_1_14_1_), 
        .QN() );
  DFF_X1 u_zz_io_c_1_14_reg_0_ ( .D(N32), .CK(clk), .Q(n_zz_io_c_1_12_0_), 
        .QN() );
  DFF_X1 u_zz_io_c_0_14_reg_1_ ( .D(N31), .CK(clk), .Q(n_zz_io_c_0_14_1_), 
        .QN() );
  DFF_X1 u_zz_io_c_0_14_reg_0_ ( .D(N30), .CK(clk), .Q(n_zz_io_c_0_12_0_), 
        .QN() );
  DFF_X1 u_zz_io_c_1_11_reg_1_ ( .D(N29), .CK(clk), .Q(n_zz_io_c_1_11_1_), 
        .QN() );
  DFF_X1 u_zz_io_c_1_11_reg_0_ ( .D(N28), .CK(clk), .Q(n_zz_io_c_1_9_0_), 
        .QN() );
  DFF_X1 u_zz_io_c_0_11_reg_1_ ( .D(N27), .CK(clk), .Q(n_zz_io_c_0_11_1_), 
        .QN() );
  DFF_X1 u_zz_io_c_0_11_reg_0_ ( .D(N26), .CK(clk), .Q(n_zz_io_c_0_9_0_), 
        .QN() );
  DFF_X1 u_zz_io_c_1_8_reg_1_ ( .D(N25), .CK(clk), .Q(n_zz_io_c_1_8_1_), .QN()
         );
  DFF_X1 u_zz_io_c_1_8_reg_0_ ( .D(N24), .CK(clk), .Q(n_zz_io_c_1_6_0_), .QN()
         );
  DFF_X1 u_zz_io_c_0_8_reg_1_ ( .D(N23), .CK(clk), .Q(n_zz_io_c_0_8_1_), .QN()
         );
  DFF_X1 u_zz_io_c_0_8_reg_0_ ( .D(N22), .CK(clk), .Q(n_zz_io_c_0_6_0_), .QN()
         );
  DFF_X1 u_zz_io_c_1_5_reg_1_ ( .D(N21), .CK(clk), .Q(n_zz_io_c_1_5_1_), .QN()
         );
  DFF_X1 u_zz_io_c_1_5_reg_0_ ( .D(N20), .CK(clk), .Q(n_zz_io_c_1_3_0_), .QN()
         );
  DFF_X1 u_zz_io_c_0_5_reg_1_ ( .D(N19), .CK(clk), .Q(n_zz_io_c_0_5_1_), .QN()
         );
  DFF_X1 u_zz_io_c_0_5_reg_0_ ( .D(N18), .CK(clk), .Q(n_zz_io_c_0_3_0_), .QN()
         );
  DFF_X1 u_zz_io_c_1_2_reg_1_ ( .D(N17), .CK(clk), .Q(n_zz_io_c_1_2_1_), .QN()
         );
  DFF_X1 u_zz_io_c_1_2_reg_0_ ( .D(N16), .CK(clk), .Q(n_zz_io_c_1_0_), .QN()
         );
  XOR2_X2 U4 ( .A(io_rand[0]), .B(io_b_0[5]), .Z(v_1_1_0[5]) );
  XOR2_X2 U5 ( .A(io_rand[0]), .B(io_b_0[4]), .Z(v_1_1_0[4]) );
  XOR2_X2 U6 ( .A(io_rand[0]), .B(io_b_0[3]), .Z(v_1_1_0[3]) );
  XOR2_X2 U7 ( .A(io_rand[0]), .B(io_b_0[2]), .Z(v_1_1_0[2]) );
  XOR2_X2 U8 ( .A(io_rand[0]), .B(io_b_0[1]), .Z(v_1_1_0[1]) );
  XOR2_X2 U9 ( .A(io_rand[0]), .B(io_b_0[0]), .Z(v_1_1_0[0]) );
  XOR2_X2 U11 ( .A(io_rand[0]), .B(io_b_1[5]), .Z(v_1_0_1[5]) );
  XOR2_X2 U12 ( .A(io_rand[0]), .B(io_b_1[4]), .Z(v_1_0_1[4]) );
  XOR2_X2 U13 ( .A(io_rand[0]), .B(io_b_1[3]), .Z(v_1_0_1[3]) );
  XOR2_X2 U14 ( .A(io_rand[0]), .B(io_b_1[2]), .Z(v_1_0_1[2]) );
  XOR2_X2 U15 ( .A(io_rand[0]), .B(io_b_1[1]), .Z(v_1_0_1[1]) );
  XOR2_X2 U16 ( .A(io_rand[0]), .B(io_b_1[0]), .Z(v_1_0_1[0]) );
  XOR2_X1 U73 ( .A(io_rand[0]), .B(io_b_0[6]), .Z(v_1_1_0[6]) );
  XOR2_X1 U74 ( .A(io_rand[0]), .B(io_b_1[6]), .Z(v_1_0_1[6]) );
  AND2_X1 U75 ( .A1(b_reg_1[0]), .A2(io_a_1[0]), .ZN(N16) );
  AND2_X1 U76 ( .A1(b_reg_0[1]), .A2(io_a_0[1]), .ZN(N18) );
  AND2_X1 U77 ( .A1(b_reg_1[1]), .A2(io_a_1[1]), .ZN(N20) );
  AND2_X1 U78 ( .A1(b_reg_0[2]), .A2(io_a_0[2]), .ZN(N22) );
  AND2_X1 U79 ( .A1(b_reg_1[2]), .A2(io_a_1[2]), .ZN(N24) );
  AND2_X1 U80 ( .A1(b_reg_0[3]), .A2(io_a_0[3]), .ZN(N26) );
  AND2_X1 U81 ( .A1(b_reg_1[3]), .A2(io_a_1[3]), .ZN(N28) );
  AND2_X1 U82 ( .A1(b_reg_0[4]), .A2(io_a_0[4]), .ZN(N30) );
  AND2_X1 U83 ( .A1(b_reg_1[4]), .A2(io_a_1[4]), .ZN(N32) );
  AND2_X1 U84 ( .A1(b_reg_0[5]), .A2(io_a_0[5]), .ZN(N34) );
  AND2_X1 U85 ( .A1(b_reg_1[5]), .A2(io_a_1[5]), .ZN(N36) );
  AND2_X1 U86 ( .A1(b_reg_0[6]), .A2(io_a_0[6]), .ZN(N38) );
  AND2_X1 U87 ( .A1(b_reg_1[6]), .A2(io_a_1[6]), .ZN(N40) );
  AND2_X1 U88 ( .A1(b_reg_0[0]), .A2(io_a_0[0]), .ZN(N14) );
  AND2_X1 U89 ( .A1(io_a_1[0]), .A2(cor_port_v_1_0[0]), .ZN(N17) );
  AND2_X1 U90 ( .A1(io_a_0[1]), .A2(cor_port_v_0_1[1]), .ZN(N19) );
  AND2_X1 U91 ( .A1(io_a_1[1]), .A2(cor_port_v_1_0[1]), .ZN(N21) );
  AND2_X1 U92 ( .A1(io_a_0[2]), .A2(cor_port_v_0_1[2]), .ZN(N23) );
  AND2_X1 U93 ( .A1(io_a_1[2]), .A2(cor_port_v_1_0[2]), .ZN(N25) );
  AND2_X1 U94 ( .A1(io_a_0[3]), .A2(cor_port_v_0_1[3]), .ZN(N27) );
  AND2_X1 U95 ( .A1(io_a_1[3]), .A2(cor_port_v_1_0[3]), .ZN(N29) );
  AND2_X1 U96 ( .A1(io_a_0[4]), .A2(cor_port_v_0_1[4]), .ZN(N31) );
  AND2_X1 U97 ( .A1(io_a_1[4]), .A2(cor_port_v_1_0[4]), .ZN(N33) );
  AND2_X1 U98 ( .A1(simpleNot_15_port_z), .A2(rand_reg_1[0]), .ZN(N1) );
  AND2_X1 U99 ( .A1(simpleNot_17_port_z), .A2(rand_reg_1[1]), .ZN(N3) );
  AND2_X1 U100 ( .A1(simpleNot_19_port_z), .A2(rand_reg_1[2]), .ZN(N5) );
  AND2_X1 U101 ( .A1(simpleNot_21_port_z), .A2(rand_reg_1[3]), .ZN(N7) );
  AND2_X1 U102 ( .A1(simpleNot_23_port_z), .A2(rand_reg_1[4]), .ZN(N9) );
  AND2_X1 U103 ( .A1(simpleNot_25_port_z), .A2(rand_reg_1[5]), .ZN(N11) );
  AND2_X1 U104 ( .A1(simpleNot_27_port_z), .A2(rand_reg_1[6]), .ZN(N13) );
  AND2_X1 U105 ( .A1(io_a_0[5]), .A2(cor_port_v_0_1[5]), .ZN(N35) );
  AND2_X1 U106 ( .A1(simpleNot_14_port_z), .A2(rand_reg_0[0]), .ZN(N0) );
  AND2_X1 U107 ( .A1(simpleNot_16_port_z), .A2(rand_reg_0[1]), .ZN(N2) );
  AND2_X1 U108 ( .A1(simpleNot_18_port_z), .A2(rand_reg_0[2]), .ZN(N4) );
  AND2_X1 U109 ( .A1(simpleNot_20_port_z), .A2(rand_reg_0[3]), .ZN(N6) );
  AND2_X1 U110 ( .A1(simpleNot_22_port_z), .A2(rand_reg_0[4]), .ZN(N8) );
  AND2_X1 U111 ( .A1(simpleNot_24_port_z), .A2(rand_reg_0[5]), .ZN(N10) );
  AND2_X1 U112 ( .A1(simpleNot_26_port_z), .A2(rand_reg_0[6]), .ZN(N12) );
  AND2_X1 U113 ( .A1(io_a_1[5]), .A2(cor_port_v_1_0[5]), .ZN(N37) );
  AND2_X1 U114 ( .A1(io_a_0[6]), .A2(cor_port_v_0_1[6]), .ZN(N39) );
  AND2_X1 U115 ( .A1(io_a_1[6]), .A2(cor_port_v_1_0[6]), .ZN(N41) );
  AND2_X1 U116 ( .A1(io_a_0[0]), .A2(cor_port_v_0_1[0]), .ZN(N15) );
  XOR2_X1 U117 ( .A(simpleXor_15_port_z), .B(n_zz_io_c_1_0_), .Z(io_c_1[0]) );
  XOR2_X1 U118 ( .A(simpleXor_17_port_z), .B(n_zz_io_c_1_3_0_), .Z(io_c_1[1])
         );
  XOR2_X1 U119 ( .A(simpleXor_19_port_z), .B(n_zz_io_c_1_6_0_), .Z(io_c_1[2])
         );
  XOR2_X1 U120 ( .A(simpleXor_21_port_z), .B(n_zz_io_c_1_9_0_), .Z(io_c_1[3])
         );
  XOR2_X1 U121 ( .A(simpleXor_23_port_z), .B(n_zz_io_c_1_12_0_), .Z(io_c_1[4])
         );
  XOR2_X1 U122 ( .A(simpleXor_25_port_z), .B(n_zz_io_c_1_15_0_), .Z(io_c_1[5])
         );
  XOR2_X1 U123 ( .A(simpleXor_27_port_z), .B(n_zz_io_c_1_18_0_), .Z(io_c_1[6])
         );
  XOR2_X1 U124 ( .A(simpleXor_14_port_z), .B(n_zz_io_c_0_0_), .Z(io_c_0[0]) );
  XOR2_X1 U125 ( .A(simpleXor_16_port_z), .B(n_zz_io_c_0_3_0_), .Z(io_c_0[1])
         );
  XOR2_X1 U126 ( .A(simpleXor_18_port_z), .B(n_zz_io_c_0_6_0_), .Z(io_c_0[2])
         );
  XOR2_X1 U127 ( .A(simpleXor_20_port_z), .B(n_zz_io_c_0_9_0_), .Z(io_c_0[3])
         );
  XOR2_X1 U128 ( .A(simpleXor_22_port_z), .B(n_zz_io_c_0_12_0_), .Z(io_c_0[4])
         );
  XOR2_X1 U129 ( .A(simpleXor_24_port_z), .B(n_zz_io_c_0_15_0_), .Z(io_c_0[5])
         );
  XOR2_X1 U130 ( .A(simpleXor_26_port_z), .B(n_zz_io_c_0_18_0_), .Z(io_c_0[6])
         );
  INV_X1 simpleNot_14_U1 ( .A(io_a_0[0]), .ZN(simpleNot_14_port_z) );
  INV_X1 simpleNot_15_U1 ( .A(io_a_1[0]), .ZN(simpleNot_15_port_z) );
  INV_X1 simpleNot_16_U1 ( .A(io_a_0[1]), .ZN(simpleNot_16_port_z) );
  INV_X1 simpleNot_17_U1 ( .A(io_a_1[1]), .ZN(simpleNot_17_port_z) );
  INV_X1 simpleNot_18_U1 ( .A(io_a_0[2]), .ZN(simpleNot_18_port_z) );
  INV_X1 simpleNot_19_U1 ( .A(io_a_1[2]), .ZN(simpleNot_19_port_z) );
  INV_X1 simpleNot_20_U1 ( .A(io_a_0[3]), .ZN(simpleNot_20_port_z) );
  INV_X1 simpleNot_21_U1 ( .A(io_a_1[3]), .ZN(simpleNot_21_port_z) );
  INV_X1 simpleNot_22_U1 ( .A(io_a_0[4]), .ZN(simpleNot_22_port_z) );
  INV_X1 simpleNot_23_U1 ( .A(io_a_1[4]), .ZN(simpleNot_23_port_z) );
  INV_X1 simpleNot_24_U1 ( .A(io_a_0[5]), .ZN(simpleNot_24_port_z) );
  INV_X1 simpleNot_25_U1 ( .A(io_a_1[5]), .ZN(simpleNot_25_port_z) );
  INV_X1 simpleNot_26_U1 ( .A(io_a_0[6]), .ZN(simpleNot_26_port_z) );
  INV_X1 simpleNot_27_U1 ( .A(io_a_1[6]), .ZN(simpleNot_27_port_z) );
  DFF_X1 cor_m_1_0_reg_0_ ( .D(cor_maj_21_port_o), .CK(clk), .Q(
        cor_port_v_1_0[0]), .QN() );
  DFF_X1 cor_m_1_0_reg_1_ ( .D(cor_maj_22_port_o), .CK(clk), .Q(
        cor_port_v_1_0[1]), .QN() );
  DFF_X1 cor_m_1_0_reg_2_ ( .D(cor_maj_23_port_o), .CK(clk), .Q(
        cor_port_v_1_0[2]), .QN() );
  DFF_X1 cor_m_1_0_reg_3_ ( .D(cor_maj_24_port_o), .CK(clk), .Q(
        cor_port_v_1_0[3]), .QN() );
  DFF_X1 cor_m_1_0_reg_4_ ( .D(cor_maj_25_port_o), .CK(clk), .Q(
        cor_port_v_1_0[4]), .QN() );
  DFF_X1 cor_m_1_0_reg_5_ ( .D(cor_maj_26_port_o), .CK(clk), .Q(
        cor_port_v_1_0[5]), .QN() );
  DFF_X1 cor_m_1_0_reg_6_ ( .D(cor_maj_27_port_o), .CK(clk), .Q(
        cor_port_v_1_0[6]), .QN() );
  DFF_X1 cor_m_0_1_reg_0_ ( .D(cor_maj_14_port_o), .CK(clk), .Q(
        cor_port_v_0_1[0]), .QN() );
  DFF_X1 cor_m_0_1_reg_1_ ( .D(cor_maj_15_port_o), .CK(clk), .Q(
        cor_port_v_0_1[1]), .QN() );
  DFF_X1 cor_m_0_1_reg_2_ ( .D(cor_maj_16_port_o), .CK(clk), .Q(
        cor_port_v_0_1[2]), .QN() );
  DFF_X1 cor_m_0_1_reg_3_ ( .D(cor_maj_17_port_o), .CK(clk), .Q(
        cor_port_v_0_1[3]), .QN() );
  DFF_X1 cor_m_0_1_reg_4_ ( .D(cor_maj_18_port_o), .CK(clk), .Q(
        cor_port_v_0_1[4]), .QN() );
  DFF_X1 cor_m_0_1_reg_5_ ( .D(cor_maj_19_port_o), .CK(clk), .Q(
        cor_port_v_0_1[5]), .QN() );
  DFF_X1 cor_m_0_1_reg_6_ ( .D(cor_maj_20_port_o), .CK(clk), .Q(
        cor_port_v_0_1[6]), .QN() );
  OR2_X1 cor_maj_14_U19 ( .A1(cor_maj_14_n8), .A2(cor_maj_14_n9), .ZN(
        cor_maj_14_n7) );
  NAND2_X1 cor_maj_14_U18 ( .A1(v_1_0_1[6]), .A2(cor_maj_14_n7), .ZN(
        cor_maj_14_n6) );
  NAND2_X1 cor_maj_14_U17 ( .A1(cor_maj_14_n9), .A2(cor_maj_14_n8), .ZN(
        cor_maj_14_n5) );
  NAND2_X1 cor_maj_14_U16 ( .A1(cor_maj_14_n5), .A2(cor_maj_14_n6), .ZN(
        cor_maj_14_n4) );
  NAND2_X1 cor_maj_14_U15 ( .A1(v_1_0_1[5]), .A2(cor_maj_14_n10), .ZN(
        cor_maj_14_n17) );
  NAND2_X1 cor_maj_14_U14 ( .A1(v_1_0_1[3]), .A2(v_1_0_1[4]), .ZN(
        cor_maj_14_n16) );
  NAND2_X1 cor_maj_14_U13 ( .A1(cor_maj_14_n16), .A2(cor_maj_14_n17), .ZN(
        cor_maj_14_n13) );
  NAND2_X1 cor_maj_14_U12 ( .A1(v_1_0_1[2]), .A2(cor_maj_14_n11), .ZN(
        cor_maj_14_n15) );
  NAND2_X1 cor_maj_14_U11 ( .A1(v_1_0_1[0]), .A2(v_1_0_1[1]), .ZN(
        cor_maj_14_n14) );
  NAND2_X1 cor_maj_14_U10 ( .A1(cor_maj_14_n14), .A2(cor_maj_14_n15), .ZN(
        cor_maj_14_n12) );
  XOR2_X1 cor_maj_14_U9 ( .A(v_1_0_1[2]), .B(cor_maj_14_n11), .Z(cor_maj_14_n9) );
  XOR2_X1 cor_maj_14_U8 ( .A(v_1_0_1[5]), .B(cor_maj_14_n10), .Z(cor_maj_14_n8) );
  XOR2_X1 cor_maj_14_U7 ( .A(v_1_0_1[0]), .B(v_1_0_1[1]), .Z(cor_maj_14_n11)
         );
  XOR2_X1 cor_maj_14_U6 ( .A(v_1_0_1[3]), .B(v_1_0_1[4]), .Z(cor_maj_14_n10)
         );
  OR2_X1 cor_maj_14_U5 ( .A1(cor_maj_14_n12), .A2(cor_maj_14_n13), .ZN(
        cor_maj_14_n3) );
  NAND2_X1 cor_maj_14_U4 ( .A1(cor_maj_14_n13), .A2(cor_maj_14_n12), .ZN(
        cor_maj_14_n1) );
  NAND2_X1 cor_maj_14_U3 ( .A1(cor_maj_14_n3), .A2(cor_maj_14_n4), .ZN(
        cor_maj_14_n2) );
  NAND2_X1 cor_maj_14_U2 ( .A1(cor_maj_14_n1), .A2(cor_maj_14_n2), .ZN(
        cor_maj_14_port_o) );
  OR2_X1 cor_maj_15_U19 ( .A1(cor_maj_15_n27), .A2(cor_maj_15_n26), .ZN(
        cor_maj_15_n28) );
  NAND2_X1 cor_maj_15_U18 ( .A1(v_1_0_1[6]), .A2(cor_maj_15_n28), .ZN(
        cor_maj_15_n29) );
  NAND2_X1 cor_maj_15_U17 ( .A1(cor_maj_15_n26), .A2(cor_maj_15_n27), .ZN(
        cor_maj_15_n30) );
  NAND2_X1 cor_maj_15_U16 ( .A1(cor_maj_15_n30), .A2(cor_maj_15_n29), .ZN(
        cor_maj_15_n31) );
  NAND2_X1 cor_maj_15_U15 ( .A1(v_1_0_1[5]), .A2(cor_maj_15_n25), .ZN(
        cor_maj_15_n18) );
  NAND2_X1 cor_maj_15_U14 ( .A1(v_1_0_1[3]), .A2(v_1_0_1[4]), .ZN(
        cor_maj_15_n19) );
  NAND2_X1 cor_maj_15_U13 ( .A1(cor_maj_15_n19), .A2(cor_maj_15_n18), .ZN(
        cor_maj_15_n22) );
  NAND2_X1 cor_maj_15_U12 ( .A1(v_1_0_1[2]), .A2(cor_maj_15_n24), .ZN(
        cor_maj_15_n20) );
  NAND2_X1 cor_maj_15_U11 ( .A1(v_1_0_1[0]), .A2(v_1_0_1[1]), .ZN(
        cor_maj_15_n21) );
  NAND2_X1 cor_maj_15_U10 ( .A1(cor_maj_15_n21), .A2(cor_maj_15_n20), .ZN(
        cor_maj_15_n23) );
  XOR2_X1 cor_maj_15_U9 ( .A(v_1_0_1[2]), .B(cor_maj_15_n24), .Z(
        cor_maj_15_n26) );
  XOR2_X1 cor_maj_15_U8 ( .A(v_1_0_1[5]), .B(cor_maj_15_n25), .Z(
        cor_maj_15_n27) );
  XOR2_X1 cor_maj_15_U7 ( .A(v_1_0_1[0]), .B(v_1_0_1[1]), .Z(cor_maj_15_n24)
         );
  XOR2_X1 cor_maj_15_U6 ( .A(v_1_0_1[3]), .B(v_1_0_1[4]), .Z(cor_maj_15_n25)
         );
  OR2_X1 cor_maj_15_U5 ( .A1(cor_maj_15_n23), .A2(cor_maj_15_n22), .ZN(
        cor_maj_15_n32) );
  NAND2_X1 cor_maj_15_U4 ( .A1(cor_maj_15_n22), .A2(cor_maj_15_n23), .ZN(
        cor_maj_15_n34) );
  NAND2_X1 cor_maj_15_U3 ( .A1(cor_maj_15_n32), .A2(cor_maj_15_n31), .ZN(
        cor_maj_15_n33) );
  NAND2_X1 cor_maj_15_U2 ( .A1(cor_maj_15_n34), .A2(cor_maj_15_n33), .ZN(
        cor_maj_15_port_o) );
  OR2_X1 cor_maj_16_U19 ( .A1(cor_maj_16_n27), .A2(cor_maj_16_n26), .ZN(
        cor_maj_16_n28) );
  NAND2_X1 cor_maj_16_U18 ( .A1(v_1_0_1[6]), .A2(cor_maj_16_n28), .ZN(
        cor_maj_16_n29) );
  NAND2_X1 cor_maj_16_U17 ( .A1(cor_maj_16_n26), .A2(cor_maj_16_n27), .ZN(
        cor_maj_16_n30) );
  NAND2_X1 cor_maj_16_U16 ( .A1(cor_maj_16_n30), .A2(cor_maj_16_n29), .ZN(
        cor_maj_16_n31) );
  NAND2_X1 cor_maj_16_U15 ( .A1(v_1_0_1[5]), .A2(cor_maj_16_n25), .ZN(
        cor_maj_16_n18) );
  NAND2_X1 cor_maj_16_U14 ( .A1(v_1_0_1[3]), .A2(v_1_0_1[4]), .ZN(
        cor_maj_16_n19) );
  NAND2_X1 cor_maj_16_U13 ( .A1(cor_maj_16_n19), .A2(cor_maj_16_n18), .ZN(
        cor_maj_16_n22) );
  NAND2_X1 cor_maj_16_U12 ( .A1(v_1_0_1[2]), .A2(cor_maj_16_n24), .ZN(
        cor_maj_16_n20) );
  NAND2_X1 cor_maj_16_U11 ( .A1(v_1_0_1[0]), .A2(v_1_0_1[1]), .ZN(
        cor_maj_16_n21) );
  NAND2_X1 cor_maj_16_U10 ( .A1(cor_maj_16_n21), .A2(cor_maj_16_n20), .ZN(
        cor_maj_16_n23) );
  XOR2_X1 cor_maj_16_U9 ( .A(v_1_0_1[2]), .B(cor_maj_16_n24), .Z(
        cor_maj_16_n26) );
  XOR2_X1 cor_maj_16_U8 ( .A(v_1_0_1[5]), .B(cor_maj_16_n25), .Z(
        cor_maj_16_n27) );
  XOR2_X1 cor_maj_16_U7 ( .A(v_1_0_1[0]), .B(v_1_0_1[1]), .Z(cor_maj_16_n24)
         );
  XOR2_X1 cor_maj_16_U6 ( .A(v_1_0_1[3]), .B(v_1_0_1[4]), .Z(cor_maj_16_n25)
         );
  OR2_X1 cor_maj_16_U5 ( .A1(cor_maj_16_n23), .A2(cor_maj_16_n22), .ZN(
        cor_maj_16_n32) );
  NAND2_X1 cor_maj_16_U4 ( .A1(cor_maj_16_n22), .A2(cor_maj_16_n23), .ZN(
        cor_maj_16_n34) );
  NAND2_X1 cor_maj_16_U3 ( .A1(cor_maj_16_n32), .A2(cor_maj_16_n31), .ZN(
        cor_maj_16_n33) );
  NAND2_X1 cor_maj_16_U2 ( .A1(cor_maj_16_n34), .A2(cor_maj_16_n33), .ZN(
        cor_maj_16_port_o) );
  OR2_X1 cor_maj_17_U19 ( .A1(cor_maj_17_n27), .A2(cor_maj_17_n26), .ZN(
        cor_maj_17_n28) );
  NAND2_X1 cor_maj_17_U18 ( .A1(v_1_0_1[6]), .A2(cor_maj_17_n28), .ZN(
        cor_maj_17_n29) );
  NAND2_X1 cor_maj_17_U17 ( .A1(cor_maj_17_n26), .A2(cor_maj_17_n27), .ZN(
        cor_maj_17_n30) );
  NAND2_X1 cor_maj_17_U16 ( .A1(cor_maj_17_n30), .A2(cor_maj_17_n29), .ZN(
        cor_maj_17_n31) );
  NAND2_X1 cor_maj_17_U15 ( .A1(v_1_0_1[5]), .A2(cor_maj_17_n25), .ZN(
        cor_maj_17_n18) );
  NAND2_X1 cor_maj_17_U14 ( .A1(v_1_0_1[3]), .A2(v_1_0_1[4]), .ZN(
        cor_maj_17_n19) );
  NAND2_X1 cor_maj_17_U13 ( .A1(cor_maj_17_n19), .A2(cor_maj_17_n18), .ZN(
        cor_maj_17_n22) );
  NAND2_X1 cor_maj_17_U12 ( .A1(v_1_0_1[2]), .A2(cor_maj_17_n24), .ZN(
        cor_maj_17_n20) );
  NAND2_X1 cor_maj_17_U11 ( .A1(v_1_0_1[0]), .A2(v_1_0_1[1]), .ZN(
        cor_maj_17_n21) );
  NAND2_X1 cor_maj_17_U10 ( .A1(cor_maj_17_n21), .A2(cor_maj_17_n20), .ZN(
        cor_maj_17_n23) );
  XOR2_X1 cor_maj_17_U9 ( .A(v_1_0_1[2]), .B(cor_maj_17_n24), .Z(
        cor_maj_17_n26) );
  XOR2_X1 cor_maj_17_U8 ( .A(v_1_0_1[5]), .B(cor_maj_17_n25), .Z(
        cor_maj_17_n27) );
  XOR2_X1 cor_maj_17_U7 ( .A(v_1_0_1[0]), .B(v_1_0_1[1]), .Z(cor_maj_17_n24)
         );
  XOR2_X1 cor_maj_17_U6 ( .A(v_1_0_1[3]), .B(v_1_0_1[4]), .Z(cor_maj_17_n25)
         );
  OR2_X1 cor_maj_17_U5 ( .A1(cor_maj_17_n23), .A2(cor_maj_17_n22), .ZN(
        cor_maj_17_n32) );
  NAND2_X1 cor_maj_17_U4 ( .A1(cor_maj_17_n22), .A2(cor_maj_17_n23), .ZN(
        cor_maj_17_n34) );
  NAND2_X1 cor_maj_17_U3 ( .A1(cor_maj_17_n32), .A2(cor_maj_17_n31), .ZN(
        cor_maj_17_n33) );
  NAND2_X1 cor_maj_17_U2 ( .A1(cor_maj_17_n34), .A2(cor_maj_17_n33), .ZN(
        cor_maj_17_port_o) );
  OR2_X1 cor_maj_18_U19 ( .A1(cor_maj_18_n27), .A2(cor_maj_18_n26), .ZN(
        cor_maj_18_n28) );
  NAND2_X1 cor_maj_18_U18 ( .A1(v_1_0_1[6]), .A2(cor_maj_18_n28), .ZN(
        cor_maj_18_n29) );
  NAND2_X1 cor_maj_18_U17 ( .A1(cor_maj_18_n26), .A2(cor_maj_18_n27), .ZN(
        cor_maj_18_n30) );
  NAND2_X1 cor_maj_18_U16 ( .A1(cor_maj_18_n30), .A2(cor_maj_18_n29), .ZN(
        cor_maj_18_n31) );
  NAND2_X1 cor_maj_18_U15 ( .A1(v_1_0_1[5]), .A2(cor_maj_18_n25), .ZN(
        cor_maj_18_n18) );
  NAND2_X1 cor_maj_18_U14 ( .A1(v_1_0_1[3]), .A2(v_1_0_1[4]), .ZN(
        cor_maj_18_n19) );
  NAND2_X1 cor_maj_18_U13 ( .A1(cor_maj_18_n19), .A2(cor_maj_18_n18), .ZN(
        cor_maj_18_n22) );
  NAND2_X1 cor_maj_18_U12 ( .A1(v_1_0_1[2]), .A2(cor_maj_18_n24), .ZN(
        cor_maj_18_n20) );
  NAND2_X1 cor_maj_18_U11 ( .A1(v_1_0_1[0]), .A2(v_1_0_1[1]), .ZN(
        cor_maj_18_n21) );
  NAND2_X1 cor_maj_18_U10 ( .A1(cor_maj_18_n21), .A2(cor_maj_18_n20), .ZN(
        cor_maj_18_n23) );
  XOR2_X1 cor_maj_18_U9 ( .A(v_1_0_1[2]), .B(cor_maj_18_n24), .Z(
        cor_maj_18_n26) );
  XOR2_X1 cor_maj_18_U8 ( .A(v_1_0_1[5]), .B(cor_maj_18_n25), .Z(
        cor_maj_18_n27) );
  XOR2_X1 cor_maj_18_U7 ( .A(v_1_0_1[0]), .B(v_1_0_1[1]), .Z(cor_maj_18_n24)
         );
  XOR2_X1 cor_maj_18_U6 ( .A(v_1_0_1[3]), .B(v_1_0_1[4]), .Z(cor_maj_18_n25)
         );
  OR2_X1 cor_maj_18_U5 ( .A1(cor_maj_18_n23), .A2(cor_maj_18_n22), .ZN(
        cor_maj_18_n32) );
  NAND2_X1 cor_maj_18_U4 ( .A1(cor_maj_18_n22), .A2(cor_maj_18_n23), .ZN(
        cor_maj_18_n34) );
  NAND2_X1 cor_maj_18_U3 ( .A1(cor_maj_18_n32), .A2(cor_maj_18_n31), .ZN(
        cor_maj_18_n33) );
  NAND2_X1 cor_maj_18_U2 ( .A1(cor_maj_18_n34), .A2(cor_maj_18_n33), .ZN(
        cor_maj_18_port_o) );
  OR2_X1 cor_maj_19_U19 ( .A1(cor_maj_19_n27), .A2(cor_maj_19_n26), .ZN(
        cor_maj_19_n28) );
  NAND2_X1 cor_maj_19_U18 ( .A1(v_1_0_1[6]), .A2(cor_maj_19_n28), .ZN(
        cor_maj_19_n29) );
  NAND2_X1 cor_maj_19_U17 ( .A1(cor_maj_19_n26), .A2(cor_maj_19_n27), .ZN(
        cor_maj_19_n30) );
  NAND2_X1 cor_maj_19_U16 ( .A1(cor_maj_19_n30), .A2(cor_maj_19_n29), .ZN(
        cor_maj_19_n31) );
  NAND2_X1 cor_maj_19_U15 ( .A1(v_1_0_1[5]), .A2(cor_maj_19_n25), .ZN(
        cor_maj_19_n18) );
  NAND2_X1 cor_maj_19_U14 ( .A1(v_1_0_1[3]), .A2(v_1_0_1[4]), .ZN(
        cor_maj_19_n19) );
  NAND2_X1 cor_maj_19_U13 ( .A1(cor_maj_19_n19), .A2(cor_maj_19_n18), .ZN(
        cor_maj_19_n22) );
  NAND2_X1 cor_maj_19_U12 ( .A1(v_1_0_1[2]), .A2(cor_maj_19_n24), .ZN(
        cor_maj_19_n20) );
  NAND2_X1 cor_maj_19_U11 ( .A1(v_1_0_1[0]), .A2(v_1_0_1[1]), .ZN(
        cor_maj_19_n21) );
  NAND2_X1 cor_maj_19_U10 ( .A1(cor_maj_19_n21), .A2(cor_maj_19_n20), .ZN(
        cor_maj_19_n23) );
  XOR2_X1 cor_maj_19_U9 ( .A(v_1_0_1[2]), .B(cor_maj_19_n24), .Z(
        cor_maj_19_n26) );
  XOR2_X1 cor_maj_19_U8 ( .A(v_1_0_1[5]), .B(cor_maj_19_n25), .Z(
        cor_maj_19_n27) );
  XOR2_X1 cor_maj_19_U7 ( .A(v_1_0_1[0]), .B(v_1_0_1[1]), .Z(cor_maj_19_n24)
         );
  XOR2_X1 cor_maj_19_U6 ( .A(v_1_0_1[3]), .B(v_1_0_1[4]), .Z(cor_maj_19_n25)
         );
  OR2_X1 cor_maj_19_U5 ( .A1(cor_maj_19_n23), .A2(cor_maj_19_n22), .ZN(
        cor_maj_19_n32) );
  NAND2_X1 cor_maj_19_U4 ( .A1(cor_maj_19_n22), .A2(cor_maj_19_n23), .ZN(
        cor_maj_19_n34) );
  NAND2_X1 cor_maj_19_U3 ( .A1(cor_maj_19_n32), .A2(cor_maj_19_n31), .ZN(
        cor_maj_19_n33) );
  NAND2_X1 cor_maj_19_U2 ( .A1(cor_maj_19_n34), .A2(cor_maj_19_n33), .ZN(
        cor_maj_19_port_o) );
  OR2_X1 cor_maj_20_U19 ( .A1(cor_maj_20_n27), .A2(cor_maj_20_n26), .ZN(
        cor_maj_20_n28) );
  NAND2_X1 cor_maj_20_U18 ( .A1(v_1_0_1[6]), .A2(cor_maj_20_n28), .ZN(
        cor_maj_20_n29) );
  NAND2_X1 cor_maj_20_U17 ( .A1(cor_maj_20_n26), .A2(cor_maj_20_n27), .ZN(
        cor_maj_20_n30) );
  NAND2_X1 cor_maj_20_U16 ( .A1(cor_maj_20_n30), .A2(cor_maj_20_n29), .ZN(
        cor_maj_20_n31) );
  NAND2_X1 cor_maj_20_U15 ( .A1(v_1_0_1[5]), .A2(cor_maj_20_n25), .ZN(
        cor_maj_20_n18) );
  NAND2_X1 cor_maj_20_U14 ( .A1(v_1_0_1[3]), .A2(v_1_0_1[4]), .ZN(
        cor_maj_20_n19) );
  NAND2_X1 cor_maj_20_U13 ( .A1(cor_maj_20_n19), .A2(cor_maj_20_n18), .ZN(
        cor_maj_20_n22) );
  NAND2_X1 cor_maj_20_U12 ( .A1(v_1_0_1[2]), .A2(cor_maj_20_n24), .ZN(
        cor_maj_20_n20) );
  NAND2_X1 cor_maj_20_U11 ( .A1(v_1_0_1[0]), .A2(v_1_0_1[1]), .ZN(
        cor_maj_20_n21) );
  NAND2_X1 cor_maj_20_U10 ( .A1(cor_maj_20_n21), .A2(cor_maj_20_n20), .ZN(
        cor_maj_20_n23) );
  XOR2_X1 cor_maj_20_U9 ( .A(v_1_0_1[2]), .B(cor_maj_20_n24), .Z(
        cor_maj_20_n26) );
  XOR2_X1 cor_maj_20_U8 ( .A(v_1_0_1[5]), .B(cor_maj_20_n25), .Z(
        cor_maj_20_n27) );
  XOR2_X1 cor_maj_20_U7 ( .A(v_1_0_1[0]), .B(v_1_0_1[1]), .Z(cor_maj_20_n24)
         );
  XOR2_X1 cor_maj_20_U6 ( .A(v_1_0_1[3]), .B(v_1_0_1[4]), .Z(cor_maj_20_n25)
         );
  OR2_X1 cor_maj_20_U5 ( .A1(cor_maj_20_n23), .A2(cor_maj_20_n22), .ZN(
        cor_maj_20_n32) );
  NAND2_X1 cor_maj_20_U4 ( .A1(cor_maj_20_n22), .A2(cor_maj_20_n23), .ZN(
        cor_maj_20_n34) );
  NAND2_X1 cor_maj_20_U3 ( .A1(cor_maj_20_n32), .A2(cor_maj_20_n31), .ZN(
        cor_maj_20_n33) );
  NAND2_X1 cor_maj_20_U2 ( .A1(cor_maj_20_n34), .A2(cor_maj_20_n33), .ZN(
        cor_maj_20_port_o) );
  OR2_X1 cor_maj_21_U19 ( .A1(cor_maj_21_n27), .A2(cor_maj_21_n26), .ZN(
        cor_maj_21_n28) );
  NAND2_X1 cor_maj_21_U18 ( .A1(v_1_1_0[6]), .A2(cor_maj_21_n28), .ZN(
        cor_maj_21_n29) );
  NAND2_X1 cor_maj_21_U17 ( .A1(cor_maj_21_n26), .A2(cor_maj_21_n27), .ZN(
        cor_maj_21_n30) );
  NAND2_X1 cor_maj_21_U16 ( .A1(cor_maj_21_n30), .A2(cor_maj_21_n29), .ZN(
        cor_maj_21_n31) );
  NAND2_X1 cor_maj_21_U15 ( .A1(v_1_1_0[5]), .A2(cor_maj_21_n25), .ZN(
        cor_maj_21_n18) );
  NAND2_X1 cor_maj_21_U14 ( .A1(v_1_1_0[3]), .A2(v_1_1_0[4]), .ZN(
        cor_maj_21_n19) );
  NAND2_X1 cor_maj_21_U13 ( .A1(cor_maj_21_n19), .A2(cor_maj_21_n18), .ZN(
        cor_maj_21_n22) );
  NAND2_X1 cor_maj_21_U12 ( .A1(v_1_1_0[2]), .A2(cor_maj_21_n24), .ZN(
        cor_maj_21_n20) );
  NAND2_X1 cor_maj_21_U11 ( .A1(v_1_1_0[0]), .A2(v_1_1_0[1]), .ZN(
        cor_maj_21_n21) );
  NAND2_X1 cor_maj_21_U10 ( .A1(cor_maj_21_n21), .A2(cor_maj_21_n20), .ZN(
        cor_maj_21_n23) );
  XOR2_X1 cor_maj_21_U9 ( .A(v_1_1_0[2]), .B(cor_maj_21_n24), .Z(
        cor_maj_21_n26) );
  XOR2_X1 cor_maj_21_U8 ( .A(v_1_1_0[5]), .B(cor_maj_21_n25), .Z(
        cor_maj_21_n27) );
  XOR2_X1 cor_maj_21_U7 ( .A(v_1_1_0[0]), .B(v_1_1_0[1]), .Z(cor_maj_21_n24)
         );
  XOR2_X1 cor_maj_21_U6 ( .A(v_1_1_0[3]), .B(v_1_1_0[4]), .Z(cor_maj_21_n25)
         );
  OR2_X1 cor_maj_21_U5 ( .A1(cor_maj_21_n23), .A2(cor_maj_21_n22), .ZN(
        cor_maj_21_n32) );
  NAND2_X1 cor_maj_21_U4 ( .A1(cor_maj_21_n22), .A2(cor_maj_21_n23), .ZN(
        cor_maj_21_n34) );
  NAND2_X1 cor_maj_21_U3 ( .A1(cor_maj_21_n32), .A2(cor_maj_21_n31), .ZN(
        cor_maj_21_n33) );
  NAND2_X1 cor_maj_21_U2 ( .A1(cor_maj_21_n34), .A2(cor_maj_21_n33), .ZN(
        cor_maj_21_port_o) );
  OR2_X1 cor_maj_22_U19 ( .A1(cor_maj_22_n27), .A2(cor_maj_22_n26), .ZN(
        cor_maj_22_n28) );
  NAND2_X1 cor_maj_22_U18 ( .A1(v_1_1_0[6]), .A2(cor_maj_22_n28), .ZN(
        cor_maj_22_n29) );
  NAND2_X1 cor_maj_22_U17 ( .A1(cor_maj_22_n26), .A2(cor_maj_22_n27), .ZN(
        cor_maj_22_n30) );
  NAND2_X1 cor_maj_22_U16 ( .A1(cor_maj_22_n30), .A2(cor_maj_22_n29), .ZN(
        cor_maj_22_n31) );
  NAND2_X1 cor_maj_22_U15 ( .A1(v_1_1_0[5]), .A2(cor_maj_22_n25), .ZN(
        cor_maj_22_n18) );
  NAND2_X1 cor_maj_22_U14 ( .A1(v_1_1_0[3]), .A2(v_1_1_0[4]), .ZN(
        cor_maj_22_n19) );
  NAND2_X1 cor_maj_22_U13 ( .A1(cor_maj_22_n19), .A2(cor_maj_22_n18), .ZN(
        cor_maj_22_n22) );
  NAND2_X1 cor_maj_22_U12 ( .A1(v_1_1_0[2]), .A2(cor_maj_22_n24), .ZN(
        cor_maj_22_n20) );
  NAND2_X1 cor_maj_22_U11 ( .A1(v_1_1_0[0]), .A2(v_1_1_0[1]), .ZN(
        cor_maj_22_n21) );
  NAND2_X1 cor_maj_22_U10 ( .A1(cor_maj_22_n21), .A2(cor_maj_22_n20), .ZN(
        cor_maj_22_n23) );
  XOR2_X1 cor_maj_22_U9 ( .A(v_1_1_0[2]), .B(cor_maj_22_n24), .Z(
        cor_maj_22_n26) );
  XOR2_X1 cor_maj_22_U8 ( .A(v_1_1_0[5]), .B(cor_maj_22_n25), .Z(
        cor_maj_22_n27) );
  XOR2_X1 cor_maj_22_U7 ( .A(v_1_1_0[0]), .B(v_1_1_0[1]), .Z(cor_maj_22_n24)
         );
  XOR2_X1 cor_maj_22_U6 ( .A(v_1_1_0[3]), .B(v_1_1_0[4]), .Z(cor_maj_22_n25)
         );
  OR2_X1 cor_maj_22_U5 ( .A1(cor_maj_22_n23), .A2(cor_maj_22_n22), .ZN(
        cor_maj_22_n32) );
  NAND2_X1 cor_maj_22_U4 ( .A1(cor_maj_22_n22), .A2(cor_maj_22_n23), .ZN(
        cor_maj_22_n34) );
  NAND2_X1 cor_maj_22_U3 ( .A1(cor_maj_22_n32), .A2(cor_maj_22_n31), .ZN(
        cor_maj_22_n33) );
  NAND2_X1 cor_maj_22_U2 ( .A1(cor_maj_22_n34), .A2(cor_maj_22_n33), .ZN(
        cor_maj_22_port_o) );
  OR2_X1 cor_maj_23_U19 ( .A1(cor_maj_23_n27), .A2(cor_maj_23_n26), .ZN(
        cor_maj_23_n28) );
  NAND2_X1 cor_maj_23_U18 ( .A1(v_1_1_0[6]), .A2(cor_maj_23_n28), .ZN(
        cor_maj_23_n29) );
  NAND2_X1 cor_maj_23_U17 ( .A1(cor_maj_23_n26), .A2(cor_maj_23_n27), .ZN(
        cor_maj_23_n30) );
  NAND2_X1 cor_maj_23_U16 ( .A1(cor_maj_23_n30), .A2(cor_maj_23_n29), .ZN(
        cor_maj_23_n31) );
  NAND2_X1 cor_maj_23_U15 ( .A1(v_1_1_0[5]), .A2(cor_maj_23_n25), .ZN(
        cor_maj_23_n18) );
  NAND2_X1 cor_maj_23_U14 ( .A1(v_1_1_0[3]), .A2(v_1_1_0[4]), .ZN(
        cor_maj_23_n19) );
  NAND2_X1 cor_maj_23_U13 ( .A1(cor_maj_23_n19), .A2(cor_maj_23_n18), .ZN(
        cor_maj_23_n22) );
  NAND2_X1 cor_maj_23_U12 ( .A1(v_1_1_0[2]), .A2(cor_maj_23_n24), .ZN(
        cor_maj_23_n20) );
  NAND2_X1 cor_maj_23_U11 ( .A1(v_1_1_0[0]), .A2(v_1_1_0[1]), .ZN(
        cor_maj_23_n21) );
  NAND2_X1 cor_maj_23_U10 ( .A1(cor_maj_23_n21), .A2(cor_maj_23_n20), .ZN(
        cor_maj_23_n23) );
  XOR2_X1 cor_maj_23_U9 ( .A(v_1_1_0[2]), .B(cor_maj_23_n24), .Z(
        cor_maj_23_n26) );
  XOR2_X1 cor_maj_23_U8 ( .A(v_1_1_0[5]), .B(cor_maj_23_n25), .Z(
        cor_maj_23_n27) );
  XOR2_X1 cor_maj_23_U7 ( .A(v_1_1_0[0]), .B(v_1_1_0[1]), .Z(cor_maj_23_n24)
         );
  XOR2_X1 cor_maj_23_U6 ( .A(v_1_1_0[3]), .B(v_1_1_0[4]), .Z(cor_maj_23_n25)
         );
  OR2_X1 cor_maj_23_U5 ( .A1(cor_maj_23_n23), .A2(cor_maj_23_n22), .ZN(
        cor_maj_23_n32) );
  NAND2_X1 cor_maj_23_U4 ( .A1(cor_maj_23_n22), .A2(cor_maj_23_n23), .ZN(
        cor_maj_23_n34) );
  NAND2_X1 cor_maj_23_U3 ( .A1(cor_maj_23_n32), .A2(cor_maj_23_n31), .ZN(
        cor_maj_23_n33) );
  NAND2_X1 cor_maj_23_U2 ( .A1(cor_maj_23_n34), .A2(cor_maj_23_n33), .ZN(
        cor_maj_23_port_o) );
  OR2_X1 cor_maj_24_U19 ( .A1(cor_maj_24_n27), .A2(cor_maj_24_n26), .ZN(
        cor_maj_24_n28) );
  NAND2_X1 cor_maj_24_U18 ( .A1(v_1_1_0[6]), .A2(cor_maj_24_n28), .ZN(
        cor_maj_24_n29) );
  NAND2_X1 cor_maj_24_U17 ( .A1(cor_maj_24_n26), .A2(cor_maj_24_n27), .ZN(
        cor_maj_24_n30) );
  NAND2_X1 cor_maj_24_U16 ( .A1(cor_maj_24_n30), .A2(cor_maj_24_n29), .ZN(
        cor_maj_24_n31) );
  NAND2_X1 cor_maj_24_U15 ( .A1(v_1_1_0[5]), .A2(cor_maj_24_n25), .ZN(
        cor_maj_24_n18) );
  NAND2_X1 cor_maj_24_U14 ( .A1(v_1_1_0[3]), .A2(v_1_1_0[4]), .ZN(
        cor_maj_24_n19) );
  NAND2_X1 cor_maj_24_U13 ( .A1(cor_maj_24_n19), .A2(cor_maj_24_n18), .ZN(
        cor_maj_24_n22) );
  NAND2_X1 cor_maj_24_U12 ( .A1(v_1_1_0[2]), .A2(cor_maj_24_n24), .ZN(
        cor_maj_24_n20) );
  NAND2_X1 cor_maj_24_U11 ( .A1(v_1_1_0[0]), .A2(v_1_1_0[1]), .ZN(
        cor_maj_24_n21) );
  NAND2_X1 cor_maj_24_U10 ( .A1(cor_maj_24_n21), .A2(cor_maj_24_n20), .ZN(
        cor_maj_24_n23) );
  XOR2_X1 cor_maj_24_U9 ( .A(v_1_1_0[2]), .B(cor_maj_24_n24), .Z(
        cor_maj_24_n26) );
  XOR2_X1 cor_maj_24_U8 ( .A(v_1_1_0[5]), .B(cor_maj_24_n25), .Z(
        cor_maj_24_n27) );
  XOR2_X1 cor_maj_24_U7 ( .A(v_1_1_0[0]), .B(v_1_1_0[1]), .Z(cor_maj_24_n24)
         );
  XOR2_X1 cor_maj_24_U6 ( .A(v_1_1_0[3]), .B(v_1_1_0[4]), .Z(cor_maj_24_n25)
         );
  OR2_X1 cor_maj_24_U5 ( .A1(cor_maj_24_n23), .A2(cor_maj_24_n22), .ZN(
        cor_maj_24_n32) );
  NAND2_X1 cor_maj_24_U4 ( .A1(cor_maj_24_n22), .A2(cor_maj_24_n23), .ZN(
        cor_maj_24_n34) );
  NAND2_X1 cor_maj_24_U3 ( .A1(cor_maj_24_n32), .A2(cor_maj_24_n31), .ZN(
        cor_maj_24_n33) );
  NAND2_X1 cor_maj_24_U2 ( .A1(cor_maj_24_n34), .A2(cor_maj_24_n33), .ZN(
        cor_maj_24_port_o) );
  OR2_X1 cor_maj_25_U19 ( .A1(cor_maj_25_n27), .A2(cor_maj_25_n26), .ZN(
        cor_maj_25_n28) );
  NAND2_X1 cor_maj_25_U18 ( .A1(v_1_1_0[6]), .A2(cor_maj_25_n28), .ZN(
        cor_maj_25_n29) );
  NAND2_X1 cor_maj_25_U17 ( .A1(cor_maj_25_n26), .A2(cor_maj_25_n27), .ZN(
        cor_maj_25_n30) );
  NAND2_X1 cor_maj_25_U16 ( .A1(cor_maj_25_n30), .A2(cor_maj_25_n29), .ZN(
        cor_maj_25_n31) );
  NAND2_X1 cor_maj_25_U15 ( .A1(v_1_1_0[5]), .A2(cor_maj_25_n25), .ZN(
        cor_maj_25_n18) );
  NAND2_X1 cor_maj_25_U14 ( .A1(v_1_1_0[3]), .A2(v_1_1_0[4]), .ZN(
        cor_maj_25_n19) );
  NAND2_X1 cor_maj_25_U13 ( .A1(cor_maj_25_n19), .A2(cor_maj_25_n18), .ZN(
        cor_maj_25_n22) );
  NAND2_X1 cor_maj_25_U12 ( .A1(v_1_1_0[2]), .A2(cor_maj_25_n24), .ZN(
        cor_maj_25_n20) );
  NAND2_X1 cor_maj_25_U11 ( .A1(v_1_1_0[0]), .A2(v_1_1_0[1]), .ZN(
        cor_maj_25_n21) );
  NAND2_X1 cor_maj_25_U10 ( .A1(cor_maj_25_n21), .A2(cor_maj_25_n20), .ZN(
        cor_maj_25_n23) );
  XOR2_X1 cor_maj_25_U9 ( .A(v_1_1_0[2]), .B(cor_maj_25_n24), .Z(
        cor_maj_25_n26) );
  XOR2_X1 cor_maj_25_U8 ( .A(v_1_1_0[5]), .B(cor_maj_25_n25), .Z(
        cor_maj_25_n27) );
  XOR2_X1 cor_maj_25_U7 ( .A(v_1_1_0[0]), .B(v_1_1_0[1]), .Z(cor_maj_25_n24)
         );
  XOR2_X1 cor_maj_25_U6 ( .A(v_1_1_0[3]), .B(v_1_1_0[4]), .Z(cor_maj_25_n25)
         );
  OR2_X1 cor_maj_25_U5 ( .A1(cor_maj_25_n23), .A2(cor_maj_25_n22), .ZN(
        cor_maj_25_n32) );
  NAND2_X1 cor_maj_25_U4 ( .A1(cor_maj_25_n22), .A2(cor_maj_25_n23), .ZN(
        cor_maj_25_n34) );
  NAND2_X1 cor_maj_25_U3 ( .A1(cor_maj_25_n32), .A2(cor_maj_25_n31), .ZN(
        cor_maj_25_n33) );
  NAND2_X1 cor_maj_25_U2 ( .A1(cor_maj_25_n34), .A2(cor_maj_25_n33), .ZN(
        cor_maj_25_port_o) );
  OR2_X1 cor_maj_26_U19 ( .A1(cor_maj_26_n27), .A2(cor_maj_26_n26), .ZN(
        cor_maj_26_n28) );
  NAND2_X1 cor_maj_26_U18 ( .A1(v_1_1_0[6]), .A2(cor_maj_26_n28), .ZN(
        cor_maj_26_n29) );
  NAND2_X1 cor_maj_26_U17 ( .A1(cor_maj_26_n26), .A2(cor_maj_26_n27), .ZN(
        cor_maj_26_n30) );
  NAND2_X1 cor_maj_26_U16 ( .A1(cor_maj_26_n30), .A2(cor_maj_26_n29), .ZN(
        cor_maj_26_n31) );
  NAND2_X1 cor_maj_26_U15 ( .A1(v_1_1_0[5]), .A2(cor_maj_26_n25), .ZN(
        cor_maj_26_n18) );
  NAND2_X1 cor_maj_26_U14 ( .A1(v_1_1_0[3]), .A2(v_1_1_0[4]), .ZN(
        cor_maj_26_n19) );
  NAND2_X1 cor_maj_26_U13 ( .A1(cor_maj_26_n19), .A2(cor_maj_26_n18), .ZN(
        cor_maj_26_n22) );
  NAND2_X1 cor_maj_26_U12 ( .A1(v_1_1_0[2]), .A2(cor_maj_26_n24), .ZN(
        cor_maj_26_n20) );
  NAND2_X1 cor_maj_26_U11 ( .A1(v_1_1_0[0]), .A2(v_1_1_0[1]), .ZN(
        cor_maj_26_n21) );
  NAND2_X1 cor_maj_26_U10 ( .A1(cor_maj_26_n21), .A2(cor_maj_26_n20), .ZN(
        cor_maj_26_n23) );
  XOR2_X1 cor_maj_26_U9 ( .A(v_1_1_0[2]), .B(cor_maj_26_n24), .Z(
        cor_maj_26_n26) );
  XOR2_X1 cor_maj_26_U8 ( .A(v_1_1_0[5]), .B(cor_maj_26_n25), .Z(
        cor_maj_26_n27) );
  XOR2_X1 cor_maj_26_U7 ( .A(v_1_1_0[0]), .B(v_1_1_0[1]), .Z(cor_maj_26_n24)
         );
  XOR2_X1 cor_maj_26_U6 ( .A(v_1_1_0[3]), .B(v_1_1_0[4]), .Z(cor_maj_26_n25)
         );
  OR2_X1 cor_maj_26_U5 ( .A1(cor_maj_26_n23), .A2(cor_maj_26_n22), .ZN(
        cor_maj_26_n32) );
  NAND2_X1 cor_maj_26_U4 ( .A1(cor_maj_26_n22), .A2(cor_maj_26_n23), .ZN(
        cor_maj_26_n34) );
  NAND2_X1 cor_maj_26_U3 ( .A1(cor_maj_26_n32), .A2(cor_maj_26_n31), .ZN(
        cor_maj_26_n33) );
  NAND2_X1 cor_maj_26_U2 ( .A1(cor_maj_26_n34), .A2(cor_maj_26_n33), .ZN(
        cor_maj_26_port_o) );
  OR2_X1 cor_maj_27_U19 ( .A1(cor_maj_27_n27), .A2(cor_maj_27_n26), .ZN(
        cor_maj_27_n28) );
  NAND2_X1 cor_maj_27_U18 ( .A1(v_1_1_0[6]), .A2(cor_maj_27_n28), .ZN(
        cor_maj_27_n29) );
  NAND2_X1 cor_maj_27_U17 ( .A1(cor_maj_27_n26), .A2(cor_maj_27_n27), .ZN(
        cor_maj_27_n30) );
  NAND2_X1 cor_maj_27_U16 ( .A1(cor_maj_27_n30), .A2(cor_maj_27_n29), .ZN(
        cor_maj_27_n31) );
  NAND2_X1 cor_maj_27_U15 ( .A1(v_1_1_0[5]), .A2(cor_maj_27_n25), .ZN(
        cor_maj_27_n18) );
  NAND2_X1 cor_maj_27_U14 ( .A1(v_1_1_0[3]), .A2(v_1_1_0[4]), .ZN(
        cor_maj_27_n19) );
  NAND2_X1 cor_maj_27_U13 ( .A1(cor_maj_27_n19), .A2(cor_maj_27_n18), .ZN(
        cor_maj_27_n22) );
  NAND2_X1 cor_maj_27_U12 ( .A1(v_1_1_0[2]), .A2(cor_maj_27_n24), .ZN(
        cor_maj_27_n20) );
  NAND2_X1 cor_maj_27_U11 ( .A1(v_1_1_0[0]), .A2(v_1_1_0[1]), .ZN(
        cor_maj_27_n21) );
  NAND2_X1 cor_maj_27_U10 ( .A1(cor_maj_27_n21), .A2(cor_maj_27_n20), .ZN(
        cor_maj_27_n23) );
  XOR2_X1 cor_maj_27_U9 ( .A(v_1_1_0[2]), .B(cor_maj_27_n24), .Z(
        cor_maj_27_n26) );
  XOR2_X1 cor_maj_27_U8 ( .A(v_1_1_0[5]), .B(cor_maj_27_n25), .Z(
        cor_maj_27_n27) );
  XOR2_X1 cor_maj_27_U7 ( .A(v_1_1_0[0]), .B(v_1_1_0[1]), .Z(cor_maj_27_n24)
         );
  XOR2_X1 cor_maj_27_U6 ( .A(v_1_1_0[3]), .B(v_1_1_0[4]), .Z(cor_maj_27_n25)
         );
  OR2_X1 cor_maj_27_U5 ( .A1(cor_maj_27_n23), .A2(cor_maj_27_n22), .ZN(
        cor_maj_27_n32) );
  NAND2_X1 cor_maj_27_U4 ( .A1(cor_maj_27_n22), .A2(cor_maj_27_n23), .ZN(
        cor_maj_27_n34) );
  NAND2_X1 cor_maj_27_U3 ( .A1(cor_maj_27_n32), .A2(cor_maj_27_n31), .ZN(
        cor_maj_27_n33) );
  NAND2_X1 cor_maj_27_U2 ( .A1(cor_maj_27_n34), .A2(cor_maj_27_n33), .ZN(
        cor_maj_27_port_o) );
  XOR2_X1 simpleXor_14_U1 ( .A(n_zz_io_c_0_2_1_), .B(u_0_1[0]), .Z(
        simpleXor_14_port_z) );
  XOR2_X1 simpleXor_15_U1 ( .A(n_zz_io_c_1_2_1_), .B(u_1_0[0]), .Z(
        simpleXor_15_port_z) );
  XOR2_X1 simpleXor_16_U1 ( .A(n_zz_io_c_0_5_1_), .B(u_0_1[1]), .Z(
        simpleXor_16_port_z) );
  XOR2_X1 simpleXor_17_U1 ( .A(n_zz_io_c_1_5_1_), .B(u_1_0[1]), .Z(
        simpleXor_17_port_z) );
  XOR2_X1 simpleXor_18_U1 ( .A(n_zz_io_c_0_8_1_), .B(u_0_1[2]), .Z(
        simpleXor_18_port_z) );
  XOR2_X1 simpleXor_19_U1 ( .A(n_zz_io_c_1_8_1_), .B(u_1_0[2]), .Z(
        simpleXor_19_port_z) );
  XOR2_X1 simpleXor_20_U1 ( .A(n_zz_io_c_0_11_1_), .B(u_0_1[3]), .Z(
        simpleXor_20_port_z) );
  XOR2_X1 simpleXor_21_U1 ( .A(n_zz_io_c_1_11_1_), .B(u_1_0[3]), .Z(
        simpleXor_21_port_z) );
  XOR2_X1 simpleXor_22_U1 ( .A(n_zz_io_c_0_14_1_), .B(u_0_1[4]), .Z(
        simpleXor_22_port_z) );
  XOR2_X1 simpleXor_23_U1 ( .A(n_zz_io_c_1_14_1_), .B(u_1_0[4]), .Z(
        simpleXor_23_port_z) );
  XOR2_X1 simpleXor_24_U1 ( .A(n_zz_io_c_0_17_1_), .B(u_0_1[5]), .Z(
        simpleXor_24_port_z) );
  XOR2_X1 simpleXor_25_U1 ( .A(n_zz_io_c_1_17_1_), .B(u_1_0[5]), .Z(
        simpleXor_25_port_z) );
  XOR2_X1 simpleXor_26_U1 ( .A(n_zz_io_c_0_20_1_), .B(u_0_1[6]), .Z(
        simpleXor_26_port_z) );
  XOR2_X1 simpleXor_27_U1 ( .A(n_zz_io_c_1_20_1_), .B(u_1_0[6]), .Z(
        simpleXor_27_port_z) );
endmodule

