
module And_gate ( clock_0, reset_0, io_i0_s0, io_i0_s1, io_i0_s2, io_i0_s3, 
        io_i1_s0, io_i1_s1, io_i1_s2, io_i1_s3, p_rand_0, p_rand_1, p_rand_2, 
        p_rand_3, p_rand_4, p_rand_5, io_o0_s0, io_o0_s1, io_o0_s2, io_o0_s3
 );
  input clock_0, reset_0, io_i0_s0, io_i0_s1, io_i0_s2, io_i0_s3, io_i1_s0,
         io_i1_s1, io_i1_s2, io_i1_s3, p_rand_0, p_rand_1, p_rand_2, p_rand_3,
         p_rand_4, p_rand_5;
  output io_o0_s0, io_o0_s1, io_o0_s2, io_o0_s3;
  wire   n_dom_0_n28, n_dom_0_n27, n_dom_0_n26, n_dom_0_n25, n_dom_0_n24,
         n_dom_0_n23, n_dom_0_n22, n_dom_0_n21, n_dom_0_n20, n_dom_0_n19,
         n_dom_0_n18, n_dom_0_n17, n_dom_0_n16, n_dom_0_n15, n_dom_0_n14,
         n_dom_0_n13, n_dom_0_n12, n_dom_0_n11, n_dom_0_n10, n_dom_0_n9,
         n_dom_0_n8, n_dom_0_n7, n_dom_0_n6, n_dom_0_n5, n_dom_0_n4,
         n_dom_0_n3, n_dom_0_n2, n_dom_0_n1, n_dom_0_N19, n_dom_0_N18,
         n_dom_0_N17, n_dom_0_N16, n_dom_0_N15, n_dom_0__dom_inter3_1,
         n_dom_0_reg_pipeline, n_dom_0_N14, n_dom_0__dom_inter2_4,
         n_dom_0_reg_pipeline_2, n_dom_0_N13, n_dom_0__dom_inter1_7,
         n_dom_0_reg_pipeline_5, n_dom_0_N12, n_dom_0__dom_inter0_9,
         n_dom_0_reg_pipeline_8, n_dom_0_N11, n_dom_0_N10, n_dom_0_N9,
         n_dom_0_N8, n_dom_0_N7, n_dom_0_N6, n_dom_0_N5, n_dom_0_N4,
         n_dom_0_N3, n_dom_0_N2, n_dom_0_N1, n_dom_0_N0;

  NAND2_X1 u_dom_0_U42 ( .A1(io_i0_s0), .A2(io_i1_s3), .ZN(n_dom_0_n20) );
  XNOR2_X1 u_dom_0_U41 ( .A(p_rand_2), .B(n_dom_0_n20), .ZN(n_dom_0_N0) );
  NAND2_X1 u_dom_0_U40 ( .A1(io_i0_s0), .A2(io_i1_s1), .ZN(n_dom_0_n19) );
  XNOR2_X1 u_dom_0_U39 ( .A(p_rand_0), .B(n_dom_0_n19), .ZN(n_dom_0_N1) );
  NAND2_X1 u_dom_0_U38 ( .A1(io_i1_s1), .A2(io_i0_s3), .ZN(n_dom_0_n18) );
  XNOR2_X1 u_dom_0_U37 ( .A(p_rand_4), .B(n_dom_0_n18), .ZN(n_dom_0_N10) );
  NAND2_X1 u_dom_0_U36 ( .A1(io_i1_s0), .A2(io_i0_s3), .ZN(n_dom_0_n17) );
  XNOR2_X1 u_dom_0_U35 ( .A(p_rand_2), .B(n_dom_0_n17), .ZN(n_dom_0_N11) );
  XOR2_X1 u_dom_0_U34 ( .A(n_dom_0__dom_inter0_9), .B(n_dom_0_n28), .Z(
        n_dom_0_n15) );
  XOR2_X1 u_dom_0_U33 ( .A(n_dom_0_reg_pipeline_8), .B(n_dom_0_n27), .Z(
        n_dom_0_n16) );
  XOR2_X1 u_dom_0_U32 ( .A(n_dom_0_n15), .B(n_dom_0_n16), .Z(n_dom_0_N12) );
  XOR2_X1 u_dom_0_U31 ( .A(n_dom_0__dom_inter1_7), .B(n_dom_0_n26), .Z(
        n_dom_0_n13) );
  XOR2_X1 u_dom_0_U30 ( .A(n_dom_0_reg_pipeline_5), .B(n_dom_0_n25), .Z(
        n_dom_0_n14) );
  XOR2_X1 u_dom_0_U29 ( .A(n_dom_0_n13), .B(n_dom_0_n14), .Z(n_dom_0_N13) );
  XOR2_X1 u_dom_0_U28 ( .A(n_dom_0__dom_inter2_4), .B(n_dom_0_n24), .Z(
        n_dom_0_n11) );
  XOR2_X1 u_dom_0_U27 ( .A(n_dom_0_reg_pipeline_2), .B(n_dom_0_n23), .Z(
        n_dom_0_n12) );
  XOR2_X1 u_dom_0_U26 ( .A(n_dom_0_n11), .B(n_dom_0_n12), .Z(n_dom_0_N14) );
  XOR2_X1 u_dom_0_U25 ( .A(n_dom_0__dom_inter3_1), .B(n_dom_0_n22), .Z(
        n_dom_0_n9) );
  XOR2_X1 u_dom_0_U24 ( .A(n_dom_0_reg_pipeline), .B(n_dom_0_n21), .Z(
        n_dom_0_n10) );
  XOR2_X1 u_dom_0_U23 ( .A(n_dom_0_n9), .B(n_dom_0_n10), .Z(n_dom_0_N15) );
  AND2_X1 u_dom_0_U22 ( .A1(io_i0_s3), .A2(io_i1_s3), .ZN(n_dom_0_N16) );
  AND2_X1 u_dom_0_U21 ( .A1(io_i1_s2), .A2(io_i0_s2), .ZN(n_dom_0_N17) );
  AND2_X1 u_dom_0_U20 ( .A1(io_i1_s1), .A2(io_i0_s1), .ZN(n_dom_0_N18) );
  AND2_X1 u_dom_0_U19 ( .A1(io_i1_s0), .A2(io_i0_s0), .ZN(n_dom_0_N19) );
  NAND2_X1 u_dom_0_U18 ( .A1(io_i0_s0), .A2(io_i1_s2), .ZN(n_dom_0_n8) );
  XNOR2_X1 u_dom_0_U17 ( .A(p_rand_1), .B(n_dom_0_n8), .ZN(n_dom_0_N2) );
  NAND2_X1 u_dom_0_U16 ( .A1(io_i0_s1), .A2(io_i1_s3), .ZN(n_dom_0_n7) );
  XNOR2_X1 u_dom_0_U15 ( .A(p_rand_4), .B(n_dom_0_n7), .ZN(n_dom_0_N3) );
  NAND2_X1 u_dom_0_U14 ( .A1(io_i0_s1), .A2(io_i1_s2), .ZN(n_dom_0_n6) );
  XNOR2_X1 u_dom_0_U13 ( .A(p_rand_3), .B(n_dom_0_n6), .ZN(n_dom_0_N4) );
  NAND2_X1 u_dom_0_U12 ( .A1(io_i0_s1), .A2(io_i1_s0), .ZN(n_dom_0_n5) );
  XNOR2_X1 u_dom_0_U11 ( .A(p_rand_0), .B(n_dom_0_n5), .ZN(n_dom_0_N5) );
  NAND2_X1 u_dom_0_U10 ( .A1(io_i1_s3), .A2(io_i0_s2), .ZN(n_dom_0_n4) );
  XNOR2_X1 u_dom_0_U9 ( .A(p_rand_5), .B(n_dom_0_n4), .ZN(n_dom_0_N6) );
  NAND2_X1 u_dom_0_U8 ( .A1(io_i1_s1), .A2(io_i0_s2), .ZN(n_dom_0_n3) );
  XNOR2_X1 u_dom_0_U7 ( .A(p_rand_3), .B(n_dom_0_n3), .ZN(n_dom_0_N7) );
  NAND2_X1 u_dom_0_U6 ( .A1(io_i1_s0), .A2(io_i0_s2), .ZN(n_dom_0_n2) );
  XNOR2_X1 u_dom_0_U5 ( .A(p_rand_1), .B(n_dom_0_n2), .ZN(n_dom_0_N8) );
  NAND2_X1 u_dom_0_U4 ( .A1(io_i1_s2), .A2(io_i0_s3), .ZN(n_dom_0_n1) );
  XNOR2_X1 u_dom_0_U3 ( .A(p_rand_5), .B(n_dom_0_n1), .ZN(n_dom_0_N9) );
  DFF_X1 u_dom_0_dom_out1_reg ( .D(n_dom_0_N13), .CK(clock_0), .Q(io_o0_s1), 
        .QN() );
  DFF_X1 u_dom_0_reg_pipeline_5_reg ( .D(n_dom_0_N18), .CK(clock_0), .Q(
        n_dom_0_reg_pipeline_5), .QN() );
  DFF_X1 u_dom_0_dom_out0_reg ( .D(n_dom_0_N12), .CK(clock_0), .Q(io_o0_s0), 
        .QN() );
  DFF_X1 u_dom_0__dom_inter0_reg ( .D(n_dom_0_N0), .CK(clock_0), .Q(), .QN(
        n_dom_0_n27) );
  DFF_X1 u_dom_0__dom_inter0_9_reg ( .D(n_dom_0_N2), .CK(clock_0), .Q(
        n_dom_0__dom_inter0_9), .QN() );
  DFF_X1 u_dom_0_dom_out2_reg ( .D(n_dom_0_N14), .CK(clock_0), .Q(io_o0_s2), 
        .QN() );
  DFF_X1 u_dom_0_reg_pipeline_2_reg ( .D(n_dom_0_N17), .CK(clock_0), .Q(
        n_dom_0_reg_pipeline_2), .QN() );
  DFF_X1 u_dom_0__dom_inter2_reg ( .D(n_dom_0_N6), .CK(clock_0), .Q(), .QN(
        n_dom_0_n23) );
  DFF_X1 u_dom_0_dom_out3_reg ( .D(n_dom_0_N15), .CK(clock_0), .Q(io_o0_s3), 
        .QN() );
  DFF_X1 u_dom_0_reg_pipeline_reg ( .D(n_dom_0_N16), .CK(clock_0), .Q(
        n_dom_0_reg_pipeline), .QN() );
  DFF_X1 u_dom_0__dom_inter3_reg ( .D(n_dom_0_N9), .CK(clock_0), .Q(), .QN(
        n_dom_0_n21) );
  DFF_X1 u_dom_0__dom_inter3_1_reg ( .D(n_dom_0_N11), .CK(clock_0), .Q(
        n_dom_0__dom_inter3_1), .QN() );
  DFF_X1 u_dom_0__dom_inter1_6_reg ( .D(n_dom_0_N4), .CK(clock_0), .Q(), .QN(
        n_dom_0_n26) );
  DFF_X1 u_dom_0__dom_inter3_0_reg ( .D(n_dom_0_N10), .CK(clock_0), .Q(), .QN(
        n_dom_0_n22) );
  DFF_X1 u_dom_0__dom_inter1_reg ( .D(n_dom_0_N3), .CK(clock_0), .Q(), .QN(
        n_dom_0_n25) );
  DFF_X1 u_dom_0__dom_inter2_4_reg ( .D(n_dom_0_N8), .CK(clock_0), .Q(
        n_dom_0__dom_inter2_4), .QN() );
  DFF_X1 u_dom_0__dom_inter1_7_reg ( .D(n_dom_0_N5), .CK(clock_0), .Q(
        n_dom_0__dom_inter1_7), .QN() );
  DFF_X1 u_dom_0_reg_pipeline_8_reg ( .D(n_dom_0_N19), .CK(clock_0), .Q(
        n_dom_0_reg_pipeline_8), .QN() );
  DFF_X1 u_dom_0__dom_inter0_10_reg ( .D(n_dom_0_N1), .CK(clock_0), .Q(), .QN(
        n_dom_0_n28) );
  DFF_X1 u_dom_0__dom_inter2_3_reg ( .D(n_dom_0_N7), .CK(clock_0), .Q(), .QN(
        n_dom_0_n24) );
endmodule

