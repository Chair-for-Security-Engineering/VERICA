
module CINI3 ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, port_c_1, 
        port_rand_ref, port_rand_mul, clk, reset );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  input [0:0] port_rand_ref;
  input [0:0] port_rand_mul;
  input clk, reset;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, n1, n2, n3, n4, n5,
         n6, ref_1_maj_23_port_o, ref_1_maj_22_port_o, ref_1_maj_21_port_o,
         ref_1_maj_20_port_o, ref_1_maj_19_port_o, ref_1_maj_18_port_o,
         ref_1_maj_17_port_o, ref_1_maj_16_port_o, ref_1_maj_15_port_o,
         ref_1_maj_14_port_o, ref_1_refreshed_1_0_, ref_1_refreshed_1_1_,
         ref_1_refreshed_1_2_, ref_1_maj_13_port_o, ref_1_maj_12_port_o,
         ref_1_refreshed_0_0_, ref_1_refreshed_0_1_, ref_1_refreshed_0_2_,
         ref_1_maj_12_n3, ref_1_maj_12_n2, ref_1_maj_12_n1, ref_1_maj_13_n6,
         ref_1_maj_13_n5, ref_1_maj_13_n4, ref_1_maj_14_n6, ref_1_maj_14_n5,
         ref_1_maj_14_n4, ref_1_maj_15_n6, ref_1_maj_15_n5, ref_1_maj_15_n4,
         ref_1_maj_16_n6, ref_1_maj_16_n5, ref_1_maj_16_n4, ref_1_maj_17_n6,
         ref_1_maj_17_n5, ref_1_maj_17_n4, ref_1_maj_18_n6, ref_1_maj_18_n5,
         ref_1_maj_18_n4, ref_1_maj_19_n6, ref_1_maj_19_n5, ref_1_maj_19_n4,
         ref_1_maj_20_n6, ref_1_maj_20_n5, ref_1_maj_20_n4, ref_1_maj_21_n6,
         ref_1_maj_21_n5, ref_1_maj_21_n4, ref_1_maj_22_n6, ref_1_maj_22_n5,
         ref_1_maj_22_n4, ref_1_maj_23_n6, ref_1_maj_23_n5, ref_1_maj_23_n4;
  wire   [2:0] ref_1_port_o_0_0;
  wire   [2:0] ref_1_port_o_0_1;
  wire   [2:0] ref_1_port_o_1_0;
  wire   [2:0] ref_1_port_o_1_1;
  wire   [2:0] temp_0_0;
  wire   [2:0] mult_ab_0_1;
  wire   [2:0] temp_0_1;
  wire   [2:0] mult_ab_1_0;

  DFF_X1 mult_ab_0_1_reg_2_ ( .D(N9), .CK(clk), .Q(mult_ab_0_1[2]), .QN() );
  DFF_X1 mult_ab_0_1_reg_1_ ( .D(N5), .CK(clk), .Q(mult_ab_0_1[1]), .QN() );
  DFF_X1 mult_ab_0_1_reg_0_ ( .D(N1), .CK(clk), .Q(mult_ab_0_1[0]), .QN() );
  DFF_X1 mult_ab_1_1_reg_2_ ( .D(N11), .CK(clk), .Q(temp_0_1[2]), .QN() );
  DFF_X1 mult_ab_1_1_reg_1_ ( .D(N7), .CK(clk), .Q(temp_0_1[1]), .QN() );
  DFF_X1 mult_ab_1_1_reg_0_ ( .D(N3), .CK(clk), .Q(temp_0_1[0]), .QN() );
  DFF_X1 mult_ab_0_0_reg_2_ ( .D(N8), .CK(clk), .Q(temp_0_0[2]), .QN() );
  DFF_X1 mult_ab_0_0_reg_1_ ( .D(N4), .CK(clk), .Q(temp_0_0[1]), .QN() );
  DFF_X1 mult_ab_0_0_reg_0_ ( .D(N0), .CK(clk), .Q(temp_0_0[0]), .QN() );
  DFF_X1 mult_ab_1_0_reg_2_ ( .D(N10), .CK(clk), .Q(mult_ab_1_0[2]), .QN() );
  DFF_X1 mult_ab_1_0_reg_1_ ( .D(N6), .CK(clk), .Q(mult_ab_1_0[1]), .QN() );
  DFF_X1 mult_ab_1_0_reg_0_ ( .D(N2), .CK(clk), .Q(mult_ab_1_0[0]), .QN() );
  XNOR2_X1 U27 ( .A(port_rand_mul[0]), .B(n4), .ZN(N2) );
  NAND2_X1 U28 ( .A1(ref_1_port_o_1_0[0]), .A2(port_a_1[0]), .ZN(n4) );
  XNOR2_X1 U29 ( .A(port_rand_mul[0]), .B(n2), .ZN(N6) );
  NAND2_X1 U30 ( .A1(ref_1_port_o_1_0[1]), .A2(port_a_1[1]), .ZN(n2) );
  XNOR2_X1 U31 ( .A(port_rand_mul[0]), .B(n5), .ZN(N10) );
  NAND2_X1 U32 ( .A1(ref_1_port_o_1_0[2]), .A2(port_a_1[2]), .ZN(n5) );
  XNOR2_X1 U33 ( .A(port_rand_mul[0]), .B(n6), .ZN(N1) );
  NAND2_X1 U34 ( .A1(ref_1_port_o_0_1[0]), .A2(port_a_0[0]), .ZN(n6) );
  XNOR2_X1 U35 ( .A(port_rand_mul[0]), .B(n3), .ZN(N5) );
  NAND2_X1 U36 ( .A1(ref_1_port_o_0_1[1]), .A2(port_a_0[1]), .ZN(n3) );
  XNOR2_X1 U37 ( .A(port_rand_mul[0]), .B(n1), .ZN(N9) );
  NAND2_X1 U38 ( .A1(ref_1_port_o_0_1[2]), .A2(port_a_0[2]), .ZN(n1) );
  AND2_X1 U39 ( .A1(ref_1_port_o_0_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U40 ( .A1(ref_1_port_o_0_0[1]), .A2(port_a_0[1]), .ZN(N4) );
  AND2_X1 U41 ( .A1(ref_1_port_o_0_0[2]), .A2(port_a_0[2]), .ZN(N8) );
  AND2_X1 U42 ( .A1(ref_1_port_o_1_1[0]), .A2(port_a_1[0]), .ZN(N3) );
  AND2_X1 U43 ( .A1(ref_1_port_o_1_1[1]), .A2(port_a_1[1]), .ZN(N7) );
  AND2_X1 U44 ( .A1(ref_1_port_o_1_1[2]), .A2(port_a_1[2]), .ZN(N11) );
  XOR2_X1 U45 ( .A(temp_0_1[0]), .B(mult_ab_1_0[0]), .Z(port_c_1[0]) );
  XOR2_X1 U46 ( .A(temp_0_1[1]), .B(mult_ab_1_0[1]), .Z(port_c_1[1]) );
  XOR2_X1 U47 ( .A(temp_0_1[2]), .B(mult_ab_1_0[2]), .Z(port_c_1[2]) );
  XOR2_X1 U48 ( .A(temp_0_0[0]), .B(mult_ab_0_1[0]), .Z(port_c_0[0]) );
  XOR2_X1 U49 ( .A(temp_0_0[1]), .B(mult_ab_0_1[1]), .Z(port_c_0[1]) );
  XOR2_X1 U50 ( .A(temp_0_0[2]), .B(mult_ab_0_1[2]), .Z(port_c_0[2]) );
  DFF_X1 ref_1_reg_out_1_1_reg_0_ ( .D(ref_1_maj_15_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_1_ ( .D(ref_1_maj_19_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_2_ ( .D(ref_1_maj_23_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_0_ ( .D(ref_1_maj_14_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_1_ ( .D(ref_1_maj_18_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_2_ ( .D(ref_1_maj_22_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_0_ ( .D(ref_1_maj_13_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_1_ ( .D(ref_1_maj_17_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_2_ ( .D(ref_1_maj_21_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_0_ ( .D(ref_1_maj_12_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_1_ ( .D(ref_1_maj_16_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_2_ ( .D(ref_1_maj_20_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[2]), .QN() );
  XOR2_X1 ref_1_simpleXor_6_U1 ( .A(port_rand_ref[0]), .B(port_b_0[0]), .Z(
        ref_1_refreshed_0_0_) );
  XOR2_X1 ref_1_simpleXor_7_U1 ( .A(port_rand_ref[0]), .B(port_b_1[0]), .Z(
        ref_1_refreshed_1_0_) );
  XOR2_X1 ref_1_simpleXor_8_U1 ( .A(port_rand_ref[0]), .B(port_b_0[1]), .Z(
        ref_1_refreshed_0_1_) );
  XOR2_X1 ref_1_simpleXor_9_U1 ( .A(port_rand_ref[0]), .B(port_b_1[1]), .Z(
        ref_1_refreshed_1_1_) );
  XOR2_X1 ref_1_simpleXor_10_U1 ( .A(port_rand_ref[0]), .B(port_b_0[2]), .Z(
        ref_1_refreshed_0_2_) );
  XOR2_X1 ref_1_simpleXor_11_U1 ( .A(port_rand_ref[0]), .B(port_b_1[2]), .Z(
        ref_1_refreshed_1_2_) );
  OR2_X1 ref_1_maj_12_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_12_n3) );
  NAND2_X1 ref_1_maj_12_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_12_n1) );
  NAND2_X1 ref_1_maj_12_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_12_n3), 
        .ZN(ref_1_maj_12_n2) );
  NAND2_X1 ref_1_maj_12_U1 ( .A1(ref_1_maj_12_n1), .A2(ref_1_maj_12_n2), .ZN(
        ref_1_maj_12_port_o) );
  OR2_X1 ref_1_maj_13_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_13_n4) );
  NAND2_X1 ref_1_maj_13_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_13_n6) );
  NAND2_X1 ref_1_maj_13_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_13_n4), 
        .ZN(ref_1_maj_13_n5) );
  NAND2_X1 ref_1_maj_13_U1 ( .A1(ref_1_maj_13_n6), .A2(ref_1_maj_13_n5), .ZN(
        ref_1_maj_13_port_o) );
  OR2_X1 ref_1_maj_14_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_14_n4) );
  NAND2_X1 ref_1_maj_14_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_14_n6) );
  NAND2_X1 ref_1_maj_14_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_14_n4), 
        .ZN(ref_1_maj_14_n5) );
  NAND2_X1 ref_1_maj_14_U1 ( .A1(ref_1_maj_14_n6), .A2(ref_1_maj_14_n5), .ZN(
        ref_1_maj_14_port_o) );
  OR2_X1 ref_1_maj_15_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_15_n4) );
  NAND2_X1 ref_1_maj_15_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_15_n6) );
  NAND2_X1 ref_1_maj_15_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_15_n4), 
        .ZN(ref_1_maj_15_n5) );
  NAND2_X1 ref_1_maj_15_U1 ( .A1(ref_1_maj_15_n6), .A2(ref_1_maj_15_n5), .ZN(
        ref_1_maj_15_port_o) );
  OR2_X1 ref_1_maj_16_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_16_n4) );
  NAND2_X1 ref_1_maj_16_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_16_n6) );
  NAND2_X1 ref_1_maj_16_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_16_n4), 
        .ZN(ref_1_maj_16_n5) );
  NAND2_X1 ref_1_maj_16_U1 ( .A1(ref_1_maj_16_n6), .A2(ref_1_maj_16_n5), .ZN(
        ref_1_maj_16_port_o) );
  OR2_X1 ref_1_maj_17_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_17_n4) );
  NAND2_X1 ref_1_maj_17_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_17_n6) );
  NAND2_X1 ref_1_maj_17_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_17_n4), 
        .ZN(ref_1_maj_17_n5) );
  NAND2_X1 ref_1_maj_17_U1 ( .A1(ref_1_maj_17_n6), .A2(ref_1_maj_17_n5), .ZN(
        ref_1_maj_17_port_o) );
  OR2_X1 ref_1_maj_18_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_18_n4) );
  NAND2_X1 ref_1_maj_18_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_18_n6) );
  NAND2_X1 ref_1_maj_18_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_18_n4), 
        .ZN(ref_1_maj_18_n5) );
  NAND2_X1 ref_1_maj_18_U1 ( .A1(ref_1_maj_18_n6), .A2(ref_1_maj_18_n5), .ZN(
        ref_1_maj_18_port_o) );
  OR2_X1 ref_1_maj_19_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_19_n4) );
  NAND2_X1 ref_1_maj_19_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_19_n6) );
  NAND2_X1 ref_1_maj_19_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_19_n4), 
        .ZN(ref_1_maj_19_n5) );
  NAND2_X1 ref_1_maj_19_U1 ( .A1(ref_1_maj_19_n6), .A2(ref_1_maj_19_n5), .ZN(
        ref_1_maj_19_port_o) );
  OR2_X1 ref_1_maj_20_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_20_n4) );
  NAND2_X1 ref_1_maj_20_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_20_n6) );
  NAND2_X1 ref_1_maj_20_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_20_n4), 
        .ZN(ref_1_maj_20_n5) );
  NAND2_X1 ref_1_maj_20_U1 ( .A1(ref_1_maj_20_n6), .A2(ref_1_maj_20_n5), .ZN(
        ref_1_maj_20_port_o) );
  OR2_X1 ref_1_maj_21_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_21_n4) );
  NAND2_X1 ref_1_maj_21_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_21_n6) );
  NAND2_X1 ref_1_maj_21_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_21_n4), 
        .ZN(ref_1_maj_21_n5) );
  NAND2_X1 ref_1_maj_21_U1 ( .A1(ref_1_maj_21_n6), .A2(ref_1_maj_21_n5), .ZN(
        ref_1_maj_21_port_o) );
  OR2_X1 ref_1_maj_22_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_22_n4) );
  NAND2_X1 ref_1_maj_22_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_22_n6) );
  NAND2_X1 ref_1_maj_22_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_22_n4), 
        .ZN(ref_1_maj_22_n5) );
  NAND2_X1 ref_1_maj_22_U1 ( .A1(ref_1_maj_22_n6), .A2(ref_1_maj_22_n5), .ZN(
        ref_1_maj_22_port_o) );
  OR2_X1 ref_1_maj_23_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_23_n4) );
  NAND2_X1 ref_1_maj_23_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_23_n6) );
  NAND2_X1 ref_1_maj_23_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_23_n4), 
        .ZN(ref_1_maj_23_n5) );
  NAND2_X1 ref_1_maj_23_U1 ( .A1(ref_1_maj_23_n6), .A2(ref_1_maj_23_n5), .ZN(
        ref_1_maj_23_port_o) );
endmodule

