
module And_gate ( clock_0, reset_0, io_i0_s0, io_i0_s1, io_i1_s0, io_i1_s1, 
        p_rand_0, io_o0_s0, io_o0_s1 );
  input clock_0, reset_0, io_i0_s0, io_i0_s1, io_i1_s0, io_i1_s1, p_rand_0;
  output io_o0_s0, io_o0_s1;
  wire   n_hpc2_0_n17, n_hpc2_0_n16, n_hpc2_0_n15, n_hpc2_0_n14, n_hpc2_0_n13,
         n_hpc2_0_n12, n_hpc2_0_n11, n_hpc2_0_n10, n_hpc2_0_n9, n_hpc2_0_n8,
         n_hpc2_0_n7, n_hpc2_0_n6, n_hpc2_0_n5, n_hpc2_0_n4, n_hpc2_0_n3,
         n_hpc2_0_n2, n_hpc2_0_n1, n_hpc2_0_N7, n_hpc2_0_N6, n_hpc2_0_N5,
         n_hpc2_0_N4, n_hpc2_0_N3, n_hpc2_0_N2, n_hpc2_0_N1, n_hpc2_0_N0,
         n_hpc2_0__hpc_av10, n_hpc2_0__hpc_av01;

  NOR2_X1 u_hpc2_0_U16 ( .A1(n_hpc2_0_n17), .A2(n_hpc2_0_n4), .ZN(n_hpc2_0_N0)
         );
  NOR2_X1 u_hpc2_0_U15 ( .A1(n_hpc2_0_n16), .A2(n_hpc2_0_n3), .ZN(n_hpc2_0_N1)
         );
  NOR2_X1 u_hpc2_0_U14 ( .A1(n_hpc2_0_n15), .A2(n_hpc2_0_n4), .ZN(n_hpc2_0_N2)
         );
  NOR2_X1 u_hpc2_0_U13 ( .A1(n_hpc2_0_n14), .A2(n_hpc2_0_n3), .ZN(n_hpc2_0_N3)
         );
  NOR2_X1 u_hpc2_0_U12 ( .A1(n_hpc2_0_n12), .A2(n_hpc2_0_n13), .ZN(n_hpc2_0_N4) );
  NOR2_X1 u_hpc2_0_U11 ( .A1(n_hpc2_0_n12), .A2(n_hpc2_0_n11), .ZN(n_hpc2_0_N5) );
  XOR2_X1 u_hpc2_0_U10 ( .A(io_i1_s1), .B(p_rand_0), .Z(n_hpc2_0_N6) );
  XOR2_X1 u_hpc2_0_U9 ( .A(io_i1_s0), .B(p_rand_0), .Z(n_hpc2_0_N7) );
  INV_X1 u_hpc2_0_U8 ( .A(io_i0_s0), .ZN(n_hpc2_0_n1) );
  INV_X1 u_hpc2_0_U7 ( .A(io_i0_s1), .ZN(n_hpc2_0_n2) );
  XOR2_X1 u_hpc2_0_U6 ( .A(n_hpc2_0__hpc_av01), .B(n_hpc2_0_n9), .Z(
        n_hpc2_0_n6) );
  XOR2_X1 u_hpc2_0_U5 ( .A(n_hpc2_0_n6), .B(n_hpc2_0_n10), .Z(io_o0_s0) );
  XOR2_X1 u_hpc2_0_U4 ( .A(n_hpc2_0__hpc_av10), .B(n_hpc2_0_n7), .Z(
        n_hpc2_0_n5) );
  XOR2_X1 u_hpc2_0_U3 ( .A(n_hpc2_0_n5), .B(n_hpc2_0_n8), .Z(io_o0_s1) );
  DFF_X1 u_hpc2_0__hpc_u01_reg ( .D(n_hpc2_0_N4), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n10) );
  DFF_X1 u_hpc2_0__hpc_ab1_reg ( .D(n_hpc2_0_N1), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n7) );
  DFF_X1 u_hpc2_0__hpc_b1_reg ( .D(io_i1_s1), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n16) );
  DFF_X1 u_hpc2_0__hpc_ab0_reg ( .D(n_hpc2_0_N0), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n9) );
  DFF_X1 u_hpc2_0__hpc_b0_reg ( .D(io_i1_s0), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n17) );
  DFF_X1 u_hpc2_0__hpc_av10_reg ( .D(n_hpc2_0_N3), .CK(clock_0), .Q(
        n_hpc2_0__hpc_av10), .QN() );
  DFF_X1 u_hpc2_0__hpc_av01_reg ( .D(n_hpc2_0_N2), .CK(clock_0), .Q(
        n_hpc2_0__hpc_av01), .QN() );
  DFF_X1 u_hpc2_0__hpc_v10_reg ( .D(n_hpc2_0_N7), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n14) );
  DFF_X1 u_hpc2_0__hpc_v01_reg ( .D(n_hpc2_0_N6), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n15) );
  DFF_X1 u_hpc2_0_reg_pipeline_1_reg ( .D(io_i0_s0), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n4) );
  DFF_X1 u_hpc2_0__hpc_u10_reg ( .D(n_hpc2_0_N5), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n8) );
  DFF_X1 u_hpc2_0_reg_pipeline_0_reg ( .D(n_hpc2_0_n1), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n13) );
  DFF_X1 u_hpc2_0_reg_pipeline_reg ( .D(n_hpc2_0_n2), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n11) );
  DFF_X1 u_hpc2_0_reg_pipeline_2_reg ( .D(io_i0_s1), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n3) );
  DFF_X1 u_hpc2_0__hpc_r0_reg ( .D(p_rand_0), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n12) );
endmodule

