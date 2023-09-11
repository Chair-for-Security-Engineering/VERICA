
module And_gate ( clock_0, reset_0, io_i0_s0, io_i0_s1, io_i0_s2, io_i1_s0, 
        io_i1_s1, io_i1_s2, p_rand_0, p_rand_1, p_rand_2, io_o0_s0, io_o0_s1, 
        io_o0_s2 );
  input clock_0, reset_0, io_i0_s0, io_i0_s1, io_i0_s2, io_i1_s0, io_i1_s1,
         io_i1_s2, p_rand_0, p_rand_1, p_rand_2;
  output io_o0_s0, io_o0_s1, io_o0_s2;
  wire   n_hpc2_0_n45, n_hpc2_0_n44, n_hpc2_0_n43, n_hpc2_0_n42, n_hpc2_0_n41,
         n_hpc2_0_n40, n_hpc2_0_n39, n_hpc2_0_n38, n_hpc2_0_n37, n_hpc2_0_n36,
         n_hpc2_0_n35, n_hpc2_0_n34, n_hpc2_0_n33, n_hpc2_0_n32, n_hpc2_0_n31,
         n_hpc2_0_n30, n_hpc2_0_n29, n_hpc2_0_n28, n_hpc2_0_n27, n_hpc2_0_n26,
         n_hpc2_0_n25, n_hpc2_0_n24, n_hpc2_0_n23, n_hpc2_0_n22, n_hpc2_0_n21,
         n_hpc2_0_n20, n_hpc2_0_n19, n_hpc2_0_n18, n_hpc2_0_n17, n_hpc2_0_n16,
         n_hpc2_0_n15, n_hpc2_0_n14, n_hpc2_0_n13, n_hpc2_0_n12, n_hpc2_0_n11,
         n_hpc2_0_n10, n_hpc2_0_n9, n_hpc2_0_n8, n_hpc2_0_n7, n_hpc2_0_n6,
         n_hpc2_0_n5, n_hpc2_0_n4, n_hpc2_0_n3, n_hpc2_0_n2, n_hpc2_0_n1,
         n_hpc2_0_N23, n_hpc2_0_N22, n_hpc2_0_N21, n_hpc2_0_N20, n_hpc2_0_N19,
         n_hpc2_0_N18, n_hpc2_0_N17, n_hpc2_0_N16, n_hpc2_0_N15, n_hpc2_0_N14,
         n_hpc2_0_N13, n_hpc2_0_N12, n_hpc2_0_N11, n_hpc2_0_N10, n_hpc2_0_N9,
         n_hpc2_0_N8, n_hpc2_0_N7, n_hpc2_0_N6, n_hpc2_0_N5, n_hpc2_0_N4,
         n_hpc2_0_N3, n_hpc2_0__hpc_av20, n_hpc2_0__hpc_av10,
         n_hpc2_0__hpc_av01;

  NOR2_X1 u_hpc2_0_U38 ( .A1(n_hpc2_0_n45), .A2(n_hpc2_0_n6), .ZN(n_hpc2_0_N10) );
  NOR2_X1 u_hpc2_0_U37 ( .A1(n_hpc2_0_n44), .A2(n_hpc2_0_n6), .ZN(n_hpc2_0_N11) );
  NOR2_X1 u_hpc2_0_U36 ( .A1(n_hpc2_0_n42), .A2(n_hpc2_0_n43), .ZN(
        n_hpc2_0_N12) );
  NOR2_X1 u_hpc2_0_U35 ( .A1(n_hpc2_0_n40), .A2(n_hpc2_0_n41), .ZN(
        n_hpc2_0_N13) );
  NOR2_X1 u_hpc2_0_U34 ( .A1(n_hpc2_0_n42), .A2(n_hpc2_0_n39), .ZN(
        n_hpc2_0_N14) );
  NOR2_X1 u_hpc2_0_U33 ( .A1(n_hpc2_0_n37), .A2(n_hpc2_0_n38), .ZN(
        n_hpc2_0_N15) );
  NOR2_X1 u_hpc2_0_U32 ( .A1(n_hpc2_0_n40), .A2(n_hpc2_0_n36), .ZN(
        n_hpc2_0_N16) );
  NOR2_X1 u_hpc2_0_U31 ( .A1(n_hpc2_0_n37), .A2(n_hpc2_0_n35), .ZN(
        n_hpc2_0_N17) );
  XOR2_X1 u_hpc2_0_U30 ( .A(io_i1_s1), .B(p_rand_0), .Z(n_hpc2_0_N18) );
  XOR2_X1 u_hpc2_0_U29 ( .A(io_i1_s2), .B(p_rand_1), .Z(n_hpc2_0_N19) );
  XOR2_X1 u_hpc2_0_U28 ( .A(io_i1_s0), .B(p_rand_0), .Z(n_hpc2_0_N20) );
  XOR2_X1 u_hpc2_0_U27 ( .A(io_i1_s2), .B(p_rand_2), .Z(n_hpc2_0_N21) );
  XOR2_X1 u_hpc2_0_U26 ( .A(io_i1_s0), .B(p_rand_1), .Z(n_hpc2_0_N22) );
  XOR2_X1 u_hpc2_0_U25 ( .A(io_i1_s1), .B(p_rand_2), .Z(n_hpc2_0_N23) );
  NOR2_X1 u_hpc2_0_U24 ( .A1(n_hpc2_0_n34), .A2(n_hpc2_0_n5), .ZN(n_hpc2_0_N3)
         );
  NOR2_X1 u_hpc2_0_U23 ( .A1(n_hpc2_0_n33), .A2(n_hpc2_0_n4), .ZN(n_hpc2_0_N4)
         );
  NOR2_X1 u_hpc2_0_U22 ( .A1(n_hpc2_0_n32), .A2(n_hpc2_0_n6), .ZN(n_hpc2_0_N5)
         );
  NOR2_X1 u_hpc2_0_U21 ( .A1(n_hpc2_0_n31), .A2(n_hpc2_0_n5), .ZN(n_hpc2_0_N6)
         );
  NOR2_X1 u_hpc2_0_U20 ( .A1(n_hpc2_0_n30), .A2(n_hpc2_0_n5), .ZN(n_hpc2_0_N7)
         );
  NOR2_X1 u_hpc2_0_U19 ( .A1(n_hpc2_0_n29), .A2(n_hpc2_0_n4), .ZN(n_hpc2_0_N8)
         );
  NOR2_X1 u_hpc2_0_U18 ( .A1(n_hpc2_0_n28), .A2(n_hpc2_0_n4), .ZN(n_hpc2_0_N9)
         );
  INV_X1 u_hpc2_0_U17 ( .A(io_i0_s0), .ZN(n_hpc2_0_n1) );
  INV_X1 u_hpc2_0_U16 ( .A(io_i0_s1), .ZN(n_hpc2_0_n2) );
  INV_X1 u_hpc2_0_U15 ( .A(io_i0_s2), .ZN(n_hpc2_0_n3) );
  XOR2_X1 u_hpc2_0_U14 ( .A(n_hpc2_0__hpc_av01), .B(n_hpc2_0_n24), .Z(
        n_hpc2_0_n15) );
  XOR2_X1 u_hpc2_0_U13 ( .A(n_hpc2_0_n15), .B(n_hpc2_0_n25), .Z(n_hpc2_0_n13)
         );
  XOR2_X1 u_hpc2_0_U12 ( .A(n_hpc2_0_n26), .B(n_hpc2_0_n27), .Z(n_hpc2_0_n14)
         );
  XOR2_X1 u_hpc2_0_U11 ( .A(n_hpc2_0_n13), .B(n_hpc2_0_n14), .Z(io_o0_s0) );
  XOR2_X1 u_hpc2_0_U10 ( .A(n_hpc2_0__hpc_av10), .B(n_hpc2_0_n20), .Z(
        n_hpc2_0_n12) );
  XOR2_X1 u_hpc2_0_U9 ( .A(n_hpc2_0_n12), .B(n_hpc2_0_n21), .Z(n_hpc2_0_n10)
         );
  XOR2_X1 u_hpc2_0_U8 ( .A(n_hpc2_0_n22), .B(n_hpc2_0_n23), .Z(n_hpc2_0_n11)
         );
  XOR2_X1 u_hpc2_0_U7 ( .A(n_hpc2_0_n10), .B(n_hpc2_0_n11), .Z(io_o0_s1) );
  XOR2_X1 u_hpc2_0_U6 ( .A(n_hpc2_0__hpc_av20), .B(n_hpc2_0_n16), .Z(
        n_hpc2_0_n9) );
  XOR2_X1 u_hpc2_0_U5 ( .A(n_hpc2_0_n9), .B(n_hpc2_0_n17), .Z(n_hpc2_0_n7) );
  XOR2_X1 u_hpc2_0_U4 ( .A(n_hpc2_0_n18), .B(n_hpc2_0_n19), .Z(n_hpc2_0_n8) );
  XOR2_X1 u_hpc2_0_U3 ( .A(n_hpc2_0_n7), .B(n_hpc2_0_n8), .Z(io_o0_s2) );
  DFF_X1 u_hpc2_0__hpc_u21_reg ( .D(n_hpc2_0_N17), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n19) );
  DFF_X1 u_hpc2_0__hpc_u20_reg ( .D(n_hpc2_0_N16), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n18) );
  DFF_X1 u_hpc2_0__hpc_u12_reg ( .D(n_hpc2_0_N15), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n23) );
  DFF_X1 u_hpc2_0__hpc_u10_reg ( .D(n_hpc2_0_N14), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n22) );
  DFF_X1 u_hpc2_0__hpc_u02_reg ( .D(n_hpc2_0_N13), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n27) );
  DFF_X1 u_hpc2_0__hpc_u01_reg ( .D(n_hpc2_0_N12), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n26) );
  DFF_X1 u_hpc2_0__hpc_ab2_reg ( .D(n_hpc2_0_N5), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n16) );
  DFF_X1 u_hpc2_0__hpc_b2_reg ( .D(io_i1_s2), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n32) );
  DFF_X1 u_hpc2_0__hpc_ab1_reg ( .D(n_hpc2_0_N4), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n20) );
  DFF_X1 u_hpc2_0__hpc_b1_reg ( .D(io_i1_s1), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n33) );
  DFF_X1 u_hpc2_0__hpc_ab0_reg ( .D(n_hpc2_0_N3), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n24) );
  DFF_X1 u_hpc2_0__hpc_b0_reg ( .D(io_i1_s0), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n34) );
  DFF_X1 u_hpc2_0__hpc_av21_reg ( .D(n_hpc2_0_N11), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n17) );
  DFF_X1 u_hpc2_0__hpc_av20_reg ( .D(n_hpc2_0_N10), .CK(clock_0), .Q(
        n_hpc2_0__hpc_av20), .QN() );
  DFF_X1 u_hpc2_0__hpc_av12_reg ( .D(n_hpc2_0_N9), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n21) );
  DFF_X1 u_hpc2_0__hpc_av10_reg ( .D(n_hpc2_0_N8), .CK(clock_0), .Q(
        n_hpc2_0__hpc_av10), .QN() );
  DFF_X1 u_hpc2_0__hpc_av02_reg ( .D(n_hpc2_0_N7), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n25) );
  DFF_X1 u_hpc2_0__hpc_av01_reg ( .D(n_hpc2_0_N6), .CK(clock_0), .Q(
        n_hpc2_0__hpc_av01), .QN() );
  DFF_X1 u_hpc2_0_reg_pipeline_reg ( .D(n_hpc2_0_n3), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n35) );
  DFF_X1 u_hpc2_0__hpc_v21_reg ( .D(n_hpc2_0_N23), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n44) );
  DFF_X1 u_hpc2_0_reg_pipeline_0_reg ( .D(n_hpc2_0_n3), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n36) );
  DFF_X1 u_hpc2_0__hpc_v20_reg ( .D(n_hpc2_0_N22), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n45) );
  DFF_X1 u_hpc2_0_reg_pipeline_1_reg ( .D(n_hpc2_0_n2), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n38) );
  DFF_X1 u_hpc2_0__hpc_v12_reg ( .D(n_hpc2_0_N21), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n28) );
  DFF_X1 u_hpc2_0_reg_pipeline_5_reg ( .D(io_i0_s0), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n5) );
  DFF_X1 u_hpc2_0_reg_pipeline_6_reg ( .D(io_i0_s1), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n4) );
  DFF_X1 u_hpc2_0_reg_pipeline_7_reg ( .D(io_i0_s2), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n6) );
  DFF_X1 u_hpc2_0__hpc_v10_reg ( .D(n_hpc2_0_N20), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n29) );
  DFF_X1 u_hpc2_0__hpc_v02_reg ( .D(n_hpc2_0_N19), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n30) );
  DFF_X1 u_hpc2_0__hpc_v01_reg ( .D(n_hpc2_0_N18), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n31) );
  DFF_X1 u_hpc2_0_reg_pipeline_4_reg ( .D(n_hpc2_0_n1), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n43) );
  DFF_X1 u_hpc2_0_reg_pipeline_2_reg ( .D(n_hpc2_0_n2), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n39) );
  DFF_X1 u_hpc2_0_reg_pipeline_3_reg ( .D(n_hpc2_0_n1), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n41) );
  DFF_X1 u_hpc2_0__hpc_r2_reg ( .D(p_rand_2), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n37) );
  DFF_X1 u_hpc2_0__hpc_r1_reg ( .D(p_rand_1), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n40) );
  DFF_X1 u_hpc2_0__hpc_r0_reg ( .D(p_rand_0), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n42) );
endmodule

