
module and_isw ( port_a_0, port_a_1, port_a_2, port_b_0, port_b_1, port_b_2, 
        port_r_0, port_r_1, port_r_2, port_c_0, port_c_1, port_c_2, clk, reset
 );
  input port_a_0, port_a_1, port_a_2, port_b_0, port_b_1, port_b_2, port_r_0,
         port_r_1, port_r_2, clk, reset;
  output port_c_0, port_c_1, port_c_2;
  wire   N0, N1, n_zz_z_0, n_zz_z_0_1, N2, N3, N4, n_zz_z_1, n_zz_z_1_1, N5,
         N6, N7, n_zz_z_2, n_zz_z_2_1, N8, N9, n_zz_result_0, n_zz_result_0_2,
         n_zz_result_0_4, N10, n_zz_result_1, n_zz_result_1_2, N11,
         n_zz_result_2, n_zz_result_0_1, n_zz_result_0_3, n_zz_result_0_5, N12,
         n_zz_result_1_1, z_0, n_zz_result_1_3, N13, n_zz_result_2_1, z_1, z_2,
         N14, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  DFF_X1 u_zz_result_0_reg ( .D(N9), .CK(clk), .Q(n_zz_result_0), .QN() );
  DFF_X1 u_zz_z_0_1_reg ( .D(N1), .CK(clk), .Q(n_zz_z_0_1), .QN() );
  DFF_X1 u_zz_z_1_1_reg ( .D(N4), .CK(clk), .Q(n_zz_z_1_1), .QN() );
  DFF_X1 u_zz_z_0_reg ( .D(N0), .CK(clk), .Q(n_zz_z_0), .QN() );
  DFF_X1 z_0_reg ( .D(N2), .CK(clk), .Q(z_0), .QN() );
  DFF_X1 u_zz_result_2_reg ( .D(N11), .CK(clk), .Q(n_zz_result_2), .QN() );
  DFF_X1 u_zz_result_2_1_reg ( .D(n_zz_result_2), .CK(clk), .Q(n_zz_result_2_1), .QN() );
  DFF_X1 u_zz_z_2_1_reg ( .D(N7), .CK(clk), .Q(n_zz_z_2_1), .QN() );
  DFF_X1 u_zz_z_2_reg ( .D(N6), .CK(clk), .Q(n_zz_z_2), .QN() );
  DFF_X1 u_zz_result_1_2_reg ( .D(port_r_2), .CK(clk), .Q(n_zz_result_1_2), 
        .QN() );
  DFF_X1 u_zz_result_1_3_reg ( .D(n_zz_result_1_2), .CK(clk), .Q(
        n_zz_result_1_3), .QN() );
  DFF_X1 u_zz_result_1_reg ( .D(N10), .CK(clk), .Q(n_zz_result_1), .QN() );
  DFF_X1 u_zz_result_1_1_reg ( .D(n_zz_result_1), .CK(clk), .Q(n_zz_result_1_1), .QN() );
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
  DFF_X1 u_zz_result_0_1_reg ( .D(n_zz_result_0), .CK(clk), .Q(n_zz_result_0_1), .QN() );
  DFF_X1 z_2_reg ( .D(N8), .CK(clk), .Q(z_2), .QN() );
  DFF_X1 result_0_reg ( .D(N12), .CK(clk), .Q(port_c_0), .QN() );
  DFF_X1 result_1_reg ( .D(N13), .CK(clk), .Q(port_c_1), .QN() );
  DFF_X1 result_2_reg ( .D(N14), .CK(clk), .Q(port_c_2), .QN() );
  NOR2_X1 U30 ( .A1(n5), .A2(n2), .ZN(N10) );
  NOR2_X1 U31 ( .A1(n3), .A2(n5), .ZN(N7) );
  NOR2_X1 U32 ( .A1(n3), .A2(n6), .ZN(N11) );
  NOR2_X1 U33 ( .A1(n4), .A2(n3), .ZN(N4) );
  NOR2_X1 U34 ( .A1(n4), .A2(n2), .ZN(N1) );
  NOR2_X1 U35 ( .A1(n1), .A2(n4), .ZN(N9) );
  XOR2_X1 U36 ( .A(n_zz_result_2_1), .B(n9), .Z(N14) );
  XOR2_X1 U37 ( .A(z_2), .B(z_1), .Z(n9) );
  XOR2_X1 U38 ( .A(n_zz_result_1_1), .B(n10), .Z(N13) );
  XOR2_X1 U39 ( .A(z_0), .B(n_zz_result_1_3), .Z(n10) );
  XOR2_X1 U40 ( .A(n_zz_result_0_1), .B(n11), .Z(N12) );
  XOR2_X1 U41 ( .A(n_zz_result_0_5), .B(n_zz_result_0_3), .Z(n11) );
  XOR2_X1 U42 ( .A(n_zz_z_2_1), .B(n_zz_z_2), .Z(N8) );
  XOR2_X1 U43 ( .A(n_zz_z_1_1), .B(n_zz_z_1), .Z(N5) );
  XOR2_X1 U44 ( .A(n_zz_z_0_1), .B(n_zz_z_0), .Z(N2) );
  INV_X1 U45 ( .A(port_b_2), .ZN(n6) );
  INV_X1 U46 ( .A(port_b_1), .ZN(n5) );
  INV_X1 U47 ( .A(port_a_1), .ZN(n2) );
  INV_X1 U48 ( .A(port_a_2), .ZN(n3) );
  INV_X1 U49 ( .A(port_b_0), .ZN(n4) );
  XOR2_X1 U50 ( .A(port_r_1), .B(n8), .Z(N3) );
  NOR2_X1 U51 ( .A1(n1), .A2(n6), .ZN(n8) );
  XOR2_X1 U52 ( .A(port_r_2), .B(n7), .Z(N6) );
  NOR2_X1 U53 ( .A1(n2), .A2(n6), .ZN(n7) );
  XOR2_X1 U54 ( .A(port_r_0), .B(n12), .Z(N0) );
  NOR2_X1 U55 ( .A1(n1), .A2(n5), .ZN(n12) );
  INV_X1 U56 ( .A(port_a_0), .ZN(n1) );
endmodule

