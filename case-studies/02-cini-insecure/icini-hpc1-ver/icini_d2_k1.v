
module ICINI4 ( port_a_0, port_a_1, port_a_2, port_b_0, port_b_1, port_b_2, 
        port_c_0, port_c_1, port_c_2, port_rand_ref, port_rand_mul_0, 
        port_rand_mul_1, port_rand_mul_2, clk, reset );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_a_2;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  input [2:0] port_b_2;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  output [2:0] port_c_2;
  input [2:0] port_rand_ref;
  input [0:0] port_rand_mul_0;
  input [0:0] port_rand_mul_1;
  input [0:0] port_rand_mul_2;
  input clk, reset;
  wire   simpleXor_36_port_a0, simpleXor_36_port_z, simpleXor_37_port_a0,
         simpleXor_37_port_z, simpleXor_38_port_a0, simpleXor_38_port_z,
         simpleXor_39_port_a0, simpleXor_39_port_z, simpleXor_40_port_a0,
         simpleXor_40_port_z, simpleXor_41_port_a0, simpleXor_41_port_z,
         simpleXor_42_port_a0, simpleXor_42_port_z, simpleXor_43_port_a0,
         simpleXor_43_port_z, simpleXor_44_port_a0, simpleXor_44_port_z,
         simpleXor_45_port_a0, simpleXor_45_port_z, simpleXor_46_port_a0,
         simpleXor_46_port_z, simpleXor_47_port_a0, simpleXor_47_port_z,
         simpleXor_48_port_a0, simpleXor_48_port_z, simpleXor_49_port_a0,
         simpleXor_49_port_z, simpleXor_50_port_a0, simpleXor_50_port_z,
         simpleXor_51_port_a0, simpleXor_51_port_z, simpleXor_52_port_a0,
         simpleXor_52_port_z, simpleXor_53_port_a0, simpleXor_53_port_z, N0,
         N1, N2, N3, N4, N5, N6, N7, N8, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         ref_1_maj_53_port_o, ref_1_maj_52_port_o, ref_1_maj_51_port_o,
         ref_1_maj_50_port_o, ref_1_maj_49_port_o, ref_1_maj_48_port_o,
         ref_1_maj_47_port_o, ref_1_maj_46_port_o, ref_1_maj_45_port_o,
         ref_1_maj_44_port_o, ref_1_maj_43_port_o, ref_1_maj_42_port_o,
         ref_1_maj_41_port_o, ref_1_maj_40_port_o, ref_1_maj_39_port_o,
         ref_1_maj_38_port_o, ref_1_maj_37_port_o, ref_1_maj_36_port_o,
         ref_1_maj_35_port_o, ref_1_maj_34_port_o, ref_1_maj_33_port_o,
         ref_1_refreshed_2_0_, ref_1_refreshed_2_1_, ref_1_refreshed_2_2_,
         ref_1_maj_32_port_o, ref_1_maj_31_port_o, ref_1_maj_30_port_o,
         ref_1_refreshed_1_0_, ref_1_refreshed_1_1_, ref_1_refreshed_1_2_,
         ref_1_maj_29_port_o, ref_1_maj_28_port_o, ref_1_maj_27_port_o,
         ref_1_refreshed_0_0_, ref_1_refreshed_0_1_, ref_1_refreshed_0_2_,
         ref_1_simpleXor_52_port_z, ref_1_simpleXor_50_port_z,
         ref_1_simpleXor_48_port_z, ref_1_simpleXor_46_port_z,
         ref_1_simpleXor_44_port_z, ref_1_simpleXor_42_port_z,
         ref_1_simpleXor_40_port_z, ref_1_simpleXor_38_port_z,
         ref_1_simpleXor_36_port_z, ref_1_maj_27_n3, ref_1_maj_27_n2,
         ref_1_maj_27_n1, ref_1_maj_28_n6, ref_1_maj_28_n5, ref_1_maj_28_n4,
         ref_1_maj_29_n6, ref_1_maj_29_n5, ref_1_maj_29_n4, ref_1_maj_30_n6,
         ref_1_maj_30_n5, ref_1_maj_30_n4, ref_1_maj_31_n6, ref_1_maj_31_n5,
         ref_1_maj_31_n4, ref_1_maj_32_n6, ref_1_maj_32_n5, ref_1_maj_32_n4,
         ref_1_maj_33_n6, ref_1_maj_33_n5, ref_1_maj_33_n4, ref_1_maj_34_n6,
         ref_1_maj_34_n5, ref_1_maj_34_n4, ref_1_maj_35_n6, ref_1_maj_35_n5,
         ref_1_maj_35_n4, ref_1_maj_36_n6, ref_1_maj_36_n5, ref_1_maj_36_n4,
         ref_1_maj_37_n6, ref_1_maj_37_n5, ref_1_maj_37_n4, ref_1_maj_38_n6,
         ref_1_maj_38_n5, ref_1_maj_38_n4, ref_1_maj_39_n6, ref_1_maj_39_n5,
         ref_1_maj_39_n4, ref_1_maj_40_n6, ref_1_maj_40_n5, ref_1_maj_40_n4,
         ref_1_maj_41_n6, ref_1_maj_41_n5, ref_1_maj_41_n4, ref_1_maj_42_n6,
         ref_1_maj_42_n5, ref_1_maj_42_n4, ref_1_maj_43_n6, ref_1_maj_43_n5,
         ref_1_maj_43_n4, ref_1_maj_44_n6, ref_1_maj_44_n5, ref_1_maj_44_n4,
         ref_1_maj_45_n6, ref_1_maj_45_n5, ref_1_maj_45_n4, ref_1_maj_46_n6,
         ref_1_maj_46_n5, ref_1_maj_46_n4, ref_1_maj_47_n6, ref_1_maj_47_n5,
         ref_1_maj_47_n4, ref_1_maj_48_n6, ref_1_maj_48_n5, ref_1_maj_48_n4,
         ref_1_maj_49_n6, ref_1_maj_49_n5, ref_1_maj_49_n4, ref_1_maj_50_n6,
         ref_1_maj_50_n5, ref_1_maj_50_n4, ref_1_maj_51_n6, ref_1_maj_51_n5,
         ref_1_maj_51_n4, ref_1_maj_52_n6, ref_1_maj_52_n5, ref_1_maj_52_n4,
         ref_1_maj_53_n6, ref_1_maj_53_n5, ref_1_maj_53_n4;
  wire   [2:0] ref_1_port_o_0_0;
  wire   [2:0] ref_1_port_o_0_1;
  wire   [2:0] ref_1_port_o_0_2;
  wire   [2:0] ref_1_port_o_1_0;
  wire   [2:0] ref_1_port_o_1_1;
  wire   [2:0] ref_1_port_o_1_2;
  wire   [2:0] ref_1_port_o_2_0;
  wire   [2:0] ref_1_port_o_2_1;
  wire   [2:0] ref_1_port_o_2_2;
  wire   [2:0] temp_0_0;
  wire   [2:0] mult_ab_0_1;
  wire   [2:0] mult_ab_0_2;
  wire   [2:0] temp_0_1;
  wire   [2:0] mult_ab_1_0;
  wire   [2:0] mult_ab_1_2;
  wire   [2:0] temp_0_2;
  wire   [2:0] mult_ab_2_0;
  wire   [2:0] mult_ab_2_1;

  DFF_X1 mult_ab_2_1_reg_2_ ( .D(simpleXor_53_port_z), .CK(clk), .Q(
        mult_ab_2_1[2]), .QN() );
  DFF_X1 mult_ab_2_1_reg_1_ ( .D(simpleXor_47_port_z), .CK(clk), .Q(
        mult_ab_2_1[1]), .QN() );
  DFF_X1 mult_ab_2_1_reg_0_ ( .D(simpleXor_41_port_z), .CK(clk), .Q(
        mult_ab_2_1[0]), .QN() );
  DFF_X1 mult_ab_2_2_reg_2_ ( .D(N8), .CK(clk), .Q(temp_0_2[2]), .QN() );
  DFF_X1 mult_ab_2_2_reg_1_ ( .D(N5), .CK(clk), .Q(temp_0_2[1]), .QN() );
  DFF_X1 mult_ab_2_2_reg_0_ ( .D(N2), .CK(clk), .Q(temp_0_2[0]), .QN() );
  DFF_X1 mult_ab_1_2_reg_2_ ( .D(simpleXor_51_port_z), .CK(clk), .Q(
        mult_ab_1_2[2]), .QN() );
  DFF_X1 mult_ab_1_2_reg_1_ ( .D(simpleXor_45_port_z), .CK(clk), .Q(
        mult_ab_1_2[1]), .QN() );
  DFF_X1 mult_ab_1_2_reg_0_ ( .D(simpleXor_39_port_z), .CK(clk), .Q(
        mult_ab_1_2[0]), .QN() );
  DFF_X1 mult_ab_2_0_reg_2_ ( .D(simpleXor_52_port_z), .CK(clk), .Q(
        mult_ab_2_0[2]), .QN() );
  DFF_X1 mult_ab_2_0_reg_1_ ( .D(simpleXor_46_port_z), .CK(clk), .Q(
        mult_ab_2_0[1]), .QN() );
  DFF_X1 mult_ab_2_0_reg_0_ ( .D(simpleXor_40_port_z), .CK(clk), .Q(
        mult_ab_2_0[0]), .QN() );
  DFF_X1 mult_ab_1_0_reg_2_ ( .D(simpleXor_50_port_z), .CK(clk), .Q(
        mult_ab_1_0[2]), .QN() );
  DFF_X1 mult_ab_1_0_reg_1_ ( .D(simpleXor_44_port_z), .CK(clk), .Q(
        mult_ab_1_0[1]), .QN() );
  DFF_X1 mult_ab_1_0_reg_0_ ( .D(simpleXor_38_port_z), .CK(clk), .Q(
        mult_ab_1_0[0]), .QN() );
  DFF_X1 mult_ab_1_1_reg_2_ ( .D(N7), .CK(clk), .Q(temp_0_1[2]), .QN() );
  DFF_X1 mult_ab_1_1_reg_1_ ( .D(N4), .CK(clk), .Q(temp_0_1[1]), .QN() );
  DFF_X1 mult_ab_1_1_reg_0_ ( .D(N1), .CK(clk), .Q(temp_0_1[0]), .QN() );
  DFF_X1 mult_ab_0_0_reg_2_ ( .D(N6), .CK(clk), .Q(temp_0_0[2]), .QN() );
  DFF_X1 mult_ab_0_0_reg_1_ ( .D(N3), .CK(clk), .Q(temp_0_0[1]), .QN() );
  DFF_X1 mult_ab_0_0_reg_0_ ( .D(N0), .CK(clk), .Q(temp_0_0[0]), .QN() );
  DFF_X1 mult_ab_0_1_reg_2_ ( .D(simpleXor_48_port_z), .CK(clk), .Q(
        mult_ab_0_1[2]), .QN() );
  DFF_X1 mult_ab_0_1_reg_1_ ( .D(simpleXor_42_port_z), .CK(clk), .Q(
        mult_ab_0_1[1]), .QN() );
  DFF_X1 mult_ab_0_1_reg_0_ ( .D(simpleXor_36_port_z), .CK(clk), .Q(
        mult_ab_0_1[0]), .QN() );
  DFF_X1 mult_ab_0_2_reg_2_ ( .D(simpleXor_49_port_z), .CK(clk), .Q(
        mult_ab_0_2[2]), .QN() );
  DFF_X1 mult_ab_0_2_reg_1_ ( .D(simpleXor_43_port_z), .CK(clk), .Q(
        mult_ab_0_2[1]), .QN() );
  DFF_X1 mult_ab_0_2_reg_0_ ( .D(simpleXor_37_port_z), .CK(clk), .Q(
        mult_ab_0_2[0]), .QN() );
  AND2_X1 U48 ( .A1(ref_1_port_o_0_2[0]), .A2(port_a_0[0]), .ZN(
        simpleXor_37_port_a0) );
  AND2_X1 U49 ( .A1(ref_1_port_o_0_2[1]), .A2(port_a_0[1]), .ZN(
        simpleXor_43_port_a0) );
  AND2_X1 U50 ( .A1(ref_1_port_o_0_2[2]), .A2(port_a_0[2]), .ZN(
        simpleXor_49_port_a0) );
  AND2_X1 U51 ( .A1(ref_1_port_o_0_1[0]), .A2(port_a_0[0]), .ZN(
        simpleXor_36_port_a0) );
  AND2_X1 U52 ( .A1(ref_1_port_o_0_1[1]), .A2(port_a_0[1]), .ZN(
        simpleXor_42_port_a0) );
  AND2_X1 U53 ( .A1(ref_1_port_o_0_1[2]), .A2(port_a_0[2]), .ZN(
        simpleXor_48_port_a0) );
  AND2_X1 U54 ( .A1(ref_1_port_o_1_0[0]), .A2(port_a_1[0]), .ZN(
        simpleXor_38_port_a0) );
  AND2_X1 U55 ( .A1(ref_1_port_o_1_0[1]), .A2(port_a_1[1]), .ZN(
        simpleXor_44_port_a0) );
  AND2_X1 U56 ( .A1(ref_1_port_o_1_0[2]), .A2(port_a_1[2]), .ZN(
        simpleXor_50_port_a0) );
  AND2_X1 U57 ( .A1(ref_1_port_o_2_0[0]), .A2(port_a_2[0]), .ZN(
        simpleXor_40_port_a0) );
  AND2_X1 U58 ( .A1(ref_1_port_o_2_0[1]), .A2(port_a_2[1]), .ZN(
        simpleXor_46_port_a0) );
  AND2_X1 U59 ( .A1(ref_1_port_o_2_0[2]), .A2(port_a_2[2]), .ZN(
        simpleXor_52_port_a0) );
  AND2_X1 U60 ( .A1(ref_1_port_o_1_2[0]), .A2(port_a_1[0]), .ZN(
        simpleXor_39_port_a0) );
  AND2_X1 U61 ( .A1(ref_1_port_o_1_2[1]), .A2(port_a_1[1]), .ZN(
        simpleXor_45_port_a0) );
  AND2_X1 U62 ( .A1(ref_1_port_o_1_2[2]), .A2(port_a_1[2]), .ZN(
        simpleXor_51_port_a0) );
  AND2_X1 U63 ( .A1(ref_1_port_o_2_1[0]), .A2(port_a_2[0]), .ZN(
        simpleXor_41_port_a0) );
  AND2_X1 U64 ( .A1(ref_1_port_o_2_1[1]), .A2(port_a_2[1]), .ZN(
        simpleXor_47_port_a0) );
  AND2_X1 U65 ( .A1(ref_1_port_o_2_1[2]), .A2(port_a_2[2]), .ZN(
        simpleXor_53_port_a0) );
  AND2_X1 U66 ( .A1(ref_1_port_o_0_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U67 ( .A1(ref_1_port_o_0_0[1]), .A2(port_a_0[1]), .ZN(N3) );
  AND2_X1 U68 ( .A1(ref_1_port_o_0_0[2]), .A2(port_a_0[2]), .ZN(N6) );
  AND2_X1 U69 ( .A1(ref_1_port_o_1_1[0]), .A2(port_a_1[0]), .ZN(N1) );
  AND2_X1 U70 ( .A1(ref_1_port_o_1_1[1]), .A2(port_a_1[1]), .ZN(N4) );
  AND2_X1 U71 ( .A1(ref_1_port_o_1_1[2]), .A2(port_a_1[2]), .ZN(N7) );
  AND2_X1 U72 ( .A1(ref_1_port_o_2_2[0]), .A2(port_a_2[0]), .ZN(N2) );
  AND2_X1 U73 ( .A1(ref_1_port_o_2_2[1]), .A2(port_a_2[1]), .ZN(N5) );
  AND2_X1 U74 ( .A1(ref_1_port_o_2_2[2]), .A2(port_a_2[2]), .ZN(N8) );
  XOR2_X1 U75 ( .A(mult_ab_2_0[0]), .B(n3), .Z(port_c_2[0]) );
  XOR2_X1 U76 ( .A(temp_0_2[0]), .B(mult_ab_2_1[0]), .Z(n3) );
  XOR2_X1 U77 ( .A(mult_ab_2_0[1]), .B(n2), .Z(port_c_2[1]) );
  XOR2_X1 U78 ( .A(temp_0_2[1]), .B(mult_ab_2_1[1]), .Z(n2) );
  XOR2_X1 U79 ( .A(mult_ab_2_0[2]), .B(n1), .Z(port_c_2[2]) );
  XOR2_X1 U80 ( .A(temp_0_2[2]), .B(mult_ab_2_1[2]), .Z(n1) );
  XOR2_X1 U81 ( .A(mult_ab_1_0[0]), .B(n6), .Z(port_c_1[0]) );
  XOR2_X1 U82 ( .A(temp_0_1[0]), .B(mult_ab_1_2[0]), .Z(n6) );
  XOR2_X1 U83 ( .A(mult_ab_1_0[1]), .B(n5), .Z(port_c_1[1]) );
  XOR2_X1 U84 ( .A(temp_0_1[1]), .B(mult_ab_1_2[1]), .Z(n5) );
  XOR2_X1 U85 ( .A(mult_ab_1_0[2]), .B(n4), .Z(port_c_1[2]) );
  XOR2_X1 U86 ( .A(temp_0_1[2]), .B(mult_ab_1_2[2]), .Z(n4) );
  XOR2_X1 U87 ( .A(mult_ab_0_1[0]), .B(n9), .Z(port_c_0[0]) );
  XOR2_X1 U88 ( .A(temp_0_0[0]), .B(mult_ab_0_2[0]), .Z(n9) );
  XOR2_X1 U89 ( .A(mult_ab_0_1[1]), .B(n8), .Z(port_c_0[1]) );
  XOR2_X1 U90 ( .A(temp_0_0[1]), .B(mult_ab_0_2[1]), .Z(n8) );
  XOR2_X1 U91 ( .A(mult_ab_0_1[2]), .B(n7), .Z(port_c_0[2]) );
  XOR2_X1 U92 ( .A(temp_0_0[2]), .B(mult_ab_0_2[2]), .Z(n7) );
  DFF_X1 ref_1_reg_out_2_2_reg_0_ ( .D(ref_1_maj_35_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_1_ ( .D(ref_1_maj_44_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_2_reg_2_ ( .D(ref_1_maj_53_port_o), .CK(clk), .Q(
        ref_1_port_o_2_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_0_ ( .D(ref_1_maj_34_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_1_ ( .D(ref_1_maj_43_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_1_reg_2_ ( .D(ref_1_maj_52_port_o), .CK(clk), .Q(
        ref_1_port_o_2_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_0_ ( .D(ref_1_maj_33_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_1_ ( .D(ref_1_maj_42_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_2_0_reg_2_ ( .D(ref_1_maj_51_port_o), .CK(clk), .Q(
        ref_1_port_o_2_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_0_ ( .D(ref_1_maj_32_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_1_ ( .D(ref_1_maj_41_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_2_reg_2_ ( .D(ref_1_maj_50_port_o), .CK(clk), .Q(
        ref_1_port_o_1_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_0_ ( .D(ref_1_maj_31_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_1_ ( .D(ref_1_maj_40_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_1_reg_2_ ( .D(ref_1_maj_49_port_o), .CK(clk), .Q(
        ref_1_port_o_1_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_0_ ( .D(ref_1_maj_30_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_1_ ( .D(ref_1_maj_39_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_1_0_reg_2_ ( .D(ref_1_maj_48_port_o), .CK(clk), .Q(
        ref_1_port_o_1_0[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_0_ ( .D(ref_1_maj_29_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_1_ ( .D(ref_1_maj_38_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_2_reg_2_ ( .D(ref_1_maj_47_port_o), .CK(clk), .Q(
        ref_1_port_o_0_2[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_0_ ( .D(ref_1_maj_28_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_1_ ( .D(ref_1_maj_37_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_1_reg_2_ ( .D(ref_1_maj_46_port_o), .CK(clk), .Q(
        ref_1_port_o_0_1[2]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_0_ ( .D(ref_1_maj_27_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[0]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_1_ ( .D(ref_1_maj_36_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[1]), .QN() );
  DFF_X1 ref_1_reg_out_0_0_reg_2_ ( .D(ref_1_maj_45_port_o), .CK(clk), .Q(
        ref_1_port_o_0_0[2]), .QN() );
  XOR2_X1 ref_1_simpleXor_36_U1 ( .A(port_rand_ref[0]), .B(port_b_0[0]), .Z(
        ref_1_simpleXor_36_port_z) );
  XOR2_X2 ref_1_simpleXor_37_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_36_port_z), .Z(ref_1_refreshed_0_0_) );
  XOR2_X1 ref_1_simpleXor_38_U1 ( .A(port_rand_ref[0]), .B(port_b_1[0]), .Z(
        ref_1_simpleXor_38_port_z) );
  XOR2_X2 ref_1_simpleXor_39_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_38_port_z), .Z(ref_1_refreshed_1_0_) );
  XOR2_X1 ref_1_simpleXor_40_U1 ( .A(port_rand_ref[1]), .B(port_b_2[0]), .Z(
        ref_1_simpleXor_40_port_z) );
  XOR2_X2 ref_1_simpleXor_41_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_40_port_z), .Z(ref_1_refreshed_2_0_) );
  XOR2_X1 ref_1_simpleXor_42_U1 ( .A(port_rand_ref[0]), .B(port_b_0[1]), .Z(
        ref_1_simpleXor_42_port_z) );
  XOR2_X2 ref_1_simpleXor_43_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_42_port_z), .Z(ref_1_refreshed_0_1_) );
  XOR2_X1 ref_1_simpleXor_44_U1 ( .A(port_rand_ref[0]), .B(port_b_1[1]), .Z(
        ref_1_simpleXor_44_port_z) );
  XOR2_X2 ref_1_simpleXor_45_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_44_port_z), .Z(ref_1_refreshed_1_1_) );
  XOR2_X1 ref_1_simpleXor_46_U1 ( .A(port_rand_ref[1]), .B(port_b_2[1]), .Z(
        ref_1_simpleXor_46_port_z) );
  XOR2_X2 ref_1_simpleXor_47_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_46_port_z), .Z(ref_1_refreshed_2_1_) );
  XOR2_X1 ref_1_simpleXor_48_U1 ( .A(port_rand_ref[0]), .B(port_b_0[2]), .Z(
        ref_1_simpleXor_48_port_z) );
  XOR2_X1 ref_1_simpleXor_49_U1 ( .A(port_rand_ref[1]), .B(
        ref_1_simpleXor_48_port_z), .Z(ref_1_refreshed_0_2_) );
  XOR2_X1 ref_1_simpleXor_50_U1 ( .A(port_rand_ref[0]), .B(port_b_1[2]), .Z(
        ref_1_simpleXor_50_port_z) );
  XOR2_X1 ref_1_simpleXor_51_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_50_port_z), .Z(ref_1_refreshed_1_2_) );
  XOR2_X1 ref_1_simpleXor_52_U1 ( .A(port_rand_ref[1]), .B(port_b_2[2]), .Z(
        ref_1_simpleXor_52_port_z) );
  XOR2_X1 ref_1_simpleXor_53_U1 ( .A(port_rand_ref[2]), .B(
        ref_1_simpleXor_52_port_z), .Z(ref_1_refreshed_2_2_) );
  OR2_X1 ref_1_maj_27_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_27_n3) );
  NAND2_X1 ref_1_maj_27_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_27_n1) );
  NAND2_X1 ref_1_maj_27_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_27_n3), 
        .ZN(ref_1_maj_27_n2) );
  NAND2_X1 ref_1_maj_27_U1 ( .A1(ref_1_maj_27_n1), .A2(ref_1_maj_27_n2), .ZN(
        ref_1_maj_27_port_o) );
  OR2_X1 ref_1_maj_28_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_28_n4) );
  NAND2_X1 ref_1_maj_28_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_28_n6) );
  NAND2_X1 ref_1_maj_28_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_28_n4), 
        .ZN(ref_1_maj_28_n5) );
  NAND2_X1 ref_1_maj_28_U1 ( .A1(ref_1_maj_28_n6), .A2(ref_1_maj_28_n5), .ZN(
        ref_1_maj_28_port_o) );
  OR2_X1 ref_1_maj_29_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_29_n4) );
  NAND2_X1 ref_1_maj_29_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_29_n6) );
  NAND2_X1 ref_1_maj_29_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_29_n4), 
        .ZN(ref_1_maj_29_n5) );
  NAND2_X1 ref_1_maj_29_U1 ( .A1(ref_1_maj_29_n6), .A2(ref_1_maj_29_n5), .ZN(
        ref_1_maj_29_port_o) );
  OR2_X1 ref_1_maj_30_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_30_n4) );
  NAND2_X1 ref_1_maj_30_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_30_n6) );
  NAND2_X1 ref_1_maj_30_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_30_n4), 
        .ZN(ref_1_maj_30_n5) );
  NAND2_X1 ref_1_maj_30_U1 ( .A1(ref_1_maj_30_n6), .A2(ref_1_maj_30_n5), .ZN(
        ref_1_maj_30_port_o) );
  OR2_X1 ref_1_maj_31_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_31_n4) );
  NAND2_X1 ref_1_maj_31_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_31_n6) );
  NAND2_X1 ref_1_maj_31_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_31_n4), 
        .ZN(ref_1_maj_31_n5) );
  NAND2_X1 ref_1_maj_31_U1 ( .A1(ref_1_maj_31_n6), .A2(ref_1_maj_31_n5), .ZN(
        ref_1_maj_31_port_o) );
  OR2_X1 ref_1_maj_32_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_32_n4) );
  NAND2_X1 ref_1_maj_32_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_32_n6) );
  NAND2_X1 ref_1_maj_32_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_32_n4), 
        .ZN(ref_1_maj_32_n5) );
  NAND2_X1 ref_1_maj_32_U1 ( .A1(ref_1_maj_32_n6), .A2(ref_1_maj_32_n5), .ZN(
        ref_1_maj_32_port_o) );
  OR2_X1 ref_1_maj_33_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_33_n4) );
  NAND2_X1 ref_1_maj_33_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_33_n6) );
  NAND2_X1 ref_1_maj_33_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_33_n4), 
        .ZN(ref_1_maj_33_n5) );
  NAND2_X1 ref_1_maj_33_U1 ( .A1(ref_1_maj_33_n6), .A2(ref_1_maj_33_n5), .ZN(
        ref_1_maj_33_port_o) );
  OR2_X1 ref_1_maj_34_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_34_n4) );
  NAND2_X1 ref_1_maj_34_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_34_n6) );
  NAND2_X1 ref_1_maj_34_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_34_n4), 
        .ZN(ref_1_maj_34_n5) );
  NAND2_X1 ref_1_maj_34_U1 ( .A1(ref_1_maj_34_n6), .A2(ref_1_maj_34_n5), .ZN(
        ref_1_maj_34_port_o) );
  OR2_X1 ref_1_maj_35_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_35_n4) );
  NAND2_X1 ref_1_maj_35_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_35_n6) );
  NAND2_X1 ref_1_maj_35_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_35_n4), 
        .ZN(ref_1_maj_35_n5) );
  NAND2_X1 ref_1_maj_35_U1 ( .A1(ref_1_maj_35_n6), .A2(ref_1_maj_35_n5), .ZN(
        ref_1_maj_35_port_o) );
  OR2_X1 ref_1_maj_36_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_36_n4) );
  NAND2_X1 ref_1_maj_36_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_36_n6) );
  NAND2_X1 ref_1_maj_36_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_36_n4), 
        .ZN(ref_1_maj_36_n5) );
  NAND2_X1 ref_1_maj_36_U1 ( .A1(ref_1_maj_36_n6), .A2(ref_1_maj_36_n5), .ZN(
        ref_1_maj_36_port_o) );
  OR2_X1 ref_1_maj_37_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_37_n4) );
  NAND2_X1 ref_1_maj_37_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_37_n6) );
  NAND2_X1 ref_1_maj_37_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_37_n4), 
        .ZN(ref_1_maj_37_n5) );
  NAND2_X1 ref_1_maj_37_U1 ( .A1(ref_1_maj_37_n6), .A2(ref_1_maj_37_n5), .ZN(
        ref_1_maj_37_port_o) );
  OR2_X1 ref_1_maj_38_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_38_n4) );
  NAND2_X1 ref_1_maj_38_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_38_n6) );
  NAND2_X1 ref_1_maj_38_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_38_n4), 
        .ZN(ref_1_maj_38_n5) );
  NAND2_X1 ref_1_maj_38_U1 ( .A1(ref_1_maj_38_n6), .A2(ref_1_maj_38_n5), .ZN(
        ref_1_maj_38_port_o) );
  OR2_X1 ref_1_maj_39_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_39_n4) );
  NAND2_X1 ref_1_maj_39_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_39_n6) );
  NAND2_X1 ref_1_maj_39_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_39_n4), 
        .ZN(ref_1_maj_39_n5) );
  NAND2_X1 ref_1_maj_39_U1 ( .A1(ref_1_maj_39_n6), .A2(ref_1_maj_39_n5), .ZN(
        ref_1_maj_39_port_o) );
  OR2_X1 ref_1_maj_40_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_40_n4) );
  NAND2_X1 ref_1_maj_40_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_40_n6) );
  NAND2_X1 ref_1_maj_40_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_40_n4), 
        .ZN(ref_1_maj_40_n5) );
  NAND2_X1 ref_1_maj_40_U1 ( .A1(ref_1_maj_40_n6), .A2(ref_1_maj_40_n5), .ZN(
        ref_1_maj_40_port_o) );
  OR2_X1 ref_1_maj_41_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_41_n4) );
  NAND2_X1 ref_1_maj_41_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_41_n6) );
  NAND2_X1 ref_1_maj_41_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_41_n4), 
        .ZN(ref_1_maj_41_n5) );
  NAND2_X1 ref_1_maj_41_U1 ( .A1(ref_1_maj_41_n6), .A2(ref_1_maj_41_n5), .ZN(
        ref_1_maj_41_port_o) );
  OR2_X1 ref_1_maj_42_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_42_n4) );
  NAND2_X1 ref_1_maj_42_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_42_n6) );
  NAND2_X1 ref_1_maj_42_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_42_n4), 
        .ZN(ref_1_maj_42_n5) );
  NAND2_X1 ref_1_maj_42_U1 ( .A1(ref_1_maj_42_n6), .A2(ref_1_maj_42_n5), .ZN(
        ref_1_maj_42_port_o) );
  OR2_X1 ref_1_maj_43_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_43_n4) );
  NAND2_X1 ref_1_maj_43_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_43_n6) );
  NAND2_X1 ref_1_maj_43_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_43_n4), 
        .ZN(ref_1_maj_43_n5) );
  NAND2_X1 ref_1_maj_43_U1 ( .A1(ref_1_maj_43_n6), .A2(ref_1_maj_43_n5), .ZN(
        ref_1_maj_43_port_o) );
  OR2_X1 ref_1_maj_44_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_44_n4) );
  NAND2_X1 ref_1_maj_44_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_44_n6) );
  NAND2_X1 ref_1_maj_44_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_44_n4), 
        .ZN(ref_1_maj_44_n5) );
  NAND2_X1 ref_1_maj_44_U1 ( .A1(ref_1_maj_44_n6), .A2(ref_1_maj_44_n5), .ZN(
        ref_1_maj_44_port_o) );
  OR2_X1 ref_1_maj_45_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_45_n4) );
  NAND2_X1 ref_1_maj_45_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_45_n6) );
  NAND2_X1 ref_1_maj_45_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_45_n4), 
        .ZN(ref_1_maj_45_n5) );
  NAND2_X1 ref_1_maj_45_U1 ( .A1(ref_1_maj_45_n6), .A2(ref_1_maj_45_n5), .ZN(
        ref_1_maj_45_port_o) );
  OR2_X1 ref_1_maj_46_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_46_n4) );
  NAND2_X1 ref_1_maj_46_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_46_n6) );
  NAND2_X1 ref_1_maj_46_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_46_n4), 
        .ZN(ref_1_maj_46_n5) );
  NAND2_X1 ref_1_maj_46_U1 ( .A1(ref_1_maj_46_n6), .A2(ref_1_maj_46_n5), .ZN(
        ref_1_maj_46_port_o) );
  OR2_X1 ref_1_maj_47_U4 ( .A1(ref_1_refreshed_0_1_), .A2(ref_1_refreshed_0_0_), .ZN(ref_1_maj_47_n4) );
  NAND2_X1 ref_1_maj_47_U3 ( .A1(ref_1_refreshed_0_1_), .A2(
        ref_1_refreshed_0_0_), .ZN(ref_1_maj_47_n6) );
  NAND2_X1 ref_1_maj_47_U2 ( .A1(ref_1_refreshed_0_2_), .A2(ref_1_maj_47_n4), 
        .ZN(ref_1_maj_47_n5) );
  NAND2_X1 ref_1_maj_47_U1 ( .A1(ref_1_maj_47_n6), .A2(ref_1_maj_47_n5), .ZN(
        ref_1_maj_47_port_o) );
  OR2_X1 ref_1_maj_48_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_48_n4) );
  NAND2_X1 ref_1_maj_48_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_48_n6) );
  NAND2_X1 ref_1_maj_48_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_48_n4), 
        .ZN(ref_1_maj_48_n5) );
  NAND2_X1 ref_1_maj_48_U1 ( .A1(ref_1_maj_48_n6), .A2(ref_1_maj_48_n5), .ZN(
        ref_1_maj_48_port_o) );
  OR2_X1 ref_1_maj_49_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_49_n4) );
  NAND2_X1 ref_1_maj_49_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_49_n6) );
  NAND2_X1 ref_1_maj_49_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_49_n4), 
        .ZN(ref_1_maj_49_n5) );
  NAND2_X1 ref_1_maj_49_U1 ( .A1(ref_1_maj_49_n6), .A2(ref_1_maj_49_n5), .ZN(
        ref_1_maj_49_port_o) );
  OR2_X1 ref_1_maj_50_U4 ( .A1(ref_1_refreshed_1_1_), .A2(ref_1_refreshed_1_0_), .ZN(ref_1_maj_50_n4) );
  NAND2_X1 ref_1_maj_50_U3 ( .A1(ref_1_refreshed_1_1_), .A2(
        ref_1_refreshed_1_0_), .ZN(ref_1_maj_50_n6) );
  NAND2_X1 ref_1_maj_50_U2 ( .A1(ref_1_refreshed_1_2_), .A2(ref_1_maj_50_n4), 
        .ZN(ref_1_maj_50_n5) );
  NAND2_X1 ref_1_maj_50_U1 ( .A1(ref_1_maj_50_n6), .A2(ref_1_maj_50_n5), .ZN(
        ref_1_maj_50_port_o) );
  OR2_X1 ref_1_maj_51_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_51_n4) );
  NAND2_X1 ref_1_maj_51_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_51_n6) );
  NAND2_X1 ref_1_maj_51_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_51_n4), 
        .ZN(ref_1_maj_51_n5) );
  NAND2_X1 ref_1_maj_51_U1 ( .A1(ref_1_maj_51_n6), .A2(ref_1_maj_51_n5), .ZN(
        ref_1_maj_51_port_o) );
  OR2_X1 ref_1_maj_52_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_52_n4) );
  NAND2_X1 ref_1_maj_52_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_52_n6) );
  NAND2_X1 ref_1_maj_52_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_52_n4), 
        .ZN(ref_1_maj_52_n5) );
  NAND2_X1 ref_1_maj_52_U1 ( .A1(ref_1_maj_52_n6), .A2(ref_1_maj_52_n5), .ZN(
        ref_1_maj_52_port_o) );
  OR2_X1 ref_1_maj_53_U4 ( .A1(ref_1_refreshed_2_1_), .A2(ref_1_refreshed_2_0_), .ZN(ref_1_maj_53_n4) );
  NAND2_X1 ref_1_maj_53_U3 ( .A1(ref_1_refreshed_2_1_), .A2(
        ref_1_refreshed_2_0_), .ZN(ref_1_maj_53_n6) );
  NAND2_X1 ref_1_maj_53_U2 ( .A1(ref_1_refreshed_2_2_), .A2(ref_1_maj_53_n4), 
        .ZN(ref_1_maj_53_n5) );
  NAND2_X1 ref_1_maj_53_U1 ( .A1(ref_1_maj_53_n6), .A2(ref_1_maj_53_n5), .ZN(
        ref_1_maj_53_port_o) );
  XOR2_X1 simpleXor_36_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_36_port_a0), 
        .Z(simpleXor_36_port_z) );
  XOR2_X1 simpleXor_37_U1 ( .A(port_rand_mul_1[0]), .B(simpleXor_37_port_a0), 
        .Z(simpleXor_37_port_z) );
  XOR2_X1 simpleXor_38_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_38_port_a0), 
        .Z(simpleXor_38_port_z) );
  XOR2_X1 simpleXor_39_U1 ( .A(port_rand_mul_2[0]), .B(simpleXor_39_port_a0), 
        .Z(simpleXor_39_port_z) );
  XOR2_X1 simpleXor_40_U1 ( .A(port_rand_mul_1[0]), .B(simpleXor_40_port_a0), 
        .Z(simpleXor_40_port_z) );
  XOR2_X1 simpleXor_41_U1 ( .A(port_rand_mul_2[0]), .B(simpleXor_41_port_a0), 
        .Z(simpleXor_41_port_z) );
  XOR2_X1 simpleXor_42_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_42_port_a0), 
        .Z(simpleXor_42_port_z) );
  XOR2_X1 simpleXor_43_U1 ( .A(port_rand_mul_1[0]), .B(simpleXor_43_port_a0), 
        .Z(simpleXor_43_port_z) );
  XOR2_X1 simpleXor_44_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_44_port_a0), 
        .Z(simpleXor_44_port_z) );
  XOR2_X1 simpleXor_45_U1 ( .A(port_rand_mul_2[0]), .B(simpleXor_45_port_a0), 
        .Z(simpleXor_45_port_z) );
  XOR2_X1 simpleXor_46_U1 ( .A(port_rand_mul_1[0]), .B(simpleXor_46_port_a0), 
        .Z(simpleXor_46_port_z) );
  XOR2_X1 simpleXor_47_U1 ( .A(port_rand_mul_2[0]), .B(simpleXor_47_port_a0), 
        .Z(simpleXor_47_port_z) );
  XOR2_X1 simpleXor_48_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_48_port_a0), 
        .Z(simpleXor_48_port_z) );
  XOR2_X1 simpleXor_49_U1 ( .A(port_rand_mul_1[0]), .B(simpleXor_49_port_a0), 
        .Z(simpleXor_49_port_z) );
  XOR2_X1 simpleXor_50_U1 ( .A(port_rand_mul_0[0]), .B(simpleXor_50_port_a0), 
        .Z(simpleXor_50_port_z) );
  XOR2_X1 simpleXor_51_U1 ( .A(port_rand_mul_2[0]), .B(simpleXor_51_port_a0), 
        .Z(simpleXor_51_port_z) );
  XOR2_X1 simpleXor_52_U1 ( .A(port_rand_mul_1[0]), .B(simpleXor_52_port_a0), 
        .Z(simpleXor_52_port_z) );
  XOR2_X1 simpleXor_53_U1 ( .A(port_rand_mul_2[0]), .B(simpleXor_53_port_a0), 
        .Z(simpleXor_53_port_z) );
endmodule

