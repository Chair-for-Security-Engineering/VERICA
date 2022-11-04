
module andSININA ( port_a_0, port_a_1, port_a_2, port_b_0, port_b_1, port_b_2, 
        port_c_0, port_c_1, port_c_2, port_r, clk, reset );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_a_2;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  input [2:0] port_b_2;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  output [2:0] port_c_2;
  input [5:0] port_r;
  input clk, reset;
  wire   mul_n18, mul_n17, mul_n16, mul_n15, mul_n14, mul_n13, mul_n12,
         mul_n11, mul_n10, mul_n9, mul_n8, mul_n7, mul_n6, mul_n5, mul_n4,
         mul_n3, mul_n2, mul_n1, mul_N32, mul_N31, mul_N30, mul_N29, mul_N28,
         mul_N27, mul_N26, mul_N25, mul_N24, cor_maj_53_port_o,
         cor_maj_52_port_o, cor_maj_51_port_o, cor_maj_50_port_o,
         cor_maj_49_port_o, cor_maj_48_port_o, cor_maj_47_port_o,
         cor_maj_46_port_o, cor_maj_45_port_o, cor_maj_44_port_o,
         cor_maj_43_port_o, cor_maj_42_port_o, cor_maj_41_port_o,
         cor_maj_40_port_o, cor_maj_39_port_o, cor_maj_38_port_o,
         cor_maj_37_port_o, cor_maj_36_port_o, cor_maj_35_port_o,
         cor_maj_34_port_o, cor_maj_33_port_o, cor_maj_32_port_o,
         cor_maj_31_port_o, cor_maj_30_port_o, cor_maj_29_port_o,
         cor_maj_28_port_o, cor_maj_27_port_o, cor_maj_27_n3, cor_maj_27_n2,
         cor_maj_27_n1, cor_maj_28_n6, cor_maj_28_n5, cor_maj_28_n4,
         cor_maj_29_n6, cor_maj_29_n5, cor_maj_29_n4, cor_maj_30_n6,
         cor_maj_30_n5, cor_maj_30_n4, cor_maj_31_n6, cor_maj_31_n5,
         cor_maj_31_n4, cor_maj_32_n6, cor_maj_32_n5, cor_maj_32_n4,
         cor_maj_33_n6, cor_maj_33_n5, cor_maj_33_n4, cor_maj_34_n6,
         cor_maj_34_n5, cor_maj_34_n4, cor_maj_35_n6, cor_maj_35_n5,
         cor_maj_35_n4, cor_maj_36_n6, cor_maj_36_n5, cor_maj_36_n4,
         cor_maj_37_n6, cor_maj_37_n5, cor_maj_37_n4, cor_maj_38_n6,
         cor_maj_38_n5, cor_maj_38_n4, cor_maj_39_n6, cor_maj_39_n5,
         cor_maj_39_n4, cor_maj_40_n6, cor_maj_40_n5, cor_maj_40_n4,
         cor_maj_41_n6, cor_maj_41_n5, cor_maj_41_n4, cor_maj_42_n6,
         cor_maj_42_n5, cor_maj_42_n4, cor_maj_43_n6, cor_maj_43_n5,
         cor_maj_43_n4, cor_maj_44_n6, cor_maj_44_n5, cor_maj_44_n4,
         cor_maj_45_n6, cor_maj_45_n5, cor_maj_45_n4, cor_maj_46_n6,
         cor_maj_46_n5, cor_maj_46_n4, cor_maj_47_n6, cor_maj_47_n5,
         cor_maj_47_n4, cor_maj_48_n6, cor_maj_48_n5, cor_maj_48_n4,
         cor_maj_49_n6, cor_maj_49_n5, cor_maj_49_n4, cor_maj_50_n6,
         cor_maj_50_n5, cor_maj_50_n4, cor_maj_51_n6, cor_maj_51_n5,
         cor_maj_51_n4, cor_maj_52_n6, cor_maj_52_n5, cor_maj_52_n4,
         cor_maj_53_n6, cor_maj_53_n5, cor_maj_53_n4, comp_n9, comp_n8,
         comp_n7, comp_n6, comp_n5, comp_n4, comp_n3, comp_n2, comp_n1;
  wire   [2:0] mul_port_c_0_0;
  wire   [2:0] mul_port_c_0_1;
  wire   [2:0] mul_port_c_0_2;
  wire   [2:0] mul_port_c_1_0;
  wire   [2:0] mul_port_c_1_1;
  wire   [2:0] mul_port_c_1_2;
  wire   [2:0] mul_port_c_2_0;
  wire   [2:0] mul_port_c_2_1;
  wire   [2:0] mul_port_c_2_2;
  wire   [2:0] cor_port_v_0_0;
  wire   [2:0] cor_port_v_0_1;
  wire   [2:0] cor_port_v_0_2;
  wire   [2:0] cor_port_v_1_0;
  wire   [2:0] cor_port_v_1_1;
  wire   [2:0] cor_port_v_1_2;
  wire   [2:0] cor_port_v_2_0;
  wire   [2:0] cor_port_v_2_1;
  wire   [2:0] cor_port_v_2_2;
  wire   [2:0] comp_port_c_0;
  wire   [2:0] comp_port_c_1;
  wire   [2:0] comp_port_c_2;
  wire   [2:0] mul_xor2_23_port_z;
  wire   [2:0] mul_xor2_22_port_z;
  wire   [2:0] mul_xor2_22_port_a0;
  wire   [2:0] mul_xor2_21_port_z;
  wire   [2:0] mul_xor2_20_port_z;
  wire   [2:0] mul_xor2_20_port_a0;
  wire   [2:0] mul_xor2_19_port_z;
  wire   [2:0] mul_xor2_18_port_z;
  wire   [2:0] mul_xor2_18_port_a0;
  wire   [2:0] mul_xor2_17_port_z;
  wire   [2:0] mul_xor2_16_port_z;
  wire   [2:0] mul_xor2_16_port_a0;
  wire   [2:0] mul_xor2_15_port_z;
  wire   [2:0] mul_xor2_14_port_z;
  wire   [2:0] mul_xor2_14_port_a0;
  wire   [2:0] mul_xor2_13_port_z;
  wire   [2:0] mul_xor2_12_port_z;
  wire   [2:0] mul_xor2_12_port_a0;

  DFF_X1 result_0_reg_2_ ( .D(comp_port_c_0[2]), .CK(clk), .Q(port_c_0[2]), 
        .QN() );
  DFF_X1 result_0_reg_1_ ( .D(comp_port_c_0[1]), .CK(clk), .Q(port_c_0[1]), 
        .QN() );
  DFF_X1 result_0_reg_0_ ( .D(comp_port_c_0[0]), .CK(clk), .Q(port_c_0[0]), 
        .QN() );
  DFF_X1 result_1_reg_2_ ( .D(comp_port_c_1[2]), .CK(clk), .Q(port_c_1[2]), 
        .QN() );
  DFF_X1 result_1_reg_1_ ( .D(comp_port_c_1[1]), .CK(clk), .Q(port_c_1[1]), 
        .QN() );
  DFF_X1 result_1_reg_0_ ( .D(comp_port_c_1[0]), .CK(clk), .Q(port_c_1[0]), 
        .QN() );
  DFF_X1 result_2_reg_2_ ( .D(comp_port_c_2[2]), .CK(clk), .Q(port_c_2[2]), 
        .QN() );
  DFF_X1 result_2_reg_1_ ( .D(comp_port_c_2[1]), .CK(clk), .Q(port_c_2[1]), 
        .QN() );
  DFF_X1 result_2_reg_0_ ( .D(comp_port_c_2[0]), .CK(clk), .Q(port_c_2[0]), 
        .QN() );
  INV_X1 mul_U47 ( .A(port_a_2[2]), .ZN(mul_n7) );
  INV_X1 mul_U46 ( .A(port_a_2[1]), .ZN(mul_n8) );
  INV_X1 mul_U45 ( .A(port_a_2[0]), .ZN(mul_n9) );
  NOR2_X1 mul_U44 ( .A1(mul_n13), .A2(mul_n1), .ZN(mul_xor2_12_port_a0[2]) );
  NOR2_X1 mul_U43 ( .A1(mul_n14), .A2(mul_n2), .ZN(mul_xor2_12_port_a0[1]) );
  NOR2_X1 mul_U42 ( .A1(mul_n15), .A2(mul_n3), .ZN(mul_xor2_12_port_a0[0]) );
  NOR2_X1 mul_U41 ( .A1(mul_n16), .A2(mul_n1), .ZN(mul_xor2_14_port_a0[2]) );
  NOR2_X1 mul_U40 ( .A1(mul_n17), .A2(mul_n2), .ZN(mul_xor2_14_port_a0[1]) );
  NOR2_X1 mul_U39 ( .A1(mul_n18), .A2(mul_n3), .ZN(mul_xor2_14_port_a0[0]) );
  NOR2_X1 mul_U38 ( .A1(mul_n10), .A2(mul_n4), .ZN(mul_xor2_16_port_a0[2]) );
  NOR2_X1 mul_U37 ( .A1(mul_n11), .A2(mul_n5), .ZN(mul_xor2_16_port_a0[1]) );
  NOR2_X1 mul_U36 ( .A1(mul_n12), .A2(mul_n6), .ZN(mul_xor2_16_port_a0[0]) );
  NOR2_X1 mul_U35 ( .A1(mul_n4), .A2(mul_n16), .ZN(mul_xor2_18_port_a0[2]) );
  NOR2_X1 mul_U34 ( .A1(mul_n5), .A2(mul_n17), .ZN(mul_xor2_18_port_a0[1]) );
  NOR2_X1 mul_U33 ( .A1(mul_n6), .A2(mul_n18), .ZN(mul_xor2_18_port_a0[0]) );
  NOR2_X1 mul_U32 ( .A1(mul_n7), .A2(mul_n10), .ZN(mul_xor2_20_port_a0[2]) );
  NOR2_X1 mul_U31 ( .A1(mul_n8), .A2(mul_n11), .ZN(mul_xor2_20_port_a0[1]) );
  NOR2_X1 mul_U30 ( .A1(mul_n9), .A2(mul_n12), .ZN(mul_xor2_20_port_a0[0]) );
  NOR2_X1 mul_U29 ( .A1(mul_n7), .A2(mul_n13), .ZN(mul_xor2_22_port_a0[2]) );
  NOR2_X1 mul_U28 ( .A1(mul_n8), .A2(mul_n14), .ZN(mul_xor2_22_port_a0[1]) );
  NOR2_X1 mul_U27 ( .A1(mul_n9), .A2(mul_n15), .ZN(mul_xor2_22_port_a0[0]) );
  INV_X1 mul_U26 ( .A(port_b_1[2]), .ZN(mul_n13) );
  INV_X1 mul_U25 ( .A(port_b_1[1]), .ZN(mul_n14) );
  INV_X1 mul_U24 ( .A(port_b_1[0]), .ZN(mul_n15) );
  INV_X1 mul_U23 ( .A(port_b_0[2]), .ZN(mul_n10) );
  INV_X1 mul_U22 ( .A(port_b_0[1]), .ZN(mul_n11) );
  INV_X1 mul_U21 ( .A(port_b_0[0]), .ZN(mul_n12) );
  INV_X1 mul_U20 ( .A(port_b_2[2]), .ZN(mul_n16) );
  INV_X1 mul_U19 ( .A(port_b_2[1]), .ZN(mul_n17) );
  INV_X1 mul_U18 ( .A(port_b_2[0]), .ZN(mul_n18) );
  INV_X1 mul_U17 ( .A(port_a_1[2]), .ZN(mul_n4) );
  INV_X1 mul_U16 ( .A(port_a_1[1]), .ZN(mul_n5) );
  INV_X1 mul_U15 ( .A(port_a_1[0]), .ZN(mul_n6) );
  INV_X1 mul_U14 ( .A(port_a_0[2]), .ZN(mul_n1) );
  INV_X1 mul_U13 ( .A(port_a_0[1]), .ZN(mul_n2) );
  INV_X1 mul_U12 ( .A(port_a_0[0]), .ZN(mul_n3) );
  NOR2_X1 mul_U11 ( .A1(mul_n7), .A2(mul_n16), .ZN(mul_N30) );
  NOR2_X1 mul_U10 ( .A1(mul_n8), .A2(mul_n17), .ZN(mul_N31) );
  NOR2_X1 mul_U9 ( .A1(mul_n9), .A2(mul_n18), .ZN(mul_N32) );
  NOR2_X1 mul_U8 ( .A1(mul_n10), .A2(mul_n1), .ZN(mul_N24) );
  NOR2_X1 mul_U7 ( .A1(mul_n11), .A2(mul_n2), .ZN(mul_N25) );
  NOR2_X1 mul_U6 ( .A1(mul_n12), .A2(mul_n3), .ZN(mul_N26) );
  NOR2_X1 mul_U5 ( .A1(mul_n13), .A2(mul_n4), .ZN(mul_N27) );
  NOR2_X1 mul_U4 ( .A1(mul_n14), .A2(mul_n5), .ZN(mul_N28) );
  NOR2_X1 mul_U3 ( .A1(mul_n15), .A2(mul_n6), .ZN(mul_N29) );
  DFF_X1 mul_u_2_2_reg_0_ ( .D(mul_N32), .CK(clk), .Q(mul_port_c_2_2[0]), 
        .QN() );
  DFF_X1 mul_u_2_2_reg_1_ ( .D(mul_N31), .CK(clk), .Q(mul_port_c_2_2[1]), 
        .QN() );
  DFF_X1 mul_u_2_2_reg_2_ ( .D(mul_N30), .CK(clk), .Q(mul_port_c_2_2[2]), 
        .QN() );
  DFF_X1 mul_u_2_1_reg_0_ ( .D(mul_xor2_23_port_z[0]), .CK(clk), .Q(
        mul_port_c_2_1[0]), .QN() );
  DFF_X1 mul_u_2_1_reg_1_ ( .D(mul_xor2_23_port_z[1]), .CK(clk), .Q(
        mul_port_c_2_1[1]), .QN() );
  DFF_X1 mul_u_2_1_reg_2_ ( .D(mul_xor2_23_port_z[2]), .CK(clk), .Q(
        mul_port_c_2_1[2]), .QN() );
  DFF_X1 mul_u_2_0_reg_0_ ( .D(mul_xor2_21_port_z[0]), .CK(clk), .Q(
        mul_port_c_2_0[0]), .QN() );
  DFF_X1 mul_u_2_0_reg_1_ ( .D(mul_xor2_21_port_z[1]), .CK(clk), .Q(
        mul_port_c_2_0[1]), .QN() );
  DFF_X1 mul_u_2_0_reg_2_ ( .D(mul_xor2_21_port_z[2]), .CK(clk), .Q(
        mul_port_c_2_0[2]), .QN() );
  DFF_X1 mul_u_1_2_reg_0_ ( .D(mul_xor2_19_port_z[0]), .CK(clk), .Q(
        mul_port_c_1_2[0]), .QN() );
  DFF_X1 mul_u_1_2_reg_1_ ( .D(mul_xor2_19_port_z[1]), .CK(clk), .Q(
        mul_port_c_1_2[1]), .QN() );
  DFF_X1 mul_u_1_2_reg_2_ ( .D(mul_xor2_19_port_z[2]), .CK(clk), .Q(
        mul_port_c_1_2[2]), .QN() );
  DFF_X1 mul_u_1_1_reg_0_ ( .D(mul_N29), .CK(clk), .Q(mul_port_c_1_1[0]), 
        .QN() );
  DFF_X1 mul_u_1_1_reg_1_ ( .D(mul_N28), .CK(clk), .Q(mul_port_c_1_1[1]), 
        .QN() );
  DFF_X1 mul_u_1_1_reg_2_ ( .D(mul_N27), .CK(clk), .Q(mul_port_c_1_1[2]), 
        .QN() );
  DFF_X1 mul_u_1_0_reg_0_ ( .D(mul_xor2_17_port_z[0]), .CK(clk), .Q(
        mul_port_c_1_0[0]), .QN() );
  DFF_X1 mul_u_1_0_reg_1_ ( .D(mul_xor2_17_port_z[1]), .CK(clk), .Q(
        mul_port_c_1_0[1]), .QN() );
  DFF_X1 mul_u_1_0_reg_2_ ( .D(mul_xor2_17_port_z[2]), .CK(clk), .Q(
        mul_port_c_1_0[2]), .QN() );
  DFF_X1 mul_u_0_2_reg_0_ ( .D(mul_xor2_15_port_z[0]), .CK(clk), .Q(
        mul_port_c_0_2[0]), .QN() );
  DFF_X1 mul_u_0_2_reg_1_ ( .D(mul_xor2_15_port_z[1]), .CK(clk), .Q(
        mul_port_c_0_2[1]), .QN() );
  DFF_X1 mul_u_0_2_reg_2_ ( .D(mul_xor2_15_port_z[2]), .CK(clk), .Q(
        mul_port_c_0_2[2]), .QN() );
  DFF_X1 mul_u_0_1_reg_0_ ( .D(mul_xor2_13_port_z[0]), .CK(clk), .Q(
        mul_port_c_0_1[0]), .QN() );
  DFF_X1 mul_u_0_1_reg_1_ ( .D(mul_xor2_13_port_z[1]), .CK(clk), .Q(
        mul_port_c_0_1[1]), .QN() );
  DFF_X1 mul_u_0_1_reg_2_ ( .D(mul_xor2_13_port_z[2]), .CK(clk), .Q(
        mul_port_c_0_1[2]), .QN() );
  DFF_X1 mul_u_0_0_reg_0_ ( .D(mul_N26), .CK(clk), .Q(mul_port_c_0_0[0]), 
        .QN() );
  DFF_X1 mul_u_0_0_reg_1_ ( .D(mul_N25), .CK(clk), .Q(mul_port_c_0_0[1]), 
        .QN() );
  DFF_X1 mul_u_0_0_reg_2_ ( .D(mul_N24), .CK(clk), .Q(mul_port_c_0_0[2]), 
        .QN() );
  XOR2_X1 mul_xor2_12_U3 ( .A(port_r[0]), .B(mul_xor2_12_port_a0[2]), .Z(
        mul_xor2_12_port_z[2]) );
  XOR2_X1 mul_xor2_12_U2 ( .A(port_r[0]), .B(mul_xor2_12_port_a0[1]), .Z(
        mul_xor2_12_port_z[1]) );
  XOR2_X1 mul_xor2_12_U1 ( .A(port_r[0]), .B(mul_xor2_12_port_a0[0]), .Z(
        mul_xor2_12_port_z[0]) );
  XOR2_X1 mul_xor2_13_U3 ( .A(port_r[1]), .B(mul_xor2_12_port_z[2]), .Z(
        mul_xor2_13_port_z[2]) );
  XOR2_X1 mul_xor2_13_U2 ( .A(port_r[1]), .B(mul_xor2_12_port_z[1]), .Z(
        mul_xor2_13_port_z[1]) );
  XOR2_X1 mul_xor2_13_U1 ( .A(port_r[1]), .B(mul_xor2_12_port_z[0]), .Z(
        mul_xor2_13_port_z[0]) );
  XOR2_X1 mul_xor2_14_U3 ( .A(port_r[2]), .B(mul_xor2_14_port_a0[2]), .Z(
        mul_xor2_14_port_z[2]) );
  XOR2_X1 mul_xor2_14_U2 ( .A(port_r[2]), .B(mul_xor2_14_port_a0[1]), .Z(
        mul_xor2_14_port_z[1]) );
  XOR2_X1 mul_xor2_14_U1 ( .A(port_r[2]), .B(mul_xor2_14_port_a0[0]), .Z(
        mul_xor2_14_port_z[0]) );
  XOR2_X1 mul_xor2_15_U3 ( .A(port_r[3]), .B(mul_xor2_14_port_z[2]), .Z(
        mul_xor2_15_port_z[2]) );
  XOR2_X1 mul_xor2_15_U2 ( .A(port_r[3]), .B(mul_xor2_14_port_z[1]), .Z(
        mul_xor2_15_port_z[1]) );
  XOR2_X1 mul_xor2_15_U1 ( .A(port_r[3]), .B(mul_xor2_14_port_z[0]), .Z(
        mul_xor2_15_port_z[0]) );
  XOR2_X1 mul_xor2_16_U3 ( .A(port_r[0]), .B(mul_xor2_16_port_a0[2]), .Z(
        mul_xor2_16_port_z[2]) );
  XOR2_X1 mul_xor2_16_U2 ( .A(port_r[0]), .B(mul_xor2_16_port_a0[1]), .Z(
        mul_xor2_16_port_z[1]) );
  XOR2_X1 mul_xor2_16_U1 ( .A(port_r[0]), .B(mul_xor2_16_port_a0[0]), .Z(
        mul_xor2_16_port_z[0]) );
  XOR2_X1 mul_xor2_17_U3 ( .A(port_r[1]), .B(mul_xor2_16_port_z[2]), .Z(
        mul_xor2_17_port_z[2]) );
  XOR2_X1 mul_xor2_17_U2 ( .A(port_r[1]), .B(mul_xor2_16_port_z[1]), .Z(
        mul_xor2_17_port_z[1]) );
  XOR2_X1 mul_xor2_17_U1 ( .A(port_r[1]), .B(mul_xor2_16_port_z[0]), .Z(
        mul_xor2_17_port_z[0]) );
  XOR2_X1 mul_xor2_18_U3 ( .A(port_r[4]), .B(mul_xor2_18_port_a0[2]), .Z(
        mul_xor2_18_port_z[2]) );
  XOR2_X1 mul_xor2_18_U2 ( .A(port_r[4]), .B(mul_xor2_18_port_a0[1]), .Z(
        mul_xor2_18_port_z[1]) );
  XOR2_X1 mul_xor2_18_U1 ( .A(port_r[4]), .B(mul_xor2_18_port_a0[0]), .Z(
        mul_xor2_18_port_z[0]) );
  XOR2_X1 mul_xor2_19_U3 ( .A(port_r[5]), .B(mul_xor2_18_port_z[2]), .Z(
        mul_xor2_19_port_z[2]) );
  XOR2_X1 mul_xor2_19_U2 ( .A(port_r[5]), .B(mul_xor2_18_port_z[1]), .Z(
        mul_xor2_19_port_z[1]) );
  XOR2_X1 mul_xor2_19_U1 ( .A(port_r[5]), .B(mul_xor2_18_port_z[0]), .Z(
        mul_xor2_19_port_z[0]) );
  XOR2_X1 mul_xor2_20_U3 ( .A(port_r[2]), .B(mul_xor2_20_port_a0[2]), .Z(
        mul_xor2_20_port_z[2]) );
  XOR2_X1 mul_xor2_20_U2 ( .A(port_r[2]), .B(mul_xor2_20_port_a0[1]), .Z(
        mul_xor2_20_port_z[1]) );
  XOR2_X1 mul_xor2_20_U1 ( .A(port_r[2]), .B(mul_xor2_20_port_a0[0]), .Z(
        mul_xor2_20_port_z[0]) );
  XOR2_X1 mul_xor2_21_U3 ( .A(port_r[3]), .B(mul_xor2_20_port_z[2]), .Z(
        mul_xor2_21_port_z[2]) );
  XOR2_X1 mul_xor2_21_U2 ( .A(port_r[3]), .B(mul_xor2_20_port_z[1]), .Z(
        mul_xor2_21_port_z[1]) );
  XOR2_X1 mul_xor2_21_U1 ( .A(port_r[3]), .B(mul_xor2_20_port_z[0]), .Z(
        mul_xor2_21_port_z[0]) );
  XOR2_X1 mul_xor2_22_U3 ( .A(port_r[4]), .B(mul_xor2_22_port_a0[2]), .Z(
        mul_xor2_22_port_z[2]) );
  XOR2_X1 mul_xor2_22_U2 ( .A(port_r[4]), .B(mul_xor2_22_port_a0[1]), .Z(
        mul_xor2_22_port_z[1]) );
  XOR2_X1 mul_xor2_22_U1 ( .A(port_r[4]), .B(mul_xor2_22_port_a0[0]), .Z(
        mul_xor2_22_port_z[0]) );
  XOR2_X1 mul_xor2_23_U3 ( .A(port_r[5]), .B(mul_xor2_22_port_z[2]), .Z(
        mul_xor2_23_port_z[2]) );
  XOR2_X1 mul_xor2_23_U2 ( .A(port_r[5]), .B(mul_xor2_22_port_z[1]), .Z(
        mul_xor2_23_port_z[1]) );
  XOR2_X1 mul_xor2_23_U1 ( .A(port_r[5]), .B(mul_xor2_22_port_z[0]), .Z(
        mul_xor2_23_port_z[0]) );
  DFF_X1 cor_m_2_2_reg_0_ ( .D(cor_maj_51_port_o), .CK(clk), .Q(
        cor_port_v_2_2[0]), .QN() );
  DFF_X1 cor_m_2_2_reg_1_ ( .D(cor_maj_52_port_o), .CK(clk), .Q(
        cor_port_v_2_2[1]), .QN() );
  DFF_X1 cor_m_2_2_reg_2_ ( .D(cor_maj_53_port_o), .CK(clk), .Q(
        cor_port_v_2_2[2]), .QN() );
  DFF_X1 cor_m_2_1_reg_0_ ( .D(cor_maj_48_port_o), .CK(clk), .Q(
        cor_port_v_2_1[0]), .QN() );
  DFF_X1 cor_m_2_1_reg_1_ ( .D(cor_maj_49_port_o), .CK(clk), .Q(
        cor_port_v_2_1[1]), .QN() );
  DFF_X1 cor_m_2_1_reg_2_ ( .D(cor_maj_50_port_o), .CK(clk), .Q(
        cor_port_v_2_1[2]), .QN() );
  DFF_X1 cor_m_2_0_reg_0_ ( .D(cor_maj_45_port_o), .CK(clk), .Q(
        cor_port_v_2_0[0]), .QN() );
  DFF_X1 cor_m_2_0_reg_1_ ( .D(cor_maj_46_port_o), .CK(clk), .Q(
        cor_port_v_2_0[1]), .QN() );
  DFF_X1 cor_m_2_0_reg_2_ ( .D(cor_maj_47_port_o), .CK(clk), .Q(
        cor_port_v_2_0[2]), .QN() );
  DFF_X1 cor_m_1_2_reg_0_ ( .D(cor_maj_42_port_o), .CK(clk), .Q(
        cor_port_v_1_2[0]), .QN() );
  DFF_X1 cor_m_1_2_reg_1_ ( .D(cor_maj_43_port_o), .CK(clk), .Q(
        cor_port_v_1_2[1]), .QN() );
  DFF_X1 cor_m_1_2_reg_2_ ( .D(cor_maj_44_port_o), .CK(clk), .Q(
        cor_port_v_1_2[2]), .QN() );
  DFF_X1 cor_m_1_1_reg_0_ ( .D(cor_maj_39_port_o), .CK(clk), .Q(
        cor_port_v_1_1[0]), .QN() );
  DFF_X1 cor_m_1_1_reg_1_ ( .D(cor_maj_40_port_o), .CK(clk), .Q(
        cor_port_v_1_1[1]), .QN() );
  DFF_X1 cor_m_1_1_reg_2_ ( .D(cor_maj_41_port_o), .CK(clk), .Q(
        cor_port_v_1_1[2]), .QN() );
  DFF_X1 cor_m_1_0_reg_0_ ( .D(cor_maj_36_port_o), .CK(clk), .Q(
        cor_port_v_1_0[0]), .QN() );
  DFF_X1 cor_m_1_0_reg_1_ ( .D(cor_maj_37_port_o), .CK(clk), .Q(
        cor_port_v_1_0[1]), .QN() );
  DFF_X1 cor_m_1_0_reg_2_ ( .D(cor_maj_38_port_o), .CK(clk), .Q(
        cor_port_v_1_0[2]), .QN() );
  DFF_X1 cor_m_0_2_reg_0_ ( .D(cor_maj_33_port_o), .CK(clk), .Q(
        cor_port_v_0_2[0]), .QN() );
  DFF_X1 cor_m_0_2_reg_1_ ( .D(cor_maj_34_port_o), .CK(clk), .Q(
        cor_port_v_0_2[1]), .QN() );
  DFF_X1 cor_m_0_2_reg_2_ ( .D(cor_maj_35_port_o), .CK(clk), .Q(
        cor_port_v_0_2[2]), .QN() );
  DFF_X1 cor_m_0_1_reg_0_ ( .D(cor_maj_30_port_o), .CK(clk), .Q(
        cor_port_v_0_1[0]), .QN() );
  DFF_X1 cor_m_0_1_reg_1_ ( .D(cor_maj_31_port_o), .CK(clk), .Q(
        cor_port_v_0_1[1]), .QN() );
  DFF_X1 cor_m_0_1_reg_2_ ( .D(cor_maj_32_port_o), .CK(clk), .Q(
        cor_port_v_0_1[2]), .QN() );
  DFF_X1 cor_m_0_0_reg_0_ ( .D(cor_maj_27_port_o), .CK(clk), .Q(
        cor_port_v_0_0[0]), .QN() );
  DFF_X1 cor_m_0_0_reg_1_ ( .D(cor_maj_28_port_o), .CK(clk), .Q(
        cor_port_v_0_0[1]), .QN() );
  DFF_X1 cor_m_0_0_reg_2_ ( .D(cor_maj_29_port_o), .CK(clk), .Q(
        cor_port_v_0_0[2]), .QN() );
  OR2_X1 cor_maj_27_U4 ( .A1(mul_port_c_0_0[1]), .A2(mul_port_c_0_0[0]), .ZN(
        cor_maj_27_n3) );
  NAND2_X1 cor_maj_27_U3 ( .A1(mul_port_c_0_0[2]), .A2(cor_maj_27_n3), .ZN(
        cor_maj_27_n2) );
  NAND2_X1 cor_maj_27_U2 ( .A1(mul_port_c_0_0[1]), .A2(mul_port_c_0_0[0]), 
        .ZN(cor_maj_27_n1) );
  NAND2_X1 cor_maj_27_U1 ( .A1(cor_maj_27_n1), .A2(cor_maj_27_n2), .ZN(
        cor_maj_27_port_o) );
  OR2_X1 cor_maj_28_U4 ( .A1(mul_port_c_0_0[1]), .A2(mul_port_c_0_0[0]), .ZN(
        cor_maj_28_n4) );
  NAND2_X1 cor_maj_28_U3 ( .A1(mul_port_c_0_0[2]), .A2(cor_maj_28_n4), .ZN(
        cor_maj_28_n5) );
  NAND2_X1 cor_maj_28_U2 ( .A1(mul_port_c_0_0[1]), .A2(mul_port_c_0_0[0]), 
        .ZN(cor_maj_28_n6) );
  NAND2_X1 cor_maj_28_U1 ( .A1(cor_maj_28_n6), .A2(cor_maj_28_n5), .ZN(
        cor_maj_28_port_o) );
  OR2_X1 cor_maj_29_U4 ( .A1(mul_port_c_0_0[1]), .A2(mul_port_c_0_0[0]), .ZN(
        cor_maj_29_n4) );
  NAND2_X1 cor_maj_29_U3 ( .A1(mul_port_c_0_0[2]), .A2(cor_maj_29_n4), .ZN(
        cor_maj_29_n5) );
  NAND2_X1 cor_maj_29_U2 ( .A1(mul_port_c_0_0[1]), .A2(mul_port_c_0_0[0]), 
        .ZN(cor_maj_29_n6) );
  NAND2_X1 cor_maj_29_U1 ( .A1(cor_maj_29_n6), .A2(cor_maj_29_n5), .ZN(
        cor_maj_29_port_o) );
  OR2_X1 cor_maj_30_U4 ( .A1(mul_port_c_0_1[1]), .A2(mul_port_c_0_1[0]), .ZN(
        cor_maj_30_n4) );
  NAND2_X1 cor_maj_30_U3 ( .A1(mul_port_c_0_1[2]), .A2(cor_maj_30_n4), .ZN(
        cor_maj_30_n5) );
  NAND2_X1 cor_maj_30_U2 ( .A1(mul_port_c_0_1[1]), .A2(mul_port_c_0_1[0]), 
        .ZN(cor_maj_30_n6) );
  NAND2_X1 cor_maj_30_U1 ( .A1(cor_maj_30_n6), .A2(cor_maj_30_n5), .ZN(
        cor_maj_30_port_o) );
  OR2_X1 cor_maj_31_U4 ( .A1(mul_port_c_0_1[1]), .A2(mul_port_c_0_1[0]), .ZN(
        cor_maj_31_n4) );
  NAND2_X1 cor_maj_31_U3 ( .A1(mul_port_c_0_1[2]), .A2(cor_maj_31_n4), .ZN(
        cor_maj_31_n5) );
  NAND2_X1 cor_maj_31_U2 ( .A1(mul_port_c_0_1[1]), .A2(mul_port_c_0_1[0]), 
        .ZN(cor_maj_31_n6) );
  NAND2_X1 cor_maj_31_U1 ( .A1(cor_maj_31_n6), .A2(cor_maj_31_n5), .ZN(
        cor_maj_31_port_o) );
  OR2_X1 cor_maj_32_U4 ( .A1(mul_port_c_0_1[1]), .A2(mul_port_c_0_1[0]), .ZN(
        cor_maj_32_n4) );
  NAND2_X1 cor_maj_32_U3 ( .A1(mul_port_c_0_1[2]), .A2(cor_maj_32_n4), .ZN(
        cor_maj_32_n5) );
  NAND2_X1 cor_maj_32_U2 ( .A1(mul_port_c_0_1[1]), .A2(mul_port_c_0_1[0]), 
        .ZN(cor_maj_32_n6) );
  NAND2_X1 cor_maj_32_U1 ( .A1(cor_maj_32_n6), .A2(cor_maj_32_n5), .ZN(
        cor_maj_32_port_o) );
  OR2_X1 cor_maj_33_U4 ( .A1(mul_port_c_0_2[1]), .A2(mul_port_c_0_2[0]), .ZN(
        cor_maj_33_n4) );
  NAND2_X1 cor_maj_33_U3 ( .A1(mul_port_c_0_2[2]), .A2(cor_maj_33_n4), .ZN(
        cor_maj_33_n5) );
  NAND2_X1 cor_maj_33_U2 ( .A1(mul_port_c_0_2[1]), .A2(mul_port_c_0_2[0]), 
        .ZN(cor_maj_33_n6) );
  NAND2_X1 cor_maj_33_U1 ( .A1(cor_maj_33_n6), .A2(cor_maj_33_n5), .ZN(
        cor_maj_33_port_o) );
  OR2_X1 cor_maj_34_U4 ( .A1(mul_port_c_0_2[1]), .A2(mul_port_c_0_2[0]), .ZN(
        cor_maj_34_n4) );
  NAND2_X1 cor_maj_34_U3 ( .A1(mul_port_c_0_2[2]), .A2(cor_maj_34_n4), .ZN(
        cor_maj_34_n5) );
  NAND2_X1 cor_maj_34_U2 ( .A1(mul_port_c_0_2[1]), .A2(mul_port_c_0_2[0]), 
        .ZN(cor_maj_34_n6) );
  NAND2_X1 cor_maj_34_U1 ( .A1(cor_maj_34_n6), .A2(cor_maj_34_n5), .ZN(
        cor_maj_34_port_o) );
  OR2_X1 cor_maj_35_U4 ( .A1(mul_port_c_0_2[1]), .A2(mul_port_c_0_2[0]), .ZN(
        cor_maj_35_n4) );
  NAND2_X1 cor_maj_35_U3 ( .A1(mul_port_c_0_2[2]), .A2(cor_maj_35_n4), .ZN(
        cor_maj_35_n5) );
  NAND2_X1 cor_maj_35_U2 ( .A1(mul_port_c_0_2[1]), .A2(mul_port_c_0_2[0]), 
        .ZN(cor_maj_35_n6) );
  NAND2_X1 cor_maj_35_U1 ( .A1(cor_maj_35_n6), .A2(cor_maj_35_n5), .ZN(
        cor_maj_35_port_o) );
  OR2_X1 cor_maj_36_U4 ( .A1(mul_port_c_1_0[1]), .A2(mul_port_c_1_0[0]), .ZN(
        cor_maj_36_n4) );
  NAND2_X1 cor_maj_36_U3 ( .A1(mul_port_c_1_0[2]), .A2(cor_maj_36_n4), .ZN(
        cor_maj_36_n5) );
  NAND2_X1 cor_maj_36_U2 ( .A1(mul_port_c_1_0[1]), .A2(mul_port_c_1_0[0]), 
        .ZN(cor_maj_36_n6) );
  NAND2_X1 cor_maj_36_U1 ( .A1(cor_maj_36_n6), .A2(cor_maj_36_n5), .ZN(
        cor_maj_36_port_o) );
  OR2_X1 cor_maj_37_U4 ( .A1(mul_port_c_1_0[1]), .A2(mul_port_c_1_0[0]), .ZN(
        cor_maj_37_n4) );
  NAND2_X1 cor_maj_37_U3 ( .A1(mul_port_c_1_0[2]), .A2(cor_maj_37_n4), .ZN(
        cor_maj_37_n5) );
  NAND2_X1 cor_maj_37_U2 ( .A1(mul_port_c_1_0[1]), .A2(mul_port_c_1_0[0]), 
        .ZN(cor_maj_37_n6) );
  NAND2_X1 cor_maj_37_U1 ( .A1(cor_maj_37_n6), .A2(cor_maj_37_n5), .ZN(
        cor_maj_37_port_o) );
  OR2_X1 cor_maj_38_U4 ( .A1(mul_port_c_1_0[1]), .A2(mul_port_c_1_0[0]), .ZN(
        cor_maj_38_n4) );
  NAND2_X1 cor_maj_38_U3 ( .A1(mul_port_c_1_0[2]), .A2(cor_maj_38_n4), .ZN(
        cor_maj_38_n5) );
  NAND2_X1 cor_maj_38_U2 ( .A1(mul_port_c_1_0[1]), .A2(mul_port_c_1_0[0]), 
        .ZN(cor_maj_38_n6) );
  NAND2_X1 cor_maj_38_U1 ( .A1(cor_maj_38_n6), .A2(cor_maj_38_n5), .ZN(
        cor_maj_38_port_o) );
  OR2_X1 cor_maj_39_U4 ( .A1(mul_port_c_1_1[1]), .A2(mul_port_c_1_1[0]), .ZN(
        cor_maj_39_n4) );
  NAND2_X1 cor_maj_39_U3 ( .A1(mul_port_c_1_1[2]), .A2(cor_maj_39_n4), .ZN(
        cor_maj_39_n5) );
  NAND2_X1 cor_maj_39_U2 ( .A1(mul_port_c_1_1[1]), .A2(mul_port_c_1_1[0]), 
        .ZN(cor_maj_39_n6) );
  NAND2_X1 cor_maj_39_U1 ( .A1(cor_maj_39_n6), .A2(cor_maj_39_n5), .ZN(
        cor_maj_39_port_o) );
  OR2_X1 cor_maj_40_U4 ( .A1(mul_port_c_1_1[1]), .A2(mul_port_c_1_1[0]), .ZN(
        cor_maj_40_n4) );
  NAND2_X1 cor_maj_40_U3 ( .A1(mul_port_c_1_1[2]), .A2(cor_maj_40_n4), .ZN(
        cor_maj_40_n5) );
  NAND2_X1 cor_maj_40_U2 ( .A1(mul_port_c_1_1[1]), .A2(mul_port_c_1_1[0]), 
        .ZN(cor_maj_40_n6) );
  NAND2_X1 cor_maj_40_U1 ( .A1(cor_maj_40_n6), .A2(cor_maj_40_n5), .ZN(
        cor_maj_40_port_o) );
  OR2_X1 cor_maj_41_U4 ( .A1(mul_port_c_1_1[1]), .A2(mul_port_c_1_1[0]), .ZN(
        cor_maj_41_n4) );
  NAND2_X1 cor_maj_41_U3 ( .A1(mul_port_c_1_1[2]), .A2(cor_maj_41_n4), .ZN(
        cor_maj_41_n5) );
  NAND2_X1 cor_maj_41_U2 ( .A1(mul_port_c_1_1[1]), .A2(mul_port_c_1_1[0]), 
        .ZN(cor_maj_41_n6) );
  NAND2_X1 cor_maj_41_U1 ( .A1(cor_maj_41_n6), .A2(cor_maj_41_n5), .ZN(
        cor_maj_41_port_o) );
  OR2_X1 cor_maj_42_U4 ( .A1(mul_port_c_1_2[1]), .A2(mul_port_c_1_2[0]), .ZN(
        cor_maj_42_n4) );
  NAND2_X1 cor_maj_42_U3 ( .A1(mul_port_c_1_2[2]), .A2(cor_maj_42_n4), .ZN(
        cor_maj_42_n5) );
  NAND2_X1 cor_maj_42_U2 ( .A1(mul_port_c_1_2[1]), .A2(mul_port_c_1_2[0]), 
        .ZN(cor_maj_42_n6) );
  NAND2_X1 cor_maj_42_U1 ( .A1(cor_maj_42_n6), .A2(cor_maj_42_n5), .ZN(
        cor_maj_42_port_o) );
  OR2_X1 cor_maj_43_U4 ( .A1(mul_port_c_1_2[1]), .A2(mul_port_c_1_2[0]), .ZN(
        cor_maj_43_n4) );
  NAND2_X1 cor_maj_43_U3 ( .A1(mul_port_c_1_2[2]), .A2(cor_maj_43_n4), .ZN(
        cor_maj_43_n5) );
  NAND2_X1 cor_maj_43_U2 ( .A1(mul_port_c_1_2[1]), .A2(mul_port_c_1_2[0]), 
        .ZN(cor_maj_43_n6) );
  NAND2_X1 cor_maj_43_U1 ( .A1(cor_maj_43_n6), .A2(cor_maj_43_n5), .ZN(
        cor_maj_43_port_o) );
  OR2_X1 cor_maj_44_U4 ( .A1(mul_port_c_1_2[1]), .A2(mul_port_c_1_2[0]), .ZN(
        cor_maj_44_n4) );
  NAND2_X1 cor_maj_44_U3 ( .A1(mul_port_c_1_2[2]), .A2(cor_maj_44_n4), .ZN(
        cor_maj_44_n5) );
  NAND2_X1 cor_maj_44_U2 ( .A1(mul_port_c_1_2[1]), .A2(mul_port_c_1_2[0]), 
        .ZN(cor_maj_44_n6) );
  NAND2_X1 cor_maj_44_U1 ( .A1(cor_maj_44_n6), .A2(cor_maj_44_n5), .ZN(
        cor_maj_44_port_o) );
  OR2_X1 cor_maj_45_U4 ( .A1(mul_port_c_2_0[1]), .A2(mul_port_c_2_0[0]), .ZN(
        cor_maj_45_n4) );
  NAND2_X1 cor_maj_45_U3 ( .A1(mul_port_c_2_0[2]), .A2(cor_maj_45_n4), .ZN(
        cor_maj_45_n5) );
  NAND2_X1 cor_maj_45_U2 ( .A1(mul_port_c_2_0[1]), .A2(mul_port_c_2_0[0]), 
        .ZN(cor_maj_45_n6) );
  NAND2_X1 cor_maj_45_U1 ( .A1(cor_maj_45_n6), .A2(cor_maj_45_n5), .ZN(
        cor_maj_45_port_o) );
  OR2_X1 cor_maj_46_U4 ( .A1(mul_port_c_2_0[1]), .A2(mul_port_c_2_0[0]), .ZN(
        cor_maj_46_n4) );
  NAND2_X1 cor_maj_46_U3 ( .A1(mul_port_c_2_0[2]), .A2(cor_maj_46_n4), .ZN(
        cor_maj_46_n5) );
  NAND2_X1 cor_maj_46_U2 ( .A1(mul_port_c_2_0[1]), .A2(mul_port_c_2_0[0]), 
        .ZN(cor_maj_46_n6) );
  NAND2_X1 cor_maj_46_U1 ( .A1(cor_maj_46_n6), .A2(cor_maj_46_n5), .ZN(
        cor_maj_46_port_o) );
  OR2_X1 cor_maj_47_U4 ( .A1(mul_port_c_2_0[1]), .A2(mul_port_c_2_0[0]), .ZN(
        cor_maj_47_n4) );
  NAND2_X1 cor_maj_47_U3 ( .A1(mul_port_c_2_0[2]), .A2(cor_maj_47_n4), .ZN(
        cor_maj_47_n5) );
  NAND2_X1 cor_maj_47_U2 ( .A1(mul_port_c_2_0[1]), .A2(mul_port_c_2_0[0]), 
        .ZN(cor_maj_47_n6) );
  NAND2_X1 cor_maj_47_U1 ( .A1(cor_maj_47_n6), .A2(cor_maj_47_n5), .ZN(
        cor_maj_47_port_o) );
  OR2_X1 cor_maj_48_U4 ( .A1(mul_port_c_2_1[1]), .A2(mul_port_c_2_1[0]), .ZN(
        cor_maj_48_n4) );
  NAND2_X1 cor_maj_48_U3 ( .A1(mul_port_c_2_1[2]), .A2(cor_maj_48_n4), .ZN(
        cor_maj_48_n5) );
  NAND2_X1 cor_maj_48_U2 ( .A1(mul_port_c_2_1[1]), .A2(mul_port_c_2_1[0]), 
        .ZN(cor_maj_48_n6) );
  NAND2_X1 cor_maj_48_U1 ( .A1(cor_maj_48_n6), .A2(cor_maj_48_n5), .ZN(
        cor_maj_48_port_o) );
  OR2_X1 cor_maj_49_U4 ( .A1(mul_port_c_2_1[1]), .A2(mul_port_c_2_1[0]), .ZN(
        cor_maj_49_n4) );
  NAND2_X1 cor_maj_49_U3 ( .A1(mul_port_c_2_1[2]), .A2(cor_maj_49_n4), .ZN(
        cor_maj_49_n5) );
  NAND2_X1 cor_maj_49_U2 ( .A1(mul_port_c_2_1[1]), .A2(mul_port_c_2_1[0]), 
        .ZN(cor_maj_49_n6) );
  NAND2_X1 cor_maj_49_U1 ( .A1(cor_maj_49_n6), .A2(cor_maj_49_n5), .ZN(
        cor_maj_49_port_o) );
  OR2_X1 cor_maj_50_U4 ( .A1(mul_port_c_2_1[1]), .A2(mul_port_c_2_1[0]), .ZN(
        cor_maj_50_n4) );
  NAND2_X1 cor_maj_50_U3 ( .A1(mul_port_c_2_1[2]), .A2(cor_maj_50_n4), .ZN(
        cor_maj_50_n5) );
  NAND2_X1 cor_maj_50_U2 ( .A1(mul_port_c_2_1[1]), .A2(mul_port_c_2_1[0]), 
        .ZN(cor_maj_50_n6) );
  NAND2_X1 cor_maj_50_U1 ( .A1(cor_maj_50_n6), .A2(cor_maj_50_n5), .ZN(
        cor_maj_50_port_o) );
  OR2_X1 cor_maj_51_U4 ( .A1(mul_port_c_2_2[1]), .A2(mul_port_c_2_2[0]), .ZN(
        cor_maj_51_n4) );
  NAND2_X1 cor_maj_51_U3 ( .A1(mul_port_c_2_2[2]), .A2(cor_maj_51_n4), .ZN(
        cor_maj_51_n5) );
  NAND2_X1 cor_maj_51_U2 ( .A1(mul_port_c_2_2[1]), .A2(mul_port_c_2_2[0]), 
        .ZN(cor_maj_51_n6) );
  NAND2_X1 cor_maj_51_U1 ( .A1(cor_maj_51_n6), .A2(cor_maj_51_n5), .ZN(
        cor_maj_51_port_o) );
  OR2_X1 cor_maj_52_U4 ( .A1(mul_port_c_2_2[1]), .A2(mul_port_c_2_2[0]), .ZN(
        cor_maj_52_n4) );
  NAND2_X1 cor_maj_52_U3 ( .A1(mul_port_c_2_2[2]), .A2(cor_maj_52_n4), .ZN(
        cor_maj_52_n5) );
  NAND2_X1 cor_maj_52_U2 ( .A1(mul_port_c_2_2[1]), .A2(mul_port_c_2_2[0]), 
        .ZN(cor_maj_52_n6) );
  NAND2_X1 cor_maj_52_U1 ( .A1(cor_maj_52_n6), .A2(cor_maj_52_n5), .ZN(
        cor_maj_52_port_o) );
  OR2_X1 cor_maj_53_U4 ( .A1(mul_port_c_2_2[1]), .A2(mul_port_c_2_2[0]), .ZN(
        cor_maj_53_n4) );
  NAND2_X1 cor_maj_53_U3 ( .A1(mul_port_c_2_2[2]), .A2(cor_maj_53_n4), .ZN(
        cor_maj_53_n5) );
  NAND2_X1 cor_maj_53_U2 ( .A1(mul_port_c_2_2[1]), .A2(mul_port_c_2_2[0]), 
        .ZN(cor_maj_53_n6) );
  NAND2_X1 cor_maj_53_U1 ( .A1(cor_maj_53_n6), .A2(cor_maj_53_n5), .ZN(
        cor_maj_53_port_o) );
  XOR2_X1 comp_U18 ( .A(cor_port_v_0_2[2]), .B(cor_port_v_0_1[2]), .Z(comp_n7)
         );
  XOR2_X1 comp_U17 ( .A(cor_port_v_0_0[2]), .B(comp_n7), .Z(comp_port_c_0[2])
         );
  XOR2_X1 comp_U16 ( .A(cor_port_v_0_2[1]), .B(cor_port_v_0_1[1]), .Z(comp_n8)
         );
  XOR2_X1 comp_U15 ( .A(cor_port_v_0_0[1]), .B(comp_n8), .Z(comp_port_c_0[1])
         );
  XOR2_X1 comp_U14 ( .A(cor_port_v_0_2[0]), .B(cor_port_v_0_1[0]), .Z(comp_n9)
         );
  XOR2_X1 comp_U13 ( .A(cor_port_v_0_0[0]), .B(comp_n9), .Z(comp_port_c_0[0])
         );
  XOR2_X1 comp_U12 ( .A(cor_port_v_1_2[2]), .B(cor_port_v_1_1[2]), .Z(comp_n4)
         );
  XOR2_X1 comp_U11 ( .A(cor_port_v_1_0[2]), .B(comp_n4), .Z(comp_port_c_1[2])
         );
  XOR2_X1 comp_U10 ( .A(cor_port_v_1_2[1]), .B(cor_port_v_1_1[1]), .Z(comp_n5)
         );
  XOR2_X1 comp_U9 ( .A(cor_port_v_1_0[1]), .B(comp_n5), .Z(comp_port_c_1[1])
         );
  XOR2_X1 comp_U8 ( .A(cor_port_v_1_2[0]), .B(cor_port_v_1_1[0]), .Z(comp_n6)
         );
  XOR2_X1 comp_U7 ( .A(cor_port_v_1_0[0]), .B(comp_n6), .Z(comp_port_c_1[0])
         );
  XOR2_X1 comp_U6 ( .A(cor_port_v_2_2[2]), .B(cor_port_v_2_1[2]), .Z(comp_n1)
         );
  XOR2_X1 comp_U5 ( .A(cor_port_v_2_0[2]), .B(comp_n1), .Z(comp_port_c_2[2])
         );
  XOR2_X1 comp_U4 ( .A(cor_port_v_2_2[1]), .B(cor_port_v_2_1[1]), .Z(comp_n2)
         );
  XOR2_X1 comp_U3 ( .A(cor_port_v_2_0[1]), .B(comp_n2), .Z(comp_port_c_2[1])
         );
  XOR2_X1 comp_U2 ( .A(cor_port_v_2_2[0]), .B(cor_port_v_2_1[0]), .Z(comp_n3)
         );
  XOR2_X1 comp_U1 ( .A(cor_port_v_2_0[0]), .B(comp_n3), .Z(comp_port_c_2[0])
         );
endmodule

