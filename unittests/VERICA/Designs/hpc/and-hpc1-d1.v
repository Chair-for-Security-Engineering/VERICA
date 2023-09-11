
module And_gate ( clock_0, reset_0, io_i0_s0, io_i0_s1, io_i1_s0, io_i1_s1, 
        p_rand_0, p_rand_1, io_o0_s0, io_o0_s1 );
  input clock_0, reset_0, io_i0_s0, io_i0_s1, io_i1_s0, io_i1_s1, p_rand_0,
         p_rand_1;
  output io_o0_s0, io_o0_s1;
  wire   n_hpc2_0_n8, n_hpc2_0_n7, n_hpc2_0_n6, n_hpc2_0_n5, n_hpc2_0_n4,
         n_hpc2_0_n3, n_hpc2_0_n2, n_hpc2_0_n1, n_hpc2_0_N5, n_hpc2_0_N4,
         n_hpc2_0_N3, n_hpc2_0_N2, n_hpc2_0_reg_pipeline_1,
         n_hpc2_0_reg_pipeline_0, n_hpc2_0_reg_pipeline, n_hpc2_0_N1,
         n_hpc2_0_N0;

  XOR2_X1 u_hpc2_0_U12 ( .A(io_i1_s0), .B(p_rand_0), .Z(n_hpc2_0_N0) );
  XOR2_X1 u_hpc2_0_U11 ( .A(io_i1_s1), .B(p_rand_0), .Z(n_hpc2_0_N1) );
  AND2_X1 u_hpc2_0_U10 ( .A1(n_hpc2_0_n2), .A2(n_hpc2_0_reg_pipeline), .ZN(
        n_hpc2_0_N2) );
  NAND2_X1 u_hpc2_0_U9 ( .A1(n_hpc2_0_reg_pipeline), .A2(n_hpc2_0_n1), .ZN(
        n_hpc2_0_n4) );
  XNOR2_X1 u_hpc2_0_U8 ( .A(n_hpc2_0_reg_pipeline_0), .B(n_hpc2_0_n4), .ZN(
        n_hpc2_0_N3) );
  NAND2_X1 u_hpc2_0_U7 ( .A1(n_hpc2_0_reg_pipeline_1), .A2(n_hpc2_0_n2), .ZN(
        n_hpc2_0_n3) );
  XNOR2_X1 u_hpc2_0_U6 ( .A(n_hpc2_0_reg_pipeline_0), .B(n_hpc2_0_n3), .ZN(
        n_hpc2_0_N4) );
  AND2_X1 u_hpc2_0_U5 ( .A1(n_hpc2_0_n1), .A2(n_hpc2_0_reg_pipeline_1), .ZN(
        n_hpc2_0_N5) );
  XOR2_X1 u_hpc2_0_U4 ( .A(n_hpc2_0_n7), .B(n_hpc2_0_n8), .Z(io_o0_s0) );
  XOR2_X1 u_hpc2_0_U3 ( .A(n_hpc2_0_n5), .B(n_hpc2_0_n6), .Z(io_o0_s1) );
  DFF_X1 u_hpc2_0__hpc1_z01_reg ( .D(n_hpc2_0_N3), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n8) );
  DFF_X1 u_hpc2_0__hpc1_z00_reg ( .D(n_hpc2_0_N2), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n7) );
  DFF_X1 u_hpc2_0__hpc1_z11_reg ( .D(n_hpc2_0_N5), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n6) );
  DFF_X1 u_hpc2_0__hpc1_ref_v1_reg ( .D(n_hpc2_0_N1), .CK(clock_0), .Q(
        n_hpc2_0_n1), .QN() );
  DFF_X1 u_hpc2_0_reg_pipeline_reg ( .D(io_i0_s0), .CK(clock_0), .Q(
        n_hpc2_0_reg_pipeline), .QN() );
  DFF_X1 u_hpc2_0__hpc1_z10_reg ( .D(n_hpc2_0_N4), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n5) );
  DFF_X1 u_hpc2_0_reg_pipeline_1_reg ( .D(io_i0_s1), .CK(clock_0), .Q(
        n_hpc2_0_reg_pipeline_1), .QN() );
  DFF_X1 u_hpc2_0__hpc1_ref_v0_reg ( .D(n_hpc2_0_N0), .CK(clock_0), .Q(
        n_hpc2_0_n2), .QN() );
  DFF_X1 u_hpc2_0_reg_pipeline_0_reg ( .D(p_rand_1), .CK(clock_0), .Q(
        n_hpc2_0_reg_pipeline_0), .QN() );
endmodule

