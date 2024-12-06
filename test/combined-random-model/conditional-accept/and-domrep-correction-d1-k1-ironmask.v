/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Thu Aug 29 14:11:29 2024
/////////////////////////////////////////////////////////////


module andDOMREP_d1_k1 ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, 
        port_c_1, port_r, clk, reset );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  input [0:0] port_r;
  input clk, reset;
  wire   maj_6_port_o, maj_7_port_o, maj_8_port_o, maj_9_port_o, maj_10_port_o,
         maj_11_port_o, z_tilde_0_0_0, z_tilde_0_1_0, z_tilde_0_0_1,
         z_tilde_0_1_1, z_tilde_0_0_2, z_tilde_0_1_2, z_tilde_1_1_0,
         z_tilde_1_0_0, z_tilde_1_1_1, z_tilde_1_0_1, z_tilde_1_1_2,
         z_tilde_1_0_2, N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, n1,
         n2, n3, n4, n5, n6, maj_6_n3, maj_6_n2, maj_6_n1, maj_7_n6, maj_7_n5,
         maj_7_n4, maj_8_n6, maj_8_n5, maj_8_n4, maj_9_n6, maj_9_n5, maj_9_n4,
         maj_10_n6, maj_10_n5, maj_10_n4, maj_11_n6, maj_11_n5, maj_11_n4;
  wire   [2:0] comp_0;
  wire   [2:0] comp_1;
  wire wire0, wire1, wire2, wire3, wire4, wire5, wire6, wire7, wire8, wire9, wire10, wire11, wire12, wire13, wire14, wire15, wire16, wire17, wire18, wire19, wire20, wire21, wire22, wire23, wire24, wire25, wire26, wire27, wire28, wire29, wire30, wire31, wire32, wire33, wire34, wire35, wire36, wire37, wire38, wire39, wire40, wire41, wire42, wire43, wire44, wire45, wire46, wire47;

  DFF_X1 z_tilde_1_0_0_reg ( .D(N2), .CK(clk), .Q(z_tilde_1_0_0), .QN() );
  DFF_X1 z_tilde_0_1_0_reg ( .D(N1), .CK(clk), .Q(z_tilde_0_1_0), .QN() );
  DFF_X1 z_tilde_0_0_1_reg ( .D(N4), .CK(clk), .Q(z_tilde_0_0_1), .QN() );
  DFF_X1 z_tilde_1_0_2_reg ( .D(N10), .CK(clk), .Q(z_tilde_1_0_2), .QN() );
  DFF_X1 z_tilde_1_1_0_reg ( .D(N3), .CK(clk), .Q(z_tilde_1_1_0), .QN() );
  DFF_X1 z_tilde_0_1_1_reg ( .D(N5), .CK(clk), .Q(z_tilde_0_1_1), .QN() );
  DFF_X1 z_tilde_1_1_2_reg ( .D(N11), .CK(clk), .Q(z_tilde_1_1_2), .QN() );
  DFF_X1 z_tilde_0_1_2_reg ( .D(N9), .CK(clk), .Q(z_tilde_0_1_2), .QN() );
  DFF_X1 z_tilde_0_0_2_reg ( .D(N8), .CK(clk), .Q(z_tilde_0_0_2), .QN() );
  DFF_X1 z_tilde_1_0_1_reg ( .D(N6), .CK(clk), .Q(z_tilde_1_0_1), .QN() );
  DFF_X1 z_tilde_1_1_1_reg ( .D(N7), .CK(clk), .Q(z_tilde_1_1_1), .QN() );
  DFF_X1 result_1_reg_2_ ( .D(maj_11_port_o), .CK(clk), .Q(port_c_1[2]), .QN());
  DFF_X1 result_1_reg_1_ ( .D(maj_9_port_o), .CK(clk), .Q(port_c_1[1]), .QN());
  DFF_X1 result_1_reg_0_ ( .D(maj_7_port_o), .CK(clk), .Q(port_c_1[0]), .QN());
  DFF_X1 z_tilde_0_0_0_reg ( .D(N0), .CK(clk), .Q(z_tilde_0_0_0), .QN() );
  DFF_X1 result_0_reg_2_ ( .D(maj_10_port_o), .CK(clk), .Q(port_c_0[2]), .QN());
  DFF_X1 result_0_reg_1_ ( .D(maj_8_port_o), .CK(clk), .Q(port_c_0[1]), .QN());
  DFF_X1 result_0_reg_0_ ( .D(maj_6_port_o), .CK(clk), .Q(port_c_0[0]), .QN());
  XOR2_X1 U27 ( .A(z_tilde_0_1_0), .B(z_tilde_0_0_0), .Z(comp_0[0]) );
  XOR2_X1 U28 ( .A(z_tilde_0_1_1), .B(z_tilde_0_0_1), .Z(comp_0[1]) );
  XOR2_X1 U29 ( .A(z_tilde_1_1_0), .B(z_tilde_1_0_0), .Z(comp_1[0]) );
  XOR2_X1 U30 ( .A(z_tilde_1_1_1), .B(z_tilde_1_0_1), .Z(comp_1[1]) );
  XOR2_X1 U31 ( .A(z_tilde_0_1_2), .B(z_tilde_0_0_2), .Z(comp_0[2]) );
  XOR2_X1 U32 ( .A(z_tilde_1_1_2), .B(z_tilde_1_0_2), .Z(comp_1[2]) );
  XOR2_X1 U33_0 ( .A(port_r[0]), .B(n2), .Z(wire0) ); 
  INV_X1 U33_1 (.A(wire0), .ZN(N6)); 
  AND2_X1 U34_2 ( .A1(port_b_0[1]), .A2(port_a_1[1]), .ZN(wire1) ); 
  INV_X1 U34_3 (.A(wire1), .ZN(n2)); 
  XOR2_X1 U35_4 ( .A(port_r[0]), .B(n1), .Z(wire2) ); 
  INV_X1 U35_5 (.A(wire2), .ZN(N9)); 
  AND2_X1 U36_6 ( .A1(port_b_1[2]), .A2(port_a_0[2]), .ZN(wire3) ); 
  INV_X1 U36_7 (.A(wire3), .ZN(n1)); 
  XOR2_X1 U37_8 ( .A(port_r[0]), .B(n3), .Z(wire4) ); 
  INV_X1 U37_9 (.A(wire4), .ZN(N5)); 
  AND2_X1 U38_10 ( .A1(port_a_0[1]), .A2(port_b_1[1]), .ZN(wire5) ); 
  INV_X1 U38_11 (.A(wire5), .ZN(n3)); 
  XOR2_X1 U39_12 ( .A(port_r[0]), .B(n5), .Z(wire6) ); 
  INV_X1 U39_13 (.A(wire6), .ZN(N10)); 
  AND2_X1 U40_14 ( .A1(port_a_1[2]), .A2(port_b_0[2]), .ZN(wire7) ); 
  INV_X1 U40_15 (.A(wire7), .ZN(n5)); 
  XOR2_X1 U41_16 ( .A(port_r[0]), .B(n6), .Z(wire8) ); 
  INV_X1 U41_17 (.A(wire8), .ZN(N1)); 
  AND2_X1 U42_18 ( .A1(port_a_0[0]), .A2(port_b_1[0]), .ZN(wire9) ); 
  INV_X1 U42_19 (.A(wire9), .ZN(n6)); 
  XOR2_X1 U43_20 ( .A(port_r[0]), .B(n4), .Z(wire10) ); 
  INV_X1 U43_21 (.A(wire10), .ZN(N2)); 
  AND2_X1 U44_22 ( .A1(port_b_0[0]), .A2(port_a_1[0]), .ZN(wire11) ); 
  INV_X1 U44_23 (.A(wire11), .ZN(n4)); 
  AND2_X1 U45 ( .A1(port_b_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U46 ( .A1(port_a_1[1]), .A2(port_b_1[1]), .ZN(N7) );
  AND2_X1 U47 ( .A1(port_a_0[2]), .A2(port_b_0[2]), .ZN(N8) );
  AND2_X1 U48 ( .A1(port_b_1[2]), .A2(port_a_1[2]), .ZN(N11) );
  AND2_X1 U49 ( .A1(port_a_1[0]), .A2(port_b_1[0]), .ZN(N3) );
  AND2_X1 U50 ( .A1(port_b_0[1]), .A2(port_a_0[1]), .ZN(N4) );
  INV_X1 maj_6_U4_24 (.A(comp_0[1]), .ZN(wire12)); 
  INV_X1 maj_6_U4_25 (.A(comp_0[0]), .ZN(wire13)); 
  AND2_X1 maj_6_U4_26 ( .A1(wire12), .A2(wire13), .ZN(wire14) ); 
  INV_X1 maj_6_U4_27 (.A(wire14), .ZN(maj_6_n3)); 
  AND2_X1 maj_6_U3_28 ( .A1(comp_0[2]), .A2(maj_6_n3), .ZN(wire15) ); 
  INV_X1 maj_6_U3_29 (.A(wire15), .ZN(maj_6_n2)); 
  AND2_X1 maj_6_U2_30 ( .A1(comp_0[1]), .A2(comp_0[0]), .ZN(wire16) ); 
  INV_X1 maj_6_U2_31 (.A(wire16), .ZN(maj_6_n1)); 
  AND2_X1 maj_6_U1_32 ( .A1(maj_6_n1), .A2(maj_6_n2), .ZN(wire17) ); 
  INV_X1 maj_6_U1_33 (.A(wire17), .ZN(maj_6_port_o)); 
  INV_X1 maj_7_U4_34 (.A(comp_1[1]), .ZN(wire18)); 
  INV_X1 maj_7_U4_35 (.A(comp_1[0]), .ZN(wire19)); 
  AND2_X1 maj_7_U4_36 ( .A1(wire18), .A2(wire19), .ZN(wire20) ); 
  INV_X1 maj_7_U4_37 (.A(wire20), .ZN(maj_7_n4)); 
  AND2_X1 maj_7_U3_38 ( .A1(comp_1[2]), .A2(maj_7_n4), .ZN(wire21) ); 
  INV_X1 maj_7_U3_39 (.A(wire21), .ZN(maj_7_n5)); 
  AND2_X1 maj_7_U2_40 ( .A1(comp_1[1]), .A2(comp_1[0]), .ZN(wire22) ); 
  INV_X1 maj_7_U2_41 (.A(wire22), .ZN(maj_7_n6)); 
  AND2_X1 maj_7_U1_42 ( .A1(maj_7_n6), .A2(maj_7_n5), .ZN(wire23) ); 
  INV_X1 maj_7_U1_43 (.A(wire23), .ZN(maj_7_port_o)); 
  INV_X1 maj_8_U4_44 (.A(comp_0[1]), .ZN(wire24)); 
  INV_X1 maj_8_U4_45 (.A(comp_0[0]), .ZN(wire25)); 
  AND2_X1 maj_8_U4_46 ( .A1(wire24), .A2(wire25), .ZN(wire26) ); 
  INV_X1 maj_8_U4_47 (.A(wire26), .ZN(maj_8_n4)); 
  AND2_X1 maj_8_U3_48 ( .A1(comp_0[2]), .A2(maj_8_n4), .ZN(wire27) ); 
  INV_X1 maj_8_U3_49 (.A(wire27), .ZN(maj_8_n5)); 
  AND2_X1 maj_8_U2_50 ( .A1(comp_0[1]), .A2(comp_0[0]), .ZN(wire28) ); 
  INV_X1 maj_8_U2_51 (.A(wire28), .ZN(maj_8_n6)); 
  AND2_X1 maj_8_U1_52 ( .A1(maj_8_n6), .A2(maj_8_n5), .ZN(wire29) ); 
  INV_X1 maj_8_U1_53 (.A(wire29), .ZN(maj_8_port_o)); 
  INV_X1 maj_9_U4_54 (.A(comp_1[1]), .ZN(wire30)); 
  INV_X1 maj_9_U4_55 (.A(comp_1[0]), .ZN(wire31)); 
  AND2_X1 maj_9_U4_56 ( .A1(wire30), .A2(wire31), .ZN(wire32) ); 
  INV_X1 maj_9_U4_57 (.A(wire32), .ZN(maj_9_n4)); 
  AND2_X1 maj_9_U3_58 ( .A1(comp_1[2]), .A2(maj_9_n4), .ZN(wire33) ); 
  INV_X1 maj_9_U3_59 (.A(wire33), .ZN(maj_9_n5)); 
  AND2_X1 maj_9_U2_60 ( .A1(comp_1[1]), .A2(comp_1[0]), .ZN(wire34) ); 
  INV_X1 maj_9_U2_61 (.A(wire34), .ZN(maj_9_n6)); 
  AND2_X1 maj_9_U1_62 ( .A1(maj_9_n6), .A2(maj_9_n5), .ZN(wire35) ); 
  INV_X1 maj_9_U1_63 (.A(wire35), .ZN(maj_9_port_o)); 
  INV_X1 maj_10_U4_64 (.A(comp_0[1]), .ZN(wire36)); 
  INV_X1 maj_10_U4_65 (.A(comp_0[0]), .ZN(wire37)); 
  AND2_X1 maj_10_U4_66 ( .A1(wire36), .A2(wire37), .ZN(wire38) ); 
  INV_X1 maj_10_U4_67 (.A(wire38), .ZN(maj_10_n4)); 
  AND2_X1 maj_10_U3_68 ( .A1(comp_0[2]), .A2(maj_10_n4), .ZN(wire39) ); 
  INV_X1 maj_10_U3_69 (.A(wire39), .ZN(maj_10_n5)); 
  AND2_X1 maj_10_U2_70 ( .A1(comp_0[1]), .A2(comp_0[0]), .ZN(wire40) ); 
  INV_X1 maj_10_U2_71 (.A(wire40), .ZN(maj_10_n6)); 
  AND2_X1 maj_10_U1_72 ( .A1(maj_10_n6), .A2(maj_10_n5), .ZN(wire41) ); 
  INV_X1 maj_10_U1_73 (.A(wire41), .ZN(maj_10_port_o)); 
  INV_X1 maj_11_U4_74 (.A(comp_1[1]), .ZN(wire42)); 
  INV_X1 maj_11_U4_75 (.A(comp_1[0]), .ZN(wire43)); 
  AND2_X1 maj_11_U4_76 ( .A1(wire42), .A2(wire43), .ZN(wire44) ); 
  INV_X1 maj_11_U4_77 (.A(wire44), .ZN(maj_11_n4)); 
  AND2_X1 maj_11_U3_78 ( .A1(comp_1[2]), .A2(maj_11_n4), .ZN(wire45) ); 
  INV_X1 maj_11_U3_79 (.A(wire45), .ZN(maj_11_n5)); 
  AND2_X1 maj_11_U2_80 ( .A1(comp_1[1]), .A2(comp_1[0]), .ZN(wire46) ); 
  INV_X1 maj_11_U2_81 (.A(wire46), .ZN(maj_11_n6)); 
  AND2_X1 maj_11_U1_82 ( .A1(maj_11_n6), .A2(maj_11_n5), .ZN(wire47) ); 
  INV_X1 maj_11_U1_83 (.A(wire47), .ZN(maj_11_port_o)); 
  endmodule

