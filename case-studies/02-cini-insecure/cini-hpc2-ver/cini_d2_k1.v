
module CINI ( io_a_0, io_a_1, io_a_2, io_b_0, io_b_1, io_b_2, io_c_0, io_c_1, 
        io_c_2, io_rand, clk, reset );
  input [2:0] io_a_0;
  input [2:0] io_a_1;
  input [2:0] io_a_2;
  input [2:0] io_b_0;
  input [2:0] io_b_1;
  input [2:0] io_b_2;
  output [2:0] io_c_0;
  output [2:0] io_c_1;
  output [2:0] io_c_2;
  input [2:0] io_rand;
  input clk, reset;
  wire   simpleNot_18_port_z, simpleNot_19_port_z, simpleNot_20_port_z,
         simpleNot_21_port_z, simpleNot_22_port_z, simpleNot_23_port_z,
         simpleNot_24_port_z, simpleNot_25_port_z, simpleNot_26_port_z,
         simpleNot_27_port_z, simpleNot_28_port_z, simpleNot_29_port_z,
         simpleNot_30_port_z, simpleNot_31_port_z, simpleNot_32_port_z,
         simpleNot_33_port_z, simpleNot_34_port_z, simpleNot_35_port_z,
         simpleXor_18_port_z, simpleXor_19_port_z, simpleXor_20_port_z,
         simpleXor_21_port_z, simpleXor_22_port_z, simpleXor_23_port_z,
         simpleXor_24_port_z, simpleXor_25_port_z, simpleXor_26_port_z,
         simpleXor_27_port_z, simpleXor_28_port_z, simpleXor_29_port_z,
         simpleXor_30_port_z, simpleXor_31_port_z, simpleXor_32_port_z,
         simpleXor_33_port_z, simpleXor_34_port_z, simpleXor_35_port_z,
         n_zz_io_c_0_0_, n_zz_io_c_1_0_, n_zz_io_c_2_0_, n_zz_io_c_0_4_0_,
         n_zz_io_c_1_4_0_, n_zz_io_c_2_4_0_, n_zz_io_c_0_8_0_,
         n_zz_io_c_1_8_0_, n_zz_io_c_2_8_0_, N0, N1, N2, N3, N4, N5, N6, N7,
         N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, N41, N42, N43, N44, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, cor_maj_35_port_o, cor_maj_34_port_o, cor_maj_33_port_o,
         cor_maj_32_port_o, cor_maj_31_port_o, cor_maj_30_port_o,
         cor_maj_29_port_o, cor_maj_28_port_o, cor_maj_27_port_o,
         cor_maj_26_port_o, cor_maj_25_port_o, cor_maj_24_port_o,
         cor_maj_23_port_o, cor_maj_22_port_o, cor_maj_21_port_o,
         cor_maj_20_port_o, cor_maj_19_port_o, cor_maj_18_port_o,
         cor_maj_18_n3, cor_maj_18_n2, cor_maj_18_n1, cor_maj_19_n6,
         cor_maj_19_n5, cor_maj_19_n4, cor_maj_20_n6, cor_maj_20_n5,
         cor_maj_20_n4, cor_maj_21_n6, cor_maj_21_n5, cor_maj_21_n4,
         cor_maj_22_n6, cor_maj_22_n5, cor_maj_22_n4, cor_maj_23_n6,
         cor_maj_23_n5, cor_maj_23_n4, cor_maj_24_n6, cor_maj_24_n5,
         cor_maj_24_n4, cor_maj_25_n6, cor_maj_25_n5, cor_maj_25_n4,
         cor_maj_26_n6, cor_maj_26_n5, cor_maj_26_n4, cor_maj_27_n6,
         cor_maj_27_n5, cor_maj_27_n4, cor_maj_28_n6, cor_maj_28_n5,
         cor_maj_28_n4, cor_maj_29_n6, cor_maj_29_n5, cor_maj_29_n4,
         cor_maj_30_n6, cor_maj_30_n5, cor_maj_30_n4, cor_maj_31_n6,
         cor_maj_31_n5, cor_maj_31_n4, cor_maj_32_n6, cor_maj_32_n5,
         cor_maj_32_n4, cor_maj_33_n6, cor_maj_33_n5, cor_maj_33_n4,
         cor_maj_34_n6, cor_maj_34_n5, cor_maj_34_n4, cor_maj_35_n6,
         cor_maj_35_n5, cor_maj_35_n4;
  wire   [2:0] v_1_0_1;
  wire   [2:0] v_1_0_2;
  wire   [2:0] v_1_1_0;
  wire   [2:0] v_1_1_2;
  wire   [2:0] v_1_2_0;
  wire   [2:0] v_1_2_1;
  wire   [2:0] cor_port_v_0_1;
  wire   [2:0] cor_port_v_0_2;
  wire   [2:0] cor_port_v_1_0;
  wire   [2:0] cor_port_v_1_2;
  wire   [2:0] cor_port_v_2_0;
  wire   [2:0] cor_port_v_2_1;
  wire   [2:1] n_zz_io_c_0_3;
  wire   [2:0] u_0_1;
  wire   [2:0] u_0_2;
  wire   [2:1] n_zz_io_c_1_3;
  wire   [2:0] u_1_0;
  wire   [2:0] u_1_2;
  wire   [2:1] n_zz_io_c_2_3;
  wire   [2:0] u_2_0;
  wire   [2:0] u_2_1;
  wire   [2:1] n_zz_io_c_0_7;
  wire   [2:1] n_zz_io_c_1_7;
  wire   [2:1] n_zz_io_c_2_7;
  wire   [2:1] n_zz_io_c_0_11;
  wire   [2:1] n_zz_io_c_1_11;
  wire   [2:1] n_zz_io_c_2_11;
  wire   [2:0] rand_reg_0;
  wire   [2:0] rand_reg_1;
  wire   [2:0] rand_reg_3;
  wire   [2:0] rand_reg_2;
  wire   [2:0] rand_reg_4;
  wire   [2:0] rand_reg_5;
  wire   [2:0] b_reg_0;
  wire   [2:0] b_reg_1;
  wire   [2:0] b_reg_2;

  DFF_X1 rand_reg_2_reg_2_ ( .D(io_rand[2]), .CK(clk), .Q(rand_reg_2[2]), 
        .QN() );
  DFF_X1 rand_reg_2_reg_1_ ( .D(io_rand[2]), .CK(clk), .Q(rand_reg_2[1]), 
        .QN() );
  DFF_X1 rand_reg_2_reg_0_ ( .D(io_rand[2]), .CK(clk), .Q(rand_reg_2[0]), 
        .QN() );
  DFF_X1 b_reg_1_reg_2_ ( .D(io_b_1[2]), .CK(clk), .Q(b_reg_1[2]), .QN() );
  DFF_X1 b_reg_1_reg_1_ ( .D(io_b_1[1]), .CK(clk), .Q(b_reg_1[1]), .QN() );
  DFF_X1 b_reg_1_reg_0_ ( .D(io_b_1[0]), .CK(clk), .Q(b_reg_1[0]), .QN() );
  DFF_X1 b_reg_2_reg_2_ ( .D(io_b_2[2]), .CK(clk), .Q(b_reg_2[2]), .QN() );
  DFF_X1 b_reg_2_reg_1_ ( .D(io_b_2[1]), .CK(clk), .Q(b_reg_2[1]), .QN() );
  DFF_X1 b_reg_2_reg_0_ ( .D(io_b_2[0]), .CK(clk), .Q(b_reg_2[0]), .QN() );
  DFF_X1 u_zz_io_c_2_11_reg_2_ ( .D(N44), .CK(clk), .Q(n_zz_io_c_2_11[2]), 
        .QN() );
  DFF_X1 u_zz_io_c_2_11_reg_1_ ( .D(N43), .CK(clk), .Q(n_zz_io_c_2_11[1]), 
        .QN() );
  DFF_X1 u_zz_io_c_2_11_reg_0_ ( .D(N42), .CK(clk), .Q(n_zz_io_c_2_8_0_), 
        .QN() );
  DFF_X1 b_reg_0_reg_2_ ( .D(io_b_0[2]), .CK(clk), .Q(b_reg_0[2]), .QN() );
  DFF_X1 b_reg_0_reg_1_ ( .D(io_b_0[1]), .CK(clk), .Q(b_reg_0[1]), .QN() );
  DFF_X1 b_reg_0_reg_0_ ( .D(io_b_0[0]), .CK(clk), .Q(b_reg_0[0]), .QN() );
  DFF_X1 u_zz_io_c_1_11_reg_2_ ( .D(N41), .CK(clk), .Q(n_zz_io_c_1_11[2]), 
        .QN() );
  DFF_X1 u_zz_io_c_1_11_reg_1_ ( .D(N40), .CK(clk), .Q(n_zz_io_c_1_11[1]), 
        .QN() );
  DFF_X1 u_zz_io_c_1_11_reg_0_ ( .D(N39), .CK(clk), .Q(n_zz_io_c_1_8_0_), 
        .QN() );
  DFF_X1 u_zz_io_c_0_11_reg_2_ ( .D(N38), .CK(clk), .Q(n_zz_io_c_0_11[2]), 
        .QN() );
  DFF_X1 u_zz_io_c_0_11_reg_1_ ( .D(N37), .CK(clk), .Q(n_zz_io_c_0_11[1]), 
        .QN() );
  DFF_X1 u_zz_io_c_0_11_reg_0_ ( .D(N36), .CK(clk), .Q(n_zz_io_c_0_8_0_), 
        .QN() );
  DFF_X1 u_zz_io_c_2_7_reg_2_ ( .D(N35), .CK(clk), .Q(n_zz_io_c_2_7[2]), .QN()
         );
  DFF_X1 u_zz_io_c_2_7_reg_1_ ( .D(N34), .CK(clk), .Q(n_zz_io_c_2_7[1]), .QN()
         );
  DFF_X1 u_zz_io_c_2_7_reg_0_ ( .D(N33), .CK(clk), .Q(n_zz_io_c_2_4_0_), .QN()
         );
  DFF_X1 u_zz_io_c_1_7_reg_2_ ( .D(N32), .CK(clk), .Q(n_zz_io_c_1_7[2]), .QN()
         );
  DFF_X1 u_zz_io_c_1_7_reg_1_ ( .D(N31), .CK(clk), .Q(n_zz_io_c_1_7[1]), .QN()
         );
  DFF_X1 u_zz_io_c_1_7_reg_0_ ( .D(N30), .CK(clk), .Q(n_zz_io_c_1_4_0_), .QN()
         );
  DFF_X1 u_zz_io_c_0_7_reg_2_ ( .D(N29), .CK(clk), .Q(n_zz_io_c_0_7[2]), .QN()
         );
  DFF_X1 u_zz_io_c_0_7_reg_1_ ( .D(N28), .CK(clk), .Q(n_zz_io_c_0_7[1]), .QN()
         );
  DFF_X1 u_zz_io_c_0_7_reg_0_ ( .D(N27), .CK(clk), .Q(n_zz_io_c_0_4_0_), .QN()
         );
  DFF_X1 u_zz_io_c_2_3_reg_2_ ( .D(N26), .CK(clk), .Q(n_zz_io_c_2_3[2]), .QN()
         );
  DFF_X1 u_zz_io_c_2_3_reg_1_ ( .D(N25), .CK(clk), .Q(n_zz_io_c_2_3[1]), .QN()
         );
  DFF_X1 u_zz_io_c_2_3_reg_0_ ( .D(N24), .CK(clk), .Q(n_zz_io_c_2_0_), .QN()
         );
  DFF_X1 rand_reg_5_reg_2_ ( .D(io_rand[2]), .CK(clk), .Q(rand_reg_5[2]), 
        .QN() );
  DFF_X1 u_2_1_reg_2_ ( .D(N17), .CK(clk), .Q(u_2_1[2]), .QN() );
  DFF_X1 rand_reg_5_reg_1_ ( .D(io_rand[2]), .CK(clk), .Q(rand_reg_5[1]), 
        .QN() );
  DFF_X1 u_2_1_reg_1_ ( .D(N11), .CK(clk), .Q(u_2_1[1]), .QN() );
  DFF_X1 rand_reg_5_reg_0_ ( .D(io_rand[2]), .CK(clk), .Q(rand_reg_5[0]), 
        .QN() );
  DFF_X1 u_2_1_reg_0_ ( .D(N5), .CK(clk), .Q(u_2_1[0]), .QN() );
  DFF_X1 u_zz_io_c_1_3_reg_2_ ( .D(N23), .CK(clk), .Q(n_zz_io_c_1_3[2]), .QN()
         );
  DFF_X1 u_zz_io_c_1_3_reg_1_ ( .D(N22), .CK(clk), .Q(n_zz_io_c_1_3[1]), .QN()
         );
  DFF_X1 u_zz_io_c_1_3_reg_0_ ( .D(N21), .CK(clk), .Q(n_zz_io_c_1_0_), .QN()
         );
  DFF_X1 u_zz_io_c_0_3_reg_2_ ( .D(N20), .CK(clk), .Q(n_zz_io_c_0_3[2]), .QN()
         );
  DFF_X1 u_zz_io_c_0_3_reg_1_ ( .D(N19), .CK(clk), .Q(n_zz_io_c_0_3[1]), .QN()
         );
  DFF_X1 u_zz_io_c_0_3_reg_0_ ( .D(N18), .CK(clk), .Q(n_zz_io_c_0_0_), .QN()
         );
  DFF_X1 rand_reg_0_reg_2_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[2]), 
        .QN() );
  DFF_X1 u_0_1_reg_2_ ( .D(N12), .CK(clk), .Q(u_0_1[2]), .QN() );
  DFF_X1 rand_reg_0_reg_1_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[1]), 
        .QN() );
  DFF_X1 u_0_1_reg_1_ ( .D(N6), .CK(clk), .Q(u_0_1[1]), .QN() );
  DFF_X1 rand_reg_0_reg_0_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_0[0]), 
        .QN() );
  DFF_X1 u_0_1_reg_0_ ( .D(N0), .CK(clk), .Q(u_0_1[0]), .QN() );
  DFF_X1 rand_reg_3_reg_2_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_3[2]), 
        .QN() );
  DFF_X1 u_1_0_reg_2_ ( .D(N14), .CK(clk), .Q(u_1_0[2]), .QN() );
  DFF_X1 rand_reg_3_reg_1_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_3[1]), 
        .QN() );
  DFF_X1 u_1_0_reg_1_ ( .D(N8), .CK(clk), .Q(u_1_0[1]), .QN() );
  DFF_X1 rand_reg_3_reg_0_ ( .D(io_rand[0]), .CK(clk), .Q(rand_reg_3[0]), 
        .QN() );
  DFF_X1 u_1_0_reg_0_ ( .D(N2), .CK(clk), .Q(u_1_0[0]), .QN() );
  DFF_X1 u_1_2_reg_2_ ( .D(N15), .CK(clk), .Q(u_1_2[2]), .QN() );
  DFF_X1 u_1_2_reg_1_ ( .D(N9), .CK(clk), .Q(u_1_2[1]), .QN() );
  DFF_X1 u_1_2_reg_0_ ( .D(N3), .CK(clk), .Q(u_1_2[0]), .QN() );
  DFF_X1 rand_reg_1_reg_2_ ( .D(io_rand[1]), .CK(clk), .Q(rand_reg_1[2]), 
        .QN() );
  DFF_X1 u_0_2_reg_2_ ( .D(N13), .CK(clk), .Q(u_0_2[2]), .QN() );
  DFF_X1 rand_reg_1_reg_1_ ( .D(io_rand[1]), .CK(clk), .Q(rand_reg_1[1]), 
        .QN() );
  DFF_X1 u_0_2_reg_1_ ( .D(N7), .CK(clk), .Q(u_0_2[1]), .QN() );
  DFF_X1 rand_reg_1_reg_0_ ( .D(io_rand[1]), .CK(clk), .Q(rand_reg_1[0]), 
        .QN() );
  DFF_X1 u_0_2_reg_0_ ( .D(N1), .CK(clk), .Q(u_0_2[0]), .QN() );
  DFF_X1 rand_reg_4_reg_2_ ( .D(io_rand[1]), .CK(clk), .Q(rand_reg_4[2]), 
        .QN() );
  DFF_X1 u_2_0_reg_2_ ( .D(N16), .CK(clk), .Q(u_2_0[2]), .QN() );
  DFF_X1 rand_reg_4_reg_1_ ( .D(io_rand[1]), .CK(clk), .Q(rand_reg_4[1]), 
        .QN() );
  DFF_X1 u_2_0_reg_1_ ( .D(N10), .CK(clk), .Q(u_2_0[1]), .QN() );
  DFF_X1 rand_reg_4_reg_0_ ( .D(io_rand[1]), .CK(clk), .Q(rand_reg_4[0]), 
        .QN() );
  DFF_X1 u_2_0_reg_0_ ( .D(N4), .CK(clk), .Q(u_2_0[0]), .QN() );
  XOR2_X1 U84 ( .A(io_rand[2]), .B(io_b_1[0]), .Z(v_1_2_1[0]) );
  XOR2_X1 U85 ( .A(io_rand[2]), .B(io_b_1[1]), .Z(v_1_2_1[1]) );
  XOR2_X1 U86 ( .A(io_rand[1]), .B(io_b_0[0]), .Z(v_1_2_0[0]) );
  XOR2_X1 U87 ( .A(io_rand[1]), .B(io_b_0[1]), .Z(v_1_2_0[1]) );
  XOR2_X1 U88 ( .A(io_rand[2]), .B(io_b_2[0]), .Z(v_1_1_2[0]) );
  XOR2_X1 U89 ( .A(io_rand[2]), .B(io_b_2[1]), .Z(v_1_1_2[1]) );
  XOR2_X1 U90 ( .A(io_rand[0]), .B(io_b_0[0]), .Z(v_1_1_0[0]) );
  XOR2_X1 U91 ( .A(io_rand[0]), .B(io_b_0[1]), .Z(v_1_1_0[1]) );
  XOR2_X1 U92 ( .A(io_rand[1]), .B(io_b_2[0]), .Z(v_1_0_2[0]) );
  XOR2_X1 U93 ( .A(io_rand[1]), .B(io_b_2[1]), .Z(v_1_0_2[1]) );
  XOR2_X1 U94 ( .A(io_rand[0]), .B(io_b_1[0]), .Z(v_1_0_1[0]) );
  XOR2_X1 U95 ( .A(io_rand[0]), .B(io_b_1[1]), .Z(v_1_0_1[1]) );
  AND2_X1 U96 ( .A1(b_reg_0[0]), .A2(io_a_0[0]), .ZN(N18) );
  AND2_X1 U97 ( .A1(cor_port_v_0_1[0]), .A2(io_a_0[0]), .ZN(N19) );
  AND2_X1 U98 ( .A1(b_reg_1[0]), .A2(io_a_1[0]), .ZN(N21) );
  AND2_X1 U99 ( .A1(cor_port_v_1_0[0]), .A2(io_a_1[0]), .ZN(N22) );
  AND2_X1 U100 ( .A1(b_reg_2[0]), .A2(io_a_2[0]), .ZN(N24) );
  AND2_X1 U101 ( .A1(cor_port_v_2_0[0]), .A2(io_a_2[0]), .ZN(N25) );
  AND2_X1 U102 ( .A1(b_reg_0[1]), .A2(io_a_0[1]), .ZN(N27) );
  AND2_X1 U103 ( .A1(cor_port_v_0_1[1]), .A2(io_a_0[1]), .ZN(N28) );
  AND2_X1 U104 ( .A1(b_reg_1[1]), .A2(io_a_1[1]), .ZN(N30) );
  AND2_X1 U105 ( .A1(cor_port_v_1_0[1]), .A2(io_a_1[1]), .ZN(N31) );
  AND2_X1 U106 ( .A1(b_reg_2[1]), .A2(io_a_2[1]), .ZN(N33) );
  AND2_X1 U107 ( .A1(cor_port_v_2_0[1]), .A2(io_a_2[1]), .ZN(N34) );
  AND2_X1 U108 ( .A1(b_reg_0[2]), .A2(io_a_0[2]), .ZN(N36) );
  AND2_X1 U109 ( .A1(cor_port_v_0_1[2]), .A2(io_a_0[2]), .ZN(N37) );
  AND2_X1 U110 ( .A1(b_reg_1[2]), .A2(io_a_1[2]), .ZN(N39) );
  AND2_X1 U111 ( .A1(cor_port_v_1_0[2]), .A2(io_a_1[2]), .ZN(N40) );
  AND2_X1 U112 ( .A1(b_reg_2[2]), .A2(io_a_2[2]), .ZN(N42) );
  AND2_X1 U113 ( .A1(cor_port_v_2_0[2]), .A2(io_a_2[2]), .ZN(N43) );
  AND2_X1 U114 ( .A1(simpleNot_22_port_z), .A2(rand_reg_4[0]), .ZN(N4) );
  AND2_X1 U115 ( .A1(simpleNot_28_port_z), .A2(rand_reg_4[1]), .ZN(N10) );
  AND2_X1 U116 ( .A1(simpleNot_34_port_z), .A2(rand_reg_4[2]), .ZN(N16) );
  AND2_X1 U117 ( .A1(simpleNot_19_port_z), .A2(rand_reg_1[0]), .ZN(N1) );
  AND2_X1 U118 ( .A1(simpleNot_25_port_z), .A2(rand_reg_1[1]), .ZN(N7) );
  AND2_X1 U119 ( .A1(simpleNot_31_port_z), .A2(rand_reg_1[2]), .ZN(N13) );
  AND2_X1 U120 ( .A1(simpleNot_21_port_z), .A2(rand_reg_2[0]), .ZN(N3) );
  AND2_X1 U121 ( .A1(simpleNot_27_port_z), .A2(rand_reg_2[1]), .ZN(N9) );
  AND2_X1 U122 ( .A1(simpleNot_33_port_z), .A2(rand_reg_2[2]), .ZN(N15) );
  AND2_X1 U123 ( .A1(simpleNot_20_port_z), .A2(rand_reg_3[0]), .ZN(N2) );
  AND2_X1 U124 ( .A1(simpleNot_26_port_z), .A2(rand_reg_3[1]), .ZN(N8) );
  AND2_X1 U125 ( .A1(simpleNot_32_port_z), .A2(rand_reg_3[2]), .ZN(N14) );
  AND2_X1 U126 ( .A1(simpleNot_18_port_z), .A2(rand_reg_0[0]), .ZN(N0) );
  AND2_X1 U127 ( .A1(simpleNot_24_port_z), .A2(rand_reg_0[1]), .ZN(N6) );
  AND2_X1 U128 ( .A1(simpleNot_30_port_z), .A2(rand_reg_0[2]), .ZN(N12) );
  AND2_X1 U129 ( .A1(io_a_0[0]), .A2(cor_port_v_0_2[0]), .ZN(N20) );
  AND2_X1 U130 ( .A1(io_a_1[0]), .A2(cor_port_v_1_2[0]), .ZN(N23) );
  AND2_X1 U131 ( .A1(simpleNot_23_port_z), .A2(rand_reg_5[0]), .ZN(N5) );
  AND2_X1 U132 ( .A1(simpleNot_29_port_z), .A2(rand_reg_5[1]), .ZN(N11) );
  AND2_X1 U133 ( .A1(simpleNot_35_port_z), .A2(rand_reg_5[2]), .ZN(N17) );
  AND2_X1 U134 ( .A1(io_a_2[0]), .A2(cor_port_v_2_1[0]), .ZN(N26) );
  AND2_X1 U135 ( .A1(io_a_0[1]), .A2(cor_port_v_0_2[1]), .ZN(N29) );
  AND2_X1 U136 ( .A1(io_a_1[1]), .A2(cor_port_v_1_2[1]), .ZN(N32) );
  AND2_X1 U137 ( .A1(io_a_2[1]), .A2(cor_port_v_2_1[1]), .ZN(N35) );
  AND2_X1 U138 ( .A1(io_a_0[2]), .A2(cor_port_v_0_2[2]), .ZN(N38) );
  AND2_X1 U139 ( .A1(io_a_1[2]), .A2(cor_port_v_1_2[2]), .ZN(N41) );
  AND2_X1 U140 ( .A1(io_a_2[2]), .A2(cor_port_v_2_1[2]), .ZN(N44) );
  XOR2_X1 U141 ( .A(io_rand[2]), .B(io_b_1[2]), .Z(v_1_2_1[2]) );
  XOR2_X1 U142 ( .A(io_rand[1]), .B(io_b_0[2]), .Z(v_1_2_0[2]) );
  XOR2_X1 U143 ( .A(io_rand[2]), .B(io_b_2[2]), .Z(v_1_1_2[2]) );
  XOR2_X1 U144 ( .A(io_rand[0]), .B(io_b_0[2]), .Z(v_1_1_0[2]) );
  XOR2_X1 U145 ( .A(io_rand[1]), .B(io_b_2[2]), .Z(v_1_0_2[2]) );
  XOR2_X1 U146 ( .A(io_rand[0]), .B(io_b_1[2]), .Z(v_1_0_1[2]) );
  XOR2_X1 U147 ( .A(n_zz_io_c_2_0_), .B(n3), .Z(io_c_2[0]) );
  XOR2_X1 U148 ( .A(simpleXor_23_port_z), .B(simpleXor_22_port_z), .Z(n3) );
  XOR2_X1 U149 ( .A(n_zz_io_c_2_4_0_), .B(n2), .Z(io_c_2[1]) );
  XOR2_X1 U150 ( .A(simpleXor_29_port_z), .B(simpleXor_28_port_z), .Z(n2) );
  XOR2_X1 U151 ( .A(n_zz_io_c_2_8_0_), .B(n1), .Z(io_c_2[2]) );
  XOR2_X1 U152 ( .A(simpleXor_35_port_z), .B(simpleXor_34_port_z), .Z(n1) );
  XOR2_X1 U153 ( .A(n_zz_io_c_1_0_), .B(n6), .Z(io_c_1[0]) );
  XOR2_X1 U154 ( .A(simpleXor_21_port_z), .B(simpleXor_20_port_z), .Z(n6) );
  XOR2_X1 U155 ( .A(n_zz_io_c_1_4_0_), .B(n5), .Z(io_c_1[1]) );
  XOR2_X1 U156 ( .A(simpleXor_27_port_z), .B(simpleXor_26_port_z), .Z(n5) );
  XOR2_X1 U157 ( .A(n_zz_io_c_1_8_0_), .B(n4), .Z(io_c_1[2]) );
  XOR2_X1 U158 ( .A(simpleXor_33_port_z), .B(simpleXor_32_port_z), .Z(n4) );
  XOR2_X1 U159 ( .A(n_zz_io_c_0_0_), .B(n9), .Z(io_c_0[0]) );
  XOR2_X1 U160 ( .A(simpleXor_19_port_z), .B(simpleXor_18_port_z), .Z(n9) );
  XOR2_X1 U161 ( .A(n_zz_io_c_0_4_0_), .B(n8), .Z(io_c_0[1]) );
  XOR2_X1 U162 ( .A(simpleXor_25_port_z), .B(simpleXor_24_port_z), .Z(n8) );
  XOR2_X1 U163 ( .A(n_zz_io_c_0_8_0_), .B(n7), .Z(io_c_0[2]) );
  XOR2_X1 U164 ( .A(simpleXor_31_port_z), .B(simpleXor_30_port_z), .Z(n7) );
  INV_X1 simpleNot_18_U1 ( .A(io_a_0[0]), .ZN(simpleNot_18_port_z) );
  INV_X1 simpleNot_19_U1 ( .A(io_a_0[0]), .ZN(simpleNot_19_port_z) );
  INV_X1 simpleNot_20_U1 ( .A(io_a_1[0]), .ZN(simpleNot_20_port_z) );
  INV_X1 simpleNot_21_U1 ( .A(io_a_1[0]), .ZN(simpleNot_21_port_z) );
  INV_X1 simpleNot_22_U1 ( .A(io_a_2[0]), .ZN(simpleNot_22_port_z) );
  INV_X1 simpleNot_23_U1 ( .A(io_a_2[0]), .ZN(simpleNot_23_port_z) );
  INV_X1 simpleNot_24_U1 ( .A(io_a_0[1]), .ZN(simpleNot_24_port_z) );
  INV_X1 simpleNot_25_U1 ( .A(io_a_0[1]), .ZN(simpleNot_25_port_z) );
  INV_X1 simpleNot_26_U1 ( .A(io_a_1[1]), .ZN(simpleNot_26_port_z) );
  INV_X1 simpleNot_27_U1 ( .A(io_a_1[1]), .ZN(simpleNot_27_port_z) );
  INV_X1 simpleNot_28_U1 ( .A(io_a_2[1]), .ZN(simpleNot_28_port_z) );
  INV_X1 simpleNot_29_U1 ( .A(io_a_2[1]), .ZN(simpleNot_29_port_z) );
  INV_X1 simpleNot_30_U1 ( .A(io_a_0[2]), .ZN(simpleNot_30_port_z) );
  INV_X1 simpleNot_31_U1 ( .A(io_a_0[2]), .ZN(simpleNot_31_port_z) );
  INV_X1 simpleNot_32_U1 ( .A(io_a_1[2]), .ZN(simpleNot_32_port_z) );
  INV_X1 simpleNot_33_U1 ( .A(io_a_1[2]), .ZN(simpleNot_33_port_z) );
  INV_X1 simpleNot_34_U1 ( .A(io_a_2[2]), .ZN(simpleNot_34_port_z) );
  INV_X1 simpleNot_35_U1 ( .A(io_a_2[2]), .ZN(simpleNot_35_port_z) );
  DFF_X1 cor_m_2_1_reg_0_ ( .D(cor_maj_33_port_o), .CK(clk), .Q(
        cor_port_v_2_1[0]), .QN() );
  DFF_X1 cor_m_2_1_reg_1_ ( .D(cor_maj_34_port_o), .CK(clk), .Q(
        cor_port_v_2_1[1]), .QN() );
  DFF_X1 cor_m_2_1_reg_2_ ( .D(cor_maj_35_port_o), .CK(clk), .Q(
        cor_port_v_2_1[2]), .QN() );
  DFF_X1 cor_m_2_0_reg_0_ ( .D(cor_maj_30_port_o), .CK(clk), .Q(
        cor_port_v_2_0[0]), .QN() );
  DFF_X1 cor_m_2_0_reg_1_ ( .D(cor_maj_31_port_o), .CK(clk), .Q(
        cor_port_v_2_0[1]), .QN() );
  DFF_X1 cor_m_2_0_reg_2_ ( .D(cor_maj_32_port_o), .CK(clk), .Q(
        cor_port_v_2_0[2]), .QN() );
  DFF_X1 cor_m_1_2_reg_0_ ( .D(cor_maj_27_port_o), .CK(clk), .Q(
        cor_port_v_1_2[0]), .QN() );
  DFF_X1 cor_m_1_2_reg_1_ ( .D(cor_maj_28_port_o), .CK(clk), .Q(
        cor_port_v_1_2[1]), .QN() );
  DFF_X1 cor_m_1_2_reg_2_ ( .D(cor_maj_29_port_o), .CK(clk), .Q(
        cor_port_v_1_2[2]), .QN() );
  DFF_X1 cor_m_1_0_reg_0_ ( .D(cor_maj_24_port_o), .CK(clk), .Q(
        cor_port_v_1_0[0]), .QN() );
  DFF_X1 cor_m_1_0_reg_1_ ( .D(cor_maj_25_port_o), .CK(clk), .Q(
        cor_port_v_1_0[1]), .QN() );
  DFF_X1 cor_m_1_0_reg_2_ ( .D(cor_maj_26_port_o), .CK(clk), .Q(
        cor_port_v_1_0[2]), .QN() );
  DFF_X1 cor_m_0_2_reg_0_ ( .D(cor_maj_21_port_o), .CK(clk), .Q(
        cor_port_v_0_2[0]), .QN() );
  DFF_X1 cor_m_0_2_reg_1_ ( .D(cor_maj_22_port_o), .CK(clk), .Q(
        cor_port_v_0_2[1]), .QN() );
  DFF_X1 cor_m_0_2_reg_2_ ( .D(cor_maj_23_port_o), .CK(clk), .Q(
        cor_port_v_0_2[2]), .QN() );
  DFF_X1 cor_m_0_1_reg_0_ ( .D(cor_maj_18_port_o), .CK(clk), .Q(
        cor_port_v_0_1[0]), .QN() );
  DFF_X1 cor_m_0_1_reg_1_ ( .D(cor_maj_19_port_o), .CK(clk), .Q(
        cor_port_v_0_1[1]), .QN() );
  DFF_X1 cor_m_0_1_reg_2_ ( .D(cor_maj_20_port_o), .CK(clk), .Q(
        cor_port_v_0_1[2]), .QN() );
  OR2_X1 cor_maj_18_U4 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_18_n3)
         );
  NAND2_X1 cor_maj_18_U3 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_18_n1) );
  NAND2_X1 cor_maj_18_U2 ( .A1(v_1_0_1[2]), .A2(cor_maj_18_n3), .ZN(
        cor_maj_18_n2) );
  NAND2_X1 cor_maj_18_U1 ( .A1(cor_maj_18_n1), .A2(cor_maj_18_n2), .ZN(
        cor_maj_18_port_o) );
  OR2_X1 cor_maj_19_U4 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_19_n4)
         );
  NAND2_X1 cor_maj_19_U3 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_19_n6) );
  NAND2_X1 cor_maj_19_U2 ( .A1(v_1_0_1[2]), .A2(cor_maj_19_n4), .ZN(
        cor_maj_19_n5) );
  NAND2_X1 cor_maj_19_U1 ( .A1(cor_maj_19_n6), .A2(cor_maj_19_n5), .ZN(
        cor_maj_19_port_o) );
  OR2_X1 cor_maj_20_U4 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_20_n4)
         );
  NAND2_X1 cor_maj_20_U3 ( .A1(v_1_0_1[1]), .A2(v_1_0_1[0]), .ZN(cor_maj_20_n6) );
  NAND2_X1 cor_maj_20_U2 ( .A1(v_1_0_1[2]), .A2(cor_maj_20_n4), .ZN(
        cor_maj_20_n5) );
  NAND2_X1 cor_maj_20_U1 ( .A1(cor_maj_20_n6), .A2(cor_maj_20_n5), .ZN(
        cor_maj_20_port_o) );
  OR2_X1 cor_maj_21_U4 ( .A1(v_1_0_2[1]), .A2(v_1_0_2[0]), .ZN(cor_maj_21_n4)
         );
  NAND2_X1 cor_maj_21_U3 ( .A1(v_1_0_2[1]), .A2(v_1_0_2[0]), .ZN(cor_maj_21_n6) );
  NAND2_X1 cor_maj_21_U2 ( .A1(v_1_0_2[2]), .A2(cor_maj_21_n4), .ZN(
        cor_maj_21_n5) );
  NAND2_X1 cor_maj_21_U1 ( .A1(cor_maj_21_n6), .A2(cor_maj_21_n5), .ZN(
        cor_maj_21_port_o) );
  OR2_X1 cor_maj_22_U4 ( .A1(v_1_0_2[1]), .A2(v_1_0_2[0]), .ZN(cor_maj_22_n4)
         );
  NAND2_X1 cor_maj_22_U3 ( .A1(v_1_0_2[1]), .A2(v_1_0_2[0]), .ZN(cor_maj_22_n6) );
  NAND2_X1 cor_maj_22_U2 ( .A1(v_1_0_2[2]), .A2(cor_maj_22_n4), .ZN(
        cor_maj_22_n5) );
  NAND2_X1 cor_maj_22_U1 ( .A1(cor_maj_22_n6), .A2(cor_maj_22_n5), .ZN(
        cor_maj_22_port_o) );
  OR2_X1 cor_maj_23_U4 ( .A1(v_1_0_2[1]), .A2(v_1_0_2[0]), .ZN(cor_maj_23_n4)
         );
  NAND2_X1 cor_maj_23_U3 ( .A1(v_1_0_2[1]), .A2(v_1_0_2[0]), .ZN(cor_maj_23_n6) );
  NAND2_X1 cor_maj_23_U2 ( .A1(v_1_0_2[2]), .A2(cor_maj_23_n4), .ZN(
        cor_maj_23_n5) );
  NAND2_X1 cor_maj_23_U1 ( .A1(cor_maj_23_n6), .A2(cor_maj_23_n5), .ZN(
        cor_maj_23_port_o) );
  OR2_X1 cor_maj_24_U4 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_24_n4)
         );
  NAND2_X1 cor_maj_24_U3 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_24_n6) );
  NAND2_X1 cor_maj_24_U2 ( .A1(v_1_1_0[2]), .A2(cor_maj_24_n4), .ZN(
        cor_maj_24_n5) );
  NAND2_X1 cor_maj_24_U1 ( .A1(cor_maj_24_n6), .A2(cor_maj_24_n5), .ZN(
        cor_maj_24_port_o) );
  OR2_X1 cor_maj_25_U4 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_25_n4)
         );
  NAND2_X1 cor_maj_25_U3 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_25_n6) );
  NAND2_X1 cor_maj_25_U2 ( .A1(v_1_1_0[2]), .A2(cor_maj_25_n4), .ZN(
        cor_maj_25_n5) );
  NAND2_X1 cor_maj_25_U1 ( .A1(cor_maj_25_n6), .A2(cor_maj_25_n5), .ZN(
        cor_maj_25_port_o) );
  OR2_X1 cor_maj_26_U4 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_26_n4)
         );
  NAND2_X1 cor_maj_26_U3 ( .A1(v_1_1_0[1]), .A2(v_1_1_0[0]), .ZN(cor_maj_26_n6) );
  NAND2_X1 cor_maj_26_U2 ( .A1(v_1_1_0[2]), .A2(cor_maj_26_n4), .ZN(
        cor_maj_26_n5) );
  NAND2_X1 cor_maj_26_U1 ( .A1(cor_maj_26_n6), .A2(cor_maj_26_n5), .ZN(
        cor_maj_26_port_o) );
  OR2_X1 cor_maj_27_U4 ( .A1(v_1_1_2[1]), .A2(v_1_1_2[0]), .ZN(cor_maj_27_n4)
         );
  NAND2_X1 cor_maj_27_U3 ( .A1(v_1_1_2[1]), .A2(v_1_1_2[0]), .ZN(cor_maj_27_n6) );
  NAND2_X1 cor_maj_27_U2 ( .A1(v_1_1_2[2]), .A2(cor_maj_27_n4), .ZN(
        cor_maj_27_n5) );
  NAND2_X1 cor_maj_27_U1 ( .A1(cor_maj_27_n6), .A2(cor_maj_27_n5), .ZN(
        cor_maj_27_port_o) );
  OR2_X1 cor_maj_28_U4 ( .A1(v_1_1_2[1]), .A2(v_1_1_2[0]), .ZN(cor_maj_28_n4)
         );
  NAND2_X1 cor_maj_28_U3 ( .A1(v_1_1_2[1]), .A2(v_1_1_2[0]), .ZN(cor_maj_28_n6) );
  NAND2_X1 cor_maj_28_U2 ( .A1(v_1_1_2[2]), .A2(cor_maj_28_n4), .ZN(
        cor_maj_28_n5) );
  NAND2_X1 cor_maj_28_U1 ( .A1(cor_maj_28_n6), .A2(cor_maj_28_n5), .ZN(
        cor_maj_28_port_o) );
  OR2_X1 cor_maj_29_U4 ( .A1(v_1_1_2[1]), .A2(v_1_1_2[0]), .ZN(cor_maj_29_n4)
         );
  NAND2_X1 cor_maj_29_U3 ( .A1(v_1_1_2[1]), .A2(v_1_1_2[0]), .ZN(cor_maj_29_n6) );
  NAND2_X1 cor_maj_29_U2 ( .A1(v_1_1_2[2]), .A2(cor_maj_29_n4), .ZN(
        cor_maj_29_n5) );
  NAND2_X1 cor_maj_29_U1 ( .A1(cor_maj_29_n6), .A2(cor_maj_29_n5), .ZN(
        cor_maj_29_port_o) );
  OR2_X1 cor_maj_30_U4 ( .A1(v_1_2_0[1]), .A2(v_1_2_0[0]), .ZN(cor_maj_30_n4)
         );
  NAND2_X1 cor_maj_30_U3 ( .A1(v_1_2_0[1]), .A2(v_1_2_0[0]), .ZN(cor_maj_30_n6) );
  NAND2_X1 cor_maj_30_U2 ( .A1(v_1_2_0[2]), .A2(cor_maj_30_n4), .ZN(
        cor_maj_30_n5) );
  NAND2_X1 cor_maj_30_U1 ( .A1(cor_maj_30_n6), .A2(cor_maj_30_n5), .ZN(
        cor_maj_30_port_o) );
  OR2_X1 cor_maj_31_U4 ( .A1(v_1_2_0[1]), .A2(v_1_2_0[0]), .ZN(cor_maj_31_n4)
         );
  NAND2_X1 cor_maj_31_U3 ( .A1(v_1_2_0[1]), .A2(v_1_2_0[0]), .ZN(cor_maj_31_n6) );
  NAND2_X1 cor_maj_31_U2 ( .A1(v_1_2_0[2]), .A2(cor_maj_31_n4), .ZN(
        cor_maj_31_n5) );
  NAND2_X1 cor_maj_31_U1 ( .A1(cor_maj_31_n6), .A2(cor_maj_31_n5), .ZN(
        cor_maj_31_port_o) );
  OR2_X1 cor_maj_32_U4 ( .A1(v_1_2_0[1]), .A2(v_1_2_0[0]), .ZN(cor_maj_32_n4)
         );
  NAND2_X1 cor_maj_32_U3 ( .A1(v_1_2_0[1]), .A2(v_1_2_0[0]), .ZN(cor_maj_32_n6) );
  NAND2_X1 cor_maj_32_U2 ( .A1(v_1_2_0[2]), .A2(cor_maj_32_n4), .ZN(
        cor_maj_32_n5) );
  NAND2_X1 cor_maj_32_U1 ( .A1(cor_maj_32_n6), .A2(cor_maj_32_n5), .ZN(
        cor_maj_32_port_o) );
  OR2_X1 cor_maj_33_U4 ( .A1(v_1_2_1[1]), .A2(v_1_2_1[0]), .ZN(cor_maj_33_n4)
         );
  NAND2_X1 cor_maj_33_U3 ( .A1(v_1_2_1[1]), .A2(v_1_2_1[0]), .ZN(cor_maj_33_n6) );
  NAND2_X1 cor_maj_33_U2 ( .A1(v_1_2_1[2]), .A2(cor_maj_33_n4), .ZN(
        cor_maj_33_n5) );
  NAND2_X1 cor_maj_33_U1 ( .A1(cor_maj_33_n6), .A2(cor_maj_33_n5), .ZN(
        cor_maj_33_port_o) );
  OR2_X1 cor_maj_34_U4 ( .A1(v_1_2_1[1]), .A2(v_1_2_1[0]), .ZN(cor_maj_34_n4)
         );
  NAND2_X1 cor_maj_34_U3 ( .A1(v_1_2_1[1]), .A2(v_1_2_1[0]), .ZN(cor_maj_34_n6) );
  NAND2_X1 cor_maj_34_U2 ( .A1(v_1_2_1[2]), .A2(cor_maj_34_n4), .ZN(
        cor_maj_34_n5) );
  NAND2_X1 cor_maj_34_U1 ( .A1(cor_maj_34_n6), .A2(cor_maj_34_n5), .ZN(
        cor_maj_34_port_o) );
  OR2_X1 cor_maj_35_U4 ( .A1(v_1_2_1[1]), .A2(v_1_2_1[0]), .ZN(cor_maj_35_n4)
         );
  NAND2_X1 cor_maj_35_U3 ( .A1(v_1_2_1[1]), .A2(v_1_2_1[0]), .ZN(cor_maj_35_n6) );
  NAND2_X1 cor_maj_35_U2 ( .A1(v_1_2_1[2]), .A2(cor_maj_35_n4), .ZN(
        cor_maj_35_n5) );
  NAND2_X1 cor_maj_35_U1 ( .A1(cor_maj_35_n6), .A2(cor_maj_35_n5), .ZN(
        cor_maj_35_port_o) );
  XOR2_X1 simpleXor_18_U1 ( .A(n_zz_io_c_0_3[1]), .B(u_0_1[0]), .Z(
        simpleXor_18_port_z) );
  XOR2_X1 simpleXor_19_U1 ( .A(n_zz_io_c_0_3[2]), .B(u_0_2[0]), .Z(
        simpleXor_19_port_z) );
  XOR2_X1 simpleXor_20_U1 ( .A(n_zz_io_c_1_3[1]), .B(u_1_0[0]), .Z(
        simpleXor_20_port_z) );
  XOR2_X1 simpleXor_21_U1 ( .A(n_zz_io_c_1_3[2]), .B(u_1_2[0]), .Z(
        simpleXor_21_port_z) );
  XOR2_X1 simpleXor_22_U1 ( .A(n_zz_io_c_2_3[1]), .B(u_2_0[0]), .Z(
        simpleXor_22_port_z) );
  XOR2_X1 simpleXor_23_U1 ( .A(n_zz_io_c_2_3[2]), .B(u_2_1[0]), .Z(
        simpleXor_23_port_z) );
  XOR2_X1 simpleXor_24_U1 ( .A(n_zz_io_c_0_7[1]), .B(u_0_1[1]), .Z(
        simpleXor_24_port_z) );
  XOR2_X1 simpleXor_25_U1 ( .A(n_zz_io_c_0_7[2]), .B(u_0_2[1]), .Z(
        simpleXor_25_port_z) );
  XOR2_X1 simpleXor_26_U1 ( .A(n_zz_io_c_1_7[1]), .B(u_1_0[1]), .Z(
        simpleXor_26_port_z) );
  XOR2_X1 simpleXor_27_U1 ( .A(n_zz_io_c_1_7[2]), .B(u_1_2[1]), .Z(
        simpleXor_27_port_z) );
  XOR2_X1 simpleXor_28_U1 ( .A(n_zz_io_c_2_7[1]), .B(u_2_0[1]), .Z(
        simpleXor_28_port_z) );
  XOR2_X1 simpleXor_29_U1 ( .A(n_zz_io_c_2_7[2]), .B(u_2_1[1]), .Z(
        simpleXor_29_port_z) );
  XOR2_X1 simpleXor_30_U1 ( .A(n_zz_io_c_0_11[1]), .B(u_0_1[2]), .Z(
        simpleXor_30_port_z) );
  XOR2_X1 simpleXor_31_U1 ( .A(n_zz_io_c_0_11[2]), .B(u_0_2[2]), .Z(
        simpleXor_31_port_z) );
  XOR2_X1 simpleXor_32_U1 ( .A(n_zz_io_c_1_11[1]), .B(u_1_0[2]), .Z(
        simpleXor_32_port_z) );
  XOR2_X1 simpleXor_33_U1 ( .A(n_zz_io_c_1_11[2]), .B(u_1_2[2]), .Z(
        simpleXor_33_port_z) );
  XOR2_X1 simpleXor_34_U1 ( .A(n_zz_io_c_2_11[1]), .B(u_2_0[2]), .Z(
        simpleXor_34_port_z) );
  XOR2_X1 simpleXor_35_U1 ( .A(n_zz_io_c_2_11[2]), .B(u_2_1[2]), .Z(
        simpleXor_35_port_z) );
endmodule

