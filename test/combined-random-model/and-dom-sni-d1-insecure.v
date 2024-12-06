module And_gate ( clock_0, reset_0, io_i0_s0, io_i0_s1, io_i1_s0, io_i1_s1, 
        p_rand_0, io_o0_s0, io_o0_s1 );
  input clock_0, reset_0, io_i0_s0, io_i0_s1, io_i1_s0, io_i1_s1, p_rand_0;
  output io_o0_s0, io_o0_s1;
  wire   n_dom_0_n2, n_dom_0_n1, n_dom_0_N5, n_dom_0_N4, n_dom_0_N3,
         n_dom_0__dom_inter1, n_dom_0_reg_pipeline, n_dom_0_N2,
         n_dom_0__dom_inter0, n_dom_0_reg_pipeline_0, n_dom_0_N1, n_dom_0_N0;

  NAND2_X1 u_dom_0_U10 ( .A1(io_i1_s1), .A2(io_i0_s0), .ZN(n_dom_0_n2) );
  BUF_X1 test_buf_01 ( .A(n_dom_0_n2), .Z(n_dom_0_N0));
  NAND2_X1 u_dom_0_U8 ( .A1(io_i0_s1), .A2(io_i1_s0), .ZN(n_dom_0_n1) );
  BUF_X1 test_buf_02 ( .A(n_dom_0_n1), .Z(n_dom_0_N1));
  XOR2_X1 u_dom_0_U6 ( .A(n_dom_0__dom_inter0), .B(n_dom_0_reg_pipeline_0), 
        .Z(n_dom_0_N2) );
  XOR2_X1 u_dom_0_U5 ( .A(n_dom_0__dom_inter1), .B(n_dom_0_reg_pipeline), .Z(
        n_dom_0_N3) );
  AND2_X1 u_dom_0_U4 ( .A1(io_i0_s1), .A2(io_i1_s1), .ZN(n_dom_0_N4) );
  AND2_X1 u_dom_0_U3 ( .A1(io_i0_s0), .A2(io_i1_s0), .ZN(n_dom_0_N5) );
  DFF_X1 u_dom_0_dom_out0_reg ( .D(n_dom_0_N2), .CK(clock_0), .Q(io_o0_s0), 
        .QN() );
  DFF_X1 u_dom_0_reg_pipeline_0_reg ( .D(n_dom_0_N5), .CK(clock_0), .Q(
        n_dom_0_reg_pipeline_0), .QN() );
  DFF_X1 u_dom_0__dom_inter0_reg ( .D(n_dom_0_N0), .CK(clock_0), .Q(
        n_dom_0__dom_inter0), .QN() );
  DFF_X1 u_dom_0_dom_out1_reg ( .D(n_dom_0_N3), .CK(clock_0), .Q(io_o0_s1), 
        .QN() );
  DFF_X1 u_dom_0__dom_inter1_reg ( .D(n_dom_0_N1), .CK(clock_0), .Q(
        n_dom_0__dom_inter1), .QN() );
  DFF_X1 u_dom_0_reg_pipeline_reg ( .D(n_dom_0_N4), .CK(clock_0), .Q(
        n_dom_0_reg_pipeline), .QN() );
endmodule
