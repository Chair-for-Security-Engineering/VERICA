
module And_gate ( clock_0, reset_0, io_i0_s0, io_i0_s1, io_i0_s2, io_i1_s0, 
        io_i1_s1, io_i1_s2, p_rand_0, p_rand_1, p_rand_2, io_o0_s0, io_o0_s1, 
        io_o0_s2 );
  input clock_0, reset_0, io_i0_s0, io_i0_s1, io_i0_s2, io_i1_s0, io_i1_s1,
         io_i1_s2, p_rand_0, p_rand_1, p_rand_2;
  output io_o0_s0, io_o0_s1, io_o0_s2;
  wire   n_dom_0_n15, n_dom_0_n14, n_dom_0_n13, n_dom_0_n12, n_dom_0_n11,
         n_dom_0_n10, n_dom_0_n9, n_dom_0_n8, n_dom_0_n7, n_dom_0_n6,
         n_dom_0_n5, n_dom_0_n4, n_dom_0_n3, n_dom_0_n2, n_dom_0_n1,
         n_dom_0_N11, n_dom_0_N10, n_dom_0_N9, n_dom_0_N8,
         n_dom_0_reg_pipeline, n_dom_0_N7, n_dom_0_reg_pipeline_1, n_dom_0_N6,
         n_dom_0_reg_pipeline_3, n_dom_0_N5, n_dom_0_N4, n_dom_0_N3,
         n_dom_0_N2, n_dom_0_N1, n_dom_0_N0;

  NAND2_X1 u_dom_0_U23 ( .A1(io_i0_s0), .A2(io_i1_s2), .ZN(n_dom_0_n9) );
  XNOR2_X1 u_dom_0_U22 ( .A(p_rand_1), .B(n_dom_0_n9), .ZN(n_dom_0_N0) );
  NAND2_X1 u_dom_0_U21 ( .A1(io_i0_s0), .A2(io_i1_s1), .ZN(n_dom_0_n8) );
  XNOR2_X1 u_dom_0_U20 ( .A(p_rand_0), .B(n_dom_0_n8), .ZN(n_dom_0_N1) );
  AND2_X1 u_dom_0_U19 ( .A1(io_i1_s1), .A2(io_i0_s1), .ZN(n_dom_0_N10) );
  AND2_X1 u_dom_0_U18 ( .A1(io_i1_s0), .A2(io_i0_s0), .ZN(n_dom_0_N11) );
  NAND2_X1 u_dom_0_U17 ( .A1(io_i0_s1), .A2(io_i1_s2), .ZN(n_dom_0_n7) );
  XNOR2_X1 u_dom_0_U16 ( .A(p_rand_2), .B(n_dom_0_n7), .ZN(n_dom_0_N2) );
  NAND2_X1 u_dom_0_U15 ( .A1(io_i0_s1), .A2(io_i1_s0), .ZN(n_dom_0_n6) );
  XNOR2_X1 u_dom_0_U14 ( .A(p_rand_0), .B(n_dom_0_n6), .ZN(n_dom_0_N3) );
  NAND2_X1 u_dom_0_U13 ( .A1(io_i1_s1), .A2(io_i0_s2), .ZN(n_dom_0_n5) );
  XNOR2_X1 u_dom_0_U12 ( .A(p_rand_2), .B(n_dom_0_n5), .ZN(n_dom_0_N4) );
  NAND2_X1 u_dom_0_U11 ( .A1(io_i1_s0), .A2(io_i0_s2), .ZN(n_dom_0_n4) );
  XNOR2_X1 u_dom_0_U10 ( .A(p_rand_1), .B(n_dom_0_n4), .ZN(n_dom_0_N5) );
  XOR2_X1 u_dom_0_U9 ( .A(n_dom_0_reg_pipeline_3), .B(n_dom_0_n14), .Z(
        n_dom_0_n3) );
  XOR2_X1 u_dom_0_U8 ( .A(n_dom_0_n15), .B(n_dom_0_n3), .Z(n_dom_0_N6) );
  XOR2_X1 u_dom_0_U7 ( .A(n_dom_0_reg_pipeline_1), .B(n_dom_0_n12), .Z(
        n_dom_0_n2) );
  XOR2_X1 u_dom_0_U6 ( .A(n_dom_0_n13), .B(n_dom_0_n2), .Z(n_dom_0_N7) );
  XOR2_X1 u_dom_0_U5 ( .A(n_dom_0_reg_pipeline), .B(n_dom_0_n10), .Z(
        n_dom_0_n1) );
  XOR2_X1 u_dom_0_U4 ( .A(n_dom_0_n11), .B(n_dom_0_n1), .Z(n_dom_0_N8) );
  AND2_X1 u_dom_0_U3 ( .A1(io_i0_s2), .A2(io_i1_s2), .ZN(n_dom_0_N9) );
  DFF_X1 u_dom_0_dom_out2_reg ( .D(n_dom_0_N8), .CK(clock_0), .Q(io_o0_s2), 
        .QN() );
  DFF_X1 u_dom_0_reg_pipeline_reg ( .D(n_dom_0_N9), .CK(clock_0), .Q(
        n_dom_0_reg_pipeline), .QN() );
  DFF_X1 u_dom_0__dom_inter2_reg ( .D(n_dom_0_N4), .CK(clock_0), .Q(), .QN(
        n_dom_0_n10) );
  DFF_X1 u_dom_0_dom_out1_reg ( .D(n_dom_0_N7), .CK(clock_0), .Q(io_o0_s1), 
        .QN() );
  DFF_X1 u_dom_0_reg_pipeline_1_reg ( .D(n_dom_0_N10), .CK(clock_0), .Q(
        n_dom_0_reg_pipeline_1), .QN() );
  DFF_X1 u_dom_0__dom_inter1_reg ( .D(n_dom_0_N2), .CK(clock_0), .Q(), .QN(
        n_dom_0_n12) );
  DFF_X1 u_dom_0_dom_out0_reg ( .D(n_dom_0_N6), .CK(clock_0), .Q(io_o0_s0), 
        .QN() );
  DFF_X1 u_dom_0_reg_pipeline_3_reg ( .D(n_dom_0_N11), .CK(clock_0), .Q(
        n_dom_0_reg_pipeline_3), .QN() );
  DFF_X1 u_dom_0__dom_inter1_2_reg ( .D(n_dom_0_N3), .CK(clock_0), .Q(), .QN(
        n_dom_0_n13) );
  DFF_X1 u_dom_0__dom_inter0_reg ( .D(n_dom_0_N0), .CK(clock_0), .Q(), .QN(
        n_dom_0_n14) );
  DFF_X1 u_dom_0__dom_inter0_4_reg ( .D(n_dom_0_N1), .CK(clock_0), .Q(), .QN(
        n_dom_0_n15) );
  DFF_X1 u_dom_0__dom_inter2_0_reg ( .D(n_dom_0_N5), .CK(clock_0), .Q(), .QN(
        n_dom_0_n11) );
endmodule

