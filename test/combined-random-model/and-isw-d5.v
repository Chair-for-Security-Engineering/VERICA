
module and_isw ( port_a_0, port_a_1, port_a_2, port_a_3, port_a_4, port_a_5, 
        port_b_0, port_b_1, port_b_2, port_b_3, port_b_4, port_b_5, port_r_0, 
        port_r_1, port_r_2, port_r_3, port_r_4, port_r_5, port_r_6, port_r_7, 
        port_r_8, port_r_9, port_r_10, port_r_11, port_r_12, port_r_13, 
        port_r_14, port_c_0, port_c_1, port_c_2, port_c_3, port_c_4, port_c_5, 
        clk, reset );
  input port_a_0, port_a_1, port_a_2, port_a_3, port_a_4, port_a_5, port_b_0,
         port_b_1, port_b_2, port_b_3, port_b_4, port_b_5, port_r_0, port_r_1,
         port_r_2, port_r_3, port_r_4, port_r_5, port_r_6, port_r_7, port_r_8,
         port_r_9, port_r_10, port_r_11, port_r_12, port_r_13, port_r_14, clk,
         reset;
  output port_c_0, port_c_1, port_c_2, port_c_3, port_c_4, port_c_5;
  wire   N0, N1, n_zz_z_0, n_zz_z_0_1, N2, N3, N4, n_zz_z_1, n_zz_z_1_1, N5,
         N6, N7, n_zz_z_2, n_zz_z_2_1, N8, N9, N10, n_zz_z_3, n_zz_z_3_1, N11,
         N12, N13, n_zz_z_4, n_zz_z_4_1, N14, N15, N16, n_zz_z_5, n_zz_z_5_1,
         N17, N18, N19, n_zz_z_6, n_zz_z_6_1, N20, N21, N22, n_zz_z_7,
         n_zz_z_7_1, N23, N24, N25, n_zz_z_8, n_zz_z_8_1, N26, N27, N28,
         n_zz_z_9, n_zz_z_9_1, N29, N30, N31, n_zz_z_10, n_zz_z_10_1, N32, N33,
         N34, n_zz_z_11, n_zz_z_11_1, N35, N36, N37, n_zz_z_12, n_zz_z_12_1,
         N38, N39, N40, n_zz_z_13, n_zz_z_13_1, N41, N42, N43, n_zz_z_14,
         n_zz_z_14_1, N44, N45, n_zz_result_0, n_zz_result_0_2,
         n_zz_result_0_4, n_zz_result_0_6, n_zz_result_0_8, n_zz_result_0_10,
         N46, n_zz_result_1, n_zz_result_1_2, n_zz_result_1_4, n_zz_result_1_6,
         n_zz_result_1_8, N47, n_zz_result_2, n_zz_result_2_2, n_zz_result_2_4,
         n_zz_result_2_6, N48, n_zz_result_3, n_zz_result_3_2, n_zz_result_3_4,
         N49, n_zz_result_4, n_zz_result_4_2, N50, n_zz_result_5,
         n_zz_result_0_1, n_zz_result_0_3, n_zz_result_0_5, n_zz_result_0_7,
         n_zz_result_0_9, n_zz_result_0_11, N51, n_zz_result_1_1, z_0,
         n_zz_result_1_3, n_zz_result_1_5, n_zz_result_1_7, n_zz_result_1_9,
         N52, n_zz_result_2_1, z_1, z_2, n_zz_result_2_3, n_zz_result_2_5,
         n_zz_result_2_7, N53, n_zz_result_3_1, z_3, z_4, z_5, n_zz_result_3_3,
         n_zz_result_3_5, N54, n_zz_result_4_1, z_6, z_7, z_8, z_9,
         n_zz_result_4_3, N55, n_zz_result_5_1, z_10, z_11, z_12, z_13, z_14,
         N56, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51;

  DFF_X1 u_zz_z_13_reg ( .D(N39), .CK(clk), .Q(n_zz_z_13), .QN() );
  DFF_X1 u_zz_z_0_1_reg ( .D(N1), .CK(clk), .Q(n_zz_z_0_1), .QN() );
  DFF_X1 u_zz_z_1_1_reg ( .D(N4), .CK(clk), .Q(n_zz_z_1_1), .QN() );
  DFF_X1 u_zz_z_0_reg ( .D(N0), .CK(clk), .Q(n_zz_z_0), .QN() );
  DFF_X1 z_0_reg ( .D(N2), .CK(clk), .Q(z_0), .QN() );
  DFF_X1 u_zz_result_5_reg ( .D(N50), .CK(clk), .Q(n_zz_result_5), .QN() );
  DFF_X1 u_zz_result_5_1_reg ( .D(n_zz_result_5), .CK(clk), .Q(n_zz_result_5_1), .QN() );
  DFF_X1 u_zz_z_12_1_reg ( .D(N37), .CK(clk), .Q(n_zz_z_12_1), .QN() );
  DFF_X1 u_zz_z_2_reg ( .D(N6), .CK(clk), .Q(n_zz_z_2), .QN() );
  DFF_X1 u_zz_result_4_2_reg ( .D(port_r_14), .CK(clk), .Q(n_zz_result_4_2), 
        .QN() );
  DFF_X1 u_zz_result_4_3_reg ( .D(n_zz_result_4_2), .CK(clk), .Q(
        n_zz_result_4_3), .QN() );
  DFF_X1 u_zz_result_4_reg ( .D(N49), .CK(clk), .Q(n_zz_result_4), .QN() );
  DFF_X1 u_zz_result_4_1_reg ( .D(n_zz_result_4), .CK(clk), .Q(n_zz_result_4_1), .QN() );
  DFF_X1 u_zz_z_9_reg ( .D(N27), .CK(clk), .Q(n_zz_z_9), .QN() );
  DFF_X1 u_zz_result_3_4_reg ( .D(port_r_13), .CK(clk), .Q(n_zz_result_3_4), 
        .QN() );
  DFF_X1 u_zz_result_3_5_reg ( .D(n_zz_result_3_4), .CK(clk), .Q(
        n_zz_result_3_5), .QN() );
  DFF_X1 u_zz_z_3_1_reg ( .D(N10), .CK(clk), .Q(n_zz_z_3_1), .QN() );
  DFF_X1 u_zz_result_3_2_reg ( .D(port_r_9), .CK(clk), .Q(n_zz_result_3_2), 
        .QN() );
  DFF_X1 u_zz_result_3_3_reg ( .D(n_zz_result_3_2), .CK(clk), .Q(
        n_zz_result_3_3), .QN() );
  DFF_X1 u_zz_result_3_reg ( .D(N48), .CK(clk), .Q(n_zz_result_3), .QN() );
  DFF_X1 u_zz_result_3_1_reg ( .D(n_zz_result_3), .CK(clk), .Q(n_zz_result_3_1), .QN() );
  DFF_X1 u_zz_z_8_1_reg ( .D(N25), .CK(clk), .Q(n_zz_z_8_1), .QN() );
  DFF_X1 u_zz_result_2_6_reg ( .D(port_r_12), .CK(clk), .Q(n_zz_result_2_6), 
        .QN() );
  DFF_X1 u_zz_result_2_7_reg ( .D(n_zz_result_2_6), .CK(clk), .Q(
        n_zz_result_2_7), .QN() );
  DFF_X1 u_zz_result_2_4_reg ( .D(port_r_8), .CK(clk), .Q(n_zz_result_2_4), 
        .QN() );
  DFF_X1 u_zz_result_2_5_reg ( .D(n_zz_result_2_4), .CK(clk), .Q(
        n_zz_result_2_5), .QN() );
  DFF_X1 u_zz_result_2_2_reg ( .D(port_r_5), .CK(clk), .Q(n_zz_result_2_2), 
        .QN() );
  DFF_X1 u_zz_result_2_3_reg ( .D(n_zz_result_2_2), .CK(clk), .Q(
        n_zz_result_2_3), .QN() );
  DFF_X1 u_zz_z_11_reg ( .D(N33), .CK(clk), .Q(n_zz_z_11), .QN() );
  DFF_X1 u_zz_z_4_reg ( .D(N12), .CK(clk), .Q(n_zz_z_4), .QN() );
  DFF_X1 u_zz_result_2_reg ( .D(N47), .CK(clk), .Q(n_zz_result_2), .QN() );
  DFF_X1 u_zz_result_2_1_reg ( .D(n_zz_result_2), .CK(clk), .Q(n_zz_result_2_1), .QN() );
  DFF_X1 u_zz_result_1_8_reg ( .D(port_r_11), .CK(clk), .Q(n_zz_result_1_8), 
        .QN() );
  DFF_X1 u_zz_result_1_9_reg ( .D(n_zz_result_1_8), .CK(clk), .Q(
        n_zz_result_1_9), .QN() );
  DFF_X1 u_zz_result_1_6_reg ( .D(port_r_7), .CK(clk), .Q(n_zz_result_1_6), 
        .QN() );
  DFF_X1 u_zz_result_1_7_reg ( .D(n_zz_result_1_6), .CK(clk), .Q(
        n_zz_result_1_7), .QN() );
  DFF_X1 u_zz_z_5_reg ( .D(N15), .CK(clk), .Q(n_zz_z_5), .QN() );
  DFF_X1 u_zz_result_1_4_reg ( .D(port_r_4), .CK(clk), .Q(n_zz_result_1_4), 
        .QN() );
  DFF_X1 u_zz_result_1_5_reg ( .D(n_zz_result_1_4), .CK(clk), .Q(
        n_zz_result_1_5), .QN() );
  DFF_X1 u_zz_z_3_reg ( .D(N9), .CK(clk), .Q(n_zz_z_3), .QN() );
  DFF_X1 z_3_reg ( .D(N11), .CK(clk), .Q(z_3), .QN() );
  DFF_X1 u_zz_result_1_2_reg ( .D(port_r_2), .CK(clk), .Q(n_zz_result_1_2), 
        .QN() );
  DFF_X1 u_zz_result_1_3_reg ( .D(n_zz_result_1_2), .CK(clk), .Q(
        n_zz_result_1_3), .QN() );
  DFF_X1 u_zz_result_1_reg ( .D(N46), .CK(clk), .Q(n_zz_result_1), .QN() );
  DFF_X1 u_zz_result_1_1_reg ( .D(n_zz_result_1), .CK(clk), .Q(n_zz_result_1_1), .QN() );
  DFF_X1 u_zz_z_10_1_reg ( .D(N31), .CK(clk), .Q(n_zz_z_10_1), .QN() );
  DFF_X1 u_zz_z_5_1_reg ( .D(N16), .CK(clk), .Q(n_zz_z_5_1), .QN() );
  DFF_X1 z_5_reg ( .D(N17), .CK(clk), .Q(z_5), .QN() );
  DFF_X1 u_zz_result_0_10_reg ( .D(port_r_10), .CK(clk), .Q(n_zz_result_0_10), 
        .QN() );
  DFF_X1 u_zz_result_0_11_reg ( .D(n_zz_result_0_10), .CK(clk), .Q(
        n_zz_result_0_11), .QN() );
  DFF_X1 u_zz_z_7_reg ( .D(N21), .CK(clk), .Q(n_zz_z_7), .QN() );
  DFF_X1 u_zz_result_0_8_reg ( .D(port_r_6), .CK(clk), .Q(n_zz_result_0_8), 
        .QN() );
  DFF_X1 u_zz_result_0_9_reg ( .D(n_zz_result_0_8), .CK(clk), .Q(
        n_zz_result_0_9), .QN() );
  DFF_X1 u_zz_result_0_6_reg ( .D(port_r_3), .CK(clk), .Q(n_zz_result_0_6), 
        .QN() );
  DFF_X1 u_zz_result_0_7_reg ( .D(n_zz_result_0_6), .CK(clk), .Q(
        n_zz_result_0_7), .QN() );
  DFF_X1 u_zz_z_4_1_reg ( .D(N13), .CK(clk), .Q(n_zz_z_4_1), .QN() );
  DFF_X1 z_4_reg ( .D(N14), .CK(clk), .Q(z_4), .QN() );
  DFF_X1 u_zz_result_0_4_reg ( .D(port_r_1), .CK(clk), .Q(n_zz_result_0_4), 
        .QN() );
  DFF_X1 u_zz_result_0_5_reg ( .D(n_zz_result_0_4), .CK(clk), .Q(
        n_zz_result_0_5), .QN() );
  DFF_X1 u_zz_z_2_1_reg ( .D(N7), .CK(clk), .Q(n_zz_z_2_1), .QN() );
  DFF_X1 z_2_reg ( .D(N8), .CK(clk), .Q(z_2), .QN() );
  DFF_X1 u_zz_result_0_2_reg ( .D(port_r_0), .CK(clk), .Q(n_zz_result_0_2), 
        .QN() );
  DFF_X1 u_zz_result_0_3_reg ( .D(n_zz_result_0_2), .CK(clk), .Q(
        n_zz_result_0_3), .QN() );
  DFF_X1 u_zz_result_0_reg ( .D(N45), .CK(clk), .Q(n_zz_result_0), .QN() );
  DFF_X1 u_zz_result_0_1_reg ( .D(n_zz_result_0), .CK(clk), .Q(n_zz_result_0_1), .QN() );
  DFF_X1 u_zz_z_1_reg ( .D(N3), .CK(clk), .Q(n_zz_z_1), .QN() );
  DFF_X1 z_1_reg ( .D(N5), .CK(clk), .Q(z_1), .QN() );
  DFF_X1 u_zz_z_14_1_reg ( .D(N43), .CK(clk), .Q(n_zz_z_14_1), .QN() );
  DFF_X1 u_zz_z_14_reg ( .D(N42), .CK(clk), .Q(n_zz_z_14), .QN() );
  DFF_X1 z_14_reg ( .D(N44), .CK(clk), .Q(z_14), .QN() );
  DFF_X1 u_zz_z_13_1_reg ( .D(N40), .CK(clk), .Q(n_zz_z_13_1), .QN() );
  DFF_X1 z_13_reg ( .D(N41), .CK(clk), .Q(z_13), .QN() );
  DFF_X1 u_zz_z_12_reg ( .D(N36), .CK(clk), .Q(n_zz_z_12), .QN() );
  DFF_X1 z_12_reg ( .D(N38), .CK(clk), .Q(z_12), .QN() );
  DFF_X1 u_zz_z_11_1_reg ( .D(N34), .CK(clk), .Q(n_zz_z_11_1), .QN() );
  DFF_X1 z_11_reg ( .D(N35), .CK(clk), .Q(z_11), .QN() );
  DFF_X1 u_zz_z_10_reg ( .D(N30), .CK(clk), .Q(n_zz_z_10), .QN() );
  DFF_X1 z_10_reg ( .D(N32), .CK(clk), .Q(z_10), .QN() );
  DFF_X1 u_zz_z_9_1_reg ( .D(N28), .CK(clk), .Q(n_zz_z_9_1), .QN() );
  DFF_X1 z_9_reg ( .D(N29), .CK(clk), .Q(z_9), .QN() );
  DFF_X1 u_zz_z_8_reg ( .D(N24), .CK(clk), .Q(n_zz_z_8), .QN() );
  DFF_X1 z_8_reg ( .D(N26), .CK(clk), .Q(z_8), .QN() );
  DFF_X1 u_zz_z_7_1_reg ( .D(N22), .CK(clk), .Q(n_zz_z_7_1), .QN() );
  DFF_X1 z_7_reg ( .D(N23), .CK(clk), .Q(z_7), .QN() );
  DFF_X1 u_zz_z_6_1_reg ( .D(N19), .CK(clk), .Q(n_zz_z_6_1), .QN() );
  DFF_X1 u_zz_z_6_reg ( .D(N18), .CK(clk), .Q(n_zz_z_6), .QN() );
  DFF_X1 z_6_reg ( .D(N20), .CK(clk), .Q(z_6), .QN() );
  DFF_X1 result_0_reg ( .D(N51), .CK(clk), .Q(port_c_0), .QN() );
  DFF_X1 result_1_reg ( .D(N52), .CK(clk), .Q(port_c_1), .QN() );
  DFF_X1 result_2_reg ( .D(N53), .CK(clk), .Q(port_c_2), .QN() );
  DFF_X1 result_3_reg ( .D(N54), .CK(clk), .Q(port_c_3), .QN() );
  DFF_X1 result_4_reg ( .D(N55), .CK(clk), .Q(port_c_4), .QN() );
  DFF_X1 result_5_reg ( .D(N56), .CK(clk), .Q(port_c_5), .QN() );
  NOR2_X1 U111 ( .A1(n4), .A2(n7), .ZN(N10) );
  NOR2_X1 U112 ( .A1(n5), .A2(n7), .ZN(N19) );
  NOR2_X1 U113 ( .A1(n5), .A2(n11), .ZN(N49) );
  NOR2_X1 U114 ( .A1(n6), .A2(n11), .ZN(N43) );
  NOR2_X1 U115 ( .A1(n9), .A2(n4), .ZN(N16) );
  NOR2_X1 U116 ( .A1(n6), .A2(n7), .ZN(N31) );
  NOR2_X1 U117 ( .A1(n9), .A2(n5), .ZN(N25) );
  NOR2_X1 U118 ( .A1(n9), .A2(n6), .ZN(N37) );
  NOR2_X1 U119 ( .A1(n6), .A2(n12), .ZN(N50) );
  NOR2_X1 U120 ( .A1(n8), .A2(n5), .ZN(N22) );
  NOR2_X1 U121 ( .A1(n8), .A2(n6), .ZN(N34) );
  NOR2_X1 U122 ( .A1(n8), .A2(n4), .ZN(N13) );
  NOR2_X1 U123 ( .A1(n8), .A2(n2), .ZN(N46) );
  NOR2_X1 U124 ( .A1(n2), .A2(n7), .ZN(N1) );
  NOR2_X1 U125 ( .A1(n10), .A2(n5), .ZN(N28) );
  NOR2_X1 U126 ( .A1(n10), .A2(n6), .ZN(N40) );
  NOR2_X1 U127 ( .A1(n3), .A2(n8), .ZN(N7) );
  NOR2_X1 U128 ( .A1(n3), .A2(n9), .ZN(N47) );
  NOR2_X1 U129 ( .A1(n10), .A2(n4), .ZN(N48) );
  NOR2_X1 U130 ( .A1(n3), .A2(n7), .ZN(N4) );
  NOR2_X1 U131 ( .A1(n1), .A2(n7), .ZN(N45) );
  XNOR2_X1 U132 ( .A(z_11), .B(z_10), .ZN(n17) );
  XNOR2_X1 U133 ( .A(z_6), .B(n_zz_result_4_3), .ZN(n21) );
  XNOR2_X1 U134 ( .A(n_zz_result_3_5), .B(n_zz_result_3_3), .ZN(n25) );
  XNOR2_X1 U135 ( .A(n_zz_result_2_5), .B(n_zz_result_2_3), .ZN(n29) );
  XNOR2_X1 U136 ( .A(n_zz_result_1_5), .B(n_zz_result_1_3), .ZN(n33) );
  XNOR2_X1 U137 ( .A(n_zz_result_0_3), .B(n_zz_result_0_11), .ZN(n37) );
  XOR2_X1 U138 ( .A(n_zz_z_6_1), .B(n_zz_z_6), .Z(N20) );
  XOR2_X1 U139 ( .A(n_zz_z_7_1), .B(n_zz_z_7), .Z(N23) );
  XOR2_X1 U140 ( .A(n_zz_z_8_1), .B(n_zz_z_8), .Z(N26) );
  XOR2_X1 U141 ( .A(n_zz_z_9_1), .B(n_zz_z_9), .Z(N29) );
  XOR2_X1 U142 ( .A(n_zz_z_10_1), .B(n_zz_z_10), .Z(N32) );
  XOR2_X1 U143 ( .A(n_zz_z_11_1), .B(n_zz_z_11), .Z(N35) );
  XOR2_X1 U144 ( .A(n_zz_z_12_1), .B(n_zz_z_12), .Z(N38) );
  XOR2_X1 U145 ( .A(n_zz_z_13_1), .B(n_zz_z_13), .Z(N41) );
  XOR2_X1 U146 ( .A(n_zz_z_14_1), .B(n_zz_z_14), .Z(N44) );
  XOR2_X1 U147 ( .A(n_zz_z_1_1), .B(n_zz_z_1), .Z(N5) );
  XOR2_X1 U148 ( .A(n_zz_z_2_1), .B(n_zz_z_2), .Z(N8) );
  XOR2_X1 U149 ( .A(n_zz_z_4_1), .B(n_zz_z_4), .Z(N14) );
  XOR2_X1 U150 ( .A(n_zz_z_5_1), .B(n_zz_z_5), .Z(N17) );
  XOR2_X1 U151 ( .A(n_zz_z_3_1), .B(n_zz_z_3), .Z(N11) );
  XOR2_X1 U152 ( .A(n_zz_z_0_1), .B(n_zz_z_0), .Z(N2) );
  XOR2_X1 U153 ( .A(n15), .B(n16), .Z(N56) );
  XOR2_X1 U154 ( .A(n18), .B(z_12), .Z(n15) );
  XOR2_X1 U155 ( .A(n17), .B(n_zz_result_5_1), .Z(n16) );
  XNOR2_X1 U156 ( .A(z_14), .B(z_13), .ZN(n18) );
  XOR2_X1 U157 ( .A(n19), .B(n20), .Z(N55) );
  XOR2_X1 U158 ( .A(n22), .B(z_7), .Z(n19) );
  XOR2_X1 U159 ( .A(n21), .B(n_zz_result_4_1), .Z(n20) );
  XNOR2_X1 U160 ( .A(z_9), .B(z_8), .ZN(n22) );
  XOR2_X1 U161 ( .A(n23), .B(n24), .Z(N54) );
  XOR2_X1 U162 ( .A(n26), .B(z_3), .Z(n23) );
  XOR2_X1 U163 ( .A(n25), .B(n_zz_result_3_1), .Z(n24) );
  XNOR2_X1 U164 ( .A(z_5), .B(z_4), .ZN(n26) );
  XOR2_X1 U165 ( .A(n27), .B(n28), .Z(N53) );
  XOR2_X1 U166 ( .A(n30), .B(n_zz_result_2_7), .Z(n27) );
  XOR2_X1 U167 ( .A(n29), .B(n_zz_result_2_1), .Z(n28) );
  XNOR2_X1 U168 ( .A(z_2), .B(z_1), .ZN(n30) );
  XOR2_X1 U169 ( .A(n31), .B(n32), .Z(N52) );
  XOR2_X1 U170 ( .A(n34), .B(n_zz_result_1_7), .Z(n31) );
  XOR2_X1 U171 ( .A(n33), .B(n_zz_result_1_1), .Z(n32) );
  XNOR2_X1 U172 ( .A(z_0), .B(n_zz_result_1_9), .ZN(n34) );
  XOR2_X1 U173 ( .A(n35), .B(n36), .Z(N51) );
  XOR2_X1 U174 ( .A(n38), .B(n_zz_result_0_5), .Z(n35) );
  XOR2_X1 U175 ( .A(n37), .B(n_zz_result_0_1), .Z(n36) );
  XNOR2_X1 U176 ( .A(n_zz_result_0_9), .B(n_zz_result_0_7), .ZN(n38) );
  INV_X1 U177 ( .A(port_b_0), .ZN(n7) );
  INV_X1 U178 ( .A(port_b_4), .ZN(n11) );
  INV_X1 U179 ( .A(port_a_3), .ZN(n4) );
  INV_X1 U180 ( .A(port_b_5), .ZN(n12) );
  INV_X1 U181 ( .A(port_a_4), .ZN(n5) );
  INV_X1 U182 ( .A(port_b_2), .ZN(n9) );
  INV_X1 U183 ( .A(port_a_5), .ZN(n6) );
  INV_X1 U184 ( .A(port_a_1), .ZN(n2) );
  INV_X1 U185 ( .A(port_b_1), .ZN(n8) );
  INV_X1 U186 ( .A(port_b_3), .ZN(n10) );
  INV_X1 U187 ( .A(port_a_2), .ZN(n3) );
  INV_X1 U188 ( .A(port_a_0), .ZN(n1) );
  XOR2_X1 U189 ( .A(port_r_6), .B(n48), .Z(N18) );
  NOR2_X1 U190 ( .A1(n1), .A2(n11), .ZN(n48) );
  XOR2_X1 U191 ( .A(port_r_8), .B(n46), .Z(N24) );
  NOR2_X1 U192 ( .A1(n3), .A2(n11), .ZN(n46) );
  XOR2_X1 U193 ( .A(port_r_10), .B(n43), .Z(N30) );
  NOR2_X1 U194 ( .A1(n1), .A2(n12), .ZN(n43) );
  XOR2_X1 U195 ( .A(port_r_12), .B(n41), .Z(N36) );
  NOR2_X1 U196 ( .A1(n3), .A2(n12), .ZN(n41) );
  XOR2_X1 U197 ( .A(port_r_14), .B(n39), .Z(N42) );
  NOR2_X1 U198 ( .A1(n12), .A2(n5), .ZN(n39) );
  XOR2_X1 U199 ( .A(port_r_1), .B(n44), .Z(N3) );
  NOR2_X1 U200 ( .A1(n1), .A2(n9), .ZN(n44) );
  XOR2_X1 U201 ( .A(port_r_7), .B(n47), .Z(N21) );
  NOR2_X1 U202 ( .A1(n2), .A2(n11), .ZN(n47) );
  XOR2_X1 U203 ( .A(port_r_3), .B(n13), .Z(N9) );
  NOR2_X1 U204 ( .A1(n1), .A2(n10), .ZN(n13) );
  XOR2_X1 U205 ( .A(port_r_5), .B(n49), .Z(N15) );
  NOR2_X1 U206 ( .A1(n10), .A2(n3), .ZN(n49) );
  XOR2_X1 U207 ( .A(port_r_4), .B(n50), .Z(N12) );
  NOR2_X1 U208 ( .A1(n10), .A2(n2), .ZN(n50) );
  XOR2_X1 U209 ( .A(port_r_11), .B(n42), .Z(N33) );
  NOR2_X1 U210 ( .A1(n2), .A2(n12), .ZN(n42) );
  XOR2_X1 U211 ( .A(port_r_9), .B(n45), .Z(N27) );
  NOR2_X1 U212 ( .A1(n11), .A2(n4), .ZN(n45) );
  XOR2_X1 U213 ( .A(port_r_2), .B(n14), .Z(N6) );
  NOR2_X1 U214 ( .A1(n2), .A2(n9), .ZN(n14) );
  XOR2_X1 U215 ( .A(port_r_0), .B(n51), .Z(N0) );
  NOR2_X1 U216 ( .A1(n1), .A2(n8), .ZN(n51) );
  XOR2_X1 U217 ( .A(port_r_13), .B(n40), .Z(N39) );
  NOR2_X1 U218 ( .A1(n12), .A2(n4), .ZN(n40) );
endmodule

