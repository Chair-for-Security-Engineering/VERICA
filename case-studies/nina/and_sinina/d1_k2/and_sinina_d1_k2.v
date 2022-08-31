
module andSININA ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, port_c_1, 
        port_r, clk, reset );
  input [4:0] port_a_0;
  input [4:0] port_a_1;
  input [4:0] port_b_0;
  input [4:0] port_b_1;
  output [4:0] port_c_0;
  output [4:0] port_c_1;
  input [2:0] port_r;
  input clk, reset;
  wire   mul_n20, mul_n19, mul_n18, mul_n17, mul_n16, mul_n15, mul_n14,
         mul_n13, mul_n12, mul_n11, mul_n10, mul_n9, mul_n8, mul_n7, mul_n6,
         mul_n5, mul_n4, mul_n3, mul_n2, mul_n1, mul_N21, mul_N20, mul_N19,
         mul_N18, mul_N17, mul_N16, mul_N15, mul_N14, mul_N13, mul_N12,
         cor_maj_39_port_o, cor_maj_38_port_o, cor_maj_37_port_o,
         cor_maj_36_port_o, cor_maj_35_port_o, cor_maj_34_port_o,
         cor_maj_33_port_o, cor_maj_32_port_o, cor_maj_31_port_o,
         cor_maj_30_port_o, cor_maj_29_port_o, cor_maj_28_port_o,
         cor_maj_27_port_o, cor_maj_26_port_o, cor_maj_25_port_o,
         cor_maj_24_port_o, cor_maj_23_port_o, cor_maj_22_port_o,
         cor_maj_21_port_o, cor_maj_20_port_o, cor_maj_20_n13, cor_maj_20_n12,
         cor_maj_20_n11, cor_maj_20_n10, cor_maj_20_n9, cor_maj_20_n8,
         cor_maj_20_n7, cor_maj_20_n6, cor_maj_20_n5, cor_maj_20_n4,
         cor_maj_20_n3, cor_maj_20_n2, cor_maj_20_n1, cor_maj_21_n26,
         cor_maj_21_n25, cor_maj_21_n24, cor_maj_21_n23, cor_maj_21_n22,
         cor_maj_21_n21, cor_maj_21_n20, cor_maj_21_n19, cor_maj_21_n18,
         cor_maj_21_n17, cor_maj_21_n16, cor_maj_21_n15, cor_maj_21_n14,
         cor_maj_22_n26, cor_maj_22_n25, cor_maj_22_n24, cor_maj_22_n23,
         cor_maj_22_n22, cor_maj_22_n21, cor_maj_22_n20, cor_maj_22_n19,
         cor_maj_22_n18, cor_maj_22_n17, cor_maj_22_n16, cor_maj_22_n15,
         cor_maj_22_n14, cor_maj_23_n26, cor_maj_23_n25, cor_maj_23_n24,
         cor_maj_23_n23, cor_maj_23_n22, cor_maj_23_n21, cor_maj_23_n20,
         cor_maj_23_n19, cor_maj_23_n18, cor_maj_23_n17, cor_maj_23_n16,
         cor_maj_23_n15, cor_maj_23_n14, cor_maj_24_n26, cor_maj_24_n25,
         cor_maj_24_n24, cor_maj_24_n23, cor_maj_24_n22, cor_maj_24_n21,
         cor_maj_24_n20, cor_maj_24_n19, cor_maj_24_n18, cor_maj_24_n17,
         cor_maj_24_n16, cor_maj_24_n15, cor_maj_24_n14, cor_maj_25_n26,
         cor_maj_25_n25, cor_maj_25_n24, cor_maj_25_n23, cor_maj_25_n22,
         cor_maj_25_n21, cor_maj_25_n20, cor_maj_25_n19, cor_maj_25_n18,
         cor_maj_25_n17, cor_maj_25_n16, cor_maj_25_n15, cor_maj_25_n14,
         cor_maj_26_n26, cor_maj_26_n25, cor_maj_26_n24, cor_maj_26_n23,
         cor_maj_26_n22, cor_maj_26_n21, cor_maj_26_n20, cor_maj_26_n19,
         cor_maj_26_n18, cor_maj_26_n17, cor_maj_26_n16, cor_maj_26_n15,
         cor_maj_26_n14, cor_maj_27_n26, cor_maj_27_n25, cor_maj_27_n24,
         cor_maj_27_n23, cor_maj_27_n22, cor_maj_27_n21, cor_maj_27_n20,
         cor_maj_27_n19, cor_maj_27_n18, cor_maj_27_n17, cor_maj_27_n16,
         cor_maj_27_n15, cor_maj_27_n14, cor_maj_28_n26, cor_maj_28_n25,
         cor_maj_28_n24, cor_maj_28_n23, cor_maj_28_n22, cor_maj_28_n21,
         cor_maj_28_n20, cor_maj_28_n19, cor_maj_28_n18, cor_maj_28_n17,
         cor_maj_28_n16, cor_maj_28_n15, cor_maj_28_n14, cor_maj_29_n26,
         cor_maj_29_n25, cor_maj_29_n24, cor_maj_29_n23, cor_maj_29_n22,
         cor_maj_29_n21, cor_maj_29_n20, cor_maj_29_n19, cor_maj_29_n18,
         cor_maj_29_n17, cor_maj_29_n16, cor_maj_29_n15, cor_maj_29_n14,
         cor_maj_30_n26, cor_maj_30_n25, cor_maj_30_n24, cor_maj_30_n23,
         cor_maj_30_n22, cor_maj_30_n21, cor_maj_30_n20, cor_maj_30_n19,
         cor_maj_30_n18, cor_maj_30_n17, cor_maj_30_n16, cor_maj_30_n15,
         cor_maj_30_n14, cor_maj_31_n26, cor_maj_31_n25, cor_maj_31_n24,
         cor_maj_31_n23, cor_maj_31_n22, cor_maj_31_n21, cor_maj_31_n20,
         cor_maj_31_n19, cor_maj_31_n18, cor_maj_31_n17, cor_maj_31_n16,
         cor_maj_31_n15, cor_maj_31_n14, cor_maj_32_n26, cor_maj_32_n25,
         cor_maj_32_n24, cor_maj_32_n23, cor_maj_32_n22, cor_maj_32_n21,
         cor_maj_32_n20, cor_maj_32_n19, cor_maj_32_n18, cor_maj_32_n17,
         cor_maj_32_n16, cor_maj_32_n15, cor_maj_32_n14, cor_maj_33_n26,
         cor_maj_33_n25, cor_maj_33_n24, cor_maj_33_n23, cor_maj_33_n22,
         cor_maj_33_n21, cor_maj_33_n20, cor_maj_33_n19, cor_maj_33_n18,
         cor_maj_33_n17, cor_maj_33_n16, cor_maj_33_n15, cor_maj_33_n14,
         cor_maj_34_n26, cor_maj_34_n25, cor_maj_34_n24, cor_maj_34_n23,
         cor_maj_34_n22, cor_maj_34_n21, cor_maj_34_n20, cor_maj_34_n19,
         cor_maj_34_n18, cor_maj_34_n17, cor_maj_34_n16, cor_maj_34_n15,
         cor_maj_34_n14, cor_maj_35_n26, cor_maj_35_n25, cor_maj_35_n24,
         cor_maj_35_n23, cor_maj_35_n22, cor_maj_35_n21, cor_maj_35_n20,
         cor_maj_35_n19, cor_maj_35_n18, cor_maj_35_n17, cor_maj_35_n16,
         cor_maj_35_n15, cor_maj_35_n14, cor_maj_36_n26, cor_maj_36_n25,
         cor_maj_36_n24, cor_maj_36_n23, cor_maj_36_n22, cor_maj_36_n21,
         cor_maj_36_n20, cor_maj_36_n19, cor_maj_36_n18, cor_maj_36_n17,
         cor_maj_36_n16, cor_maj_36_n15, cor_maj_36_n14, cor_maj_37_n26,
         cor_maj_37_n25, cor_maj_37_n24, cor_maj_37_n23, cor_maj_37_n22,
         cor_maj_37_n21, cor_maj_37_n20, cor_maj_37_n19, cor_maj_37_n18,
         cor_maj_37_n17, cor_maj_37_n16, cor_maj_37_n15, cor_maj_37_n14,
         cor_maj_38_n26, cor_maj_38_n25, cor_maj_38_n24, cor_maj_38_n23,
         cor_maj_38_n22, cor_maj_38_n21, cor_maj_38_n20, cor_maj_38_n19,
         cor_maj_38_n18, cor_maj_38_n17, cor_maj_38_n16, cor_maj_38_n15,
         cor_maj_38_n14, cor_maj_39_n26, cor_maj_39_n25, cor_maj_39_n24,
         cor_maj_39_n23, cor_maj_39_n22, cor_maj_39_n21, cor_maj_39_n20,
         cor_maj_39_n19, cor_maj_39_n18, cor_maj_39_n17, cor_maj_39_n16,
         cor_maj_39_n15, cor_maj_39_n14;
  wire   [4:0] mul_port_c_0_0;
  wire   [4:0] mul_port_c_0_1;
  wire   [4:0] mul_port_c_1_0;
  wire   [4:0] mul_port_c_1_1;
  wire   [4:0] cor_port_v_0_0;
  wire   [4:0] cor_port_v_0_1;
  wire   [4:0] cor_port_v_1_0;
  wire   [4:0] cor_port_v_1_1;
  wire   [4:0] comp_port_c_0;
  wire   [4:0] comp_port_c_1;
  wire   [4:0] mul_xor2_11_port_z;
  wire   [4:0] mul_xor2_10_port_z;
  wire   [4:0] mul_xor2_9_port_z;
  wire   [4:0] mul_xor2_9_port_a0;
  wire   [4:0] mul_xor2_8_port_z;
  wire   [4:0] mul_xor2_7_port_z;
  wire   [4:0] mul_xor2_6_port_z;
  wire   [4:0] mul_xor2_6_port_a0;

  DFF_X1 result_0_reg_4_ ( .D(comp_port_c_0[4]), .CK(clk), .Q(port_c_0[4]), 
        .QN() );
  DFF_X1 result_0_reg_3_ ( .D(comp_port_c_0[3]), .CK(clk), .Q(port_c_0[3]), 
        .QN() );
  DFF_X1 result_0_reg_2_ ( .D(comp_port_c_0[2]), .CK(clk), .Q(port_c_0[2]), 
        .QN() );
  DFF_X1 result_0_reg_1_ ( .D(comp_port_c_0[1]), .CK(clk), .Q(port_c_0[1]), 
        .QN() );
  DFF_X1 result_0_reg_0_ ( .D(comp_port_c_0[0]), .CK(clk), .Q(port_c_0[0]), 
        .QN() );
  DFF_X1 result_1_reg_4_ ( .D(comp_port_c_1[4]), .CK(clk), .Q(port_c_1[4]), 
        .QN() );
  DFF_X1 result_1_reg_3_ ( .D(comp_port_c_1[3]), .CK(clk), .Q(port_c_1[3]), 
        .QN() );
  DFF_X1 result_1_reg_2_ ( .D(comp_port_c_1[2]), .CK(clk), .Q(port_c_1[2]), 
        .QN() );
  DFF_X1 result_1_reg_1_ ( .D(comp_port_c_1[1]), .CK(clk), .Q(port_c_1[1]), 
        .QN() );
  DFF_X1 result_1_reg_0_ ( .D(comp_port_c_1[0]), .CK(clk), .Q(port_c_1[0]), 
        .QN() );
  INV_X1 mul_U42 ( .A(port_a_1[4]), .ZN(mul_n6) );
  INV_X1 mul_U41 ( .A(port_a_1[3]), .ZN(mul_n7) );
  INV_X1 mul_U40 ( .A(port_a_1[2]), .ZN(mul_n8) );
  INV_X1 mul_U39 ( .A(port_a_1[1]), .ZN(mul_n9) );
  INV_X1 mul_U38 ( .A(port_a_1[0]), .ZN(mul_n10) );
  INV_X1 mul_U37 ( .A(port_a_0[4]), .ZN(mul_n1) );
  INV_X1 mul_U36 ( .A(port_a_0[3]), .ZN(mul_n2) );
  INV_X1 mul_U35 ( .A(port_a_0[2]), .ZN(mul_n3) );
  INV_X1 mul_U34 ( .A(port_a_0[1]), .ZN(mul_n4) );
  INV_X1 mul_U33 ( .A(port_a_0[0]), .ZN(mul_n5) );
  INV_X1 mul_U32 ( .A(port_b_0[4]), .ZN(mul_n11) );
  INV_X1 mul_U31 ( .A(port_b_0[3]), .ZN(mul_n12) );
  INV_X1 mul_U30 ( .A(port_b_0[2]), .ZN(mul_n13) );
  INV_X1 mul_U29 ( .A(port_b_0[1]), .ZN(mul_n14) );
  INV_X1 mul_U28 ( .A(port_b_0[0]), .ZN(mul_n15) );
  INV_X1 mul_U27 ( .A(port_b_1[4]), .ZN(mul_n16) );
  INV_X1 mul_U26 ( .A(port_b_1[3]), .ZN(mul_n17) );
  INV_X1 mul_U25 ( .A(port_b_1[2]), .ZN(mul_n18) );
  INV_X1 mul_U24 ( .A(port_b_1[1]), .ZN(mul_n19) );
  INV_X1 mul_U23 ( .A(port_b_1[0]), .ZN(mul_n20) );
  NOR2_X1 mul_U22 ( .A1(mul_n1), .A2(mul_n16), .ZN(mul_xor2_6_port_a0[4]) );
  NOR2_X1 mul_U21 ( .A1(mul_n2), .A2(mul_n17), .ZN(mul_xor2_6_port_a0[3]) );
  NOR2_X1 mul_U20 ( .A1(mul_n3), .A2(mul_n18), .ZN(mul_xor2_6_port_a0[2]) );
  NOR2_X1 mul_U19 ( .A1(mul_n4), .A2(mul_n19), .ZN(mul_xor2_6_port_a0[1]) );
  NOR2_X1 mul_U18 ( .A1(mul_n5), .A2(mul_n20), .ZN(mul_xor2_6_port_a0[0]) );
  NOR2_X1 mul_U17 ( .A1(mul_n6), .A2(mul_n11), .ZN(mul_xor2_9_port_a0[4]) );
  NOR2_X1 mul_U16 ( .A1(mul_n7), .A2(mul_n12), .ZN(mul_xor2_9_port_a0[3]) );
  NOR2_X1 mul_U15 ( .A1(mul_n8), .A2(mul_n13), .ZN(mul_xor2_9_port_a0[2]) );
  NOR2_X1 mul_U14 ( .A1(mul_n9), .A2(mul_n14), .ZN(mul_xor2_9_port_a0[1]) );
  NOR2_X1 mul_U13 ( .A1(mul_n10), .A2(mul_n15), .ZN(mul_xor2_9_port_a0[0]) );
  NOR2_X1 mul_U12 ( .A1(mul_n11), .A2(mul_n1), .ZN(mul_N12) );
  NOR2_X1 mul_U11 ( .A1(mul_n12), .A2(mul_n2), .ZN(mul_N13) );
  NOR2_X1 mul_U10 ( .A1(mul_n13), .A2(mul_n3), .ZN(mul_N14) );
  NOR2_X1 mul_U9 ( .A1(mul_n14), .A2(mul_n4), .ZN(mul_N15) );
  NOR2_X1 mul_U8 ( .A1(mul_n15), .A2(mul_n5), .ZN(mul_N16) );
  NOR2_X1 mul_U7 ( .A1(mul_n6), .A2(mul_n16), .ZN(mul_N17) );
  NOR2_X1 mul_U6 ( .A1(mul_n7), .A2(mul_n17), .ZN(mul_N18) );
  NOR2_X1 mul_U5 ( .A1(mul_n8), .A2(mul_n18), .ZN(mul_N19) );
  NOR2_X1 mul_U4 ( .A1(mul_n9), .A2(mul_n19), .ZN(mul_N20) );
  NOR2_X1 mul_U3 ( .A1(mul_n10), .A2(mul_n20), .ZN(mul_N21) );
  DFF_X1 mul_u_1_1_reg_0_ ( .D(mul_N21), .CK(clk), .Q(mul_port_c_1_1[0]), 
        .QN() );
  DFF_X1 mul_u_1_1_reg_1_ ( .D(mul_N20), .CK(clk), .Q(mul_port_c_1_1[1]), 
        .QN() );
  DFF_X1 mul_u_1_1_reg_2_ ( .D(mul_N19), .CK(clk), .Q(mul_port_c_1_1[2]), 
        .QN() );
  DFF_X1 mul_u_1_1_reg_3_ ( .D(mul_N18), .CK(clk), .Q(mul_port_c_1_1[3]), 
        .QN() );
  DFF_X1 mul_u_1_1_reg_4_ ( .D(mul_N17), .CK(clk), .Q(mul_port_c_1_1[4]), 
        .QN() );
  DFF_X1 mul_u_1_0_reg_0_ ( .D(mul_xor2_11_port_z[0]), .CK(clk), .Q(
        mul_port_c_1_0[0]), .QN() );
  DFF_X1 mul_u_1_0_reg_1_ ( .D(mul_xor2_11_port_z[1]), .CK(clk), .Q(
        mul_port_c_1_0[1]), .QN() );
  DFF_X1 mul_u_1_0_reg_2_ ( .D(mul_xor2_11_port_z[2]), .CK(clk), .Q(
        mul_port_c_1_0[2]), .QN() );
  DFF_X1 mul_u_1_0_reg_3_ ( .D(mul_xor2_11_port_z[3]), .CK(clk), .Q(
        mul_port_c_1_0[3]), .QN() );
  DFF_X1 mul_u_1_0_reg_4_ ( .D(mul_xor2_11_port_z[4]), .CK(clk), .Q(
        mul_port_c_1_0[4]), .QN() );
  DFF_X1 mul_u_0_1_reg_0_ ( .D(mul_xor2_8_port_z[0]), .CK(clk), .Q(
        mul_port_c_0_1[0]), .QN() );
  DFF_X1 mul_u_0_1_reg_1_ ( .D(mul_xor2_8_port_z[1]), .CK(clk), .Q(
        mul_port_c_0_1[1]), .QN() );
  DFF_X1 mul_u_0_1_reg_2_ ( .D(mul_xor2_8_port_z[2]), .CK(clk), .Q(
        mul_port_c_0_1[2]), .QN() );
  DFF_X1 mul_u_0_1_reg_3_ ( .D(mul_xor2_8_port_z[3]), .CK(clk), .Q(
        mul_port_c_0_1[3]), .QN() );
  DFF_X1 mul_u_0_1_reg_4_ ( .D(mul_xor2_8_port_z[4]), .CK(clk), .Q(
        mul_port_c_0_1[4]), .QN() );
  DFF_X1 mul_u_0_0_reg_0_ ( .D(mul_N16), .CK(clk), .Q(mul_port_c_0_0[0]), 
        .QN() );
  DFF_X1 mul_u_0_0_reg_1_ ( .D(mul_N15), .CK(clk), .Q(mul_port_c_0_0[1]), 
        .QN() );
  DFF_X1 mul_u_0_0_reg_2_ ( .D(mul_N14), .CK(clk), .Q(mul_port_c_0_0[2]), 
        .QN() );
  DFF_X1 mul_u_0_0_reg_3_ ( .D(mul_N13), .CK(clk), .Q(mul_port_c_0_0[3]), 
        .QN() );
  DFF_X1 mul_u_0_0_reg_4_ ( .D(mul_N12), .CK(clk), .Q(mul_port_c_0_0[4]), 
        .QN() );
  XOR2_X1 mul_xor2_6_U5 ( .A(port_r[0]), .B(mul_xor2_6_port_a0[4]), .Z(
        mul_xor2_6_port_z[4]) );
  XOR2_X1 mul_xor2_6_U4 ( .A(port_r[0]), .B(mul_xor2_6_port_a0[3]), .Z(
        mul_xor2_6_port_z[3]) );
  XOR2_X1 mul_xor2_6_U3 ( .A(port_r[0]), .B(mul_xor2_6_port_a0[2]), .Z(
        mul_xor2_6_port_z[2]) );
  XOR2_X1 mul_xor2_6_U2 ( .A(port_r[0]), .B(mul_xor2_6_port_a0[1]), .Z(
        mul_xor2_6_port_z[1]) );
  XOR2_X1 mul_xor2_6_U1 ( .A(port_r[0]), .B(mul_xor2_6_port_a0[0]), .Z(
        mul_xor2_6_port_z[0]) );
  XOR2_X1 mul_xor2_7_U5 ( .A(port_r[1]), .B(mul_xor2_6_port_z[4]), .Z(
        mul_xor2_7_port_z[4]) );
  XOR2_X1 mul_xor2_7_U4 ( .A(port_r[1]), .B(mul_xor2_6_port_z[3]), .Z(
        mul_xor2_7_port_z[3]) );
  XOR2_X1 mul_xor2_7_U3 ( .A(port_r[1]), .B(mul_xor2_6_port_z[2]), .Z(
        mul_xor2_7_port_z[2]) );
  XOR2_X1 mul_xor2_7_U2 ( .A(port_r[1]), .B(mul_xor2_6_port_z[1]), .Z(
        mul_xor2_7_port_z[1]) );
  XOR2_X1 mul_xor2_7_U1 ( .A(port_r[1]), .B(mul_xor2_6_port_z[0]), .Z(
        mul_xor2_7_port_z[0]) );
  XOR2_X1 mul_xor2_8_U5 ( .A(port_r[2]), .B(mul_xor2_7_port_z[4]), .Z(
        mul_xor2_8_port_z[4]) );
  XOR2_X1 mul_xor2_8_U4 ( .A(port_r[2]), .B(mul_xor2_7_port_z[3]), .Z(
        mul_xor2_8_port_z[3]) );
  XOR2_X1 mul_xor2_8_U3 ( .A(port_r[2]), .B(mul_xor2_7_port_z[2]), .Z(
        mul_xor2_8_port_z[2]) );
  XOR2_X1 mul_xor2_8_U2 ( .A(port_r[2]), .B(mul_xor2_7_port_z[1]), .Z(
        mul_xor2_8_port_z[1]) );
  XOR2_X1 mul_xor2_8_U1 ( .A(port_r[2]), .B(mul_xor2_7_port_z[0]), .Z(
        mul_xor2_8_port_z[0]) );
  XOR2_X1 mul_xor2_9_U5 ( .A(port_r[0]), .B(mul_xor2_9_port_a0[4]), .Z(
        mul_xor2_9_port_z[4]) );
  XOR2_X1 mul_xor2_9_U4 ( .A(port_r[0]), .B(mul_xor2_9_port_a0[3]), .Z(
        mul_xor2_9_port_z[3]) );
  XOR2_X1 mul_xor2_9_U3 ( .A(port_r[0]), .B(mul_xor2_9_port_a0[2]), .Z(
        mul_xor2_9_port_z[2]) );
  XOR2_X1 mul_xor2_9_U2 ( .A(port_r[0]), .B(mul_xor2_9_port_a0[1]), .Z(
        mul_xor2_9_port_z[1]) );
  XOR2_X1 mul_xor2_9_U1 ( .A(port_r[0]), .B(mul_xor2_9_port_a0[0]), .Z(
        mul_xor2_9_port_z[0]) );
  XOR2_X1 mul_xor2_10_U5 ( .A(port_r[1]), .B(mul_xor2_9_port_z[4]), .Z(
        mul_xor2_10_port_z[4]) );
  XOR2_X1 mul_xor2_10_U4 ( .A(port_r[1]), .B(mul_xor2_9_port_z[3]), .Z(
        mul_xor2_10_port_z[3]) );
  XOR2_X1 mul_xor2_10_U3 ( .A(port_r[1]), .B(mul_xor2_9_port_z[2]), .Z(
        mul_xor2_10_port_z[2]) );
  XOR2_X1 mul_xor2_10_U2 ( .A(port_r[1]), .B(mul_xor2_9_port_z[1]), .Z(
        mul_xor2_10_port_z[1]) );
  XOR2_X1 mul_xor2_10_U1 ( .A(port_r[1]), .B(mul_xor2_9_port_z[0]), .Z(
        mul_xor2_10_port_z[0]) );
  XOR2_X1 mul_xor2_11_U5 ( .A(port_r[2]), .B(mul_xor2_10_port_z[4]), .Z(
        mul_xor2_11_port_z[4]) );
  XOR2_X1 mul_xor2_11_U4 ( .A(port_r[2]), .B(mul_xor2_10_port_z[3]), .Z(
        mul_xor2_11_port_z[3]) );
  XOR2_X1 mul_xor2_11_U3 ( .A(port_r[2]), .B(mul_xor2_10_port_z[2]), .Z(
        mul_xor2_11_port_z[2]) );
  XOR2_X1 mul_xor2_11_U2 ( .A(port_r[2]), .B(mul_xor2_10_port_z[1]), .Z(
        mul_xor2_11_port_z[1]) );
  XOR2_X1 mul_xor2_11_U1 ( .A(port_r[2]), .B(mul_xor2_10_port_z[0]), .Z(
        mul_xor2_11_port_z[0]) );
  DFF_X1 cor_m_1_1_reg_0_ ( .D(cor_maj_35_port_o), .CK(clk), .Q(
        cor_port_v_1_1[0]), .QN() );
  DFF_X1 cor_m_1_1_reg_1_ ( .D(cor_maj_36_port_o), .CK(clk), .Q(
        cor_port_v_1_1[1]), .QN() );
  DFF_X1 cor_m_1_1_reg_2_ ( .D(cor_maj_37_port_o), .CK(clk), .Q(
        cor_port_v_1_1[2]), .QN() );
  DFF_X1 cor_m_1_1_reg_3_ ( .D(cor_maj_38_port_o), .CK(clk), .Q(
        cor_port_v_1_1[3]), .QN() );
  DFF_X1 cor_m_1_1_reg_4_ ( .D(cor_maj_39_port_o), .CK(clk), .Q(
        cor_port_v_1_1[4]), .QN() );
  DFF_X1 cor_m_1_0_reg_0_ ( .D(cor_maj_30_port_o), .CK(clk), .Q(
        cor_port_v_1_0[0]), .QN() );
  DFF_X1 cor_m_1_0_reg_1_ ( .D(cor_maj_31_port_o), .CK(clk), .Q(
        cor_port_v_1_0[1]), .QN() );
  DFF_X1 cor_m_1_0_reg_2_ ( .D(cor_maj_32_port_o), .CK(clk), .Q(
        cor_port_v_1_0[2]), .QN() );
  DFF_X1 cor_m_1_0_reg_3_ ( .D(cor_maj_33_port_o), .CK(clk), .Q(
        cor_port_v_1_0[3]), .QN() );
  DFF_X1 cor_m_1_0_reg_4_ ( .D(cor_maj_34_port_o), .CK(clk), .Q(
        cor_port_v_1_0[4]), .QN() );
  DFF_X1 cor_m_0_1_reg_0_ ( .D(cor_maj_25_port_o), .CK(clk), .Q(
        cor_port_v_0_1[0]), .QN() );
  DFF_X1 cor_m_0_1_reg_1_ ( .D(cor_maj_26_port_o), .CK(clk), .Q(
        cor_port_v_0_1[1]), .QN() );
  DFF_X1 cor_m_0_1_reg_2_ ( .D(cor_maj_27_port_o), .CK(clk), .Q(
        cor_port_v_0_1[2]), .QN() );
  DFF_X1 cor_m_0_1_reg_3_ ( .D(cor_maj_28_port_o), .CK(clk), .Q(
        cor_port_v_0_1[3]), .QN() );
  DFF_X1 cor_m_0_1_reg_4_ ( .D(cor_maj_29_port_o), .CK(clk), .Q(
        cor_port_v_0_1[4]), .QN() );
  DFF_X1 cor_m_0_0_reg_0_ ( .D(cor_maj_20_port_o), .CK(clk), .Q(
        cor_port_v_0_0[0]), .QN() );
  DFF_X1 cor_m_0_0_reg_1_ ( .D(cor_maj_21_port_o), .CK(clk), .Q(
        cor_port_v_0_0[1]), .QN() );
  DFF_X1 cor_m_0_0_reg_2_ ( .D(cor_maj_22_port_o), .CK(clk), .Q(
        cor_port_v_0_0[2]), .QN() );
  DFF_X1 cor_m_0_0_reg_3_ ( .D(cor_maj_23_port_o), .CK(clk), .Q(
        cor_port_v_0_0[3]), .QN() );
  DFF_X1 cor_m_0_0_reg_4_ ( .D(cor_maj_24_port_o), .CK(clk), .Q(
        cor_port_v_0_0[4]), .QN() );
  NAND2_X1 cor_maj_20_U15 ( .A1(cor_maj_20_n6), .A2(cor_maj_20_n5), .ZN(
        cor_maj_20_n10) );
  NAND2_X1 cor_maj_20_U14 ( .A1(mul_port_c_0_0[3]), .A2(mul_port_c_0_0[4]), 
        .ZN(cor_maj_20_n9) );
  NAND2_X1 cor_maj_20_U13 ( .A1(cor_maj_20_n9), .A2(cor_maj_20_n10), .ZN(
        cor_maj_20_n8) );
  NAND2_X1 cor_maj_20_U12 ( .A1(mul_port_c_0_0[2]), .A2(cor_maj_20_n11), .ZN(
        cor_maj_20_n13) );
  NAND2_X1 cor_maj_20_U11 ( .A1(mul_port_c_0_0[0]), .A2(mul_port_c_0_0[1]), 
        .ZN(cor_maj_20_n12) );
  NAND2_X1 cor_maj_20_U10 ( .A1(cor_maj_20_n12), .A2(cor_maj_20_n13), .ZN(
        cor_maj_20_n7) );
  XOR2_X1 cor_maj_20_U9 ( .A(mul_port_c_0_0[2]), .B(cor_maj_20_n11), .Z(
        cor_maj_20_n6) );
  XOR2_X1 cor_maj_20_U8 ( .A(mul_port_c_0_0[3]), .B(mul_port_c_0_0[4]), .Z(
        cor_maj_20_n5) );
  XOR2_X1 cor_maj_20_U7 ( .A(mul_port_c_0_0[0]), .B(mul_port_c_0_0[1]), .Z(
        cor_maj_20_n11) );
  OR2_X1 cor_maj_20_U6 ( .A1(cor_maj_20_n7), .A2(cor_maj_20_n8), .ZN(
        cor_maj_20_n3) );
  XOR2_X1 cor_maj_20_U5 ( .A(cor_maj_20_n5), .B(cor_maj_20_n6), .Z(
        cor_maj_20_n4) );
  NAND2_X1 cor_maj_20_U4 ( .A1(cor_maj_20_n3), .A2(cor_maj_20_n4), .ZN(
        cor_maj_20_n2) );
  NAND2_X1 cor_maj_20_U3 ( .A1(cor_maj_20_n7), .A2(cor_maj_20_n8), .ZN(
        cor_maj_20_n1) );
  NAND2_X1 cor_maj_20_U2 ( .A1(cor_maj_20_n1), .A2(cor_maj_20_n2), .ZN(
        cor_maj_20_port_o) );
  NAND2_X1 cor_maj_21_U15 ( .A1(cor_maj_21_n21), .A2(cor_maj_21_n22), .ZN(
        cor_maj_21_n17) );
  NAND2_X1 cor_maj_21_U14 ( .A1(mul_port_c_0_0[3]), .A2(mul_port_c_0_0[4]), 
        .ZN(cor_maj_21_n18) );
  NAND2_X1 cor_maj_21_U13 ( .A1(cor_maj_21_n18), .A2(cor_maj_21_n17), .ZN(
        cor_maj_21_n19) );
  NAND2_X1 cor_maj_21_U12 ( .A1(mul_port_c_0_0[2]), .A2(cor_maj_21_n16), .ZN(
        cor_maj_21_n14) );
  NAND2_X1 cor_maj_21_U11 ( .A1(mul_port_c_0_0[0]), .A2(mul_port_c_0_0[1]), 
        .ZN(cor_maj_21_n15) );
  NAND2_X1 cor_maj_21_U10 ( .A1(cor_maj_21_n15), .A2(cor_maj_21_n14), .ZN(
        cor_maj_21_n20) );
  XOR2_X1 cor_maj_21_U9 ( .A(mul_port_c_0_0[2]), .B(cor_maj_21_n16), .Z(
        cor_maj_21_n21) );
  XOR2_X1 cor_maj_21_U8 ( .A(mul_port_c_0_0[3]), .B(mul_port_c_0_0[4]), .Z(
        cor_maj_21_n22) );
  XOR2_X1 cor_maj_21_U7 ( .A(mul_port_c_0_0[0]), .B(mul_port_c_0_0[1]), .Z(
        cor_maj_21_n16) );
  OR2_X1 cor_maj_21_U6 ( .A1(cor_maj_21_n20), .A2(cor_maj_21_n19), .ZN(
        cor_maj_21_n24) );
  XOR2_X1 cor_maj_21_U5 ( .A(cor_maj_21_n22), .B(cor_maj_21_n21), .Z(
        cor_maj_21_n23) );
  NAND2_X1 cor_maj_21_U4 ( .A1(cor_maj_21_n24), .A2(cor_maj_21_n23), .ZN(
        cor_maj_21_n25) );
  NAND2_X1 cor_maj_21_U3 ( .A1(cor_maj_21_n20), .A2(cor_maj_21_n19), .ZN(
        cor_maj_21_n26) );
  NAND2_X1 cor_maj_21_U2 ( .A1(cor_maj_21_n26), .A2(cor_maj_21_n25), .ZN(
        cor_maj_21_port_o) );
  NAND2_X1 cor_maj_22_U15 ( .A1(cor_maj_22_n21), .A2(cor_maj_22_n22), .ZN(
        cor_maj_22_n17) );
  NAND2_X1 cor_maj_22_U14 ( .A1(mul_port_c_0_0[3]), .A2(mul_port_c_0_0[4]), 
        .ZN(cor_maj_22_n18) );
  NAND2_X1 cor_maj_22_U13 ( .A1(cor_maj_22_n18), .A2(cor_maj_22_n17), .ZN(
        cor_maj_22_n19) );
  NAND2_X1 cor_maj_22_U12 ( .A1(mul_port_c_0_0[2]), .A2(cor_maj_22_n16), .ZN(
        cor_maj_22_n14) );
  NAND2_X1 cor_maj_22_U11 ( .A1(mul_port_c_0_0[0]), .A2(mul_port_c_0_0[1]), 
        .ZN(cor_maj_22_n15) );
  NAND2_X1 cor_maj_22_U10 ( .A1(cor_maj_22_n15), .A2(cor_maj_22_n14), .ZN(
        cor_maj_22_n20) );
  XOR2_X1 cor_maj_22_U9 ( .A(mul_port_c_0_0[2]), .B(cor_maj_22_n16), .Z(
        cor_maj_22_n21) );
  XOR2_X1 cor_maj_22_U8 ( .A(mul_port_c_0_0[3]), .B(mul_port_c_0_0[4]), .Z(
        cor_maj_22_n22) );
  XOR2_X1 cor_maj_22_U7 ( .A(mul_port_c_0_0[0]), .B(mul_port_c_0_0[1]), .Z(
        cor_maj_22_n16) );
  OR2_X1 cor_maj_22_U6 ( .A1(cor_maj_22_n20), .A2(cor_maj_22_n19), .ZN(
        cor_maj_22_n24) );
  XOR2_X1 cor_maj_22_U5 ( .A(cor_maj_22_n22), .B(cor_maj_22_n21), .Z(
        cor_maj_22_n23) );
  NAND2_X1 cor_maj_22_U4 ( .A1(cor_maj_22_n24), .A2(cor_maj_22_n23), .ZN(
        cor_maj_22_n25) );
  NAND2_X1 cor_maj_22_U3 ( .A1(cor_maj_22_n20), .A2(cor_maj_22_n19), .ZN(
        cor_maj_22_n26) );
  NAND2_X1 cor_maj_22_U2 ( .A1(cor_maj_22_n26), .A2(cor_maj_22_n25), .ZN(
        cor_maj_22_port_o) );
  NAND2_X1 cor_maj_23_U15 ( .A1(cor_maj_23_n21), .A2(cor_maj_23_n22), .ZN(
        cor_maj_23_n17) );
  NAND2_X1 cor_maj_23_U14 ( .A1(mul_port_c_0_0[3]), .A2(mul_port_c_0_0[4]), 
        .ZN(cor_maj_23_n18) );
  NAND2_X1 cor_maj_23_U13 ( .A1(cor_maj_23_n18), .A2(cor_maj_23_n17), .ZN(
        cor_maj_23_n19) );
  NAND2_X1 cor_maj_23_U12 ( .A1(mul_port_c_0_0[2]), .A2(cor_maj_23_n16), .ZN(
        cor_maj_23_n14) );
  NAND2_X1 cor_maj_23_U11 ( .A1(mul_port_c_0_0[0]), .A2(mul_port_c_0_0[1]), 
        .ZN(cor_maj_23_n15) );
  NAND2_X1 cor_maj_23_U10 ( .A1(cor_maj_23_n15), .A2(cor_maj_23_n14), .ZN(
        cor_maj_23_n20) );
  XOR2_X1 cor_maj_23_U9 ( .A(mul_port_c_0_0[2]), .B(cor_maj_23_n16), .Z(
        cor_maj_23_n21) );
  XOR2_X1 cor_maj_23_U8 ( .A(mul_port_c_0_0[3]), .B(mul_port_c_0_0[4]), .Z(
        cor_maj_23_n22) );
  XOR2_X1 cor_maj_23_U7 ( .A(mul_port_c_0_0[0]), .B(mul_port_c_0_0[1]), .Z(
        cor_maj_23_n16) );
  OR2_X1 cor_maj_23_U6 ( .A1(cor_maj_23_n20), .A2(cor_maj_23_n19), .ZN(
        cor_maj_23_n24) );
  XOR2_X1 cor_maj_23_U5 ( .A(cor_maj_23_n22), .B(cor_maj_23_n21), .Z(
        cor_maj_23_n23) );
  NAND2_X1 cor_maj_23_U4 ( .A1(cor_maj_23_n24), .A2(cor_maj_23_n23), .ZN(
        cor_maj_23_n25) );
  NAND2_X1 cor_maj_23_U3 ( .A1(cor_maj_23_n20), .A2(cor_maj_23_n19), .ZN(
        cor_maj_23_n26) );
  NAND2_X1 cor_maj_23_U2 ( .A1(cor_maj_23_n26), .A2(cor_maj_23_n25), .ZN(
        cor_maj_23_port_o) );
  NAND2_X1 cor_maj_24_U15 ( .A1(cor_maj_24_n21), .A2(cor_maj_24_n22), .ZN(
        cor_maj_24_n17) );
  NAND2_X1 cor_maj_24_U14 ( .A1(mul_port_c_0_0[3]), .A2(mul_port_c_0_0[4]), 
        .ZN(cor_maj_24_n18) );
  NAND2_X1 cor_maj_24_U13 ( .A1(cor_maj_24_n18), .A2(cor_maj_24_n17), .ZN(
        cor_maj_24_n19) );
  NAND2_X1 cor_maj_24_U12 ( .A1(mul_port_c_0_0[2]), .A2(cor_maj_24_n16), .ZN(
        cor_maj_24_n14) );
  NAND2_X1 cor_maj_24_U11 ( .A1(mul_port_c_0_0[0]), .A2(mul_port_c_0_0[1]), 
        .ZN(cor_maj_24_n15) );
  NAND2_X1 cor_maj_24_U10 ( .A1(cor_maj_24_n15), .A2(cor_maj_24_n14), .ZN(
        cor_maj_24_n20) );
  XOR2_X1 cor_maj_24_U9 ( .A(mul_port_c_0_0[2]), .B(cor_maj_24_n16), .Z(
        cor_maj_24_n21) );
  XOR2_X1 cor_maj_24_U8 ( .A(mul_port_c_0_0[3]), .B(mul_port_c_0_0[4]), .Z(
        cor_maj_24_n22) );
  XOR2_X1 cor_maj_24_U7 ( .A(mul_port_c_0_0[0]), .B(mul_port_c_0_0[1]), .Z(
        cor_maj_24_n16) );
  OR2_X1 cor_maj_24_U6 ( .A1(cor_maj_24_n20), .A2(cor_maj_24_n19), .ZN(
        cor_maj_24_n24) );
  XOR2_X1 cor_maj_24_U5 ( .A(cor_maj_24_n22), .B(cor_maj_24_n21), .Z(
        cor_maj_24_n23) );
  NAND2_X1 cor_maj_24_U4 ( .A1(cor_maj_24_n24), .A2(cor_maj_24_n23), .ZN(
        cor_maj_24_n25) );
  NAND2_X1 cor_maj_24_U3 ( .A1(cor_maj_24_n20), .A2(cor_maj_24_n19), .ZN(
        cor_maj_24_n26) );
  NAND2_X1 cor_maj_24_U2 ( .A1(cor_maj_24_n26), .A2(cor_maj_24_n25), .ZN(
        cor_maj_24_port_o) );
  NAND2_X1 cor_maj_25_U15 ( .A1(cor_maj_25_n21), .A2(cor_maj_25_n22), .ZN(
        cor_maj_25_n17) );
  NAND2_X1 cor_maj_25_U14 ( .A1(mul_port_c_0_1[3]), .A2(mul_port_c_0_1[4]), 
        .ZN(cor_maj_25_n18) );
  NAND2_X1 cor_maj_25_U13 ( .A1(cor_maj_25_n18), .A2(cor_maj_25_n17), .ZN(
        cor_maj_25_n19) );
  NAND2_X1 cor_maj_25_U12 ( .A1(mul_port_c_0_1[2]), .A2(cor_maj_25_n16), .ZN(
        cor_maj_25_n14) );
  NAND2_X1 cor_maj_25_U11 ( .A1(mul_port_c_0_1[0]), .A2(mul_port_c_0_1[1]), 
        .ZN(cor_maj_25_n15) );
  NAND2_X1 cor_maj_25_U10 ( .A1(cor_maj_25_n15), .A2(cor_maj_25_n14), .ZN(
        cor_maj_25_n20) );
  XOR2_X1 cor_maj_25_U9 ( .A(mul_port_c_0_1[2]), .B(cor_maj_25_n16), .Z(
        cor_maj_25_n21) );
  XOR2_X1 cor_maj_25_U8 ( .A(mul_port_c_0_1[3]), .B(mul_port_c_0_1[4]), .Z(
        cor_maj_25_n22) );
  XOR2_X1 cor_maj_25_U7 ( .A(mul_port_c_0_1[0]), .B(mul_port_c_0_1[1]), .Z(
        cor_maj_25_n16) );
  OR2_X1 cor_maj_25_U6 ( .A1(cor_maj_25_n20), .A2(cor_maj_25_n19), .ZN(
        cor_maj_25_n24) );
  XOR2_X1 cor_maj_25_U5 ( .A(cor_maj_25_n22), .B(cor_maj_25_n21), .Z(
        cor_maj_25_n23) );
  NAND2_X1 cor_maj_25_U4 ( .A1(cor_maj_25_n24), .A2(cor_maj_25_n23), .ZN(
        cor_maj_25_n25) );
  NAND2_X1 cor_maj_25_U3 ( .A1(cor_maj_25_n20), .A2(cor_maj_25_n19), .ZN(
        cor_maj_25_n26) );
  NAND2_X1 cor_maj_25_U2 ( .A1(cor_maj_25_n26), .A2(cor_maj_25_n25), .ZN(
        cor_maj_25_port_o) );
  NAND2_X1 cor_maj_26_U15 ( .A1(cor_maj_26_n21), .A2(cor_maj_26_n22), .ZN(
        cor_maj_26_n17) );
  NAND2_X1 cor_maj_26_U14 ( .A1(mul_port_c_0_1[3]), .A2(mul_port_c_0_1[4]), 
        .ZN(cor_maj_26_n18) );
  NAND2_X1 cor_maj_26_U13 ( .A1(cor_maj_26_n18), .A2(cor_maj_26_n17), .ZN(
        cor_maj_26_n19) );
  NAND2_X1 cor_maj_26_U12 ( .A1(mul_port_c_0_1[2]), .A2(cor_maj_26_n16), .ZN(
        cor_maj_26_n14) );
  NAND2_X1 cor_maj_26_U11 ( .A1(mul_port_c_0_1[0]), .A2(mul_port_c_0_1[1]), 
        .ZN(cor_maj_26_n15) );
  NAND2_X1 cor_maj_26_U10 ( .A1(cor_maj_26_n15), .A2(cor_maj_26_n14), .ZN(
        cor_maj_26_n20) );
  XOR2_X1 cor_maj_26_U9 ( .A(mul_port_c_0_1[2]), .B(cor_maj_26_n16), .Z(
        cor_maj_26_n21) );
  XOR2_X1 cor_maj_26_U8 ( .A(mul_port_c_0_1[3]), .B(mul_port_c_0_1[4]), .Z(
        cor_maj_26_n22) );
  XOR2_X1 cor_maj_26_U7 ( .A(mul_port_c_0_1[0]), .B(mul_port_c_0_1[1]), .Z(
        cor_maj_26_n16) );
  OR2_X1 cor_maj_26_U6 ( .A1(cor_maj_26_n20), .A2(cor_maj_26_n19), .ZN(
        cor_maj_26_n24) );
  XOR2_X1 cor_maj_26_U5 ( .A(cor_maj_26_n22), .B(cor_maj_26_n21), .Z(
        cor_maj_26_n23) );
  NAND2_X1 cor_maj_26_U4 ( .A1(cor_maj_26_n24), .A2(cor_maj_26_n23), .ZN(
        cor_maj_26_n25) );
  NAND2_X1 cor_maj_26_U3 ( .A1(cor_maj_26_n20), .A2(cor_maj_26_n19), .ZN(
        cor_maj_26_n26) );
  NAND2_X1 cor_maj_26_U2 ( .A1(cor_maj_26_n26), .A2(cor_maj_26_n25), .ZN(
        cor_maj_26_port_o) );
  NAND2_X1 cor_maj_27_U15 ( .A1(cor_maj_27_n21), .A2(cor_maj_27_n22), .ZN(
        cor_maj_27_n17) );
  NAND2_X1 cor_maj_27_U14 ( .A1(mul_port_c_0_1[3]), .A2(mul_port_c_0_1[4]), 
        .ZN(cor_maj_27_n18) );
  NAND2_X1 cor_maj_27_U13 ( .A1(cor_maj_27_n18), .A2(cor_maj_27_n17), .ZN(
        cor_maj_27_n19) );
  NAND2_X1 cor_maj_27_U12 ( .A1(mul_port_c_0_1[2]), .A2(cor_maj_27_n16), .ZN(
        cor_maj_27_n14) );
  NAND2_X1 cor_maj_27_U11 ( .A1(mul_port_c_0_1[0]), .A2(mul_port_c_0_1[1]), 
        .ZN(cor_maj_27_n15) );
  NAND2_X1 cor_maj_27_U10 ( .A1(cor_maj_27_n15), .A2(cor_maj_27_n14), .ZN(
        cor_maj_27_n20) );
  XOR2_X1 cor_maj_27_U9 ( .A(mul_port_c_0_1[2]), .B(cor_maj_27_n16), .Z(
        cor_maj_27_n21) );
  XOR2_X1 cor_maj_27_U8 ( .A(mul_port_c_0_1[3]), .B(mul_port_c_0_1[4]), .Z(
        cor_maj_27_n22) );
  XOR2_X1 cor_maj_27_U7 ( .A(mul_port_c_0_1[0]), .B(mul_port_c_0_1[1]), .Z(
        cor_maj_27_n16) );
  OR2_X1 cor_maj_27_U6 ( .A1(cor_maj_27_n20), .A2(cor_maj_27_n19), .ZN(
        cor_maj_27_n24) );
  XOR2_X1 cor_maj_27_U5 ( .A(cor_maj_27_n22), .B(cor_maj_27_n21), .Z(
        cor_maj_27_n23) );
  NAND2_X1 cor_maj_27_U4 ( .A1(cor_maj_27_n24), .A2(cor_maj_27_n23), .ZN(
        cor_maj_27_n25) );
  NAND2_X1 cor_maj_27_U3 ( .A1(cor_maj_27_n20), .A2(cor_maj_27_n19), .ZN(
        cor_maj_27_n26) );
  NAND2_X1 cor_maj_27_U2 ( .A1(cor_maj_27_n26), .A2(cor_maj_27_n25), .ZN(
        cor_maj_27_port_o) );
  NAND2_X1 cor_maj_28_U15 ( .A1(cor_maj_28_n21), .A2(cor_maj_28_n22), .ZN(
        cor_maj_28_n17) );
  NAND2_X1 cor_maj_28_U14 ( .A1(mul_port_c_0_1[3]), .A2(mul_port_c_0_1[4]), 
        .ZN(cor_maj_28_n18) );
  NAND2_X1 cor_maj_28_U13 ( .A1(cor_maj_28_n18), .A2(cor_maj_28_n17), .ZN(
        cor_maj_28_n19) );
  NAND2_X1 cor_maj_28_U12 ( .A1(mul_port_c_0_1[2]), .A2(cor_maj_28_n16), .ZN(
        cor_maj_28_n14) );
  NAND2_X1 cor_maj_28_U11 ( .A1(mul_port_c_0_1[0]), .A2(mul_port_c_0_1[1]), 
        .ZN(cor_maj_28_n15) );
  NAND2_X1 cor_maj_28_U10 ( .A1(cor_maj_28_n15), .A2(cor_maj_28_n14), .ZN(
        cor_maj_28_n20) );
  XOR2_X1 cor_maj_28_U9 ( .A(mul_port_c_0_1[2]), .B(cor_maj_28_n16), .Z(
        cor_maj_28_n21) );
  XOR2_X1 cor_maj_28_U8 ( .A(mul_port_c_0_1[3]), .B(mul_port_c_0_1[4]), .Z(
        cor_maj_28_n22) );
  XOR2_X1 cor_maj_28_U7 ( .A(mul_port_c_0_1[0]), .B(mul_port_c_0_1[1]), .Z(
        cor_maj_28_n16) );
  OR2_X1 cor_maj_28_U6 ( .A1(cor_maj_28_n20), .A2(cor_maj_28_n19), .ZN(
        cor_maj_28_n24) );
  XOR2_X1 cor_maj_28_U5 ( .A(cor_maj_28_n22), .B(cor_maj_28_n21), .Z(
        cor_maj_28_n23) );
  NAND2_X1 cor_maj_28_U4 ( .A1(cor_maj_28_n24), .A2(cor_maj_28_n23), .ZN(
        cor_maj_28_n25) );
  NAND2_X1 cor_maj_28_U3 ( .A1(cor_maj_28_n20), .A2(cor_maj_28_n19), .ZN(
        cor_maj_28_n26) );
  NAND2_X1 cor_maj_28_U2 ( .A1(cor_maj_28_n26), .A2(cor_maj_28_n25), .ZN(
        cor_maj_28_port_o) );
  NAND2_X1 cor_maj_29_U15 ( .A1(cor_maj_29_n21), .A2(cor_maj_29_n22), .ZN(
        cor_maj_29_n17) );
  NAND2_X1 cor_maj_29_U14 ( .A1(mul_port_c_0_1[3]), .A2(mul_port_c_0_1[4]), 
        .ZN(cor_maj_29_n18) );
  NAND2_X1 cor_maj_29_U13 ( .A1(cor_maj_29_n18), .A2(cor_maj_29_n17), .ZN(
        cor_maj_29_n19) );
  NAND2_X1 cor_maj_29_U12 ( .A1(mul_port_c_0_1[2]), .A2(cor_maj_29_n16), .ZN(
        cor_maj_29_n14) );
  NAND2_X1 cor_maj_29_U11 ( .A1(mul_port_c_0_1[0]), .A2(mul_port_c_0_1[1]), 
        .ZN(cor_maj_29_n15) );
  NAND2_X1 cor_maj_29_U10 ( .A1(cor_maj_29_n15), .A2(cor_maj_29_n14), .ZN(
        cor_maj_29_n20) );
  XOR2_X1 cor_maj_29_U9 ( .A(mul_port_c_0_1[2]), .B(cor_maj_29_n16), .Z(
        cor_maj_29_n21) );
  XOR2_X1 cor_maj_29_U8 ( .A(mul_port_c_0_1[3]), .B(mul_port_c_0_1[4]), .Z(
        cor_maj_29_n22) );
  XOR2_X1 cor_maj_29_U7 ( .A(mul_port_c_0_1[0]), .B(mul_port_c_0_1[1]), .Z(
        cor_maj_29_n16) );
  OR2_X1 cor_maj_29_U6 ( .A1(cor_maj_29_n20), .A2(cor_maj_29_n19), .ZN(
        cor_maj_29_n24) );
  XOR2_X1 cor_maj_29_U5 ( .A(cor_maj_29_n22), .B(cor_maj_29_n21), .Z(
        cor_maj_29_n23) );
  NAND2_X1 cor_maj_29_U4 ( .A1(cor_maj_29_n24), .A2(cor_maj_29_n23), .ZN(
        cor_maj_29_n25) );
  NAND2_X1 cor_maj_29_U3 ( .A1(cor_maj_29_n20), .A2(cor_maj_29_n19), .ZN(
        cor_maj_29_n26) );
  NAND2_X1 cor_maj_29_U2 ( .A1(cor_maj_29_n26), .A2(cor_maj_29_n25), .ZN(
        cor_maj_29_port_o) );
  NAND2_X1 cor_maj_30_U15 ( .A1(cor_maj_30_n21), .A2(cor_maj_30_n22), .ZN(
        cor_maj_30_n17) );
  NAND2_X1 cor_maj_30_U14 ( .A1(mul_port_c_1_0[3]), .A2(mul_port_c_1_0[4]), 
        .ZN(cor_maj_30_n18) );
  NAND2_X1 cor_maj_30_U13 ( .A1(cor_maj_30_n18), .A2(cor_maj_30_n17), .ZN(
        cor_maj_30_n19) );
  NAND2_X1 cor_maj_30_U12 ( .A1(mul_port_c_1_0[2]), .A2(cor_maj_30_n16), .ZN(
        cor_maj_30_n14) );
  NAND2_X1 cor_maj_30_U11 ( .A1(mul_port_c_1_0[0]), .A2(mul_port_c_1_0[1]), 
        .ZN(cor_maj_30_n15) );
  NAND2_X1 cor_maj_30_U10 ( .A1(cor_maj_30_n15), .A2(cor_maj_30_n14), .ZN(
        cor_maj_30_n20) );
  XOR2_X1 cor_maj_30_U9 ( .A(mul_port_c_1_0[2]), .B(cor_maj_30_n16), .Z(
        cor_maj_30_n21) );
  XOR2_X1 cor_maj_30_U8 ( .A(mul_port_c_1_0[3]), .B(mul_port_c_1_0[4]), .Z(
        cor_maj_30_n22) );
  XOR2_X1 cor_maj_30_U7 ( .A(mul_port_c_1_0[0]), .B(mul_port_c_1_0[1]), .Z(
        cor_maj_30_n16) );
  OR2_X1 cor_maj_30_U6 ( .A1(cor_maj_30_n20), .A2(cor_maj_30_n19), .ZN(
        cor_maj_30_n24) );
  XOR2_X1 cor_maj_30_U5 ( .A(cor_maj_30_n22), .B(cor_maj_30_n21), .Z(
        cor_maj_30_n23) );
  NAND2_X1 cor_maj_30_U4 ( .A1(cor_maj_30_n24), .A2(cor_maj_30_n23), .ZN(
        cor_maj_30_n25) );
  NAND2_X1 cor_maj_30_U3 ( .A1(cor_maj_30_n20), .A2(cor_maj_30_n19), .ZN(
        cor_maj_30_n26) );
  NAND2_X1 cor_maj_30_U2 ( .A1(cor_maj_30_n26), .A2(cor_maj_30_n25), .ZN(
        cor_maj_30_port_o) );
  NAND2_X1 cor_maj_31_U15 ( .A1(cor_maj_31_n21), .A2(cor_maj_31_n22), .ZN(
        cor_maj_31_n17) );
  NAND2_X1 cor_maj_31_U14 ( .A1(mul_port_c_1_0[3]), .A2(mul_port_c_1_0[4]), 
        .ZN(cor_maj_31_n18) );
  NAND2_X1 cor_maj_31_U13 ( .A1(cor_maj_31_n18), .A2(cor_maj_31_n17), .ZN(
        cor_maj_31_n19) );
  NAND2_X1 cor_maj_31_U12 ( .A1(mul_port_c_1_0[2]), .A2(cor_maj_31_n16), .ZN(
        cor_maj_31_n14) );
  NAND2_X1 cor_maj_31_U11 ( .A1(mul_port_c_1_0[0]), .A2(mul_port_c_1_0[1]), 
        .ZN(cor_maj_31_n15) );
  NAND2_X1 cor_maj_31_U10 ( .A1(cor_maj_31_n15), .A2(cor_maj_31_n14), .ZN(
        cor_maj_31_n20) );
  XOR2_X1 cor_maj_31_U9 ( .A(mul_port_c_1_0[2]), .B(cor_maj_31_n16), .Z(
        cor_maj_31_n21) );
  XOR2_X1 cor_maj_31_U8 ( .A(mul_port_c_1_0[3]), .B(mul_port_c_1_0[4]), .Z(
        cor_maj_31_n22) );
  XOR2_X1 cor_maj_31_U7 ( .A(mul_port_c_1_0[0]), .B(mul_port_c_1_0[1]), .Z(
        cor_maj_31_n16) );
  OR2_X1 cor_maj_31_U6 ( .A1(cor_maj_31_n20), .A2(cor_maj_31_n19), .ZN(
        cor_maj_31_n24) );
  XOR2_X1 cor_maj_31_U5 ( .A(cor_maj_31_n22), .B(cor_maj_31_n21), .Z(
        cor_maj_31_n23) );
  NAND2_X1 cor_maj_31_U4 ( .A1(cor_maj_31_n24), .A2(cor_maj_31_n23), .ZN(
        cor_maj_31_n25) );
  NAND2_X1 cor_maj_31_U3 ( .A1(cor_maj_31_n20), .A2(cor_maj_31_n19), .ZN(
        cor_maj_31_n26) );
  NAND2_X1 cor_maj_31_U2 ( .A1(cor_maj_31_n26), .A2(cor_maj_31_n25), .ZN(
        cor_maj_31_port_o) );
  NAND2_X1 cor_maj_32_U15 ( .A1(cor_maj_32_n21), .A2(cor_maj_32_n22), .ZN(
        cor_maj_32_n17) );
  NAND2_X1 cor_maj_32_U14 ( .A1(mul_port_c_1_0[3]), .A2(mul_port_c_1_0[4]), 
        .ZN(cor_maj_32_n18) );
  NAND2_X1 cor_maj_32_U13 ( .A1(cor_maj_32_n18), .A2(cor_maj_32_n17), .ZN(
        cor_maj_32_n19) );
  NAND2_X1 cor_maj_32_U12 ( .A1(mul_port_c_1_0[2]), .A2(cor_maj_32_n16), .ZN(
        cor_maj_32_n14) );
  NAND2_X1 cor_maj_32_U11 ( .A1(mul_port_c_1_0[0]), .A2(mul_port_c_1_0[1]), 
        .ZN(cor_maj_32_n15) );
  NAND2_X1 cor_maj_32_U10 ( .A1(cor_maj_32_n15), .A2(cor_maj_32_n14), .ZN(
        cor_maj_32_n20) );
  XOR2_X1 cor_maj_32_U9 ( .A(mul_port_c_1_0[2]), .B(cor_maj_32_n16), .Z(
        cor_maj_32_n21) );
  XOR2_X1 cor_maj_32_U8 ( .A(mul_port_c_1_0[3]), .B(mul_port_c_1_0[4]), .Z(
        cor_maj_32_n22) );
  XOR2_X1 cor_maj_32_U7 ( .A(mul_port_c_1_0[0]), .B(mul_port_c_1_0[1]), .Z(
        cor_maj_32_n16) );
  OR2_X1 cor_maj_32_U6 ( .A1(cor_maj_32_n20), .A2(cor_maj_32_n19), .ZN(
        cor_maj_32_n24) );
  XOR2_X1 cor_maj_32_U5 ( .A(cor_maj_32_n22), .B(cor_maj_32_n21), .Z(
        cor_maj_32_n23) );
  NAND2_X1 cor_maj_32_U4 ( .A1(cor_maj_32_n24), .A2(cor_maj_32_n23), .ZN(
        cor_maj_32_n25) );
  NAND2_X1 cor_maj_32_U3 ( .A1(cor_maj_32_n20), .A2(cor_maj_32_n19), .ZN(
        cor_maj_32_n26) );
  NAND2_X1 cor_maj_32_U2 ( .A1(cor_maj_32_n26), .A2(cor_maj_32_n25), .ZN(
        cor_maj_32_port_o) );
  NAND2_X1 cor_maj_33_U15 ( .A1(cor_maj_33_n21), .A2(cor_maj_33_n22), .ZN(
        cor_maj_33_n17) );
  NAND2_X1 cor_maj_33_U14 ( .A1(mul_port_c_1_0[3]), .A2(mul_port_c_1_0[4]), 
        .ZN(cor_maj_33_n18) );
  NAND2_X1 cor_maj_33_U13 ( .A1(cor_maj_33_n18), .A2(cor_maj_33_n17), .ZN(
        cor_maj_33_n19) );
  NAND2_X1 cor_maj_33_U12 ( .A1(mul_port_c_1_0[2]), .A2(cor_maj_33_n16), .ZN(
        cor_maj_33_n14) );
  NAND2_X1 cor_maj_33_U11 ( .A1(mul_port_c_1_0[0]), .A2(mul_port_c_1_0[1]), 
        .ZN(cor_maj_33_n15) );
  NAND2_X1 cor_maj_33_U10 ( .A1(cor_maj_33_n15), .A2(cor_maj_33_n14), .ZN(
        cor_maj_33_n20) );
  XOR2_X1 cor_maj_33_U9 ( .A(mul_port_c_1_0[2]), .B(cor_maj_33_n16), .Z(
        cor_maj_33_n21) );
  XOR2_X1 cor_maj_33_U8 ( .A(mul_port_c_1_0[3]), .B(mul_port_c_1_0[4]), .Z(
        cor_maj_33_n22) );
  XOR2_X1 cor_maj_33_U7 ( .A(mul_port_c_1_0[0]), .B(mul_port_c_1_0[1]), .Z(
        cor_maj_33_n16) );
  OR2_X1 cor_maj_33_U6 ( .A1(cor_maj_33_n20), .A2(cor_maj_33_n19), .ZN(
        cor_maj_33_n24) );
  XOR2_X1 cor_maj_33_U5 ( .A(cor_maj_33_n22), .B(cor_maj_33_n21), .Z(
        cor_maj_33_n23) );
  NAND2_X1 cor_maj_33_U4 ( .A1(cor_maj_33_n24), .A2(cor_maj_33_n23), .ZN(
        cor_maj_33_n25) );
  NAND2_X1 cor_maj_33_U3 ( .A1(cor_maj_33_n20), .A2(cor_maj_33_n19), .ZN(
        cor_maj_33_n26) );
  NAND2_X1 cor_maj_33_U2 ( .A1(cor_maj_33_n26), .A2(cor_maj_33_n25), .ZN(
        cor_maj_33_port_o) );
  NAND2_X1 cor_maj_34_U15 ( .A1(cor_maj_34_n21), .A2(cor_maj_34_n22), .ZN(
        cor_maj_34_n17) );
  NAND2_X1 cor_maj_34_U14 ( .A1(mul_port_c_1_0[3]), .A2(mul_port_c_1_0[4]), 
        .ZN(cor_maj_34_n18) );
  NAND2_X1 cor_maj_34_U13 ( .A1(cor_maj_34_n18), .A2(cor_maj_34_n17), .ZN(
        cor_maj_34_n19) );
  NAND2_X1 cor_maj_34_U12 ( .A1(mul_port_c_1_0[2]), .A2(cor_maj_34_n16), .ZN(
        cor_maj_34_n14) );
  NAND2_X1 cor_maj_34_U11 ( .A1(mul_port_c_1_0[0]), .A2(mul_port_c_1_0[1]), 
        .ZN(cor_maj_34_n15) );
  NAND2_X1 cor_maj_34_U10 ( .A1(cor_maj_34_n15), .A2(cor_maj_34_n14), .ZN(
        cor_maj_34_n20) );
  XOR2_X1 cor_maj_34_U9 ( .A(mul_port_c_1_0[2]), .B(cor_maj_34_n16), .Z(
        cor_maj_34_n21) );
  XOR2_X1 cor_maj_34_U8 ( .A(mul_port_c_1_0[3]), .B(mul_port_c_1_0[4]), .Z(
        cor_maj_34_n22) );
  XOR2_X1 cor_maj_34_U7 ( .A(mul_port_c_1_0[0]), .B(mul_port_c_1_0[1]), .Z(
        cor_maj_34_n16) );
  OR2_X1 cor_maj_34_U6 ( .A1(cor_maj_34_n20), .A2(cor_maj_34_n19), .ZN(
        cor_maj_34_n24) );
  XOR2_X1 cor_maj_34_U5 ( .A(cor_maj_34_n22), .B(cor_maj_34_n21), .Z(
        cor_maj_34_n23) );
  NAND2_X1 cor_maj_34_U4 ( .A1(cor_maj_34_n24), .A2(cor_maj_34_n23), .ZN(
        cor_maj_34_n25) );
  NAND2_X1 cor_maj_34_U3 ( .A1(cor_maj_34_n20), .A2(cor_maj_34_n19), .ZN(
        cor_maj_34_n26) );
  NAND2_X1 cor_maj_34_U2 ( .A1(cor_maj_34_n26), .A2(cor_maj_34_n25), .ZN(
        cor_maj_34_port_o) );
  NAND2_X1 cor_maj_35_U15 ( .A1(cor_maj_35_n21), .A2(cor_maj_35_n22), .ZN(
        cor_maj_35_n17) );
  NAND2_X1 cor_maj_35_U14 ( .A1(mul_port_c_1_1[3]), .A2(mul_port_c_1_1[4]), 
        .ZN(cor_maj_35_n18) );
  NAND2_X1 cor_maj_35_U13 ( .A1(cor_maj_35_n18), .A2(cor_maj_35_n17), .ZN(
        cor_maj_35_n19) );
  NAND2_X1 cor_maj_35_U12 ( .A1(mul_port_c_1_1[2]), .A2(cor_maj_35_n16), .ZN(
        cor_maj_35_n14) );
  NAND2_X1 cor_maj_35_U11 ( .A1(mul_port_c_1_1[0]), .A2(mul_port_c_1_1[1]), 
        .ZN(cor_maj_35_n15) );
  NAND2_X1 cor_maj_35_U10 ( .A1(cor_maj_35_n15), .A2(cor_maj_35_n14), .ZN(
        cor_maj_35_n20) );
  XOR2_X1 cor_maj_35_U9 ( .A(mul_port_c_1_1[2]), .B(cor_maj_35_n16), .Z(
        cor_maj_35_n21) );
  XOR2_X1 cor_maj_35_U8 ( .A(mul_port_c_1_1[3]), .B(mul_port_c_1_1[4]), .Z(
        cor_maj_35_n22) );
  XOR2_X1 cor_maj_35_U7 ( .A(mul_port_c_1_1[0]), .B(mul_port_c_1_1[1]), .Z(
        cor_maj_35_n16) );
  OR2_X1 cor_maj_35_U6 ( .A1(cor_maj_35_n20), .A2(cor_maj_35_n19), .ZN(
        cor_maj_35_n24) );
  XOR2_X1 cor_maj_35_U5 ( .A(cor_maj_35_n22), .B(cor_maj_35_n21), .Z(
        cor_maj_35_n23) );
  NAND2_X1 cor_maj_35_U4 ( .A1(cor_maj_35_n24), .A2(cor_maj_35_n23), .ZN(
        cor_maj_35_n25) );
  NAND2_X1 cor_maj_35_U3 ( .A1(cor_maj_35_n20), .A2(cor_maj_35_n19), .ZN(
        cor_maj_35_n26) );
  NAND2_X1 cor_maj_35_U2 ( .A1(cor_maj_35_n26), .A2(cor_maj_35_n25), .ZN(
        cor_maj_35_port_o) );
  NAND2_X1 cor_maj_36_U15 ( .A1(cor_maj_36_n21), .A2(cor_maj_36_n22), .ZN(
        cor_maj_36_n17) );
  NAND2_X1 cor_maj_36_U14 ( .A1(mul_port_c_1_1[3]), .A2(mul_port_c_1_1[4]), 
        .ZN(cor_maj_36_n18) );
  NAND2_X1 cor_maj_36_U13 ( .A1(cor_maj_36_n18), .A2(cor_maj_36_n17), .ZN(
        cor_maj_36_n19) );
  NAND2_X1 cor_maj_36_U12 ( .A1(mul_port_c_1_1[2]), .A2(cor_maj_36_n16), .ZN(
        cor_maj_36_n14) );
  NAND2_X1 cor_maj_36_U11 ( .A1(mul_port_c_1_1[0]), .A2(mul_port_c_1_1[1]), 
        .ZN(cor_maj_36_n15) );
  NAND2_X1 cor_maj_36_U10 ( .A1(cor_maj_36_n15), .A2(cor_maj_36_n14), .ZN(
        cor_maj_36_n20) );
  XOR2_X1 cor_maj_36_U9 ( .A(mul_port_c_1_1[2]), .B(cor_maj_36_n16), .Z(
        cor_maj_36_n21) );
  XOR2_X1 cor_maj_36_U8 ( .A(mul_port_c_1_1[3]), .B(mul_port_c_1_1[4]), .Z(
        cor_maj_36_n22) );
  XOR2_X1 cor_maj_36_U7 ( .A(mul_port_c_1_1[0]), .B(mul_port_c_1_1[1]), .Z(
        cor_maj_36_n16) );
  OR2_X1 cor_maj_36_U6 ( .A1(cor_maj_36_n20), .A2(cor_maj_36_n19), .ZN(
        cor_maj_36_n24) );
  XOR2_X1 cor_maj_36_U5 ( .A(cor_maj_36_n22), .B(cor_maj_36_n21), .Z(
        cor_maj_36_n23) );
  NAND2_X1 cor_maj_36_U4 ( .A1(cor_maj_36_n24), .A2(cor_maj_36_n23), .ZN(
        cor_maj_36_n25) );
  NAND2_X1 cor_maj_36_U3 ( .A1(cor_maj_36_n20), .A2(cor_maj_36_n19), .ZN(
        cor_maj_36_n26) );
  NAND2_X1 cor_maj_36_U2 ( .A1(cor_maj_36_n26), .A2(cor_maj_36_n25), .ZN(
        cor_maj_36_port_o) );
  NAND2_X1 cor_maj_37_U15 ( .A1(cor_maj_37_n21), .A2(cor_maj_37_n22), .ZN(
        cor_maj_37_n17) );
  NAND2_X1 cor_maj_37_U14 ( .A1(mul_port_c_1_1[3]), .A2(mul_port_c_1_1[4]), 
        .ZN(cor_maj_37_n18) );
  NAND2_X1 cor_maj_37_U13 ( .A1(cor_maj_37_n18), .A2(cor_maj_37_n17), .ZN(
        cor_maj_37_n19) );
  NAND2_X1 cor_maj_37_U12 ( .A1(mul_port_c_1_1[2]), .A2(cor_maj_37_n16), .ZN(
        cor_maj_37_n14) );
  NAND2_X1 cor_maj_37_U11 ( .A1(mul_port_c_1_1[0]), .A2(mul_port_c_1_1[1]), 
        .ZN(cor_maj_37_n15) );
  NAND2_X1 cor_maj_37_U10 ( .A1(cor_maj_37_n15), .A2(cor_maj_37_n14), .ZN(
        cor_maj_37_n20) );
  XOR2_X1 cor_maj_37_U9 ( .A(mul_port_c_1_1[2]), .B(cor_maj_37_n16), .Z(
        cor_maj_37_n21) );
  XOR2_X1 cor_maj_37_U8 ( .A(mul_port_c_1_1[3]), .B(mul_port_c_1_1[4]), .Z(
        cor_maj_37_n22) );
  XOR2_X1 cor_maj_37_U7 ( .A(mul_port_c_1_1[0]), .B(mul_port_c_1_1[1]), .Z(
        cor_maj_37_n16) );
  OR2_X1 cor_maj_37_U6 ( .A1(cor_maj_37_n20), .A2(cor_maj_37_n19), .ZN(
        cor_maj_37_n24) );
  XOR2_X1 cor_maj_37_U5 ( .A(cor_maj_37_n22), .B(cor_maj_37_n21), .Z(
        cor_maj_37_n23) );
  NAND2_X1 cor_maj_37_U4 ( .A1(cor_maj_37_n24), .A2(cor_maj_37_n23), .ZN(
        cor_maj_37_n25) );
  NAND2_X1 cor_maj_37_U3 ( .A1(cor_maj_37_n20), .A2(cor_maj_37_n19), .ZN(
        cor_maj_37_n26) );
  NAND2_X1 cor_maj_37_U2 ( .A1(cor_maj_37_n26), .A2(cor_maj_37_n25), .ZN(
        cor_maj_37_port_o) );
  NAND2_X1 cor_maj_38_U15 ( .A1(cor_maj_38_n21), .A2(cor_maj_38_n22), .ZN(
        cor_maj_38_n17) );
  NAND2_X1 cor_maj_38_U14 ( .A1(mul_port_c_1_1[3]), .A2(mul_port_c_1_1[4]), 
        .ZN(cor_maj_38_n18) );
  NAND2_X1 cor_maj_38_U13 ( .A1(cor_maj_38_n18), .A2(cor_maj_38_n17), .ZN(
        cor_maj_38_n19) );
  NAND2_X1 cor_maj_38_U12 ( .A1(mul_port_c_1_1[2]), .A2(cor_maj_38_n16), .ZN(
        cor_maj_38_n14) );
  NAND2_X1 cor_maj_38_U11 ( .A1(mul_port_c_1_1[0]), .A2(mul_port_c_1_1[1]), 
        .ZN(cor_maj_38_n15) );
  NAND2_X1 cor_maj_38_U10 ( .A1(cor_maj_38_n15), .A2(cor_maj_38_n14), .ZN(
        cor_maj_38_n20) );
  XOR2_X1 cor_maj_38_U9 ( .A(mul_port_c_1_1[2]), .B(cor_maj_38_n16), .Z(
        cor_maj_38_n21) );
  XOR2_X1 cor_maj_38_U8 ( .A(mul_port_c_1_1[3]), .B(mul_port_c_1_1[4]), .Z(
        cor_maj_38_n22) );
  XOR2_X1 cor_maj_38_U7 ( .A(mul_port_c_1_1[0]), .B(mul_port_c_1_1[1]), .Z(
        cor_maj_38_n16) );
  OR2_X1 cor_maj_38_U6 ( .A1(cor_maj_38_n20), .A2(cor_maj_38_n19), .ZN(
        cor_maj_38_n24) );
  XOR2_X1 cor_maj_38_U5 ( .A(cor_maj_38_n22), .B(cor_maj_38_n21), .Z(
        cor_maj_38_n23) );
  NAND2_X1 cor_maj_38_U4 ( .A1(cor_maj_38_n24), .A2(cor_maj_38_n23), .ZN(
        cor_maj_38_n25) );
  NAND2_X1 cor_maj_38_U3 ( .A1(cor_maj_38_n20), .A2(cor_maj_38_n19), .ZN(
        cor_maj_38_n26) );
  NAND2_X1 cor_maj_38_U2 ( .A1(cor_maj_38_n26), .A2(cor_maj_38_n25), .ZN(
        cor_maj_38_port_o) );
  NAND2_X1 cor_maj_39_U15 ( .A1(cor_maj_39_n21), .A2(cor_maj_39_n22), .ZN(
        cor_maj_39_n17) );
  NAND2_X1 cor_maj_39_U14 ( .A1(mul_port_c_1_1[3]), .A2(mul_port_c_1_1[4]), 
        .ZN(cor_maj_39_n18) );
  NAND2_X1 cor_maj_39_U13 ( .A1(cor_maj_39_n18), .A2(cor_maj_39_n17), .ZN(
        cor_maj_39_n19) );
  NAND2_X1 cor_maj_39_U12 ( .A1(mul_port_c_1_1[2]), .A2(cor_maj_39_n16), .ZN(
        cor_maj_39_n14) );
  NAND2_X1 cor_maj_39_U11 ( .A1(mul_port_c_1_1[0]), .A2(mul_port_c_1_1[1]), 
        .ZN(cor_maj_39_n15) );
  NAND2_X1 cor_maj_39_U10 ( .A1(cor_maj_39_n15), .A2(cor_maj_39_n14), .ZN(
        cor_maj_39_n20) );
  XOR2_X1 cor_maj_39_U9 ( .A(mul_port_c_1_1[2]), .B(cor_maj_39_n16), .Z(
        cor_maj_39_n21) );
  XOR2_X1 cor_maj_39_U8 ( .A(mul_port_c_1_1[3]), .B(mul_port_c_1_1[4]), .Z(
        cor_maj_39_n22) );
  XOR2_X1 cor_maj_39_U7 ( .A(mul_port_c_1_1[0]), .B(mul_port_c_1_1[1]), .Z(
        cor_maj_39_n16) );
  OR2_X1 cor_maj_39_U6 ( .A1(cor_maj_39_n20), .A2(cor_maj_39_n19), .ZN(
        cor_maj_39_n24) );
  XOR2_X1 cor_maj_39_U5 ( .A(cor_maj_39_n22), .B(cor_maj_39_n21), .Z(
        cor_maj_39_n23) );
  NAND2_X1 cor_maj_39_U4 ( .A1(cor_maj_39_n24), .A2(cor_maj_39_n23), .ZN(
        cor_maj_39_n25) );
  NAND2_X1 cor_maj_39_U3 ( .A1(cor_maj_39_n20), .A2(cor_maj_39_n19), .ZN(
        cor_maj_39_n26) );
  NAND2_X1 cor_maj_39_U2 ( .A1(cor_maj_39_n26), .A2(cor_maj_39_n25), .ZN(
        cor_maj_39_port_o) );
  XOR2_X1 comp_U10 ( .A(cor_port_v_0_1[4]), .B(cor_port_v_0_0[4]), .Z(
        comp_port_c_0[4]) );
  XOR2_X1 comp_U9 ( .A(cor_port_v_0_1[3]), .B(cor_port_v_0_0[3]), .Z(
        comp_port_c_0[3]) );
  XOR2_X1 comp_U8 ( .A(cor_port_v_0_1[2]), .B(cor_port_v_0_0[2]), .Z(
        comp_port_c_0[2]) );
  XOR2_X1 comp_U7 ( .A(cor_port_v_0_1[1]), .B(cor_port_v_0_0[1]), .Z(
        comp_port_c_0[1]) );
  XOR2_X1 comp_U6 ( .A(cor_port_v_0_1[0]), .B(cor_port_v_0_0[0]), .Z(
        comp_port_c_0[0]) );
  XOR2_X1 comp_U5 ( .A(cor_port_v_1_1[4]), .B(cor_port_v_1_0[4]), .Z(
        comp_port_c_1[4]) );
  XOR2_X1 comp_U4 ( .A(cor_port_v_1_1[3]), .B(cor_port_v_1_0[3]), .Z(
        comp_port_c_1[3]) );
  XOR2_X1 comp_U3 ( .A(cor_port_v_1_1[2]), .B(cor_port_v_1_0[2]), .Z(
        comp_port_c_1[2]) );
  XOR2_X1 comp_U2 ( .A(cor_port_v_1_1[1]), .B(cor_port_v_1_0[1]), .Z(
        comp_port_c_1[1]) );
  XOR2_X1 comp_U1 ( .A(cor_port_v_1_1[0]), .B(cor_port_v_1_0[0]), .Z(
        comp_port_c_1[0]) );
endmodule

