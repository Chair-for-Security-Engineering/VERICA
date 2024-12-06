
module and_isw ( port_a_0, port_a_1, port_a_2, port_a_3, port_b_0, port_b_1, 
        port_b_2, port_b_3, port_r_0, port_r_1, port_r_2, port_r_3, port_r_4, 
        port_r_5, port_c_0, port_c_1, port_c_2, port_c_3, clk, reset );
  input port_a_0, port_a_1, port_a_2, port_a_3, port_b_0, port_b_1, port_b_2,
         port_b_3, port_r_0, port_r_1, port_r_2, port_r_3, port_r_4, port_r_5,
         clk, reset;
  output port_c_0, port_c_1, port_c_2, port_c_3;
  wire   N0, N1, n_zz_z_0, n_zz_z_0_1, N2, N3, N4, n_zz_z_1, n_zz_z_1_1, N5,
         N6, N7, n_zz_z_2, n_zz_z_2_1, N8, N9, N10, n_zz_z_3, n_zz_z_3_1, N11,
         N12, N13, n_zz_z_4, n_zz_z_4_1, N14, N15, N16, n_zz_z_5, n_zz_z_5_1,
         N17, N18, n_zz_result_0, n_zz_result_0_2, n_zz_result_0_4,
         n_zz_result_0_6, N19, n_zz_result_1, n_zz_result_1_2, n_zz_result_1_4,
         N20, n_zz_result_2, n_zz_result_2_2, N21, n_zz_result_3,
         n_zz_result_0_1, n_zz_result_0_3, n_zz_result_0_5, n_zz_result_0_7,
         N22, n_zz_result_1_1, z_0, n_zz_result_1_3, n_zz_result_1_5, N23,
         n_zz_result_2_1, z_1, z_2, n_zz_result_2_3, N24, n_zz_result_3_1, z_3,
         z_4, z_5, N25, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22;

  DFF_X1 u_zz_z_0_1_reg ( .D(N1), .CK(clk), .Q(n_zz_z_0_1), .QN() );
  DFF_X1 u_zz_z_1_1_reg ( .D(N4), .CK(clk), .Q(n_zz_z_1_1), .QN() );
  DFF_X1 u_zz_z_0_reg ( .D(N0), .CK(clk), .Q(n_zz_z_0), .QN() );
  DFF_X1 z_0_reg ( .D(N2), .CK(clk), .Q(z_0), .QN() );
  DFF_X1 u_zz_result_3_reg ( .D(N21), .CK(clk), .Q(n_zz_result_3), .QN() );
  DFF_X1 u_zz_result_3_1_reg ( .D(n_zz_result_3), .CK(clk), .Q(n_zz_result_3_1), .QN() );
  DFF_X1 u_zz_z_5_reg ( .D(N15), .CK(clk), .Q(n_zz_z_5), .QN() );
  DFF_X1 u_zz_z_2_reg ( .D(N6), .CK(clk), .Q(n_zz_z_2), .QN() );
  DFF_X1 u_zz_result_2_2_reg ( .D(port_r_5), .CK(clk), .Q(n_zz_result_2_2), 
        .QN() );
  DFF_X1 u_zz_result_2_3_reg ( .D(n_zz_result_2_2), .CK(clk), .Q(
        n_zz_result_2_3), .QN() );
  DFF_X1 u_zz_result_2_reg ( .D(N20), .CK(clk), .Q(n_zz_result_2), .QN() );
  DFF_X1 u_zz_result_2_1_reg ( .D(n_zz_result_2), .CK(clk), .Q(n_zz_result_2_1), .QN() );
  DFF_X1 u_zz_z_3_reg ( .D(N9), .CK(clk), .Q(n_zz_z_3), .QN() );
  DFF_X1 u_zz_result_1_4_reg ( .D(port_r_4), .CK(clk), .Q(n_zz_result_1_4), 
        .QN() );
  DFF_X1 u_zz_result_1_5_reg ( .D(n_zz_result_1_4), .CK(clk), .Q(
        n_zz_result_1_5), .QN() );
  DFF_X1 u_zz_z_4_1_reg ( .D(N13), .CK(clk), .Q(n_zz_z_4_1), .QN() );
  DFF_X1 u_zz_z_3_1_reg ( .D(N10), .CK(clk), .Q(n_zz_z_3_1), .QN() );
  DFF_X1 u_zz_result_1_2_reg ( .D(port_r_2), .CK(clk), .Q(n_zz_result_1_2), 
        .QN() );
  DFF_X1 u_zz_result_1_3_reg ( .D(n_zz_result_1_2), .CK(clk), .Q(
        n_zz_result_1_3), .QN() );
  DFF_X1 u_zz_result_1_reg ( .D(N19), .CK(clk), .Q(n_zz_result_1), .QN() );
  DFF_X1 u_zz_result_1_1_reg ( .D(n_zz_result_1), .CK(clk), .Q(n_zz_result_1_1), .QN() );
  DFF_X1 u_zz_z_2_1_reg ( .D(N7), .CK(clk), .Q(n_zz_z_2_1), .QN() );
  DFF_X1 z_2_reg ( .D(N8), .CK(clk), .Q(z_2), .QN() );
  DFF_X1 u_zz_result_0_6_reg ( .D(port_r_3), .CK(clk), .Q(n_zz_result_0_6), 
        .QN() );
  DFF_X1 u_zz_result_0_7_reg ( .D(n_zz_result_0_6), .CK(clk), .Q(
        n_zz_result_0_7), .QN() );
  DFF_X1 u_zz_z_1_reg ( .D(N3), .CK(clk), .Q(n_zz_z_1), .QN() );
  DFF_X1 z_1_reg ( .D(N5), .CK(clk), .Q(z_1), .QN() );
  DFF_X1 u_zz_result_0_4_reg ( .D(port_r_1), .CK(clk), .Q(n_zz_result_0_4), 
        .QN() );
  DFF_X1 u_zz_result_0_5_reg ( .D(n_zz_result_0_4), .CK(clk), .Q(
        n_zz_result_0_5), .QN() );
  DFF_X1 u_zz_result_0_2_reg ( .D(port_r_0), .CK(clk), .Q(n_zz_result_0_2), 
        .QN() );
  DFF_X1 u_zz_result_0_3_reg ( .D(n_zz_result_0_2), .CK(clk), .Q(
        n_zz_result_0_3), .QN() );
  DFF_X1 u_zz_result_0_reg ( .D(N18), .CK(clk), .Q(n_zz_result_0), .QN() );
  DFF_X1 u_zz_result_0_1_reg ( .D(n_zz_result_0), .CK(clk), .Q(n_zz_result_0_1), .QN() );
  DFF_X1 u_zz_z_5_1_reg ( .D(N16), .CK(clk), .Q(n_zz_z_5_1), .QN() );
  DFF_X1 z_5_reg ( .D(N17), .CK(clk), .Q(z_5), .QN() );
  DFF_X1 u_zz_z_4_reg ( .D(N12), .CK(clk), .Q(n_zz_z_4), .QN() );
  DFF_X1 z_4_reg ( .D(N14), .CK(clk), .Q(z_4), .QN() );
  DFF_X1 z_3_reg ( .D(N11), .CK(clk), .Q(z_3), .QN() );
  DFF_X1 result_0_reg ( .D(N22), .CK(clk), .Q(port_c_0), .QN() );
  DFF_X1 result_1_reg ( .D(N23), .CK(clk), .Q(port_c_1), .QN() );
  DFF_X1 result_2_reg ( .D(N24), .CK(clk), .Q(port_c_2), .QN() );
  DFF_X1 result_3_reg ( .D(N25), .CK(clk), .Q(port_c_3), .QN() );
  NOR2_X1 U51 ( .A1(n7), .A2(n4), .ZN(N16) );
  NOR2_X1 U52 ( .A1(n5), .A2(n4), .ZN(N10) );
  NOR2_X1 U53 ( .A1(n6), .A2(n2), .ZN(N19) );
  NOR2_X1 U54 ( .A1(n6), .A2(n4), .ZN(N13) );
  NOR2_X1 U55 ( .A1(n2), .A2(n5), .ZN(N1) );
  NOR2_X1 U56 ( .A1(n3), .A2(n6), .ZN(N7) );
  NOR2_X1 U57 ( .A1(n3), .A2(n7), .ZN(N20) );
  NOR2_X1 U58 ( .A1(n8), .A2(n4), .ZN(N21) );
  NOR2_X1 U59 ( .A1(n3), .A2(n5), .ZN(N4) );
  NOR2_X1 U60 ( .A1(n1), .A2(n5), .ZN(N18) );
  XOR2_X1 U61 ( .A(n12), .B(n13), .Z(N25) );
  XNOR2_X1 U62 ( .A(z_5), .B(z_4), .ZN(n12) );
  XNOR2_X1 U63 ( .A(z_3), .B(n_zz_result_3_1), .ZN(n13) );
  XOR2_X1 U64 ( .A(n14), .B(n15), .Z(N24) );
  XNOR2_X1 U65 ( .A(z_2), .B(z_1), .ZN(n14) );
  XNOR2_X1 U66 ( .A(n_zz_result_2_3), .B(n_zz_result_2_1), .ZN(n15) );
  XOR2_X1 U67 ( .A(n16), .B(n17), .Z(N23) );
  XNOR2_X1 U68 ( .A(z_0), .B(n_zz_result_1_5), .ZN(n16) );
  XNOR2_X1 U69 ( .A(n_zz_result_1_3), .B(n_zz_result_1_1), .ZN(n17) );
  XOR2_X1 U70 ( .A(n18), .B(n19), .Z(N22) );
  XNOR2_X1 U71 ( .A(n_zz_result_0_7), .B(n_zz_result_0_5), .ZN(n18) );
  XNOR2_X1 U72 ( .A(n_zz_result_0_3), .B(n_zz_result_0_1), .ZN(n19) );
  XOR2_X1 U73 ( .A(n_zz_z_3_1), .B(n_zz_z_3), .Z(N11) );
  XOR2_X1 U74 ( .A(n_zz_z_4_1), .B(n_zz_z_4), .Z(N14) );
  XOR2_X1 U75 ( .A(n_zz_z_5_1), .B(n_zz_z_5), .Z(N17) );
  XOR2_X1 U76 ( .A(n_zz_z_1_1), .B(n_zz_z_1), .Z(N5) );
  XOR2_X1 U77 ( .A(n_zz_z_2_1), .B(n_zz_z_2), .Z(N8) );
  XOR2_X1 U78 ( .A(n_zz_z_0_1), .B(n_zz_z_0), .Z(N2) );
  INV_X1 U79 ( .A(port_a_3), .ZN(n4) );
  INV_X1 U80 ( .A(port_b_2), .ZN(n7) );
  INV_X1 U81 ( .A(port_b_0), .ZN(n5) );
  INV_X1 U82 ( .A(port_a_1), .ZN(n2) );
  INV_X1 U83 ( .A(port_b_1), .ZN(n6) );
  INV_X1 U84 ( .A(port_b_3), .ZN(n8) );
  INV_X1 U85 ( .A(port_a_2), .ZN(n3) );
  INV_X1 U86 ( .A(port_a_0), .ZN(n1) );
  XOR2_X1 U87 ( .A(port_r_4), .B(n21), .Z(N12) );
  NOR2_X1 U88 ( .A1(n8), .A2(n2), .ZN(n21) );
  XOR2_X1 U89 ( .A(port_r_1), .B(n11), .Z(N3) );
  NOR2_X1 U90 ( .A1(n1), .A2(n7), .ZN(n11) );
  XOR2_X1 U91 ( .A(port_r_3), .B(n9), .Z(N9) );
  NOR2_X1 U92 ( .A1(n1), .A2(n8), .ZN(n9) );
  XOR2_X1 U93 ( .A(port_r_2), .B(n10), .Z(N6) );
  NOR2_X1 U94 ( .A1(n2), .A2(n7), .ZN(n10) );
  XOR2_X1 U95 ( .A(port_r_5), .B(n20), .Z(N15) );
  NOR2_X1 U96 ( .A1(n8), .A2(n3), .ZN(n20) );
  XOR2_X1 U97 ( .A(port_r_0), .B(n22), .Z(N0) );
  NOR2_X1 U98 ( .A1(n1), .A2(n6), .ZN(n22) );
endmodule

