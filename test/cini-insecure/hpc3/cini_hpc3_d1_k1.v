
module CINI_HPC3 ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, port_c_1, 
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
  wire   simpleAnd_6_port_z, simpleAnd_7_port_z, simpleAnd_8_port_z,
         simpleAnd_9_port_z, simpleAnd_10_port_z, simpleAnd_11_port_z,
         maj_12_port_o, maj_13_port_o, maj_14_port_o, maj_15_port_o,
         maj_16_port_o, maj_17_port_o, maj_18_port_o, maj_19_port_o,
         maj_20_port_o, maj_21_port_o, maj_22_port_o, maj_23_port_o, N0, N1,
         N2, N3, N4, N5, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, maj_12_n3, maj_12_n2, maj_12_n1,
         maj_13_n6, maj_13_n5, maj_13_n4, maj_14_n6, maj_14_n5, maj_14_n4,
         maj_15_n6, maj_15_n5, maj_15_n4, maj_16_n6, maj_16_n5, maj_16_n4,
         maj_17_n6, maj_17_n5, maj_17_n4, maj_18_n6, maj_18_n5, maj_18_n4,
         maj_19_n6, maj_19_n5, maj_19_n4, maj_20_n6, maj_20_n5, maj_20_n4,
         maj_21_n6, maj_21_n5, maj_21_n4, maj_22_n6, maj_22_n5, maj_22_n4,
         maj_23_n6, maj_23_n5, maj_23_n4;
  wire   [2:0] u_0_0;
  wire   [2:0] v_0_0;
  wire   [2:0] u_1_0;
  wire   [2:0] v_1_0;
  wire   [2:0] temp_0_0;
  wire   [2:0] a_reg_0;
  wire   [2:0] v_reg_0_0;
  wire   [2:0] u_reg_0_0;
  wire   [2:0] temp_0_1;
  wire   [2:0] a_reg_1;
  wire   [2:0] v_reg_1_0;
  wire   [2:0] u_reg_1_0;

  DFF_X1 u_reg_0_0_reg_2_ ( .D(maj_20_port_o), .CK(clk), .Q(u_reg_0_0[2]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_1_ ( .D(maj_16_port_o), .CK(clk), .Q(u_reg_0_0[1]), 
        .QN() );
  DFF_X1 u_reg_0_0_reg_0_ ( .D(maj_12_port_o), .CK(clk), .Q(u_reg_0_0[0]), 
        .QN() );
  DFF_X1 a_reg_1_reg_2_ ( .D(port_a_1[2]), .CK(clk), .Q(a_reg_1[2]), .QN() );
  DFF_X1 a_reg_1_reg_1_ ( .D(port_a_1[1]), .CK(clk), .Q(a_reg_1[1]), .QN() );
  DFF_X1 a_reg_1_reg_0_ ( .D(port_a_1[0]), .CK(clk), .Q(a_reg_1[0]), .QN() );
  DFF_X1 v_reg_1_0_reg_2_ ( .D(maj_23_port_o), .CK(clk), .Q(v_reg_1_0[2]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_1_ ( .D(maj_19_port_o), .CK(clk), .Q(v_reg_1_0[1]), 
        .QN() );
  DFF_X1 v_reg_1_0_reg_0_ ( .D(maj_15_port_o), .CK(clk), .Q(v_reg_1_0[0]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_2_ ( .D(maj_22_port_o), .CK(clk), .Q(u_reg_1_0[2]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_1_ ( .D(maj_18_port_o), .CK(clk), .Q(u_reg_1_0[1]), 
        .QN() );
  DFF_X1 u_reg_1_0_reg_0_ ( .D(maj_14_port_o), .CK(clk), .Q(u_reg_1_0[0]), 
        .QN() );
  DFF_X1 ab_reg_1_reg_2_ ( .D(N5), .CK(clk), .Q(temp_0_1[2]), .QN() );
  DFF_X1 ab_reg_1_reg_1_ ( .D(N3), .CK(clk), .Q(temp_0_1[1]), .QN() );
  DFF_X1 ab_reg_1_reg_0_ ( .D(N1), .CK(clk), .Q(temp_0_1[0]), .QN() );
  DFF_X1 v_reg_0_0_reg_2_ ( .D(maj_21_port_o), .CK(clk), .Q(v_reg_0_0[2]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_1_ ( .D(maj_17_port_o), .CK(clk), .Q(v_reg_0_0[1]), 
        .QN() );
  DFF_X1 v_reg_0_0_reg_0_ ( .D(maj_13_port_o), .CK(clk), .Q(v_reg_0_0[0]), 
        .QN() );
  DFF_X1 a_reg_0_reg_2_ ( .D(port_a_0[2]), .CK(clk), .Q(a_reg_0[2]), .QN() );
  DFF_X1 a_reg_0_reg_1_ ( .D(port_a_0[1]), .CK(clk), .Q(a_reg_0[1]), .QN() );
  DFF_X1 a_reg_0_reg_0_ ( .D(port_a_0[0]), .CK(clk), .Q(a_reg_0[0]), .QN() );
  DFF_X1 ab_reg_0_reg_2_ ( .D(N4), .CK(clk), .Q(temp_0_0[2]), .QN() );
  DFF_X1 ab_reg_0_reg_1_ ( .D(N2), .CK(clk), .Q(temp_0_0[1]), .QN() );
  DFF_X1 ab_reg_0_reg_0_ ( .D(N0), .CK(clk), .Q(temp_0_0[0]), .QN() );
  INV_X1 U33 ( .A(port_a_1[0]), .ZN(n6) );
  INV_X1 U34 ( .A(port_a_0[0]), .ZN(n3) );
  INV_X1 U35 ( .A(port_a_1[1]), .ZN(n5) );
  INV_X1 U36 ( .A(port_a_0[1]), .ZN(n2) );
  INV_X1 U37 ( .A(port_a_1[2]), .ZN(n4) );
  INV_X1 U38 ( .A(port_a_0[2]), .ZN(n1) );
  XOR2_X1 U39 ( .A(n11), .B(n12), .Z(port_c_1[0]) );
  NAND2_X1 U40 ( .A1(v_reg_1_0[0]), .A2(a_reg_1[0]), .ZN(n11) );
  XNOR2_X1 U41 ( .A(u_reg_1_0[0]), .B(temp_0_1[0]), .ZN(n12) );
  XOR2_X1 U42 ( .A(n9), .B(n10), .Z(port_c_1[1]) );
  NAND2_X1 U43 ( .A1(v_reg_1_0[1]), .A2(a_reg_1[1]), .ZN(n9) );
  XNOR2_X1 U44 ( .A(u_reg_1_0[1]), .B(temp_0_1[1]), .ZN(n10) );
  XOR2_X1 U45 ( .A(n7), .B(n8), .Z(port_c_1[2]) );
  NAND2_X1 U46 ( .A1(v_reg_1_0[2]), .A2(a_reg_1[2]), .ZN(n7) );
  XNOR2_X1 U47 ( .A(u_reg_1_0[2]), .B(temp_0_1[2]), .ZN(n8) );
  XOR2_X1 U48 ( .A(n17), .B(n18), .Z(port_c_0[0]) );
  NAND2_X1 U49 ( .A1(v_reg_0_0[0]), .A2(a_reg_0[0]), .ZN(n17) );
  XNOR2_X1 U50 ( .A(u_reg_0_0[0]), .B(temp_0_0[0]), .ZN(n18) );
  XOR2_X1 U51 ( .A(n15), .B(n16), .Z(port_c_0[1]) );
  NAND2_X1 U52 ( .A1(v_reg_0_0[1]), .A2(a_reg_0[1]), .ZN(n15) );
  XNOR2_X1 U53 ( .A(u_reg_0_0[1]), .B(temp_0_0[1]), .ZN(n16) );
  XOR2_X1 U54 ( .A(n13), .B(n14), .Z(port_c_0[2]) );
  NAND2_X1 U55 ( .A1(v_reg_0_0[2]), .A2(a_reg_0[2]), .ZN(n13) );
  XNOR2_X1 U56 ( .A(u_reg_0_0[2]), .B(temp_0_0[2]), .ZN(n14) );
  AND2_X1 U57 ( .A1(port_b_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U58 ( .A1(port_b_0[1]), .A2(port_a_0[1]), .ZN(N2) );
  AND2_X1 U59 ( .A1(port_b_0[2]), .A2(port_a_0[2]), .ZN(N4) );
  AND2_X1 U60 ( .A1(port_b_1[0]), .A2(port_a_1[0]), .ZN(N1) );
  AND2_X1 U61 ( .A1(port_b_1[1]), .A2(port_a_1[1]), .ZN(N3) );
  AND2_X1 U62 ( .A1(port_b_1[2]), .A2(port_a_1[2]), .ZN(N5) );
  AND2_X1 simpleAnd_6_U1 ( .A1(port_rand_mul[0]), .A2(n3), .ZN(
        simpleAnd_6_port_z) );
  XOR2_X1 simpleXor_12_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_6_port_z), .Z(
        u_0_0[0]) );
  XOR2_X1 simpleXor_13_U1 ( .A(port_rand_mul[0]), .B(port_b_1[0]), .Z(v_0_0[0]) );
  AND2_X1 simpleAnd_7_U1 ( .A1(port_rand_mul[0]), .A2(n6), .ZN(
        simpleAnd_7_port_z) );
  XOR2_X1 simpleXor_14_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_7_port_z), .Z(
        u_1_0[0]) );
  XOR2_X1 simpleXor_15_U1 ( .A(port_rand_mul[0]), .B(port_b_0[0]), .Z(v_1_0[0]) );
  AND2_X1 simpleAnd_8_U1 ( .A1(port_rand_mul[0]), .A2(n2), .ZN(
        simpleAnd_8_port_z) );
  XOR2_X1 simpleXor_16_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_8_port_z), .Z(
        u_0_0[1]) );
  XOR2_X1 simpleXor_17_U1 ( .A(port_rand_mul[0]), .B(port_b_1[1]), .Z(v_0_0[1]) );
  AND2_X1 simpleAnd_9_U1 ( .A1(port_rand_mul[0]), .A2(n5), .ZN(
        simpleAnd_9_port_z) );
  XOR2_X1 simpleXor_18_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_9_port_z), .Z(
        u_1_0[1]) );
  XOR2_X1 simpleXor_19_U1 ( .A(port_rand_mul[0]), .B(port_b_0[1]), .Z(v_1_0[1]) );
  AND2_X1 simpleAnd_10_U1 ( .A1(port_rand_mul[0]), .A2(n1), .ZN(
        simpleAnd_10_port_z) );
  XOR2_X1 simpleXor_20_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_10_port_z), .Z(
        u_0_0[2]) );
  XOR2_X1 simpleXor_21_U1 ( .A(port_rand_mul[0]), .B(port_b_1[2]), .Z(v_0_0[2]) );
  AND2_X1 simpleAnd_11_U1 ( .A1(port_rand_mul[0]), .A2(n4), .ZN(
        simpleAnd_11_port_z) );
  XOR2_X1 simpleXor_22_U1 ( .A(port_rand_ref[0]), .B(simpleAnd_11_port_z), .Z(
        u_1_0[2]) );
  XOR2_X1 simpleXor_23_U1 ( .A(port_rand_mul[0]), .B(port_b_0[2]), .Z(v_1_0[2]) );
  OR2_X1 maj_12_U4 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_12_n3) );
  NAND2_X1 maj_12_U3 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_12_n1) );
  NAND2_X1 maj_12_U2 ( .A1(u_0_0[2]), .A2(maj_12_n3), .ZN(maj_12_n2) );
  NAND2_X1 maj_12_U1 ( .A1(maj_12_n1), .A2(maj_12_n2), .ZN(maj_12_port_o) );
  OR2_X1 maj_13_U4 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_13_n4) );
  NAND2_X1 maj_13_U3 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_13_n6) );
  NAND2_X1 maj_13_U2 ( .A1(v_0_0[2]), .A2(maj_13_n4), .ZN(maj_13_n5) );
  NAND2_X1 maj_13_U1 ( .A1(maj_13_n6), .A2(maj_13_n5), .ZN(maj_13_port_o) );
  OR2_X1 maj_14_U4 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_14_n4) );
  NAND2_X1 maj_14_U3 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_14_n6) );
  NAND2_X1 maj_14_U2 ( .A1(u_1_0[2]), .A2(maj_14_n4), .ZN(maj_14_n5) );
  NAND2_X1 maj_14_U1 ( .A1(maj_14_n6), .A2(maj_14_n5), .ZN(maj_14_port_o) );
  OR2_X1 maj_15_U4 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_15_n4) );
  NAND2_X1 maj_15_U3 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_15_n6) );
  NAND2_X1 maj_15_U2 ( .A1(v_1_0[2]), .A2(maj_15_n4), .ZN(maj_15_n5) );
  NAND2_X1 maj_15_U1 ( .A1(maj_15_n6), .A2(maj_15_n5), .ZN(maj_15_port_o) );
  OR2_X1 maj_16_U4 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_16_n4) );
  NAND2_X1 maj_16_U3 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_16_n6) );
  NAND2_X1 maj_16_U2 ( .A1(u_0_0[2]), .A2(maj_16_n4), .ZN(maj_16_n5) );
  NAND2_X1 maj_16_U1 ( .A1(maj_16_n6), .A2(maj_16_n5), .ZN(maj_16_port_o) );
  OR2_X1 maj_17_U4 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_17_n4) );
  NAND2_X1 maj_17_U3 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_17_n6) );
  NAND2_X1 maj_17_U2 ( .A1(v_0_0[2]), .A2(maj_17_n4), .ZN(maj_17_n5) );
  NAND2_X1 maj_17_U1 ( .A1(maj_17_n6), .A2(maj_17_n5), .ZN(maj_17_port_o) );
  OR2_X1 maj_18_U4 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_18_n4) );
  NAND2_X1 maj_18_U3 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_18_n6) );
  NAND2_X1 maj_18_U2 ( .A1(u_1_0[2]), .A2(maj_18_n4), .ZN(maj_18_n5) );
  NAND2_X1 maj_18_U1 ( .A1(maj_18_n6), .A2(maj_18_n5), .ZN(maj_18_port_o) );
  OR2_X1 maj_19_U4 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_19_n4) );
  NAND2_X1 maj_19_U3 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_19_n6) );
  NAND2_X1 maj_19_U2 ( .A1(v_1_0[2]), .A2(maj_19_n4), .ZN(maj_19_n5) );
  NAND2_X1 maj_19_U1 ( .A1(maj_19_n6), .A2(maj_19_n5), .ZN(maj_19_port_o) );
  OR2_X1 maj_20_U4 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_20_n4) );
  NAND2_X1 maj_20_U3 ( .A1(u_0_0[1]), .A2(u_0_0[0]), .ZN(maj_20_n6) );
  NAND2_X1 maj_20_U2 ( .A1(u_0_0[2]), .A2(maj_20_n4), .ZN(maj_20_n5) );
  NAND2_X1 maj_20_U1 ( .A1(maj_20_n6), .A2(maj_20_n5), .ZN(maj_20_port_o) );
  OR2_X1 maj_21_U4 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_21_n4) );
  NAND2_X1 maj_21_U3 ( .A1(v_0_0[1]), .A2(v_0_0[0]), .ZN(maj_21_n6) );
  NAND2_X1 maj_21_U2 ( .A1(v_0_0[2]), .A2(maj_21_n4), .ZN(maj_21_n5) );
  NAND2_X1 maj_21_U1 ( .A1(maj_21_n6), .A2(maj_21_n5), .ZN(maj_21_port_o) );
  OR2_X1 maj_22_U4 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_22_n4) );
  NAND2_X1 maj_22_U3 ( .A1(u_1_0[1]), .A2(u_1_0[0]), .ZN(maj_22_n6) );
  NAND2_X1 maj_22_U2 ( .A1(u_1_0[2]), .A2(maj_22_n4), .ZN(maj_22_n5) );
  NAND2_X1 maj_22_U1 ( .A1(maj_22_n6), .A2(maj_22_n5), .ZN(maj_22_port_o) );
  OR2_X1 maj_23_U4 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_23_n4) );
  NAND2_X1 maj_23_U3 ( .A1(v_1_0[1]), .A2(v_1_0[0]), .ZN(maj_23_n6) );
  NAND2_X1 maj_23_U2 ( .A1(v_1_0[2]), .A2(maj_23_n4), .ZN(maj_23_n5) );
  NAND2_X1 maj_23_U1 ( .A1(maj_23_n6), .A2(maj_23_n5), .ZN(maj_23_port_o) );
endmodule

