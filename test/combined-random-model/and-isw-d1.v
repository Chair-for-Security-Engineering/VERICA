
module and_isw ( port_a_0, port_a_1, port_b_0, port_b_1, port_r_0, port_c_0, 
        port_c_1, clk, reset );
  input port_a_0, port_a_1, port_b_0, port_b_1, port_r_0, clk, reset;
  output port_c_0, port_c_1;
  wire   N0, N1, n_zz_z_0, n_zz_z_0_1, N2, N3, n_zz_result_0, n_zz_result_0_2,
         N4, n_zz_result_1, n_zz_result_0_1, n_zz_result_0_3, N5,
         n_zz_result_1_1, z_0, N6, n1, n2, n3, n4, n5;

  DFF_X1 u_zz_result_0_reg ( .D(N3), .CK(clk), .Q(n_zz_result_0), .QN() );
  DFF_X1 u_zz_z_0_1_reg ( .D(N1), .CK(clk), .Q(n_zz_z_0_1), .QN() );
  DFF_X1 u_zz_result_0_1_reg ( .D(n_zz_result_0), .CK(clk), .Q(n_zz_result_0_1), .QN() );
  DFF_X1 u_zz_z_0_reg ( .D(N0), .CK(clk), .Q(n_zz_z_0), .QN() );
  DFF_X1 z_0_reg ( .D(N2), .CK(clk), .Q(z_0), .QN() );
  DFF_X1 u_zz_result_1_reg ( .D(N4), .CK(clk), .Q(n_zz_result_1), .QN() );
  DFF_X1 u_zz_result_1_1_reg ( .D(n_zz_result_1), .CK(clk), .Q(n_zz_result_1_1), .QN() );
  DFF_X1 u_zz_result_0_2_reg ( .D(port_r_0), .CK(clk), .Q(n_zz_result_0_2), 
        .QN() );
  DFF_X1 u_zz_result_0_3_reg ( .D(n_zz_result_0_2), .CK(clk), .Q(
        n_zz_result_0_3), .QN() );
  DFF_X1 result_0_reg ( .D(N5), .CK(clk), .Q(port_c_0), .QN() );
  DFF_X1 result_1_reg ( .D(N6), .CK(clk), .Q(port_c_1), .QN() );
  NOR2_X1 U15 ( .A1(n2), .A2(n3), .ZN(N1) );
  NOR2_X1 U16 ( .A1(n1), .A2(n3), .ZN(N3) );
  NOR2_X1 U17 ( .A1(n2), .A2(n4), .ZN(N4) );
  XOR2_X1 U18 ( .A(z_0), .B(n_zz_result_1_1), .Z(N6) );
  XOR2_X1 U19 ( .A(n_zz_result_0_3), .B(n_zz_result_0_1), .Z(N5) );
  XOR2_X1 U20 ( .A(n_zz_z_0_1), .B(n_zz_z_0), .Z(N2) );
  XOR2_X1 U21 ( .A(port_r_0), .B(n5), .Z(N0) );
  NOR2_X1 U22 ( .A1(n4), .A2(n1), .ZN(n5) );
  INV_X1 U23 ( .A(port_b_0), .ZN(n3) );
  INV_X1 U24 ( .A(port_a_0), .ZN(n1) );
  INV_X1 U25 ( .A(port_b_1), .ZN(n4) );
  INV_X1 U26 ( .A(port_a_1), .ZN(n2) );
endmodule

