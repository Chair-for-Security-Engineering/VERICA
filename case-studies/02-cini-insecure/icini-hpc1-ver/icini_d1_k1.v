
module ICINI4 ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, port_c_1, 
        port_rand_ref, port_rand_mul_0, clk, reset );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  input [0:0] port_rand_ref;
  input [0:0] port_rand_mul_0;
  input clk, reset;
  wire   simpleXor_12_port_a0, simpleXor_12_port_z, simpleXor_13_port_a0,
         simpleXor_13_port_z, simpleXor_14_port_a0, simpleXor_14_port_z,
         simpleXor_15_port_a0, simpleXor_15_port_z, simpleXor_16_port_a0,
         simpleXor_16_port_z, simpleXor_17_port_a0, simpleXor_17_port_z, N0,
         N1, N2, N3, N4, N5, ref_1_maj_23_port_o, ref_1_maj_22_port_o,
         ref_1_maj_21_port_o, ref_1_maj_20_port_o, ref_1_maj_19_port_o,
         ref_1_maj_18_port_o, ref_1_maj_17_port_o, ref_1_maj_16_port_o,
         ref_1_maj_15_port_o, ref_1_maj_14_port_o, ref_1_refreshed_1_0_,
         ref_1_refreshed_1_1_, ref_1_refreshed_1_2_, ref_1_maj_13_port_o,
         ref_1_maj_12_port_o, ref_1_refreshed_0_0_, ref_1_refreshed_0_1_,
         ref_1_refreshed_0_2_, ref_1_maj_12_n3, ref_1_maj_12_n2,
         ref_1_maj_12_n1, ref_1_maj_13_n6, ref_1_maj_13_n5, ref_1_maj_13_n4,
         ref_1_maj_14_n6, ref_1_maj_14_n5, ref_1_maj_14_n4, ref_1_maj_15_n6,
         ref_1_maj_15_n5, ref_1_maj_15_n4, ref_1_maj_16_n6, ref_1_maj_16_n5,
         ref_1_maj_16_n4, ref_1_maj_17_n6, ref_1_maj_17_n5, ref_1_maj_17_n4,
         ref_1_maj_18_n6, ref_1_maj_18_n5, ref_1_maj_18_n4, ref_1_maj_19_n6,
         ref_1_maj_19_n5, ref_1_maj_19_n4, ref_1_maj_20_n6, ref_1_maj_20_n5,
         ref_1_maj_20_n4, ref_1_maj_21_n6, ref_1_maj_21_n5, ref_1_maj_21_n4,
         ref_1_maj_22_n6, ref_1_maj_22_n5, ref_1_maj_22_n4, ref_1_maj_23_n6,
         ref_1_maj_23_n5, ref_1_maj_23_n4;
  wire   [2:0] ref_1_port_o_0_0;
  wire   [2:0] ref_1_port_o_0_1;
  wire   [2:0] ref_1_port_o_1_0;
  wire   [2:0] ref_1_port_o_1_1;
  wire   [2:0] temp_0_0;
  wire   [2:0] mult_ab_0_1;
  wire   [2:0] temp_0_1;
  wire   [2:0] mult_ab_1_0;

  DFF_X1 mult_ab_1_0_reg_2_ ( .D(simpleXor_17_port_z), .CK(clk), .Q(
        mult_ab_1_0[2]), .QN() );
  DFF_X1 mult_ab_1_0_reg_1_ ( .D(simpleXor_15_port_z), .CK(clk), .Q(
        mult_ab_1_0[1]), .QN() );
  DFF_X1 mult_ab_1_0_reg_0_ ( .D(simpleXor_13_port_z), .CK(clk), .Q(
        mult_ab_1_0[0]), .QN() );
  DFF_X1 mult_ab_1_1_reg_2_ ( .D(N5), .CK(clk), .Q(temp_0_1[2]), .QN() );
  DFF_X1 mult_ab_1_1_reg_1_ ( .D(N3), .CK(clk), .Q(temp_0_1[1]), .QN() );
  DFF_X1 mult_ab_1_1_reg_0_ ( .D(N1), .CK(clk), .Q(temp_0_1[0]), .QN() );
  DFF_X1 mult_ab_0_0_reg_2_ ( .D(N4), .CK(clk), .Q(temp_0_0[2]), .QN() );
  DFF_X1 mult_ab_0_0_reg_1_ ( .D(N2), .CK(clk), .Q(temp_0_0[1]), .QN() );
  DFF_X1 mult_ab_0_0_reg_0_ ( .D(N0), .CK(clk), .Q(temp_0_0[0]), .QN() );
  DFF_X1 mult_ab_0_1_reg_2_ ( .D(simpleXor_16_port_z), .CK(clk), .Q(
        mult_ab_0_1[2]), .QN() );
  DFF_X1 mult_ab_0_1_reg_1_ ( .D(simpleXor_14_port_z), .CK(clk), .Q(
        mult_ab_0_1[1]), .QN() );
  DFF_X1 mult_ab_0_1_reg_0_ ( .D(simpleXor_12_port_z), .CK(clk), .Q(
        mult_ab_0_1[0]), .QN() );
  AND2_X1 U21 ( .A1(ref_1_port_o_0_1[0]), .A2(port_a_0[0]), .ZN(
        simpleXor_12_port_a0) );
  AND2_X1 U22 ( .A1(ref_1_port_o_0_1[1]), .A2(port_a_0[1]), .ZN(
        simpleXor_14_port_a0) );
  AND2_X1 U23 ( .A1(ref_1_port_o_0_1[2]), .A2(port_a_0[2]), .ZN(
        simpleXor_16_port_a0) );
  AND2_X1 U24 ( .A1(ref_1_port_o_1_0[0]), .A2(port_a_1[0]), .ZN(
        simpleXor_13_port_a0) );
  AND2_X1 U25 ( .A1(ref_1_port_o_1_0[1]), .A2(port_a_1[1]), .ZN(
        simpleXor_15_port_a0) );
  AND2_X1 U26 ( .A1(ref_1_port_o_1_0[2]), .A2(port_a_1[2]), .ZN(
        simpleXor_17_port_a0) );
  AND2_X1 U27 ( .A1(ref_1_port_o_0_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U28 ( .A1(ref_1_port_o_0_0[1]), .A2(port_a_0[1]), .ZN(N2) );
  AND2_X1 U29 ( .A1(ref_1_port_o_0_0[2]), .A2(port_a_0[2]), .ZN(N4) );
  AND2_X1 U30 ( .A1(ref_1_port_o_1_1[0]), .A2(port_a_1[0]), .ZN(N1) );
  AND2_X1 U31 ( .A1(ref_1_port_o_1_1[1]), .A2(port_a_1[1]), .ZN(N3) );
  AND2_X1 U32 ( .A1(ref_1_port_o_1_1[2]), .A2(port_a_1[2]), .ZN(N5) );
  XOR2_X1 U33 ( .A(temp_0_1[0]), .B(mult_ab_1_0[0]), .Z(port_c_1[0]) );
  XOR2_X1 U34 ( .A(temp_0_1[1]), .B(mult_ab_1_0[1]), .Z(port_c_1[1]) );
  XOR2_X1 U35 ( .A(temp_0_1[2]), .B(mult_ab_1_0[2]), .Z(port_c_1[2]) );
  XOR2_X1 U36 ( .A(temp_0_0[0]), .B(mult_ab_0_1[0]), .Z(port_c_0[0]) );
  XOR2_X1 U37 ( .A(temp_0_0[1]), .B(mult_ab_0_1[1]), .Z(port_c_0[1]) );
  XOR2_X1 U38 ( .A(temp_0_0[2]), .B(mult_ab_0_1[2]), .Z(port_c_0[2]) );
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
  XOR2_X1 ref_1_simpleXor_12_U1 ( .A(port_rand_ref[0]), .B(port_b_0[0]), .Z(
        ref_1_refreshed_0_0_) );
  XOR2_X1 ref_1_simpleXor_13_U1 ( .A(port_rand_ref[0]), .B(port_b_1[0]), .Z(
        ref_1_refreshed_1_0_) );
  XOR2_X1 ref_1_simpleXor_14_U1 ( .A(port_rand_ref[0]), .B(port_b_0[1]), .Z(
        ref_1_refreshed_0_1_) );
  XOR2_X1 ref_1_simpleXor_15_U1 ( .A(port_rand_ref[0]), .B(port_b_1[1]), .Z(
        ref_1_refreshed_1_1_) );
  XOR2_X1 ref_1_simpleXor_16_U1 ( .A(port_rand_ref[0]), .B(port_b_0[2]), .Z(
        ref_1_refreshed_0_2_) );
  XOR2_X1 ref_1_simpleXor_17_U1 ( .A(port_rand_ref[0]), .B(port_b_1[2]), .Z(
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
  XOR2_X1 simpleXor_12_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_12_port_a0), 
        .Z(simpleXor_12_port_z) );
  XOR2_X1 simpleXor_13_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_13_port_a0), 
        .Z(simpleXor_13_port_z) );
  XOR2_X1 simpleXor_14_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_14_port_a0), 
        .Z(simpleXor_14_port_z) );
  XOR2_X1 simpleXor_15_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_15_port_a0), 
        .Z(simpleXor_15_port_z) );
  XOR2_X1 simpleXor_16_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_16_port_a0), 
        .Z(simpleXor_16_port_z) );
  XOR2_X1 simpleXor_17_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_17_port_a0), 
        .Z(simpleXor_17_port_z) );
endmodule

