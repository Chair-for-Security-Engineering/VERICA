
module ICINI4 ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, port_c_1, 
        port_rand_ref, port_rand_mul_0, clk, reset );
  input [4:0] port_a_0;
  input [4:0] port_a_1;
  input [4:0] port_b_0;
  input [4:0] port_b_1;
  output [4:0] port_c_0;
  output [4:0] port_c_1;
  input [1:0] port_rand_ref;
  input [1:0] port_rand_mul_0;
  input clk, reset;
  wire   simpleXor_40_port_a0, simpleXor_40_port_z, simpleXor_41_port_z,
         simpleXor_42_port_a0, simpleXor_42_port_z, simpleXor_43_port_z,
         simpleXor_44_port_a0, simpleXor_44_port_z, simpleXor_45_port_z,
         simpleXor_46_port_a0, simpleXor_46_port_z, simpleXor_47_port_z,
         simpleXor_48_port_a0, simpleXor_48_port_z, simpleXor_49_port_z,
         simpleXor_50_port_a0, simpleXor_50_port_z, simpleXor_51_port_z,
         simpleXor_52_port_a0, simpleXor_52_port_z, simpleXor_53_port_z,
         simpleXor_54_port_a0, simpleXor_54_port_z, simpleXor_55_port_z,
         simpleXor_56_port_a0, simpleXor_56_port_z, simpleXor_57_port_z,
         simpleXor_58_port_a0, simpleXor_58_port_z, simpleXor_59_port_z, N0,
         N1, N2, N3, N4, N5, N6, N7, N8, N9, ref_1_n4, ref_1_n3, ref_1_n2,
         ref_1_n1, ref_1_maj_39_port_o, ref_1_maj_38_port_o,
         ref_1_maj_37_port_o, ref_1_maj_36_port_o, ref_1_maj_35_port_o,
         ref_1_maj_34_port_o, ref_1_maj_33_port_o, ref_1_maj_32_port_o,
         ref_1_maj_31_port_o, ref_1_maj_30_port_o, ref_1_maj_29_port_o,
         ref_1_maj_28_port_o, ref_1_maj_27_port_o, ref_1_maj_26_port_o,
         ref_1_maj_25_port_o, ref_1_maj_24_port_o, ref_1_maj_23_port_o,
         ref_1_maj_22_port_o, ref_1_refreshed_1_0_, ref_1_refreshed_1_1_,
         ref_1_refreshed_1_2_, ref_1_refreshed_1_3_, ref_1_refreshed_1_4_,
         ref_1_maj_21_port_o, ref_1_maj_20_port_o, ref_1_refreshed_0_0_,
         ref_1_refreshed_0_1_, ref_1_refreshed_0_2_, ref_1_refreshed_0_3_,
         ref_1_refreshed_0_4_, ref_1_simpleXor_58_port_z,
         ref_1_simpleXor_56_port_z, ref_1_simpleXor_54_port_z,
         ref_1_simpleXor_52_port_z, ref_1_simpleXor_50_port_z,
         ref_1_simpleXor_48_port_z, ref_1_simpleXor_46_port_z,
         ref_1_simpleXor_44_port_z, ref_1_simpleXor_42_port_z,
         ref_1_simpleXor_40_port_z, ref_1_simpleXor_41_n2,
         ref_1_simpleXor_43_n2, ref_1_simpleXor_49_n2, ref_1_simpleXor_51_n2,
         ref_1_simpleXor_53_n2, ref_1_simpleXor_55_n2, ref_1_maj_20_n13,
         ref_1_maj_20_n12, ref_1_maj_20_n11, ref_1_maj_20_n10, ref_1_maj_20_n9,
         ref_1_maj_20_n8, ref_1_maj_20_n7, ref_1_maj_20_n6, ref_1_maj_20_n5,
         ref_1_maj_20_n4, ref_1_maj_20_n3, ref_1_maj_20_n2, ref_1_maj_20_n1,
         ref_1_maj_21_n26, ref_1_maj_21_n25, ref_1_maj_21_n24,
         ref_1_maj_21_n23, ref_1_maj_21_n22, ref_1_maj_21_n21,
         ref_1_maj_21_n20, ref_1_maj_21_n19, ref_1_maj_21_n18,
         ref_1_maj_21_n17, ref_1_maj_21_n16, ref_1_maj_21_n15,
         ref_1_maj_21_n14, ref_1_maj_22_n26, ref_1_maj_22_n25,
         ref_1_maj_22_n24, ref_1_maj_22_n23, ref_1_maj_22_n22,
         ref_1_maj_22_n21, ref_1_maj_22_n20, ref_1_maj_22_n19,
         ref_1_maj_22_n18, ref_1_maj_22_n17, ref_1_maj_22_n16,
         ref_1_maj_22_n15, ref_1_maj_22_n14, ref_1_maj_23_n26,
         ref_1_maj_23_n25, ref_1_maj_23_n24, ref_1_maj_23_n23,
         ref_1_maj_23_n22, ref_1_maj_23_n21, ref_1_maj_23_n20,
         ref_1_maj_23_n19, ref_1_maj_23_n18, ref_1_maj_23_n17,
         ref_1_maj_23_n16, ref_1_maj_23_n15, ref_1_maj_23_n14,
         ref_1_maj_24_n26, ref_1_maj_24_n25, ref_1_maj_24_n24,
         ref_1_maj_24_n23, ref_1_maj_24_n22, ref_1_maj_24_n21,
         ref_1_maj_24_n20, ref_1_maj_24_n19, ref_1_maj_24_n18,
         ref_1_maj_24_n17, ref_1_maj_24_n16, ref_1_maj_24_n15,
         ref_1_maj_24_n14, ref_1_maj_25_n26, ref_1_maj_25_n25,
         ref_1_maj_25_n24, ref_1_maj_25_n23, ref_1_maj_25_n22,
         ref_1_maj_25_n21, ref_1_maj_25_n20, ref_1_maj_25_n19,
         ref_1_maj_25_n18, ref_1_maj_25_n17, ref_1_maj_25_n16,
         ref_1_maj_25_n15, ref_1_maj_25_n14, ref_1_maj_26_n26,
         ref_1_maj_26_n25, ref_1_maj_26_n24, ref_1_maj_26_n23,
         ref_1_maj_26_n22, ref_1_maj_26_n21, ref_1_maj_26_n20,
         ref_1_maj_26_n19, ref_1_maj_26_n18, ref_1_maj_26_n17,
         ref_1_maj_26_n16, ref_1_maj_26_n15, ref_1_maj_26_n14,
         ref_1_maj_27_n26, ref_1_maj_27_n25, ref_1_maj_27_n24,
         ref_1_maj_27_n23, ref_1_maj_27_n22, ref_1_maj_27_n21,
         ref_1_maj_27_n20, ref_1_maj_27_n19, ref_1_maj_27_n18,
         ref_1_maj_27_n17, ref_1_maj_27_n16, ref_1_maj_27_n15,
         ref_1_maj_27_n14, ref_1_maj_28_n26, ref_1_maj_28_n25,
         ref_1_maj_28_n24, ref_1_maj_28_n23, ref_1_maj_28_n22,
         ref_1_maj_28_n21, ref_1_maj_28_n20, ref_1_maj_28_n19,
         ref_1_maj_28_n18, ref_1_maj_28_n17, ref_1_maj_28_n16,
         ref_1_maj_28_n15, ref_1_maj_28_n14, ref_1_maj_29_n26,
         ref_1_maj_29_n25, ref_1_maj_29_n24, ref_1_maj_29_n23,
         ref_1_maj_29_n22, ref_1_maj_29_n21, ref_1_maj_29_n20,
         ref_1_maj_29_n19, ref_1_maj_29_n18, ref_1_maj_29_n17,
         ref_1_maj_29_n16, ref_1_maj_29_n15, ref_1_maj_29_n14,
         ref_1_maj_30_n26, ref_1_maj_30_n25, ref_1_maj_30_n24,
         ref_1_maj_30_n23, ref_1_maj_30_n22, ref_1_maj_30_n21,
         ref_1_maj_30_n20, ref_1_maj_30_n19, ref_1_maj_30_n18,
         ref_1_maj_30_n17, ref_1_maj_30_n16, ref_1_maj_30_n15,
         ref_1_maj_30_n14, ref_1_maj_31_n26, ref_1_maj_31_n25,
         ref_1_maj_31_n24, ref_1_maj_31_n23, ref_1_maj_31_n22,
         ref_1_maj_31_n21, ref_1_maj_31_n20, ref_1_maj_31_n19,
         ref_1_maj_31_n18, ref_1_maj_31_n17, ref_1_maj_31_n16,
         ref_1_maj_31_n15, ref_1_maj_31_n14, ref_1_maj_32_n26,
         ref_1_maj_32_n25, ref_1_maj_32_n24, ref_1_maj_32_n23,
         ref_1_maj_32_n22, ref_1_maj_32_n21, ref_1_maj_32_n20,
         ref_1_maj_32_n19, ref_1_maj_32_n18, ref_1_maj_32_n17,
         ref_1_maj_32_n16, ref_1_maj_32_n15, ref_1_maj_32_n14,
         ref_1_maj_33_n26, ref_1_maj_33_n25, ref_1_maj_33_n24,
         ref_1_maj_33_n23, ref_1_maj_33_n22, ref_1_maj_33_n21,
         ref_1_maj_33_n20, ref_1_maj_33_n19, ref_1_maj_33_n18,
         ref_1_maj_33_n17, ref_1_maj_33_n16, ref_1_maj_33_n15,
         ref_1_maj_33_n14, ref_1_maj_34_n26, ref_1_maj_34_n25,
         ref_1_maj_34_n24, ref_1_maj_34_n23, ref_1_maj_34_n22,
         ref_1_maj_34_n21, ref_1_maj_34_n20, ref_1_maj_34_n19,
         ref_1_maj_34_n18, ref_1_maj_34_n17, ref_1_maj_34_n16,
         ref_1_maj_34_n15, ref_1_maj_34_n14, ref_1_maj_35_n26,
         ref_1_maj_35_n25, ref_1_maj_35_n24, ref_1_maj_35_n23,
         ref_1_maj_35_n22, ref_1_maj_35_n21, ref_1_maj_35_n20,
         ref_1_maj_35_n19, ref_1_maj_35_n18, ref_1_maj_35_n17,
         ref_1_maj_35_n16, ref_1_maj_35_n15, ref_1_maj_35_n14,
         ref_1_maj_36_n26, ref_1_maj_36_n25, ref_1_maj_36_n24,
         ref_1_maj_36_n23, ref_1_maj_36_n22, ref_1_maj_36_n21,
         ref_1_maj_36_n20, ref_1_maj_36_n19, ref_1_maj_36_n18,
         ref_1_maj_36_n17, ref_1_maj_36_n16, ref_1_maj_36_n15,
         ref_1_maj_36_n14, ref_1_maj_37_n26, ref_1_maj_37_n25,
         ref_1_maj_37_n24, ref_1_maj_37_n23, ref_1_maj_37_n22,
         ref_1_maj_37_n21, ref_1_maj_37_n20, ref_1_maj_37_n19,
         ref_1_maj_37_n18, ref_1_maj_37_n17, ref_1_maj_37_n16,
         ref_1_maj_37_n15, ref_1_maj_37_n14, ref_1_maj_38_n26,
         ref_1_maj_38_n25, ref_1_maj_38_n24, ref_1_maj_38_n23,
         ref_1_maj_38_n22, ref_1_maj_38_n21, ref_1_maj_38_n20,
         ref_1_maj_38_n19, ref_1_maj_38_n18, ref_1_maj_38_n17,
         ref_1_maj_38_n16, ref_1_maj_38_n15, ref_1_maj_38_n14,
         ref_1_maj_39_n26, ref_1_maj_39_n25, ref_1_maj_39_n24,
         ref_1_maj_39_n23, ref_1_maj_39_n22, ref_1_maj_39_n21,
         ref_1_maj_39_n20, ref_1_maj_39_n19, ref_1_maj_39_n18,
         ref_1_maj_39_n17, ref_1_maj_39_n16, ref_1_maj_39_n15,
         ref_1_maj_39_n14;
  wire   [4:0] ref_1_port_o_0_0;
  wire   [4:0] ref_1_port_o_0_1;
  wire   [4:0] ref_1_port_o_1_0;
  wire   [4:0] ref_1_port_o_1_1;
  wire   [4:0] temp_0_0;
  wire   [4:0] mult_ab_0_1;
  wire   [4:0] temp_0_1;
  wire   [4:0] mult_ab_1_0;

  DFF_X1 mult_ab_1_0_reg_4_ ( .D(simpleXor_59_port_z), .CK(clk), .Q(
        mult_ab_1_0[4]), .QN() );
  DFF_X1 mult_ab_1_0_reg_3_ ( .D(simpleXor_55_port_z), .CK(clk), .Q(
        mult_ab_1_0[3]), .QN() );
  DFF_X1 mult_ab_1_0_reg_2_ ( .D(simpleXor_51_port_z), .CK(clk), .Q(
        mult_ab_1_0[2]), .QN() );
  DFF_X1 mult_ab_1_0_reg_1_ ( .D(simpleXor_47_port_z), .CK(clk), .Q(
        mult_ab_1_0[1]), .QN() );
  DFF_X1 mult_ab_1_0_reg_0_ ( .D(simpleXor_43_port_z), .CK(clk), .Q(
        mult_ab_1_0[0]), .QN() );
  DFF_X1 mult_ab_1_1_reg_4_ ( .D(N9), .CK(clk), .Q(temp_0_1[4]), .QN() );
  DFF_X1 mult_ab_1_1_reg_3_ ( .D(N7), .CK(clk), .Q(temp_0_1[3]), .QN() );
  DFF_X1 mult_ab_1_1_reg_2_ ( .D(N5), .CK(clk), .Q(temp_0_1[2]), .QN() );
  DFF_X1 mult_ab_1_1_reg_1_ ( .D(N3), .CK(clk), .Q(temp_0_1[1]), .QN() );
  DFF_X1 mult_ab_1_1_reg_0_ ( .D(N1), .CK(clk), .Q(temp_0_1[0]), .QN() );
  DFF_X1 mult_ab_0_0_reg_4_ ( .D(N8), .CK(clk), .Q(temp_0_0[4]), .QN() );
  DFF_X1 mult_ab_0_0_reg_3_ ( .D(N6), .CK(clk), .Q(temp_0_0[3]), .QN() );
  DFF_X1 mult_ab_0_0_reg_2_ ( .D(N4), .CK(clk), .Q(temp_0_0[2]), .QN() );
  DFF_X1 mult_ab_0_0_reg_1_ ( .D(N2), .CK(clk), .Q(temp_0_0[1]), .QN() );
  DFF_X1 mult_ab_0_0_reg_0_ ( .D(N0), .CK(clk), .Q(temp_0_0[0]), .QN() );
  DFF_X1 mult_ab_0_1_reg_4_ ( .D(simpleXor_57_port_z), .CK(clk), .Q(
        mult_ab_0_1[4]), .QN() );
  DFF_X1 mult_ab_0_1_reg_3_ ( .D(simpleXor_53_port_z), .CK(clk), .Q(
        mult_ab_0_1[3]), .QN() );
  DFF_X1 mult_ab_0_1_reg_2_ ( .D(simpleXor_49_port_z), .CK(clk), .Q(
        mult_ab_0_1[2]), .QN() );
  DFF_X1 mult_ab_0_1_reg_1_ ( .D(simpleXor_45_port_z), .CK(clk), .Q(
        mult_ab_0_1[1]), .QN() );
  DFF_X1 mult_ab_0_1_reg_0_ ( .D(simpleXor_41_port_z), .CK(clk), .Q(
        mult_ab_0_1[0]), .QN() );
  AND2_X1 U33 ( .A1(ref_1_port_o_0_1[0]), .A2(port_a_0[0]), .ZN(
        simpleXor_40_port_a0) );
  AND2_X1 U34 ( .A1(ref_1_port_o_0_1[1]), .A2(port_a_0[1]), .ZN(
        simpleXor_44_port_a0) );
  AND2_X1 U35 ( .A1(ref_1_port_o_0_1[2]), .A2(port_a_0[2]), .ZN(
        simpleXor_48_port_a0) );
  AND2_X1 U36 ( .A1(ref_1_port_o_0_1[3]), .A2(port_a_0[3]), .ZN(
        simpleXor_52_port_a0) );
  AND2_X1 U37 ( .A1(ref_1_port_o_0_1[4]), .A2(port_a_0[4]), .ZN(
        simpleXor_56_port_a0) );
  AND2_X1 U38 ( .A1(ref_1_port_o_1_0[0]), .A2(port_a_1[0]), .ZN(
        simpleXor_42_port_a0) );
  AND2_X1 U39 ( .A1(ref_1_port_o_1_0[1]), .A2(port_a_1[1]), .ZN(
        simpleXor_46_port_a0) );
  AND2_X1 U40 ( .A1(ref_1_port_o_1_0[2]), .A2(port_a_1[2]), .ZN(
        simpleXor_50_port_a0) );
  AND2_X1 U41 ( .A1(ref_1_port_o_1_0[3]), .A2(port_a_1[3]), .ZN(
        simpleXor_54_port_a0) );
  AND2_X1 U42 ( .A1(ref_1_port_o_1_0[4]), .A2(port_a_1[4]), .ZN(
        simpleXor_58_port_a0) );
  AND2_X1 U43 ( .A1(ref_1_port_o_0_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U44 ( .A1(ref_1_port_o_0_0[1]), .A2(port_a_0[1]), .ZN(N2) );
  AND2_X1 U45 ( .A1(ref_1_port_o_0_0[2]), .A2(port_a_0[2]), .ZN(N4) );
  AND2_X1 U46 ( .A1(ref_1_port_o_0_0[3]), .A2(port_a_0[3]), .ZN(N6) );
  AND2_X1 U47 ( .A1(ref_1_port_o_0_0[4]), .A2(port_a_0[4]), .ZN(N8) );
  AND2_X1 U48 ( .A1(ref_1_port_o_1_1[0]), .A2(port_a_1[0]), .ZN(N1) );
  AND2_X1 U49 ( .A1(ref_1_port_o_1_1[1]), .A2(port_a_1[1]), .ZN(N3) );
  AND2_X1 U50 ( .A1(ref_1_port_o_1_1[2]), .A2(port_a_1[2]), .ZN(N5) );
  AND2_X1 U51 ( .A1(ref_1_port_o_1_1[3]), .A2(port_a_1[3]), .ZN(N7) );
  AND2_X1 U52 ( .A1(ref_1_port_o_1_1[4]), .A2(port_a_1[4]), .ZN(N9) );
  XOR2_X1 U53 ( .A(temp_0_1[0]), .B(mult_ab_1_0[0]), .Z(port_c_1[0]) );
  XOR2_X1 U54 ( .A(temp_0_1[1]), .B(mult_ab_1_0[1]), .Z(port_c_1[1]) );
  XOR2_X1 U55 ( .A(temp_0_1[2]), .B(mult_ab_1_0[2]), .Z(port_c_1[2]) );
  XOR2_X1 U56 ( .A(temp_0_1[3]), .B(mult_ab_1_0[3]), .Z(port_c_1[3]) );
  XOR2_X1 U57 ( .A(temp_0_1[4]), .B(mult_ab_1_0[4]), .Z(port_c_1[4]) );
  XOR2_X1 U58 ( .A(temp_0_0[0]), .B(mult_ab_0_1[0]), .Z(port_c_0[0]) );
  XOR2_X1 U59 ( .A(temp_0_0[1]), .B(mult_ab_0_1[1]), .Z(port_c_0[1]) );
  XOR2_X1 U60 ( .A(temp_0_0[2]), .B(mult_ab_0_1[2]), .Z(port_c_0[2]) );
  XOR2_X1 U61 ( .A(temp_0_0[3]), .B(mult_ab_0_1[3]), .Z(port_c_0[3]) );
  XOR2_X1 U62 ( .A(temp_0_0[4]), .B(mult_ab_0_1[4]), .Z(port_c_0[4]) );
  BUF_X1 ref_1_U6 ( .A(ref_1_refreshed_0_1_), .Z(ref_1_n4) );
  BUF_X1 ref_1_U5 ( .A(ref_1_refreshed_1_1_), .Z(ref_1_n3) );
  BUF_X1 ref_1_U4 ( .A(ref_1_refreshed_0_4_), .Z(ref_1_n2) );
  BUF_X1 ref_1_U3 ( .A(ref_1_refreshed_1_4_), .Z(ref_1_n1) );
  DFF_X1 ref_1_reg_out_1_1_reg_0_ ( .D(ref_1_maj_23_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_1_ ( .D(ref_1_maj_27_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_2_ ( .D(ref_1_maj_31_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_3_ ( .D(ref_1_maj_35_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[3]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_4_ ( .D(ref_1_maj_39_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[4]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_0_ ( .D(ref_1_maj_22_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_1_ ( .D(ref_1_maj_26_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_2_ ( .D(ref_1_maj_30_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_3_ ( .D(ref_1_maj_34_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[3]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_4_ ( .D(ref_1_maj_38_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[4]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_0_ ( .D(ref_1_maj_21_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_1_ ( .D(ref_1_maj_25_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_2_ ( .D(ref_1_maj_29_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_3_ ( .D(ref_1_maj_33_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[3]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_4_ ( .D(ref_1_maj_37_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[4]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_0_ ( .D(ref_1_maj_20_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_1_ ( .D(ref_1_maj_24_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_2_ ( .D(ref_1_maj_28_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_3_ ( .D(ref_1_maj_32_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[3]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_4_ ( .D(ref_1_maj_36_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[4]), .QN() );
  XOR2_X1 ref_1_simpleXor_40_U1 ( .A(port_rand_ref[0]), .B(port_b_0[0]), .Z(
        ref_1_simpleXor_40_port_z) );
  INV_X1 ref_1_simpleXor_41_U2 ( .A(ref_1_simpleXor_41_n2), .ZN(
        ref_1_refreshed_0_0_) );
  XNOR2_X1 ref_1_simpleXor_41_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_40_port_z), .ZN(ref_1_simpleXor_41_n2) );
  XOR2_X1 ref_1_simpleXor_42_U1 ( .A(port_rand_ref[0]), .B(port_b_1[0]), .Z(
        ref_1_simpleXor_42_port_z) );
  INV_X1 ref_1_simpleXor_43_U2 ( .A(ref_1_simpleXor_43_n2), .ZN(
        ref_1_refreshed_1_0_) );
  XNOR2_X1 ref_1_simpleXor_43_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_42_port_z), .ZN(ref_1_simpleXor_43_n2) );
  XOR2_X1 ref_1_simpleXor_44_U1 ( .A(port_rand_ref[0]), .B(port_b_0[1]), .Z(
        ref_1_simpleXor_44_port_z) );
  XOR2_X1 ref_1_simpleXor_45_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_44_port_z), .Z(ref_1_refreshed_0_1_) );
  XOR2_X1 ref_1_simpleXor_46_U1 ( .A(port_rand_ref[0]), .B(port_b_1[1]), .Z(
        ref_1_simpleXor_46_port_z) );
  XOR2_X1 ref_1_simpleXor_47_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_46_port_z), .Z(ref_1_refreshed_1_1_) );
  XOR2_X1 ref_1_simpleXor_48_U1 ( .A(port_rand_ref[0]), .B(port_b_0[2]), .Z(
        ref_1_simpleXor_48_port_z) );
  INV_X1 ref_1_simpleXor_49_U2 ( .A(ref_1_simpleXor_49_n2), .ZN(
        ref_1_refreshed_0_2_) );
  XNOR2_X1 ref_1_simpleXor_49_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_48_port_z), .ZN(ref_1_simpleXor_49_n2) );
  XOR2_X1 ref_1_simpleXor_50_U1 ( .A(port_rand_ref[0]), .B(port_b_1[2]), .Z(
        ref_1_simpleXor_50_port_z) );
  INV_X1 ref_1_simpleXor_51_U2 ( .A(ref_1_simpleXor_51_n2), .ZN(
        ref_1_refreshed_1_2_) );
  XNOR2_X1 ref_1_simpleXor_51_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_50_port_z), .ZN(ref_1_simpleXor_51_n2) );
  XOR2_X1 ref_1_simpleXor_52_U1 ( .A(port_rand_ref[0]), .B(port_b_0[3]), .Z(
        ref_1_simpleXor_52_port_z) );
  INV_X1 ref_1_simpleXor_53_U2 ( .A(ref_1_simpleXor_53_n2), .ZN(
        ref_1_refreshed_0_3_) );
  XNOR2_X1 ref_1_simpleXor_53_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_52_port_z), .ZN(ref_1_simpleXor_53_n2) );
  XOR2_X1 ref_1_simpleXor_54_U1 ( .A(port_rand_ref[0]), .B(port_b_1[3]), .Z(
        ref_1_simpleXor_54_port_z) );
  INV_X1 ref_1_simpleXor_55_U2 ( .A(ref_1_simpleXor_55_n2), .ZN(
        ref_1_refreshed_1_3_) );
  XNOR2_X1 ref_1_simpleXor_55_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_54_port_z), .ZN(ref_1_simpleXor_55_n2) );
  XOR2_X1 ref_1_simpleXor_56_U1 ( .A(port_rand_ref[0]), .B(port_b_0[4]), .Z(
        ref_1_simpleXor_56_port_z) );
  XOR2_X1 ref_1_simpleXor_57_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_56_port_z), .Z(ref_1_refreshed_0_4_) );
  XOR2_X1 ref_1_simpleXor_58_U1 ( .A(port_rand_ref[0]), .B(port_b_1[4]), .Z(
        ref_1_simpleXor_58_port_z) );
  XOR2_X1 ref_1_simpleXor_59_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_58_port_z), .Z(ref_1_refreshed_1_4_) );
  NAND2_X1 ref_1_maj_20_U15 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_20_n11), 
        .ZN(ref_1_maj_20_n13) );
  NAND2_X1 ref_1_maj_20_U14 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n4), .ZN(
        ref_1_maj_20_n12) );
  NAND2_X1 ref_1_maj_20_U13 ( .A1(ref_1_maj_20_n12), .A2(ref_1_maj_20_n13), 
        .ZN(ref_1_maj_20_n7) );
  NAND2_X1 ref_1_maj_20_U12 ( .A1(ref_1_refreshed_0_3_), .A2(ref_1_n2), .ZN(
        ref_1_maj_20_n9) );
  NAND2_X1 ref_1_maj_20_U11 ( .A1(ref_1_maj_20_n6), .A2(ref_1_maj_20_n5), .ZN(
        ref_1_maj_20_n10) );
  NAND2_X1 ref_1_maj_20_U10 ( .A1(ref_1_maj_20_n9), .A2(ref_1_maj_20_n10), 
        .ZN(ref_1_maj_20_n8) );
  XOR2_X1 ref_1_maj_20_U9 ( .A(ref_1_refreshed_0_3_), .B(ref_1_n2), .Z(
        ref_1_maj_20_n5) );
  XOR2_X1 ref_1_maj_20_U8 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_20_n11), 
        .Z(ref_1_maj_20_n6) );
  XOR2_X1 ref_1_maj_20_U7 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n4), .Z(
        ref_1_maj_20_n11) );
  OR2_X1 ref_1_maj_20_U6 ( .A1(ref_1_maj_20_n7), .A2(ref_1_maj_20_n8), .ZN(
        ref_1_maj_20_n3) );
  NAND2_X1 ref_1_maj_20_U5 ( .A1(ref_1_maj_20_n3), .A2(ref_1_maj_20_n4), .ZN(
        ref_1_maj_20_n2) );
  NAND2_X1 ref_1_maj_20_U4 ( .A1(ref_1_maj_20_n7), .A2(ref_1_maj_20_n8), .ZN(
        ref_1_maj_20_n1) );
  NAND2_X1 ref_1_maj_20_U3 ( .A1(ref_1_maj_20_n1), .A2(ref_1_maj_20_n2), .ZN(
        ref_1_maj_20_port_o) );
  XOR2_X1 ref_1_maj_20_U2 ( .A(ref_1_maj_20_n5), .B(ref_1_maj_20_n6), .Z(
        ref_1_maj_20_n4) );
  NAND2_X1 ref_1_maj_21_U15 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_21_n16), 
        .ZN(ref_1_maj_21_n14) );
  NAND2_X1 ref_1_maj_21_U14 ( .A1(ref_1_refreshed_0_0_), .A2(
        ref_1_refreshed_0_1_), .ZN(ref_1_maj_21_n15) );
  NAND2_X1 ref_1_maj_21_U13 ( .A1(ref_1_maj_21_n15), .A2(ref_1_maj_21_n14), 
        .ZN(ref_1_maj_21_n20) );
  NAND2_X1 ref_1_maj_21_U12 ( .A1(ref_1_refreshed_0_3_), .A2(
        ref_1_refreshed_0_4_), .ZN(ref_1_maj_21_n18) );
  NAND2_X1 ref_1_maj_21_U11 ( .A1(ref_1_maj_21_n21), .A2(ref_1_maj_21_n22), 
        .ZN(ref_1_maj_21_n17) );
  NAND2_X1 ref_1_maj_21_U10 ( .A1(ref_1_maj_21_n18), .A2(ref_1_maj_21_n17), 
        .ZN(ref_1_maj_21_n19) );
  XOR2_X1 ref_1_maj_21_U9 ( .A(ref_1_refreshed_0_3_), .B(ref_1_refreshed_0_4_), 
        .Z(ref_1_maj_21_n22) );
  XOR2_X1 ref_1_maj_21_U8 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_21_n16), 
        .Z(ref_1_maj_21_n21) );
  XOR2_X1 ref_1_maj_21_U7 ( .A(ref_1_refreshed_0_0_), .B(ref_1_refreshed_0_1_), 
        .Z(ref_1_maj_21_n16) );
  OR2_X1 ref_1_maj_21_U6 ( .A1(ref_1_maj_21_n20), .A2(ref_1_maj_21_n19), .ZN(
        ref_1_maj_21_n24) );
  NAND2_X1 ref_1_maj_21_U5 ( .A1(ref_1_maj_21_n24), .A2(ref_1_maj_21_n23), 
        .ZN(ref_1_maj_21_n25) );
  NAND2_X1 ref_1_maj_21_U4 ( .A1(ref_1_maj_21_n20), .A2(ref_1_maj_21_n19), 
        .ZN(ref_1_maj_21_n26) );
  NAND2_X1 ref_1_maj_21_U3 ( .A1(ref_1_maj_21_n26), .A2(ref_1_maj_21_n25), 
        .ZN(ref_1_maj_21_port_o) );
  XOR2_X1 ref_1_maj_21_U2 ( .A(ref_1_maj_21_n22), .B(ref_1_maj_21_n21), .Z(
        ref_1_maj_21_n23) );
  NAND2_X1 ref_1_maj_22_U15 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_22_n16), 
        .ZN(ref_1_maj_22_n14) );
  NAND2_X1 ref_1_maj_22_U14 ( .A1(ref_1_refreshed_1_0_), .A2(
        ref_1_refreshed_1_1_), .ZN(ref_1_maj_22_n15) );
  NAND2_X1 ref_1_maj_22_U13 ( .A1(ref_1_maj_22_n15), .A2(ref_1_maj_22_n14), 
        .ZN(ref_1_maj_22_n20) );
  NAND2_X1 ref_1_maj_22_U12 ( .A1(ref_1_refreshed_1_3_), .A2(
        ref_1_refreshed_1_4_), .ZN(ref_1_maj_22_n18) );
  NAND2_X1 ref_1_maj_22_U11 ( .A1(ref_1_maj_22_n21), .A2(ref_1_maj_22_n22), 
        .ZN(ref_1_maj_22_n17) );
  NAND2_X1 ref_1_maj_22_U10 ( .A1(ref_1_maj_22_n18), .A2(ref_1_maj_22_n17), 
        .ZN(ref_1_maj_22_n19) );
  XOR2_X1 ref_1_maj_22_U9 ( .A(ref_1_refreshed_1_3_), .B(ref_1_refreshed_1_4_), 
        .Z(ref_1_maj_22_n22) );
  XOR2_X1 ref_1_maj_22_U8 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_22_n16), 
        .Z(ref_1_maj_22_n21) );
  XOR2_X1 ref_1_maj_22_U7 ( .A(ref_1_refreshed_1_0_), .B(ref_1_refreshed_1_1_), 
        .Z(ref_1_maj_22_n16) );
  OR2_X1 ref_1_maj_22_U6 ( .A1(ref_1_maj_22_n20), .A2(ref_1_maj_22_n19), .ZN(
        ref_1_maj_22_n24) );
  NAND2_X1 ref_1_maj_22_U5 ( .A1(ref_1_maj_22_n24), .A2(ref_1_maj_22_n23), 
        .ZN(ref_1_maj_22_n25) );
  NAND2_X1 ref_1_maj_22_U4 ( .A1(ref_1_maj_22_n20), .A2(ref_1_maj_22_n19), 
        .ZN(ref_1_maj_22_n26) );
  NAND2_X1 ref_1_maj_22_U3 ( .A1(ref_1_maj_22_n26), .A2(ref_1_maj_22_n25), 
        .ZN(ref_1_maj_22_port_o) );
  XOR2_X1 ref_1_maj_22_U2 ( .A(ref_1_maj_22_n22), .B(ref_1_maj_22_n21), .Z(
        ref_1_maj_22_n23) );
  NAND2_X1 ref_1_maj_23_U15 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_23_n16), 
        .ZN(ref_1_maj_23_n14) );
  NAND2_X1 ref_1_maj_23_U14 ( .A1(ref_1_refreshed_1_0_), .A2(
        ref_1_refreshed_1_1_), .ZN(ref_1_maj_23_n15) );
  NAND2_X1 ref_1_maj_23_U13 ( .A1(ref_1_maj_23_n15), .A2(ref_1_maj_23_n14), 
        .ZN(ref_1_maj_23_n20) );
  NAND2_X1 ref_1_maj_23_U12 ( .A1(ref_1_refreshed_1_3_), .A2(
        ref_1_refreshed_1_4_), .ZN(ref_1_maj_23_n18) );
  NAND2_X1 ref_1_maj_23_U11 ( .A1(ref_1_maj_23_n21), .A2(ref_1_maj_23_n22), 
        .ZN(ref_1_maj_23_n17) );
  NAND2_X1 ref_1_maj_23_U10 ( .A1(ref_1_maj_23_n18), .A2(ref_1_maj_23_n17), 
        .ZN(ref_1_maj_23_n19) );
  XOR2_X1 ref_1_maj_23_U9 ( .A(ref_1_refreshed_1_3_), .B(ref_1_refreshed_1_4_), 
        .Z(ref_1_maj_23_n22) );
  XOR2_X1 ref_1_maj_23_U8 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_23_n16), 
        .Z(ref_1_maj_23_n21) );
  XOR2_X1 ref_1_maj_23_U7 ( .A(ref_1_refreshed_1_0_), .B(ref_1_refreshed_1_1_), 
        .Z(ref_1_maj_23_n16) );
  OR2_X1 ref_1_maj_23_U6 ( .A1(ref_1_maj_23_n20), .A2(ref_1_maj_23_n19), .ZN(
        ref_1_maj_23_n24) );
  NAND2_X1 ref_1_maj_23_U5 ( .A1(ref_1_maj_23_n24), .A2(ref_1_maj_23_n23), 
        .ZN(ref_1_maj_23_n25) );
  NAND2_X1 ref_1_maj_23_U4 ( .A1(ref_1_maj_23_n20), .A2(ref_1_maj_23_n19), 
        .ZN(ref_1_maj_23_n26) );
  NAND2_X1 ref_1_maj_23_U3 ( .A1(ref_1_maj_23_n26), .A2(ref_1_maj_23_n25), 
        .ZN(ref_1_maj_23_port_o) );
  XOR2_X1 ref_1_maj_23_U2 ( .A(ref_1_maj_23_n22), .B(ref_1_maj_23_n21), .Z(
        ref_1_maj_23_n23) );
  NAND2_X1 ref_1_maj_24_U15 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_24_n16), 
        .ZN(ref_1_maj_24_n14) );
  NAND2_X1 ref_1_maj_24_U14 ( .A1(ref_1_refreshed_0_0_), .A2(
        ref_1_refreshed_0_1_), .ZN(ref_1_maj_24_n15) );
  NAND2_X1 ref_1_maj_24_U13 ( .A1(ref_1_maj_24_n15), .A2(ref_1_maj_24_n14), 
        .ZN(ref_1_maj_24_n20) );
  NAND2_X1 ref_1_maj_24_U12 ( .A1(ref_1_refreshed_0_3_), .A2(
        ref_1_refreshed_0_4_), .ZN(ref_1_maj_24_n18) );
  NAND2_X1 ref_1_maj_24_U11 ( .A1(ref_1_maj_24_n21), .A2(ref_1_maj_24_n22), 
        .ZN(ref_1_maj_24_n17) );
  NAND2_X1 ref_1_maj_24_U10 ( .A1(ref_1_maj_24_n18), .A2(ref_1_maj_24_n17), 
        .ZN(ref_1_maj_24_n19) );
  XOR2_X1 ref_1_maj_24_U9 ( .A(ref_1_refreshed_0_3_), .B(ref_1_refreshed_0_4_), 
        .Z(ref_1_maj_24_n22) );
  XOR2_X1 ref_1_maj_24_U8 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_24_n16), 
        .Z(ref_1_maj_24_n21) );
  XOR2_X1 ref_1_maj_24_U7 ( .A(ref_1_refreshed_0_0_), .B(ref_1_refreshed_0_1_), 
        .Z(ref_1_maj_24_n16) );
  OR2_X1 ref_1_maj_24_U6 ( .A1(ref_1_maj_24_n20), .A2(ref_1_maj_24_n19), .ZN(
        ref_1_maj_24_n24) );
  NAND2_X1 ref_1_maj_24_U5 ( .A1(ref_1_maj_24_n24), .A2(ref_1_maj_24_n23), 
        .ZN(ref_1_maj_24_n25) );
  NAND2_X1 ref_1_maj_24_U4 ( .A1(ref_1_maj_24_n20), .A2(ref_1_maj_24_n19), 
        .ZN(ref_1_maj_24_n26) );
  NAND2_X1 ref_1_maj_24_U3 ( .A1(ref_1_maj_24_n26), .A2(ref_1_maj_24_n25), 
        .ZN(ref_1_maj_24_port_o) );
  XOR2_X1 ref_1_maj_24_U2 ( .A(ref_1_maj_24_n22), .B(ref_1_maj_24_n21), .Z(
        ref_1_maj_24_n23) );
  NAND2_X1 ref_1_maj_25_U15 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_25_n16), 
        .ZN(ref_1_maj_25_n14) );
  NAND2_X1 ref_1_maj_25_U14 ( .A1(ref_1_refreshed_0_0_), .A2(
        ref_1_refreshed_0_1_), .ZN(ref_1_maj_25_n15) );
  NAND2_X1 ref_1_maj_25_U13 ( .A1(ref_1_maj_25_n15), .A2(ref_1_maj_25_n14), 
        .ZN(ref_1_maj_25_n20) );
  NAND2_X1 ref_1_maj_25_U12 ( .A1(ref_1_refreshed_0_3_), .A2(
        ref_1_refreshed_0_4_), .ZN(ref_1_maj_25_n18) );
  NAND2_X1 ref_1_maj_25_U11 ( .A1(ref_1_maj_25_n21), .A2(ref_1_maj_25_n22), 
        .ZN(ref_1_maj_25_n17) );
  NAND2_X1 ref_1_maj_25_U10 ( .A1(ref_1_maj_25_n18), .A2(ref_1_maj_25_n17), 
        .ZN(ref_1_maj_25_n19) );
  XOR2_X1 ref_1_maj_25_U9 ( .A(ref_1_refreshed_0_3_), .B(ref_1_refreshed_0_4_), 
        .Z(ref_1_maj_25_n22) );
  XOR2_X1 ref_1_maj_25_U8 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_25_n16), 
        .Z(ref_1_maj_25_n21) );
  XOR2_X1 ref_1_maj_25_U7 ( .A(ref_1_refreshed_0_0_), .B(ref_1_refreshed_0_1_), 
        .Z(ref_1_maj_25_n16) );
  OR2_X1 ref_1_maj_25_U6 ( .A1(ref_1_maj_25_n20), .A2(ref_1_maj_25_n19), .ZN(
        ref_1_maj_25_n24) );
  NAND2_X1 ref_1_maj_25_U5 ( .A1(ref_1_maj_25_n24), .A2(ref_1_maj_25_n23), 
        .ZN(ref_1_maj_25_n25) );
  NAND2_X1 ref_1_maj_25_U4 ( .A1(ref_1_maj_25_n20), .A2(ref_1_maj_25_n19), 
        .ZN(ref_1_maj_25_n26) );
  NAND2_X1 ref_1_maj_25_U3 ( .A1(ref_1_maj_25_n26), .A2(ref_1_maj_25_n25), 
        .ZN(ref_1_maj_25_port_o) );
  XOR2_X1 ref_1_maj_25_U2 ( .A(ref_1_maj_25_n22), .B(ref_1_maj_25_n21), .Z(
        ref_1_maj_25_n23) );
  NAND2_X1 ref_1_maj_26_U15 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_26_n16), 
        .ZN(ref_1_maj_26_n14) );
  NAND2_X1 ref_1_maj_26_U14 ( .A1(ref_1_refreshed_1_0_), .A2(
        ref_1_refreshed_1_1_), .ZN(ref_1_maj_26_n15) );
  NAND2_X1 ref_1_maj_26_U13 ( .A1(ref_1_maj_26_n15), .A2(ref_1_maj_26_n14), 
        .ZN(ref_1_maj_26_n20) );
  NAND2_X1 ref_1_maj_26_U12 ( .A1(ref_1_refreshed_1_3_), .A2(
        ref_1_refreshed_1_4_), .ZN(ref_1_maj_26_n18) );
  NAND2_X1 ref_1_maj_26_U11 ( .A1(ref_1_maj_26_n21), .A2(ref_1_maj_26_n22), 
        .ZN(ref_1_maj_26_n17) );
  NAND2_X1 ref_1_maj_26_U10 ( .A1(ref_1_maj_26_n18), .A2(ref_1_maj_26_n17), 
        .ZN(ref_1_maj_26_n19) );
  XOR2_X1 ref_1_maj_26_U9 ( .A(ref_1_refreshed_1_3_), .B(ref_1_refreshed_1_4_), 
        .Z(ref_1_maj_26_n22) );
  XOR2_X1 ref_1_maj_26_U8 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_26_n16), 
        .Z(ref_1_maj_26_n21) );
  XOR2_X1 ref_1_maj_26_U7 ( .A(ref_1_refreshed_1_0_), .B(ref_1_refreshed_1_1_), 
        .Z(ref_1_maj_26_n16) );
  OR2_X1 ref_1_maj_26_U6 ( .A1(ref_1_maj_26_n20), .A2(ref_1_maj_26_n19), .ZN(
        ref_1_maj_26_n24) );
  NAND2_X1 ref_1_maj_26_U5 ( .A1(ref_1_maj_26_n24), .A2(ref_1_maj_26_n23), 
        .ZN(ref_1_maj_26_n25) );
  NAND2_X1 ref_1_maj_26_U4 ( .A1(ref_1_maj_26_n20), .A2(ref_1_maj_26_n19), 
        .ZN(ref_1_maj_26_n26) );
  NAND2_X1 ref_1_maj_26_U3 ( .A1(ref_1_maj_26_n26), .A2(ref_1_maj_26_n25), 
        .ZN(ref_1_maj_26_port_o) );
  XOR2_X1 ref_1_maj_26_U2 ( .A(ref_1_maj_26_n22), .B(ref_1_maj_26_n21), .Z(
        ref_1_maj_26_n23) );
  NAND2_X1 ref_1_maj_27_U15 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_27_n16), 
        .ZN(ref_1_maj_27_n14) );
  NAND2_X1 ref_1_maj_27_U14 ( .A1(ref_1_refreshed_1_0_), .A2(ref_1_n3), .ZN(
        ref_1_maj_27_n15) );
  NAND2_X1 ref_1_maj_27_U13 ( .A1(ref_1_maj_27_n15), .A2(ref_1_maj_27_n14), 
        .ZN(ref_1_maj_27_n20) );
  NAND2_X1 ref_1_maj_27_U12 ( .A1(ref_1_refreshed_1_3_), .A2(ref_1_n1), .ZN(
        ref_1_maj_27_n18) );
  NAND2_X1 ref_1_maj_27_U11 ( .A1(ref_1_maj_27_n21), .A2(ref_1_maj_27_n22), 
        .ZN(ref_1_maj_27_n17) );
  NAND2_X1 ref_1_maj_27_U10 ( .A1(ref_1_maj_27_n18), .A2(ref_1_maj_27_n17), 
        .ZN(ref_1_maj_27_n19) );
  XOR2_X1 ref_1_maj_27_U9 ( .A(ref_1_refreshed_1_3_), .B(ref_1_n1), .Z(
        ref_1_maj_27_n22) );
  XOR2_X1 ref_1_maj_27_U8 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_27_n16), 
        .Z(ref_1_maj_27_n21) );
  XOR2_X1 ref_1_maj_27_U7 ( .A(ref_1_refreshed_1_0_), .B(ref_1_n3), .Z(
        ref_1_maj_27_n16) );
  OR2_X1 ref_1_maj_27_U6 ( .A1(ref_1_maj_27_n20), .A2(ref_1_maj_27_n19), .ZN(
        ref_1_maj_27_n24) );
  NAND2_X1 ref_1_maj_27_U5 ( .A1(ref_1_maj_27_n24), .A2(ref_1_maj_27_n23), 
        .ZN(ref_1_maj_27_n25) );
  NAND2_X1 ref_1_maj_27_U4 ( .A1(ref_1_maj_27_n20), .A2(ref_1_maj_27_n19), 
        .ZN(ref_1_maj_27_n26) );
  NAND2_X1 ref_1_maj_27_U3 ( .A1(ref_1_maj_27_n26), .A2(ref_1_maj_27_n25), 
        .ZN(ref_1_maj_27_port_o) );
  XOR2_X1 ref_1_maj_27_U2 ( .A(ref_1_maj_27_n22), .B(ref_1_maj_27_n21), .Z(
        ref_1_maj_27_n23) );
  NAND2_X1 ref_1_maj_28_U15 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_28_n16), 
        .ZN(ref_1_maj_28_n14) );
  NAND2_X1 ref_1_maj_28_U14 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n4), .ZN(
        ref_1_maj_28_n15) );
  NAND2_X1 ref_1_maj_28_U13 ( .A1(ref_1_maj_28_n15), .A2(ref_1_maj_28_n14), 
        .ZN(ref_1_maj_28_n20) );
  NAND2_X1 ref_1_maj_28_U12 ( .A1(ref_1_refreshed_0_3_), .A2(ref_1_n2), .ZN(
        ref_1_maj_28_n18) );
  NAND2_X1 ref_1_maj_28_U11 ( .A1(ref_1_maj_28_n21), .A2(ref_1_maj_28_n22), 
        .ZN(ref_1_maj_28_n17) );
  NAND2_X1 ref_1_maj_28_U10 ( .A1(ref_1_maj_28_n18), .A2(ref_1_maj_28_n17), 
        .ZN(ref_1_maj_28_n19) );
  XOR2_X1 ref_1_maj_28_U9 ( .A(ref_1_refreshed_0_3_), .B(ref_1_n2), .Z(
        ref_1_maj_28_n22) );
  XOR2_X1 ref_1_maj_28_U8 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_28_n16), 
        .Z(ref_1_maj_28_n21) );
  XOR2_X1 ref_1_maj_28_U7 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n4), .Z(
        ref_1_maj_28_n16) );
  OR2_X1 ref_1_maj_28_U6 ( .A1(ref_1_maj_28_n20), .A2(ref_1_maj_28_n19), .ZN(
        ref_1_maj_28_n24) );
  NAND2_X1 ref_1_maj_28_U5 ( .A1(ref_1_maj_28_n24), .A2(ref_1_maj_28_n23), 
        .ZN(ref_1_maj_28_n25) );
  NAND2_X1 ref_1_maj_28_U4 ( .A1(ref_1_maj_28_n20), .A2(ref_1_maj_28_n19), 
        .ZN(ref_1_maj_28_n26) );
  NAND2_X1 ref_1_maj_28_U3 ( .A1(ref_1_maj_28_n26), .A2(ref_1_maj_28_n25), 
        .ZN(ref_1_maj_28_port_o) );
  XOR2_X1 ref_1_maj_28_U2 ( .A(ref_1_maj_28_n22), .B(ref_1_maj_28_n21), .Z(
        ref_1_maj_28_n23) );
  NAND2_X1 ref_1_maj_29_U15 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_29_n16), 
        .ZN(ref_1_maj_29_n14) );
  NAND2_X1 ref_1_maj_29_U14 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n4), .ZN(
        ref_1_maj_29_n15) );
  NAND2_X1 ref_1_maj_29_U13 ( .A1(ref_1_maj_29_n15), .A2(ref_1_maj_29_n14), 
        .ZN(ref_1_maj_29_n20) );
  NAND2_X1 ref_1_maj_29_U12 ( .A1(ref_1_refreshed_0_3_), .A2(ref_1_n2), .ZN(
        ref_1_maj_29_n18) );
  NAND2_X1 ref_1_maj_29_U11 ( .A1(ref_1_maj_29_n21), .A2(ref_1_maj_29_n22), 
        .ZN(ref_1_maj_29_n17) );
  NAND2_X1 ref_1_maj_29_U10 ( .A1(ref_1_maj_29_n18), .A2(ref_1_maj_29_n17), 
        .ZN(ref_1_maj_29_n19) );
  XOR2_X1 ref_1_maj_29_U9 ( .A(ref_1_refreshed_0_3_), .B(ref_1_n2), .Z(
        ref_1_maj_29_n22) );
  XOR2_X1 ref_1_maj_29_U8 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_29_n16), 
        .Z(ref_1_maj_29_n21) );
  XOR2_X1 ref_1_maj_29_U7 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n4), .Z(
        ref_1_maj_29_n16) );
  OR2_X1 ref_1_maj_29_U6 ( .A1(ref_1_maj_29_n20), .A2(ref_1_maj_29_n19), .ZN(
        ref_1_maj_29_n24) );
  NAND2_X1 ref_1_maj_29_U5 ( .A1(ref_1_maj_29_n24), .A2(ref_1_maj_29_n23), 
        .ZN(ref_1_maj_29_n25) );
  NAND2_X1 ref_1_maj_29_U4 ( .A1(ref_1_maj_29_n20), .A2(ref_1_maj_29_n19), 
        .ZN(ref_1_maj_29_n26) );
  NAND2_X1 ref_1_maj_29_U3 ( .A1(ref_1_maj_29_n26), .A2(ref_1_maj_29_n25), 
        .ZN(ref_1_maj_29_port_o) );
  XOR2_X1 ref_1_maj_29_U2 ( .A(ref_1_maj_29_n22), .B(ref_1_maj_29_n21), .Z(
        ref_1_maj_29_n23) );
  NAND2_X1 ref_1_maj_30_U15 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_30_n16), 
        .ZN(ref_1_maj_30_n14) );
  NAND2_X1 ref_1_maj_30_U14 ( .A1(ref_1_refreshed_1_0_), .A2(ref_1_n3), .ZN(
        ref_1_maj_30_n15) );
  NAND2_X1 ref_1_maj_30_U13 ( .A1(ref_1_maj_30_n15), .A2(ref_1_maj_30_n14), 
        .ZN(ref_1_maj_30_n20) );
  NAND2_X1 ref_1_maj_30_U12 ( .A1(ref_1_refreshed_1_3_), .A2(ref_1_n1), .ZN(
        ref_1_maj_30_n18) );
  NAND2_X1 ref_1_maj_30_U11 ( .A1(ref_1_maj_30_n21), .A2(ref_1_maj_30_n22), 
        .ZN(ref_1_maj_30_n17) );
  NAND2_X1 ref_1_maj_30_U10 ( .A1(ref_1_maj_30_n18), .A2(ref_1_maj_30_n17), 
        .ZN(ref_1_maj_30_n19) );
  XOR2_X1 ref_1_maj_30_U9 ( .A(ref_1_refreshed_1_3_), .B(ref_1_n1), .Z(
        ref_1_maj_30_n22) );
  XOR2_X1 ref_1_maj_30_U8 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_30_n16), 
        .Z(ref_1_maj_30_n21) );
  XOR2_X1 ref_1_maj_30_U7 ( .A(ref_1_refreshed_1_0_), .B(ref_1_n3), .Z(
        ref_1_maj_30_n16) );
  OR2_X1 ref_1_maj_30_U6 ( .A1(ref_1_maj_30_n20), .A2(ref_1_maj_30_n19), .ZN(
        ref_1_maj_30_n24) );
  NAND2_X1 ref_1_maj_30_U5 ( .A1(ref_1_maj_30_n24), .A2(ref_1_maj_30_n23), 
        .ZN(ref_1_maj_30_n25) );
  NAND2_X1 ref_1_maj_30_U4 ( .A1(ref_1_maj_30_n20), .A2(ref_1_maj_30_n19), 
        .ZN(ref_1_maj_30_n26) );
  NAND2_X1 ref_1_maj_30_U3 ( .A1(ref_1_maj_30_n26), .A2(ref_1_maj_30_n25), 
        .ZN(ref_1_maj_30_port_o) );
  XOR2_X1 ref_1_maj_30_U2 ( .A(ref_1_maj_30_n22), .B(ref_1_maj_30_n21), .Z(
        ref_1_maj_30_n23) );
  NAND2_X1 ref_1_maj_31_U15 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_31_n16), 
        .ZN(ref_1_maj_31_n14) );
  NAND2_X1 ref_1_maj_31_U14 ( .A1(ref_1_refreshed_1_0_), .A2(ref_1_n3), .ZN(
        ref_1_maj_31_n15) );
  NAND2_X1 ref_1_maj_31_U13 ( .A1(ref_1_maj_31_n15), .A2(ref_1_maj_31_n14), 
        .ZN(ref_1_maj_31_n20) );
  NAND2_X1 ref_1_maj_31_U12 ( .A1(ref_1_refreshed_1_3_), .A2(ref_1_n1), .ZN(
        ref_1_maj_31_n18) );
  NAND2_X1 ref_1_maj_31_U11 ( .A1(ref_1_maj_31_n21), .A2(ref_1_maj_31_n22), 
        .ZN(ref_1_maj_31_n17) );
  NAND2_X1 ref_1_maj_31_U10 ( .A1(ref_1_maj_31_n18), .A2(ref_1_maj_31_n17), 
        .ZN(ref_1_maj_31_n19) );
  XOR2_X1 ref_1_maj_31_U9 ( .A(ref_1_refreshed_1_3_), .B(ref_1_n1), .Z(
        ref_1_maj_31_n22) );
  XOR2_X1 ref_1_maj_31_U8 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_31_n16), 
        .Z(ref_1_maj_31_n21) );
  XOR2_X1 ref_1_maj_31_U7 ( .A(ref_1_refreshed_1_0_), .B(ref_1_n3), .Z(
        ref_1_maj_31_n16) );
  OR2_X1 ref_1_maj_31_U6 ( .A1(ref_1_maj_31_n20), .A2(ref_1_maj_31_n19), .ZN(
        ref_1_maj_31_n24) );
  NAND2_X1 ref_1_maj_31_U5 ( .A1(ref_1_maj_31_n24), .A2(ref_1_maj_31_n23), 
        .ZN(ref_1_maj_31_n25) );
  NAND2_X1 ref_1_maj_31_U4 ( .A1(ref_1_maj_31_n20), .A2(ref_1_maj_31_n19), 
        .ZN(ref_1_maj_31_n26) );
  NAND2_X1 ref_1_maj_31_U3 ( .A1(ref_1_maj_31_n26), .A2(ref_1_maj_31_n25), 
        .ZN(ref_1_maj_31_port_o) );
  XOR2_X1 ref_1_maj_31_U2 ( .A(ref_1_maj_31_n22), .B(ref_1_maj_31_n21), .Z(
        ref_1_maj_31_n23) );
  NAND2_X1 ref_1_maj_32_U15 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_32_n16), 
        .ZN(ref_1_maj_32_n14) );
  NAND2_X1 ref_1_maj_32_U14 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n4), .ZN(
        ref_1_maj_32_n15) );
  NAND2_X1 ref_1_maj_32_U13 ( .A1(ref_1_maj_32_n15), .A2(ref_1_maj_32_n14), 
        .ZN(ref_1_maj_32_n20) );
  NAND2_X1 ref_1_maj_32_U12 ( .A1(ref_1_refreshed_0_3_), .A2(ref_1_n2), .ZN(
        ref_1_maj_32_n18) );
  NAND2_X1 ref_1_maj_32_U11 ( .A1(ref_1_maj_32_n21), .A2(ref_1_maj_32_n22), 
        .ZN(ref_1_maj_32_n17) );
  NAND2_X1 ref_1_maj_32_U10 ( .A1(ref_1_maj_32_n18), .A2(ref_1_maj_32_n17), 
        .ZN(ref_1_maj_32_n19) );
  XOR2_X1 ref_1_maj_32_U9 ( .A(ref_1_refreshed_0_3_), .B(ref_1_n2), .Z(
        ref_1_maj_32_n22) );
  XOR2_X1 ref_1_maj_32_U8 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_32_n16), 
        .Z(ref_1_maj_32_n21) );
  XOR2_X1 ref_1_maj_32_U7 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n4), .Z(
        ref_1_maj_32_n16) );
  OR2_X1 ref_1_maj_32_U6 ( .A1(ref_1_maj_32_n20), .A2(ref_1_maj_32_n19), .ZN(
        ref_1_maj_32_n24) );
  NAND2_X1 ref_1_maj_32_U5 ( .A1(ref_1_maj_32_n24), .A2(ref_1_maj_32_n23), 
        .ZN(ref_1_maj_32_n25) );
  NAND2_X1 ref_1_maj_32_U4 ( .A1(ref_1_maj_32_n20), .A2(ref_1_maj_32_n19), 
        .ZN(ref_1_maj_32_n26) );
  NAND2_X1 ref_1_maj_32_U3 ( .A1(ref_1_maj_32_n26), .A2(ref_1_maj_32_n25), 
        .ZN(ref_1_maj_32_port_o) );
  XOR2_X1 ref_1_maj_32_U2 ( .A(ref_1_maj_32_n22), .B(ref_1_maj_32_n21), .Z(
        ref_1_maj_32_n23) );
  NAND2_X1 ref_1_maj_33_U15 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_33_n16), 
        .ZN(ref_1_maj_33_n14) );
  NAND2_X1 ref_1_maj_33_U14 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n4), .ZN(
        ref_1_maj_33_n15) );
  NAND2_X1 ref_1_maj_33_U13 ( .A1(ref_1_maj_33_n15), .A2(ref_1_maj_33_n14), 
        .ZN(ref_1_maj_33_n20) );
  NAND2_X1 ref_1_maj_33_U12 ( .A1(ref_1_refreshed_0_3_), .A2(ref_1_n2), .ZN(
        ref_1_maj_33_n18) );
  NAND2_X1 ref_1_maj_33_U11 ( .A1(ref_1_maj_33_n21), .A2(ref_1_maj_33_n22), 
        .ZN(ref_1_maj_33_n17) );
  NAND2_X1 ref_1_maj_33_U10 ( .A1(ref_1_maj_33_n18), .A2(ref_1_maj_33_n17), 
        .ZN(ref_1_maj_33_n19) );
  XOR2_X1 ref_1_maj_33_U9 ( .A(ref_1_refreshed_0_3_), .B(ref_1_n2), .Z(
        ref_1_maj_33_n22) );
  XOR2_X1 ref_1_maj_33_U8 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_33_n16), 
        .Z(ref_1_maj_33_n21) );
  XOR2_X1 ref_1_maj_33_U7 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n4), .Z(
        ref_1_maj_33_n16) );
  OR2_X1 ref_1_maj_33_U6 ( .A1(ref_1_maj_33_n20), .A2(ref_1_maj_33_n19), .ZN(
        ref_1_maj_33_n24) );
  NAND2_X1 ref_1_maj_33_U5 ( .A1(ref_1_maj_33_n24), .A2(ref_1_maj_33_n23), 
        .ZN(ref_1_maj_33_n25) );
  NAND2_X1 ref_1_maj_33_U4 ( .A1(ref_1_maj_33_n20), .A2(ref_1_maj_33_n19), 
        .ZN(ref_1_maj_33_n26) );
  NAND2_X1 ref_1_maj_33_U3 ( .A1(ref_1_maj_33_n26), .A2(ref_1_maj_33_n25), 
        .ZN(ref_1_maj_33_port_o) );
  XOR2_X1 ref_1_maj_33_U2 ( .A(ref_1_maj_33_n22), .B(ref_1_maj_33_n21), .Z(
        ref_1_maj_33_n23) );
  NAND2_X1 ref_1_maj_34_U15 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_34_n16), 
        .ZN(ref_1_maj_34_n14) );
  NAND2_X1 ref_1_maj_34_U14 ( .A1(ref_1_refreshed_1_0_), .A2(ref_1_n3), .ZN(
        ref_1_maj_34_n15) );
  NAND2_X1 ref_1_maj_34_U13 ( .A1(ref_1_maj_34_n15), .A2(ref_1_maj_34_n14), 
        .ZN(ref_1_maj_34_n20) );
  NAND2_X1 ref_1_maj_34_U12 ( .A1(ref_1_refreshed_1_3_), .A2(ref_1_n1), .ZN(
        ref_1_maj_34_n18) );
  NAND2_X1 ref_1_maj_34_U11 ( .A1(ref_1_maj_34_n21), .A2(ref_1_maj_34_n22), 
        .ZN(ref_1_maj_34_n17) );
  NAND2_X1 ref_1_maj_34_U10 ( .A1(ref_1_maj_34_n18), .A2(ref_1_maj_34_n17), 
        .ZN(ref_1_maj_34_n19) );
  XOR2_X1 ref_1_maj_34_U9 ( .A(ref_1_refreshed_1_3_), .B(ref_1_n1), .Z(
        ref_1_maj_34_n22) );
  XOR2_X1 ref_1_maj_34_U8 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_34_n16), 
        .Z(ref_1_maj_34_n21) );
  XOR2_X1 ref_1_maj_34_U7 ( .A(ref_1_refreshed_1_0_), .B(ref_1_n3), .Z(
        ref_1_maj_34_n16) );
  OR2_X1 ref_1_maj_34_U6 ( .A1(ref_1_maj_34_n20), .A2(ref_1_maj_34_n19), .ZN(
        ref_1_maj_34_n24) );
  NAND2_X1 ref_1_maj_34_U5 ( .A1(ref_1_maj_34_n24), .A2(ref_1_maj_34_n23), 
        .ZN(ref_1_maj_34_n25) );
  NAND2_X1 ref_1_maj_34_U4 ( .A1(ref_1_maj_34_n20), .A2(ref_1_maj_34_n19), 
        .ZN(ref_1_maj_34_n26) );
  NAND2_X1 ref_1_maj_34_U3 ( .A1(ref_1_maj_34_n26), .A2(ref_1_maj_34_n25), 
        .ZN(ref_1_maj_34_port_o) );
  XOR2_X1 ref_1_maj_34_U2 ( .A(ref_1_maj_34_n22), .B(ref_1_maj_34_n21), .Z(
        ref_1_maj_34_n23) );
  NAND2_X1 ref_1_maj_35_U15 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_35_n16), 
        .ZN(ref_1_maj_35_n14) );
  NAND2_X1 ref_1_maj_35_U14 ( .A1(ref_1_refreshed_1_0_), .A2(ref_1_n3), .ZN(
        ref_1_maj_35_n15) );
  NAND2_X1 ref_1_maj_35_U13 ( .A1(ref_1_maj_35_n15), .A2(ref_1_maj_35_n14), 
        .ZN(ref_1_maj_35_n20) );
  NAND2_X1 ref_1_maj_35_U12 ( .A1(ref_1_refreshed_1_3_), .A2(ref_1_n1), .ZN(
        ref_1_maj_35_n18) );
  NAND2_X1 ref_1_maj_35_U11 ( .A1(ref_1_maj_35_n21), .A2(ref_1_maj_35_n22), 
        .ZN(ref_1_maj_35_n17) );
  NAND2_X1 ref_1_maj_35_U10 ( .A1(ref_1_maj_35_n18), .A2(ref_1_maj_35_n17), 
        .ZN(ref_1_maj_35_n19) );
  XOR2_X1 ref_1_maj_35_U9 ( .A(ref_1_refreshed_1_3_), .B(ref_1_n1), .Z(
        ref_1_maj_35_n22) );
  XOR2_X1 ref_1_maj_35_U8 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_35_n16), 
        .Z(ref_1_maj_35_n21) );
  XOR2_X1 ref_1_maj_35_U7 ( .A(ref_1_refreshed_1_0_), .B(ref_1_n3), .Z(
        ref_1_maj_35_n16) );
  OR2_X1 ref_1_maj_35_U6 ( .A1(ref_1_maj_35_n20), .A2(ref_1_maj_35_n19), .ZN(
        ref_1_maj_35_n24) );
  NAND2_X1 ref_1_maj_35_U5 ( .A1(ref_1_maj_35_n24), .A2(ref_1_maj_35_n23), 
        .ZN(ref_1_maj_35_n25) );
  NAND2_X1 ref_1_maj_35_U4 ( .A1(ref_1_maj_35_n20), .A2(ref_1_maj_35_n19), 
        .ZN(ref_1_maj_35_n26) );
  NAND2_X1 ref_1_maj_35_U3 ( .A1(ref_1_maj_35_n26), .A2(ref_1_maj_35_n25), 
        .ZN(ref_1_maj_35_port_o) );
  XOR2_X1 ref_1_maj_35_U2 ( .A(ref_1_maj_35_n22), .B(ref_1_maj_35_n21), .Z(
        ref_1_maj_35_n23) );
  NAND2_X1 ref_1_maj_36_U15 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_36_n16), 
        .ZN(ref_1_maj_36_n14) );
  NAND2_X1 ref_1_maj_36_U14 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n4), .ZN(
        ref_1_maj_36_n15) );
  NAND2_X1 ref_1_maj_36_U13 ( .A1(ref_1_maj_36_n15), .A2(ref_1_maj_36_n14), 
        .ZN(ref_1_maj_36_n20) );
  NAND2_X1 ref_1_maj_36_U12 ( .A1(ref_1_refreshed_0_3_), .A2(ref_1_n2), .ZN(
        ref_1_maj_36_n18) );
  NAND2_X1 ref_1_maj_36_U11 ( .A1(ref_1_maj_36_n21), .A2(ref_1_maj_36_n22), 
        .ZN(ref_1_maj_36_n17) );
  NAND2_X1 ref_1_maj_36_U10 ( .A1(ref_1_maj_36_n18), .A2(ref_1_maj_36_n17), 
        .ZN(ref_1_maj_36_n19) );
  XOR2_X1 ref_1_maj_36_U9 ( .A(ref_1_refreshed_0_3_), .B(ref_1_n2), .Z(
        ref_1_maj_36_n22) );
  XOR2_X1 ref_1_maj_36_U8 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_36_n16), 
        .Z(ref_1_maj_36_n21) );
  XOR2_X1 ref_1_maj_36_U7 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n4), .Z(
        ref_1_maj_36_n16) );
  OR2_X1 ref_1_maj_36_U6 ( .A1(ref_1_maj_36_n20), .A2(ref_1_maj_36_n19), .ZN(
        ref_1_maj_36_n24) );
  NAND2_X1 ref_1_maj_36_U5 ( .A1(ref_1_maj_36_n24), .A2(ref_1_maj_36_n23), 
        .ZN(ref_1_maj_36_n25) );
  NAND2_X1 ref_1_maj_36_U4 ( .A1(ref_1_maj_36_n20), .A2(ref_1_maj_36_n19), 
        .ZN(ref_1_maj_36_n26) );
  NAND2_X1 ref_1_maj_36_U3 ( .A1(ref_1_maj_36_n26), .A2(ref_1_maj_36_n25), 
        .ZN(ref_1_maj_36_port_o) );
  XOR2_X1 ref_1_maj_36_U2 ( .A(ref_1_maj_36_n22), .B(ref_1_maj_36_n21), .Z(
        ref_1_maj_36_n23) );
  NAND2_X1 ref_1_maj_37_U15 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_37_n16), 
        .ZN(ref_1_maj_37_n14) );
  NAND2_X1 ref_1_maj_37_U14 ( .A1(ref_1_refreshed_0_0_), .A2(ref_1_n4), .ZN(
        ref_1_maj_37_n15) );
  NAND2_X1 ref_1_maj_37_U13 ( .A1(ref_1_maj_37_n15), .A2(ref_1_maj_37_n14), 
        .ZN(ref_1_maj_37_n20) );
  NAND2_X1 ref_1_maj_37_U12 ( .A1(ref_1_refreshed_0_3_), .A2(ref_1_n2), .ZN(
        ref_1_maj_37_n18) );
  NAND2_X1 ref_1_maj_37_U11 ( .A1(ref_1_maj_37_n21), .A2(ref_1_maj_37_n22), 
        .ZN(ref_1_maj_37_n17) );
  NAND2_X1 ref_1_maj_37_U10 ( .A1(ref_1_maj_37_n18), .A2(ref_1_maj_37_n17), 
        .ZN(ref_1_maj_37_n19) );
  XOR2_X1 ref_1_maj_37_U9 ( .A(ref_1_refreshed_0_3_), .B(ref_1_n2), .Z(
        ref_1_maj_37_n22) );
  XOR2_X1 ref_1_maj_37_U8 ( .A(ref_1_refreshed_0_2_), .B(ref_1_maj_37_n16), 
        .Z(ref_1_maj_37_n21) );
  XOR2_X1 ref_1_maj_37_U7 ( .A(ref_1_refreshed_0_0_), .B(ref_1_n4), .Z(
        ref_1_maj_37_n16) );
  OR2_X1 ref_1_maj_37_U6 ( .A1(ref_1_maj_37_n20), .A2(ref_1_maj_37_n19), .ZN(
        ref_1_maj_37_n24) );
  NAND2_X1 ref_1_maj_37_U5 ( .A1(ref_1_maj_37_n24), .A2(ref_1_maj_37_n23), 
        .ZN(ref_1_maj_37_n25) );
  NAND2_X1 ref_1_maj_37_U4 ( .A1(ref_1_maj_37_n20), .A2(ref_1_maj_37_n19), 
        .ZN(ref_1_maj_37_n26) );
  NAND2_X1 ref_1_maj_37_U3 ( .A1(ref_1_maj_37_n26), .A2(ref_1_maj_37_n25), 
        .ZN(ref_1_maj_37_port_o) );
  XOR2_X1 ref_1_maj_37_U2 ( .A(ref_1_maj_37_n22), .B(ref_1_maj_37_n21), .Z(
        ref_1_maj_37_n23) );
  NAND2_X1 ref_1_maj_38_U15 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_38_n16), 
        .ZN(ref_1_maj_38_n14) );
  NAND2_X1 ref_1_maj_38_U14 ( .A1(ref_1_refreshed_1_0_), .A2(ref_1_n3), .ZN(
        ref_1_maj_38_n15) );
  NAND2_X1 ref_1_maj_38_U13 ( .A1(ref_1_maj_38_n15), .A2(ref_1_maj_38_n14), 
        .ZN(ref_1_maj_38_n20) );
  NAND2_X1 ref_1_maj_38_U12 ( .A1(ref_1_refreshed_1_3_), .A2(ref_1_n1), .ZN(
        ref_1_maj_38_n18) );
  NAND2_X1 ref_1_maj_38_U11 ( .A1(ref_1_maj_38_n21), .A2(ref_1_maj_38_n22), 
        .ZN(ref_1_maj_38_n17) );
  NAND2_X1 ref_1_maj_38_U10 ( .A1(ref_1_maj_38_n18), .A2(ref_1_maj_38_n17), 
        .ZN(ref_1_maj_38_n19) );
  XOR2_X1 ref_1_maj_38_U9 ( .A(ref_1_refreshed_1_3_), .B(ref_1_n1), .Z(
        ref_1_maj_38_n22) );
  XOR2_X1 ref_1_maj_38_U8 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_38_n16), 
        .Z(ref_1_maj_38_n21) );
  XOR2_X1 ref_1_maj_38_U7 ( .A(ref_1_refreshed_1_0_), .B(ref_1_n3), .Z(
        ref_1_maj_38_n16) );
  OR2_X1 ref_1_maj_38_U6 ( .A1(ref_1_maj_38_n20), .A2(ref_1_maj_38_n19), .ZN(
        ref_1_maj_38_n24) );
  NAND2_X1 ref_1_maj_38_U5 ( .A1(ref_1_maj_38_n24), .A2(ref_1_maj_38_n23), 
        .ZN(ref_1_maj_38_n25) );
  NAND2_X1 ref_1_maj_38_U4 ( .A1(ref_1_maj_38_n20), .A2(ref_1_maj_38_n19), 
        .ZN(ref_1_maj_38_n26) );
  NAND2_X1 ref_1_maj_38_U3 ( .A1(ref_1_maj_38_n26), .A2(ref_1_maj_38_n25), 
        .ZN(ref_1_maj_38_port_o) );
  XOR2_X1 ref_1_maj_38_U2 ( .A(ref_1_maj_38_n22), .B(ref_1_maj_38_n21), .Z(
        ref_1_maj_38_n23) );
  NAND2_X1 ref_1_maj_39_U15 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_39_n16), 
        .ZN(ref_1_maj_39_n14) );
  NAND2_X1 ref_1_maj_39_U14 ( .A1(ref_1_refreshed_1_0_), .A2(ref_1_n3), .ZN(
        ref_1_maj_39_n15) );
  NAND2_X1 ref_1_maj_39_U13 ( .A1(ref_1_maj_39_n15), .A2(ref_1_maj_39_n14), 
        .ZN(ref_1_maj_39_n20) );
  NAND2_X1 ref_1_maj_39_U12 ( .A1(ref_1_refreshed_1_3_), .A2(ref_1_n1), .ZN(
        ref_1_maj_39_n18) );
  NAND2_X1 ref_1_maj_39_U11 ( .A1(ref_1_maj_39_n21), .A2(ref_1_maj_39_n22), 
        .ZN(ref_1_maj_39_n17) );
  NAND2_X1 ref_1_maj_39_U10 ( .A1(ref_1_maj_39_n18), .A2(ref_1_maj_39_n17), 
        .ZN(ref_1_maj_39_n19) );
  XOR2_X1 ref_1_maj_39_U9 ( .A(ref_1_refreshed_1_3_), .B(ref_1_n1), .Z(
        ref_1_maj_39_n22) );
  XOR2_X1 ref_1_maj_39_U8 ( .A(ref_1_refreshed_1_2_), .B(ref_1_maj_39_n16), 
        .Z(ref_1_maj_39_n21) );
  XOR2_X1 ref_1_maj_39_U7 ( .A(ref_1_refreshed_1_0_), .B(ref_1_n3), .Z(
        ref_1_maj_39_n16) );
  OR2_X1 ref_1_maj_39_U6 ( .A1(ref_1_maj_39_n20), .A2(ref_1_maj_39_n19), .ZN(
        ref_1_maj_39_n24) );
  NAND2_X1 ref_1_maj_39_U5 ( .A1(ref_1_maj_39_n24), .A2(ref_1_maj_39_n23), 
        .ZN(ref_1_maj_39_n25) );
  NAND2_X1 ref_1_maj_39_U4 ( .A1(ref_1_maj_39_n20), .A2(ref_1_maj_39_n19), 
        .ZN(ref_1_maj_39_n26) );
  NAND2_X1 ref_1_maj_39_U3 ( .A1(ref_1_maj_39_n26), .A2(ref_1_maj_39_n25), 
        .ZN(ref_1_maj_39_port_o) );
  XOR2_X1 ref_1_maj_39_U2 ( .A(ref_1_maj_39_n22), .B(ref_1_maj_39_n21), .Z(
        ref_1_maj_39_n23) );
  XOR2_X1 simpleXor_40_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_40_port_a0), 
        .Z(simpleXor_40_port_z) );
  XOR2_X1 simpleXor_41_U1 ( .A(port_rand_mul_0[1]), .B(simpleXor_40_port_z), 
        .Z(simpleXor_41_port_z) );
  XOR2_X1 simpleXor_42_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_42_port_a0), 
        .Z(simpleXor_42_port_z) );
  XOR2_X1 simpleXor_43_U1 ( .A(port_rand_mul_0[1]), .B(simpleXor_42_port_z), 
        .Z(simpleXor_43_port_z) );
  XOR2_X1 simpleXor_44_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_44_port_a0), 
        .Z(simpleXor_44_port_z) );
  XOR2_X1 simpleXor_45_U1 ( .A(port_rand_mul_0[1]), .B(simpleXor_44_port_z), 
        .Z(simpleXor_45_port_z) );
  XOR2_X1 simpleXor_46_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_46_port_a0), 
        .Z(simpleXor_46_port_z) );
  XOR2_X1 simpleXor_47_U1 ( .A(port_rand_mul_0[1]), .B(simpleXor_46_port_z), 
        .Z(simpleXor_47_port_z) );
  XOR2_X1 simpleXor_48_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_48_port_a0), 
        .Z(simpleXor_48_port_z) );
  XOR2_X1 simpleXor_49_U1 ( .A(port_rand_mul_0[1]), .B(simpleXor_48_port_z), 
        .Z(simpleXor_49_port_z) );
  XOR2_X1 simpleXor_50_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_50_port_a0), 
        .Z(simpleXor_50_port_z) );
  XOR2_X1 simpleXor_51_U1 ( .A(port_rand_mul_0[1]), .B(simpleXor_50_port_z), 
        .Z(simpleXor_51_port_z) );
  XOR2_X1 simpleXor_52_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_52_port_a0), 
        .Z(simpleXor_52_port_z) );
  XOR2_X1 simpleXor_53_U1 ( .A(port_rand_mul_0[1]), .B(simpleXor_52_port_z), 
        .Z(simpleXor_53_port_z) );
  XOR2_X1 simpleXor_54_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_54_port_a0), 
        .Z(simpleXor_54_port_z) );
  XOR2_X1 simpleXor_55_U1 ( .A(port_rand_mul_0[1]), .B(simpleXor_54_port_z), 
        .Z(simpleXor_55_port_z) );
  XOR2_X1 simpleXor_56_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_56_port_a0), 
        .Z(simpleXor_56_port_z) );
  XOR2_X1 simpleXor_57_U1 ( .A(port_rand_mul_0[1]), .B(simpleXor_56_port_z), 
        .Z(simpleXor_57_port_z) );
  XOR2_X1 simpleXor_58_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_58_port_a0), 
        .Z(simpleXor_58_port_z) );
  XOR2_X1 simpleXor_59_U1 ( .A(port_rand_mul_0[1]), .B(simpleXor_58_port_z), 
        .Z(simpleXor_59_port_z) );
endmodule

