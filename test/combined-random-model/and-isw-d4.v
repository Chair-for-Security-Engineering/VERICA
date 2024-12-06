
module and_isw ( port_a_0, port_a_1, port_a_2, port_a_3, port_a_4, port_b_0, 
        port_b_1, port_b_2, port_b_3, port_b_4, port_r_0, port_r_1, port_r_2, 
        port_r_3, port_r_4, port_r_5, port_r_6, port_r_7, port_r_8, port_r_9, 
        port_c_0, port_c_1, port_c_2, port_c_3, port_c_4, clk, reset );
  input port_a_0, port_a_1, port_a_2, port_a_3, port_a_4, port_b_0, port_b_1,
         port_b_2, port_b_3, port_b_4, port_r_0, port_r_1, port_r_2, port_r_3,
         port_r_4, port_r_5, port_r_6, port_r_7, port_r_8, port_r_9, clk,
         reset;
  output port_c_0, port_c_1, port_c_2, port_c_3, port_c_4;
  wire   N0, N1, n_zz_z_0, n_zz_z_0_1, N2, N3, N4, n_zz_z_1, n_zz_z_1_1, N5,
         N6, N7, n_zz_z_2, n_zz_z_2_1, N8, N9, N10, n_zz_z_3, n_zz_z_3_1, N11,
         N12, N13, n_zz_z_4, n_zz_z_4_1, N14, N15, N16, n_zz_z_5, n_zz_z_5_1,
         N17, N18, N19, n_zz_z_6, n_zz_z_6_1, N20, N21, N22, n_zz_z_7,
         n_zz_z_7_1, N23, N24, N25, n_zz_z_8, n_zz_z_8_1, N26, N27, N28,
         n_zz_z_9, n_zz_z_9_1, N29, N30, n_zz_result_0, n_zz_result_0_2,
         n_zz_result_0_4, n_zz_result_0_6, n_zz_result_0_8, N31, n_zz_result_1,
         n_zz_result_1_2, n_zz_result_1_4, n_zz_result_1_6, N32, n_zz_result_2,
         n_zz_result_2_2, n_zz_result_2_4, N33, n_zz_result_3, n_zz_result_3_2,
         N34, n_zz_result_4, n_zz_result_0_1, n_zz_result_0_3, n_zz_result_0_5,
         n_zz_result_0_7, n_zz_result_0_9, N35, n_zz_result_1_1, z_0,
         n_zz_result_1_3, n_zz_result_1_5, n_zz_result_1_7, N36,
         n_zz_result_2_1, z_1, z_2, n_zz_result_2_3, n_zz_result_2_5, N37,
         n_zz_result_3_1, z_3, z_4, z_5, n_zz_result_3_3, N38, n_zz_result_4_1,
         z_6, z_7, z_8, z_9, N39, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35;

  DFF_X1 u_zz_z_9_reg ( .D(N27), .CK(clk), .Q(n_zz_z_9), .QN() );
  DFF_X1 u_zz_z_0_1_reg ( .D(N1), .CK(clk), .Q(n_zz_z_0_1), .QN() );
  DFF_X1 u_zz_z_1_1_reg ( .D(N4), .CK(clk), .Q(n_zz_z_1_1), .QN() );
  DFF_X1 u_zz_z_0_reg ( .D(N0), .CK(clk), .Q(n_zz_z_0), .QN() );
  DFF_X1 z_0_reg ( .D(N2), .CK(clk), .Q(z_0), .QN() );
  DFF_X1 u_zz_result_4_reg ( .D(N34), .CK(clk), .Q(n_zz_result_4), .QN() );
  DFF_X1 u_zz_result_4_1_reg ( .D(n_zz_result_4), .CK(clk), .Q(n_zz_result_4_1), .QN() );
  DFF_X1 u_zz_z_8_1_reg ( .D(N25), .CK(clk), .Q(n_zz_z_8_1), .QN() );
  DFF_X1 u_zz_z_2_reg ( .D(N6), .CK(clk), .Q(n_zz_z_2), .QN() );
  DFF_X1 u_zz_result_3_2_reg ( .D(port_r_9), .CK(clk), .Q(n_zz_result_3_2), 
        .QN() );
  DFF_X1 u_zz_result_3_3_reg ( .D(n_zz_result_3_2), .CK(clk), .Q(
        n_zz_result_3_3), .QN() );
  DFF_X1 u_zz_result_3_reg ( .D(N33), .CK(clk), .Q(n_zz_result_3), .QN() );
  DFF_X1 u_zz_result_3_1_reg ( .D(n_zz_result_3), .CK(clk), .Q(n_zz_result_3_1), .QN() );
  DFF_X1 u_zz_result_2_4_reg ( .D(port_r_8), .CK(clk), .Q(n_zz_result_2_4), 
        .QN() );
  DFF_X1 u_zz_result_2_5_reg ( .D(n_zz_result_2_4), .CK(clk), .Q(
        n_zz_result_2_5), .QN() );
  DFF_X1 u_zz_z_3_1_reg ( .D(N10), .CK(clk), .Q(n_zz_z_3_1), .QN() );
  DFF_X1 u_zz_result_2_2_reg ( .D(port_r_5), .CK(clk), .Q(n_zz_result_2_2), 
        .QN() );
  DFF_X1 u_zz_result_2_3_reg ( .D(n_zz_result_2_2), .CK(clk), .Q(
        n_zz_result_2_3), .QN() );
  DFF_X1 u_zz_result_2_reg ( .D(N32), .CK(clk), .Q(n_zz_result_2), .QN() );
  DFF_X1 u_zz_result_2_1_reg ( .D(n_zz_result_2), .CK(clk), .Q(n_zz_result_2_1), .QN() );
  DFF_X1 u_zz_z_5_reg ( .D(N15), .CK(clk), .Q(n_zz_z_5), .QN() );
  DFF_X1 u_zz_result_1_6_reg ( .D(port_r_7), .CK(clk), .Q(n_zz_result_1_6), 
        .QN() );
  DFF_X1 u_zz_result_1_7_reg ( .D(n_zz_result_1_6), .CK(clk), .Q(
        n_zz_result_1_7), .QN() );
  DFF_X1 u_zz_z_3_reg ( .D(N9), .CK(clk), .Q(n_zz_z_3), .QN() );
  DFF_X1 u_zz_result_1_4_reg ( .D(port_r_4), .CK(clk), .Q(n_zz_result_1_4), 
        .QN() );
  DFF_X1 u_zz_result_1_5_reg ( .D(n_zz_result_1_4), .CK(clk), .Q(
        n_zz_result_1_5), .QN() );
  DFF_X1 u_zz_result_1_2_reg ( .D(port_r_2), .CK(clk), .Q(n_zz_result_1_2), 
        .QN() );
  DFF_X1 u_zz_result_1_3_reg ( .D(n_zz_result_1_2), .CK(clk), .Q(
        n_zz_result_1_3), .QN() );
  DFF_X1 u_zz_z_7_reg ( .D(N21), .CK(clk), .Q(n_zz_z_7), .QN() );
  DFF_X1 u_zz_z_4_reg ( .D(N12), .CK(clk), .Q(n_zz_z_4), .QN() );
  DFF_X1 z_3_reg ( .D(N11), .CK(clk), .Q(z_3), .QN() );
  DFF_X1 u_zz_result_1_reg ( .D(N31), .CK(clk), .Q(n_zz_result_1), .QN() );
  DFF_X1 u_zz_result_1_1_reg ( .D(n_zz_result_1), .CK(clk), .Q(n_zz_result_1_1), .QN() );
  DFF_X1 u_zz_z_4_1_reg ( .D(N13), .CK(clk), .Q(n_zz_z_4_1), .QN() );
  DFF_X1 u_zz_result_0_8_reg ( .D(port_r_6), .CK(clk), .Q(n_zz_result_0_8), 
        .QN() );
  DFF_X1 u_zz_result_0_9_reg ( .D(n_zz_result_0_8), .CK(clk), .Q(
        n_zz_result_0_9), .QN() );
  DFF_X1 u_zz_result_0_6_reg ( .D(port_r_3), .CK(clk), .Q(n_zz_result_0_6), 
        .QN() );
  DFF_X1 u_zz_result_0_7_reg ( .D(n_zz_result_0_6), .CK(clk), .Q(
        n_zz_result_0_7), .QN() );
  DFF_X1 u_zz_z_2_1_reg ( .D(N7), .CK(clk), .Q(n_zz_z_2_1), .QN() );
  DFF_X1 z_2_reg ( .D(N8), .CK(clk), .Q(z_2), .QN() );
  DFF_X1 u_zz_result_0_4_reg ( .D(port_r_1), .CK(clk), .Q(n_zz_result_0_4), 
        .QN() );
  DFF_X1 u_zz_result_0_5_reg ( .D(n_zz_result_0_4), .CK(clk), .Q(
        n_zz_result_0_5), .QN() );
  DFF_X1 u_zz_z_1_reg ( .D(N3), .CK(clk), .Q(n_zz_z_1), .QN() );
  DFF_X1 z_1_reg ( .D(N5), .CK(clk), .Q(z_1), .QN() );
  DFF_X1 u_zz_result_0_2_reg ( .D(port_r_0), .CK(clk), .Q(n_zz_result_0_2), 
        .QN() );
  DFF_X1 u_zz_result_0_3_reg ( .D(n_zz_result_0_2), .CK(clk), .Q(
        n_zz_result_0_3), .QN() );
  DFF_X1 u_zz_result_0_reg ( .D(N30), .CK(clk), .Q(n_zz_result_0), .QN() );
  DFF_X1 u_zz_result_0_1_reg ( .D(n_zz_result_0), .CK(clk), .Q(n_zz_result_0_1), .QN() );
  DFF_X1 u_zz_z_9_1_reg ( .D(N28), .CK(clk), .Q(n_zz_z_9_1), .QN() );
  DFF_X1 z_9_reg ( .D(N29), .CK(clk), .Q(z_9), .QN() );
  DFF_X1 u_zz_z_8_reg ( .D(N24), .CK(clk), .Q(n_zz_z_8), .QN() );
  DFF_X1 z_8_reg ( .D(N26), .CK(clk), .Q(z_8), .QN() );
  DFF_X1 u_zz_z_7_1_reg ( .D(N22), .CK(clk), .Q(n_zz_z_7_1), .QN() );
  DFF_X1 z_7_reg ( .D(N23), .CK(clk), .Q(z_7), .QN() );
  DFF_X1 u_zz_z_6_1_reg ( .D(N19), .CK(clk), .Q(n_zz_z_6_1), .QN() );
  DFF_X1 u_zz_z_6_reg ( .D(N18), .CK(clk), .Q(n_zz_z_6), .QN() );
  DFF_X1 z_6_reg ( .D(N20), .CK(clk), .Q(z_6), .QN() );
  DFF_X1 u_zz_z_5_1_reg ( .D(N16), .CK(clk), .Q(n_zz_z_5_1), .QN() );
  DFF_X1 z_5_reg ( .D(N17), .CK(clk), .Q(z_5), .QN() );
  DFF_X1 z_4_reg ( .D(N14), .CK(clk), .Q(z_4), .QN() );
  DFF_X1 result_0_reg ( .D(N35), .CK(clk), .Q(port_c_0), .QN() );
  DFF_X1 result_1_reg ( .D(N36), .CK(clk), .Q(port_c_1), .QN() );
  DFF_X1 result_2_reg ( .D(N37), .CK(clk), .Q(port_c_2), .QN() );
  DFF_X1 result_3_reg ( .D(N38), .CK(clk), .Q(port_c_3), .QN() );
  DFF_X1 result_4_reg ( .D(N39), .CK(clk), .Q(port_c_4), .QN() );
  NOR2_X1 U78 ( .A1(n5), .A2(n10), .ZN(N34) );
  NOR2_X1 U79 ( .A1(n8), .A2(n4), .ZN(N16) );
  NOR2_X1 U80 ( .A1(n6), .A2(n5), .ZN(N19) );
  NOR2_X1 U81 ( .A1(n6), .A2(n4), .ZN(N10) );
  NOR2_X1 U82 ( .A1(n8), .A2(n5), .ZN(N25) );
  NOR2_X1 U83 ( .A1(n7), .A2(n5), .ZN(N22) );
  NOR2_X1 U84 ( .A1(n7), .A2(n4), .ZN(N13) );
  NOR2_X1 U85 ( .A1(n7), .A2(n2), .ZN(N31) );
  NOR2_X1 U86 ( .A1(n2), .A2(n6), .ZN(N1) );
  NOR2_X1 U87 ( .A1(n9), .A2(n5), .ZN(N28) );
  NOR2_X1 U88 ( .A1(n3), .A2(n7), .ZN(N7) );
  NOR2_X1 U89 ( .A1(n3), .A2(n8), .ZN(N32) );
  NOR2_X1 U90 ( .A1(n9), .A2(n4), .ZN(N33) );
  NOR2_X1 U91 ( .A1(n3), .A2(n6), .ZN(N4) );
  NOR2_X1 U92 ( .A1(n1), .A2(n6), .ZN(N30) );
  XOR2_X1 U93 ( .A(n13), .B(n14), .Z(N39) );
  XNOR2_X1 U94 ( .A(z_6), .B(n_zz_result_4_1), .ZN(n14) );
  XOR2_X1 U95 ( .A(n15), .B(z_7), .Z(n13) );
  XNOR2_X1 U96 ( .A(z_9), .B(z_8), .ZN(n15) );
  XOR2_X1 U97 ( .A(n16), .B(n17), .Z(N38) );
  XNOR2_X1 U98 ( .A(n_zz_result_3_3), .B(n_zz_result_3_1), .ZN(n17) );
  XOR2_X1 U99 ( .A(n18), .B(z_3), .Z(n16) );
  XNOR2_X1 U100 ( .A(z_5), .B(z_4), .ZN(n18) );
  XOR2_X1 U101 ( .A(n19), .B(n20), .Z(N37) );
  XNOR2_X1 U102 ( .A(n_zz_result_2_3), .B(n_zz_result_2_1), .ZN(n20) );
  XOR2_X1 U103 ( .A(n21), .B(n_zz_result_2_5), .Z(n19) );
  XNOR2_X1 U104 ( .A(z_2), .B(z_1), .ZN(n21) );
  XOR2_X1 U105 ( .A(n22), .B(n23), .Z(N36) );
  XNOR2_X1 U106 ( .A(n_zz_result_1_3), .B(n_zz_result_1_1), .ZN(n23) );
  XOR2_X1 U107 ( .A(n24), .B(n_zz_result_1_5), .Z(n22) );
  XNOR2_X1 U108 ( .A(z_0), .B(n_zz_result_1_7), .ZN(n24) );
  XOR2_X1 U109 ( .A(n25), .B(n26), .Z(N35) );
  XNOR2_X1 U110 ( .A(n_zz_result_0_3), .B(n_zz_result_0_1), .ZN(n26) );
  XOR2_X1 U111 ( .A(n27), .B(n_zz_result_0_5), .Z(n25) );
  XNOR2_X1 U112 ( .A(n_zz_result_0_9), .B(n_zz_result_0_7), .ZN(n27) );
  XOR2_X1 U113 ( .A(n_zz_z_4_1), .B(n_zz_z_4), .Z(N14) );
  XOR2_X1 U114 ( .A(n_zz_z_5_1), .B(n_zz_z_5), .Z(N17) );
  XOR2_X1 U115 ( .A(n_zz_z_6_1), .B(n_zz_z_6), .Z(N20) );
  XOR2_X1 U116 ( .A(n_zz_z_7_1), .B(n_zz_z_7), .Z(N23) );
  XOR2_X1 U117 ( .A(n_zz_z_8_1), .B(n_zz_z_8), .Z(N26) );
  XOR2_X1 U118 ( .A(n_zz_z_9_1), .B(n_zz_z_9), .Z(N29) );
  XOR2_X1 U119 ( .A(n_zz_z_1_1), .B(n_zz_z_1), .Z(N5) );
  XOR2_X1 U120 ( .A(n_zz_z_2_1), .B(n_zz_z_2), .Z(N8) );
  XOR2_X1 U121 ( .A(n_zz_z_3_1), .B(n_zz_z_3), .Z(N11) );
  XOR2_X1 U122 ( .A(n_zz_z_0_1), .B(n_zz_z_0), .Z(N2) );
  INV_X1 U123 ( .A(port_a_3), .ZN(n4) );
  INV_X1 U124 ( .A(port_b_4), .ZN(n10) );
  INV_X1 U125 ( .A(port_a_4), .ZN(n5) );
  INV_X1 U126 ( .A(port_b_2), .ZN(n8) );
  INV_X1 U127 ( .A(port_b_0), .ZN(n6) );
  INV_X1 U128 ( .A(port_a_1), .ZN(n2) );
  INV_X1 U129 ( .A(port_b_1), .ZN(n7) );
  INV_X1 U130 ( .A(port_b_3), .ZN(n9) );
  INV_X1 U131 ( .A(port_a_2), .ZN(n3) );
  INV_X1 U132 ( .A(port_a_0), .ZN(n1) );
  XOR2_X1 U133 ( .A(port_r_6), .B(n32), .Z(N18) );
  NOR2_X1 U134 ( .A1(n1), .A2(n10), .ZN(n32) );
  XOR2_X1 U135 ( .A(port_r_8), .B(n30), .Z(N24) );
  NOR2_X1 U136 ( .A1(n3), .A2(n10), .ZN(n30) );
  XOR2_X1 U137 ( .A(port_r_1), .B(n28), .Z(N3) );
  NOR2_X1 U138 ( .A1(n1), .A2(n8), .ZN(n28) );
  XOR2_X1 U139 ( .A(port_r_4), .B(n34), .Z(N12) );
  NOR2_X1 U140 ( .A1(n9), .A2(n2), .ZN(n34) );
  XOR2_X1 U141 ( .A(port_r_7), .B(n31), .Z(N21) );
  NOR2_X1 U142 ( .A1(n2), .A2(n10), .ZN(n31) );
  XOR2_X1 U143 ( .A(port_r_3), .B(n11), .Z(N9) );
  NOR2_X1 U144 ( .A1(n1), .A2(n9), .ZN(n11) );
  XOR2_X1 U145 ( .A(port_r_5), .B(n33), .Z(N15) );
  NOR2_X1 U146 ( .A1(n9), .A2(n3), .ZN(n33) );
  XOR2_X1 U147 ( .A(port_r_2), .B(n12), .Z(N6) );
  NOR2_X1 U148 ( .A1(n2), .A2(n8), .ZN(n12) );
  XOR2_X1 U149 ( .A(port_r_0), .B(n35), .Z(N0) );
  NOR2_X1 U150 ( .A1(n1), .A2(n7), .ZN(n35) );
  XOR2_X1 U151 ( .A(port_r_9), .B(n29), .Z(N27) );
  NOR2_X1 U152 ( .A1(n10), .A2(n4), .ZN(n29) );
endmodule

