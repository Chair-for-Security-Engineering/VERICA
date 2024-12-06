
module And_gate ( clock_0, reset_0, io_i0_s0, io_i0_s1, io_i0_s2, io_i0_s3, 
        io_i1_s0, io_i1_s1, io_i1_s2, io_i1_s3, p_rand_0, p_rand_1, p_rand_2, 
        p_rand_3, p_rand_4, p_rand_5, p_rand_6, p_rand_7, p_rand_8, p_rand_9, 
        p_rand_10, p_rand_11, io_o0_s0, io_o0_s1, io_o0_s2, io_o0_s3 );
  input clock_0, reset_0, io_i0_s0, io_i0_s1, io_i0_s2, io_i0_s3, io_i1_s0,
         io_i1_s1, io_i1_s2, io_i1_s3, p_rand_0, p_rand_1, p_rand_2, p_rand_3,
         p_rand_4, p_rand_5, p_rand_6, p_rand_7, p_rand_8, p_rand_9, p_rand_10,
         p_rand_11;
  output io_o0_s0, io_o0_s1, io_o0_s2, io_o0_s3;
  wire   n_hpc2_0_n48, n_hpc2_0_n47, n_hpc2_0_n46, n_hpc2_0_n45, n_hpc2_0_n44,
         n_hpc2_0_n43, n_hpc2_0_n42, n_hpc2_0_n41, n_hpc2_0_n40, n_hpc2_0_n39,
         n_hpc2_0_n38, n_hpc2_0_n37, n_hpc2_0_n36, n_hpc2_0_n35, n_hpc2_0_n34,
         n_hpc2_0_n33, n_hpc2_0_n32, n_hpc2_0_n31, n_hpc2_0_n30, n_hpc2_0_n29,
         n_hpc2_0_n28, n_hpc2_0_n27, n_hpc2_0_n26, n_hpc2_0_n25, n_hpc2_0_n24,
         n_hpc2_0_n23, n_hpc2_0_n22, n_hpc2_0_n21, n_hpc2_0_n20, n_hpc2_0_n19,
         n_hpc2_0_n18, n_hpc2_0_n17, n_hpc2_0_n16, n_hpc2_0_n15, n_hpc2_0_n14,
         n_hpc2_0_n13, n_hpc2_0_n12, n_hpc2_0_n11, n_hpc2_0_n10, n_hpc2_0_n9,
         n_hpc2_0_n8, n_hpc2_0_n7, n_hpc2_0_n6, n_hpc2_0_n5, n_hpc2_0_n4,
         n_hpc2_0_n3, n_hpc2_0_n2, n_hpc2_0_n1, n_hpc2_0_N19, n_hpc2_0_N18,
         n_hpc2_0_N17, n_hpc2_0_N16, n_hpc2_0_N15, n_hpc2_0_N14, n_hpc2_0_N13,
         n_hpc2_0_N12, n_hpc2_0_N11, n_hpc2_0_N10, n_hpc2_0_N9, n_hpc2_0_N8,
         n_hpc2_0_N7, n_hpc2_0_N6, n_hpc2_0_N5, n_hpc2_0_N4,
         n_hpc2_0_reg_pipeline_8, n_hpc2_0_reg_pipeline_7,
         n_hpc2_0_reg_pipeline_6, n_hpc2_0_reg_pipeline_5,
         n_hpc2_0_reg_pipeline_4, n_hpc2_0_reg_pipeline_3,
         n_hpc2_0_reg_pipeline_2, n_hpc2_0_reg_pipeline_1,
         n_hpc2_0_reg_pipeline_0, n_hpc2_0_reg_pipeline, n_hpc2_0_N3,
         n_hpc2_0_N2, n_hpc2_0_N1, n_hpc2_0_N0;

  XOR2_X1 u_hpc2_0_U54 ( .A(io_i1_s0), .B(p_rand_2), .Z(n_hpc2_0_n31) );
  XOR2_X1 u_hpc2_0_U53 ( .A(p_rand_1), .B(p_rand_0), .Z(n_hpc2_0_n32) );
  XOR2_X1 u_hpc2_0_U52 ( .A(n_hpc2_0_n31), .B(n_hpc2_0_n32), .Z(n_hpc2_0_N0)
         );
  XOR2_X1 u_hpc2_0_U51 ( .A(io_i1_s1), .B(p_rand_4), .Z(n_hpc2_0_n29) );
  XOR2_X1 u_hpc2_0_U50 ( .A(p_rand_3), .B(p_rand_0), .Z(n_hpc2_0_n30) );
  XOR2_X1 u_hpc2_0_U49 ( .A(n_hpc2_0_n29), .B(n_hpc2_0_n30), .Z(n_hpc2_0_N1)
         );
  NAND2_X1 u_hpc2_0_U48 ( .A1(n_hpc2_0_reg_pipeline_3), .A2(n_hpc2_0_n4), .ZN(
        n_hpc2_0_n28) );
  XNOR2_X1 u_hpc2_0_U47 ( .A(n_hpc2_0_reg_pipeline_4), .B(n_hpc2_0_n28), .ZN(
        n_hpc2_0_N10) );
  NAND2_X1 u_hpc2_0_U46 ( .A1(n_hpc2_0_reg_pipeline_3), .A2(n_hpc2_0_n3), .ZN(
        n_hpc2_0_n27) );
  XNOR2_X1 u_hpc2_0_U45 ( .A(n_hpc2_0_reg_pipeline_5), .B(n_hpc2_0_n27), .ZN(
        n_hpc2_0_N11) );
  NAND2_X1 u_hpc2_0_U44 ( .A1(n_hpc2_0_reg_pipeline_6), .A2(n_hpc2_0_n2), .ZN(
        n_hpc2_0_n26) );
  XNOR2_X1 u_hpc2_0_U43 ( .A(n_hpc2_0_reg_pipeline_1), .B(n_hpc2_0_n26), .ZN(
        n_hpc2_0_N12) );
  NAND2_X1 u_hpc2_0_U42 ( .A1(n_hpc2_0_reg_pipeline_6), .A2(n_hpc2_0_n1), .ZN(
        n_hpc2_0_n25) );
  XNOR2_X1 u_hpc2_0_U41 ( .A(n_hpc2_0_reg_pipeline_4), .B(n_hpc2_0_n25), .ZN(
        n_hpc2_0_N13) );
  AND2_X1 u_hpc2_0_U40 ( .A1(n_hpc2_0_n4), .A2(n_hpc2_0_reg_pipeline_6), .ZN(
        n_hpc2_0_N14) );
  NAND2_X1 u_hpc2_0_U39 ( .A1(n_hpc2_0_reg_pipeline_6), .A2(n_hpc2_0_n3), .ZN(
        n_hpc2_0_n24) );
  XNOR2_X1 u_hpc2_0_U38 ( .A(n_hpc2_0_reg_pipeline_7), .B(n_hpc2_0_n24), .ZN(
        n_hpc2_0_N15) );
  NAND2_X1 u_hpc2_0_U37 ( .A1(n_hpc2_0_reg_pipeline_8), .A2(n_hpc2_0_n2), .ZN(
        n_hpc2_0_n23) );
  XNOR2_X1 u_hpc2_0_U36 ( .A(n_hpc2_0_reg_pipeline_2), .B(n_hpc2_0_n23), .ZN(
        n_hpc2_0_N16) );
  NAND2_X1 u_hpc2_0_U35 ( .A1(n_hpc2_0_reg_pipeline_8), .A2(n_hpc2_0_n1), .ZN(
        n_hpc2_0_n22) );
  XNOR2_X1 u_hpc2_0_U34 ( .A(n_hpc2_0_reg_pipeline_5), .B(n_hpc2_0_n22), .ZN(
        n_hpc2_0_N17) );
  NAND2_X1 u_hpc2_0_U33 ( .A1(n_hpc2_0_reg_pipeline_8), .A2(n_hpc2_0_n4), .ZN(
        n_hpc2_0_n21) );
  XNOR2_X1 u_hpc2_0_U32 ( .A(n_hpc2_0_reg_pipeline_7), .B(n_hpc2_0_n21), .ZN(
        n_hpc2_0_N18) );
  AND2_X1 u_hpc2_0_U31 ( .A1(n_hpc2_0_n3), .A2(n_hpc2_0_reg_pipeline_8), .ZN(
        n_hpc2_0_N19) );
  XOR2_X1 u_hpc2_0_U30 ( .A(io_i1_s2), .B(p_rand_5), .Z(n_hpc2_0_n19) );
  XOR2_X1 u_hpc2_0_U29 ( .A(p_rand_3), .B(p_rand_1), .Z(n_hpc2_0_n20) );
  XOR2_X1 u_hpc2_0_U28 ( .A(n_hpc2_0_n19), .B(n_hpc2_0_n20), .Z(n_hpc2_0_N2)
         );
  XOR2_X1 u_hpc2_0_U27 ( .A(io_i1_s3), .B(p_rand_5), .Z(n_hpc2_0_n17) );
  XOR2_X1 u_hpc2_0_U26 ( .A(p_rand_4), .B(p_rand_2), .Z(n_hpc2_0_n18) );
  XOR2_X1 u_hpc2_0_U25 ( .A(n_hpc2_0_n17), .B(n_hpc2_0_n18), .Z(n_hpc2_0_N3)
         );
  AND2_X1 u_hpc2_0_U24 ( .A1(n_hpc2_0_n2), .A2(n_hpc2_0_reg_pipeline), .ZN(
        n_hpc2_0_N4) );
  NAND2_X1 u_hpc2_0_U23 ( .A1(n_hpc2_0_reg_pipeline), .A2(n_hpc2_0_n1), .ZN(
        n_hpc2_0_n16) );
  XNOR2_X1 u_hpc2_0_U22 ( .A(n_hpc2_0_reg_pipeline_0), .B(n_hpc2_0_n16), .ZN(
        n_hpc2_0_N5) );
  NAND2_X1 u_hpc2_0_U21 ( .A1(n_hpc2_0_reg_pipeline), .A2(n_hpc2_0_n4), .ZN(
        n_hpc2_0_n15) );
  XNOR2_X1 u_hpc2_0_U20 ( .A(n_hpc2_0_reg_pipeline_1), .B(n_hpc2_0_n15), .ZN(
        n_hpc2_0_N6) );
  NAND2_X1 u_hpc2_0_U19 ( .A1(n_hpc2_0_reg_pipeline), .A2(n_hpc2_0_n3), .ZN(
        n_hpc2_0_n14) );
  XNOR2_X1 u_hpc2_0_U18 ( .A(n_hpc2_0_reg_pipeline_2), .B(n_hpc2_0_n14), .ZN(
        n_hpc2_0_N7) );
  NAND2_X1 u_hpc2_0_U17 ( .A1(n_hpc2_0_reg_pipeline_3), .A2(n_hpc2_0_n2), .ZN(
        n_hpc2_0_n13) );
  XNOR2_X1 u_hpc2_0_U16 ( .A(n_hpc2_0_reg_pipeline_0), .B(n_hpc2_0_n13), .ZN(
        n_hpc2_0_N8) );
  AND2_X1 u_hpc2_0_U15 ( .A1(n_hpc2_0_n1), .A2(n_hpc2_0_reg_pipeline_3), .ZN(
        n_hpc2_0_N9) );
  XOR2_X1 u_hpc2_0_U14 ( .A(n_hpc2_0_n45), .B(n_hpc2_0_n46), .Z(n_hpc2_0_n11)
         );
  XOR2_X1 u_hpc2_0_U13 ( .A(n_hpc2_0_n47), .B(n_hpc2_0_n48), .Z(n_hpc2_0_n12)
         );
  XOR2_X1 u_hpc2_0_U12 ( .A(n_hpc2_0_n11), .B(n_hpc2_0_n12), .Z(io_o0_s0) );
  XOR2_X1 u_hpc2_0_U11 ( .A(n_hpc2_0_n41), .B(n_hpc2_0_n42), .Z(n_hpc2_0_n9)
         );
  XOR2_X1 u_hpc2_0_U10 ( .A(n_hpc2_0_n43), .B(n_hpc2_0_n44), .Z(n_hpc2_0_n10)
         );
  XOR2_X1 u_hpc2_0_U9 ( .A(n_hpc2_0_n9), .B(n_hpc2_0_n10), .Z(io_o0_s1) );
  XOR2_X1 u_hpc2_0_U8 ( .A(n_hpc2_0_n37), .B(n_hpc2_0_n38), .Z(n_hpc2_0_n7) );
  XOR2_X1 u_hpc2_0_U7 ( .A(n_hpc2_0_n39), .B(n_hpc2_0_n40), .Z(n_hpc2_0_n8) );
  XOR2_X1 u_hpc2_0_U6 ( .A(n_hpc2_0_n7), .B(n_hpc2_0_n8), .Z(io_o0_s2) );
  XOR2_X1 u_hpc2_0_U5 ( .A(n_hpc2_0_n33), .B(n_hpc2_0_n34), .Z(n_hpc2_0_n5) );
  XOR2_X1 u_hpc2_0_U4 ( .A(n_hpc2_0_n35), .B(n_hpc2_0_n36), .Z(n_hpc2_0_n6) );
  XOR2_X1 u_hpc2_0_U3 ( .A(n_hpc2_0_n5), .B(n_hpc2_0_n6), .Z(io_o0_s3) );
  DFF_X1 u_hpc2_0__hpc1_z23_reg ( .D(n_hpc2_0_N15), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n40) );
  DFF_X1 u_hpc2_0__hpc1_z22_reg ( .D(n_hpc2_0_N14), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n39) );
  DFF_X1 u_hpc2_0__hpc1_z21_reg ( .D(n_hpc2_0_N13), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n38) );
  DFF_X1 u_hpc2_0__hpc1_z20_reg ( .D(n_hpc2_0_N12), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n37) );
  DFF_X1 u_hpc2_0__hpc1_z13_reg ( .D(n_hpc2_0_N11), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n44) );
  DFF_X1 u_hpc2_0__hpc1_z12_reg ( .D(n_hpc2_0_N10), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n43) );
  DFF_X1 u_hpc2_0__hpc1_z11_reg ( .D(n_hpc2_0_N9), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n42) );
  DFF_X1 u_hpc2_0__hpc1_z10_reg ( .D(n_hpc2_0_N8), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n41) );
  DFF_X1 u_hpc2_0__hpc1_z03_reg ( .D(n_hpc2_0_N7), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n48) );
  DFF_X1 u_hpc2_0__hpc1_z02_reg ( .D(n_hpc2_0_N6), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n47) );
  DFF_X1 u_hpc2_0__hpc1_z01_reg ( .D(n_hpc2_0_N5), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n46) );
  DFF_X1 u_hpc2_0__hpc1_z00_reg ( .D(n_hpc2_0_N4), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n45) );
  DFF_X1 u_hpc2_0_reg_pipeline_6_reg ( .D(io_i0_s2), .CK(clock_0), .Q(
        n_hpc2_0_reg_pipeline_6), .QN() );
  DFF_X1 u_hpc2_0_reg_pipeline_reg ( .D(io_i0_s0), .CK(clock_0), .Q(
        n_hpc2_0_reg_pipeline), .QN() );
  DFF_X1 u_hpc2_0__hpc1_z33_reg ( .D(n_hpc2_0_N19), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n36) );
  DFF_X1 u_hpc2_0__hpc1_ref_v3_reg ( .D(n_hpc2_0_N3), .CK(clock_0), .Q(
        n_hpc2_0_n3), .QN() );
  DFF_X1 u_hpc2_0_reg_pipeline_1_reg ( .D(p_rand_7), .CK(clock_0), .Q(
        n_hpc2_0_reg_pipeline_1), .QN() );
  DFF_X1 u_hpc2_0__hpc1_z31_reg ( .D(n_hpc2_0_N17), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n34) );
  DFF_X1 u_hpc2_0__hpc1_ref_v1_reg ( .D(n_hpc2_0_N1), .CK(clock_0), .Q(
        n_hpc2_0_n1), .QN() );
  DFF_X1 u_hpc2_0_reg_pipeline_3_reg ( .D(io_i0_s1), .CK(clock_0), .Q(
        n_hpc2_0_reg_pipeline_3), .QN() );
  DFF_X1 u_hpc2_0_reg_pipeline_5_reg ( .D(p_rand_10), .CK(clock_0), .Q(
        n_hpc2_0_reg_pipeline_5), .QN() );
  DFF_X1 u_hpc2_0__hpc1_z30_reg ( .D(n_hpc2_0_N16), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n33) );
  DFF_X1 u_hpc2_0__hpc1_ref_v0_reg ( .D(n_hpc2_0_N0), .CK(clock_0), .Q(
        n_hpc2_0_n2), .QN() );
  DFF_X1 u_hpc2_0__hpc1_z32_reg ( .D(n_hpc2_0_N18), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n35) );
  DFF_X1 u_hpc2_0_reg_pipeline_4_reg ( .D(p_rand_9), .CK(clock_0), .Q(
        n_hpc2_0_reg_pipeline_4), .QN() );
  DFF_X1 u_hpc2_0_reg_pipeline_8_reg ( .D(io_i0_s3), .CK(clock_0), .Q(
        n_hpc2_0_reg_pipeline_8), .QN() );
  DFF_X1 u_hpc2_0_reg_pipeline_2_reg ( .D(p_rand_8), .CK(clock_0), .Q(
        n_hpc2_0_reg_pipeline_2), .QN() );
  DFF_X1 u_hpc2_0__hpc1_ref_v2_reg ( .D(n_hpc2_0_N2), .CK(clock_0), .Q(
        n_hpc2_0_n4), .QN() );
  DFF_X1 u_hpc2_0_reg_pipeline_7_reg ( .D(p_rand_11), .CK(clock_0), .Q(
        n_hpc2_0_reg_pipeline_7), .QN() );
  DFF_X1 u_hpc2_0_reg_pipeline_0_reg ( .D(p_rand_6), .CK(clock_0), .Q(
        n_hpc2_0_reg_pipeline_0), .QN() );
endmodule

