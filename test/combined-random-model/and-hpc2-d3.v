
module And_gate ( clock_0, reset_0, io_i0_s0, io_i0_s1, io_i0_s2, io_i0_s3, 
        io_i1_s0, io_i1_s1, io_i1_s2, io_i1_s3, p_rand_0, p_rand_1, p_rand_2, 
        p_rand_3, p_rand_4, p_rand_5, io_o0_s0, io_o0_s1, io_o0_s2, io_o0_s3
 );
  input clock_0, reset_0, io_i0_s0, io_i0_s1, io_i0_s2, io_i0_s3, io_i1_s0,
         io_i1_s1, io_i1_s2, io_i1_s3, p_rand_0, p_rand_1, p_rand_2, p_rand_3,
         p_rand_4, p_rand_5;
  output io_o0_s0, io_o0_s1, io_o0_s2, io_o0_s3;
  wire   n_hpc2_0_n86, n_hpc2_0_n85, n_hpc2_0_n84, n_hpc2_0_n83, n_hpc2_0_n82,
         n_hpc2_0_n81, n_hpc2_0_n80, n_hpc2_0_n79, n_hpc2_0_n78, n_hpc2_0_n77,
         n_hpc2_0_n76, n_hpc2_0_n75, n_hpc2_0_n74, n_hpc2_0_n73, n_hpc2_0_n72,
         n_hpc2_0_n71, n_hpc2_0_n70, n_hpc2_0_n69, n_hpc2_0_n68, n_hpc2_0_n67,
         n_hpc2_0_n66, n_hpc2_0_n65, n_hpc2_0_n64, n_hpc2_0_n63, n_hpc2_0_n62,
         n_hpc2_0_n61, n_hpc2_0_n60, n_hpc2_0_n59, n_hpc2_0_n58, n_hpc2_0_n57,
         n_hpc2_0_n56, n_hpc2_0_n55, n_hpc2_0_n54, n_hpc2_0_n53, n_hpc2_0_n52,
         n_hpc2_0_n51, n_hpc2_0_n50, n_hpc2_0_n49, n_hpc2_0_n48, n_hpc2_0_n47,
         n_hpc2_0_n46, n_hpc2_0_n45, n_hpc2_0_n44, n_hpc2_0_n43, n_hpc2_0_n42,
         n_hpc2_0_n41, n_hpc2_0_n40, n_hpc2_0_n39, n_hpc2_0_n38, n_hpc2_0_n37,
         n_hpc2_0_n36, n_hpc2_0_n35, n_hpc2_0_n34, n_hpc2_0_n33, n_hpc2_0_n32,
         n_hpc2_0_n31, n_hpc2_0_n30, n_hpc2_0_n29, n_hpc2_0_n28, n_hpc2_0_n27,
         n_hpc2_0_n26, n_hpc2_0_n25, n_hpc2_0_n24, n_hpc2_0_n23, n_hpc2_0_n22,
         n_hpc2_0_n21, n_hpc2_0_n20, n_hpc2_0_n19, n_hpc2_0_n18, n_hpc2_0_n17,
         n_hpc2_0_n16, n_hpc2_0_n15, n_hpc2_0_n14, n_hpc2_0_n13, n_hpc2_0_n12,
         n_hpc2_0_n11, n_hpc2_0_n10, n_hpc2_0_n9, n_hpc2_0_n8, n_hpc2_0_n7,
         n_hpc2_0_n6, n_hpc2_0_n5, n_hpc2_0_n4, n_hpc2_0_n3, n_hpc2_0_n2,
         n_hpc2_0_n1, n_hpc2_0_N43, n_hpc2_0_N42, n_hpc2_0_N41, n_hpc2_0_N40,
         n_hpc2_0_N39, n_hpc2_0_N38, n_hpc2_0_N37, n_hpc2_0_N36, n_hpc2_0_N35,
         n_hpc2_0_N34, n_hpc2_0_N33, n_hpc2_0_N32, n_hpc2_0_N31, n_hpc2_0_N30,
         n_hpc2_0_N29, n_hpc2_0_N28, n_hpc2_0_N27, n_hpc2_0_N26, n_hpc2_0_N25,
         n_hpc2_0_N24, n_hpc2_0_N23, n_hpc2_0_N22, n_hpc2_0_N21, n_hpc2_0_N20,
         n_hpc2_0_N19, n_hpc2_0_N18, n_hpc2_0_N17, n_hpc2_0_N16, n_hpc2_0_N15,
         n_hpc2_0_N14, n_hpc2_0_N13, n_hpc2_0_N12, n_hpc2_0_N11, n_hpc2_0_N10,
         n_hpc2_0_N9, n_hpc2_0_N8, n_hpc2_0_N7, n_hpc2_0_N6, n_hpc2_0_N5,
         n_hpc2_0_N4, n_hpc2_0__hpc_u31, n_hpc2_0__hpc_u21, n_hpc2_0__hpc_u12,
         n_hpc2_0__hpc_u02;

  NOR2_X1 u_hpc2_0_U70 ( .A1(n_hpc2_0_n86), .A2(n_hpc2_0_n8), .ZN(n_hpc2_0_N10) );
  NOR2_X1 u_hpc2_0_U69 ( .A1(n_hpc2_0_n85), .A2(n_hpc2_0_n7), .ZN(n_hpc2_0_N11) );
  NOR2_X1 u_hpc2_0_U68 ( .A1(n_hpc2_0_n84), .A2(n_hpc2_0_n7), .ZN(n_hpc2_0_N12) );
  NOR2_X1 u_hpc2_0_U67 ( .A1(n_hpc2_0_n83), .A2(n_hpc2_0_n7), .ZN(n_hpc2_0_N13) );
  NOR2_X1 u_hpc2_0_U66 ( .A1(n_hpc2_0_n82), .A2(n_hpc2_0_n6), .ZN(n_hpc2_0_N14) );
  NOR2_X1 u_hpc2_0_U65 ( .A1(n_hpc2_0_n81), .A2(n_hpc2_0_n6), .ZN(n_hpc2_0_N15) );
  NOR2_X1 u_hpc2_0_U64 ( .A1(n_hpc2_0_n80), .A2(n_hpc2_0_n6), .ZN(n_hpc2_0_N16) );
  NOR2_X1 u_hpc2_0_U63 ( .A1(n_hpc2_0_n79), .A2(n_hpc2_0_n5), .ZN(n_hpc2_0_N17) );
  NOR2_X1 u_hpc2_0_U62 ( .A1(n_hpc2_0_n78), .A2(n_hpc2_0_n5), .ZN(n_hpc2_0_N18) );
  NOR2_X1 u_hpc2_0_U61 ( .A1(n_hpc2_0_n77), .A2(n_hpc2_0_n5), .ZN(n_hpc2_0_N19) );
  NOR2_X1 u_hpc2_0_U60 ( .A1(n_hpc2_0_n75), .A2(n_hpc2_0_n76), .ZN(
        n_hpc2_0_N20) );
  NOR2_X1 u_hpc2_0_U59 ( .A1(n_hpc2_0_n73), .A2(n_hpc2_0_n74), .ZN(
        n_hpc2_0_N21) );
  NOR2_X1 u_hpc2_0_U58 ( .A1(n_hpc2_0_n71), .A2(n_hpc2_0_n72), .ZN(
        n_hpc2_0_N22) );
  NOR2_X1 u_hpc2_0_U57 ( .A1(n_hpc2_0_n75), .A2(n_hpc2_0_n70), .ZN(
        n_hpc2_0_N23) );
  NOR2_X1 u_hpc2_0_U56 ( .A1(n_hpc2_0_n68), .A2(n_hpc2_0_n69), .ZN(
        n_hpc2_0_N24) );
  NOR2_X1 u_hpc2_0_U55 ( .A1(n_hpc2_0_n66), .A2(n_hpc2_0_n67), .ZN(
        n_hpc2_0_N25) );
  NOR2_X1 u_hpc2_0_U54 ( .A1(n_hpc2_0_n73), .A2(n_hpc2_0_n65), .ZN(
        n_hpc2_0_N26) );
  NOR2_X1 u_hpc2_0_U53 ( .A1(n_hpc2_0_n68), .A2(n_hpc2_0_n64), .ZN(
        n_hpc2_0_N27) );
  NOR2_X1 u_hpc2_0_U52 ( .A1(n_hpc2_0_n62), .A2(n_hpc2_0_n63), .ZN(
        n_hpc2_0_N28) );
  NOR2_X1 u_hpc2_0_U51 ( .A1(n_hpc2_0_n71), .A2(n_hpc2_0_n61), .ZN(
        n_hpc2_0_N29) );
  NOR2_X1 u_hpc2_0_U50 ( .A1(n_hpc2_0_n66), .A2(n_hpc2_0_n60), .ZN(
        n_hpc2_0_N30) );
  NOR2_X1 u_hpc2_0_U49 ( .A1(n_hpc2_0_n62), .A2(n_hpc2_0_n59), .ZN(
        n_hpc2_0_N31) );
  XOR2_X1 u_hpc2_0_U48 ( .A(io_i1_s1), .B(p_rand_0), .Z(n_hpc2_0_N32) );
  XOR2_X1 u_hpc2_0_U47 ( .A(io_i1_s2), .B(p_rand_1), .Z(n_hpc2_0_N33) );
  XOR2_X1 u_hpc2_0_U46 ( .A(io_i1_s3), .B(p_rand_2), .Z(n_hpc2_0_N34) );
  XOR2_X1 u_hpc2_0_U45 ( .A(io_i1_s0), .B(p_rand_0), .Z(n_hpc2_0_N35) );
  XOR2_X1 u_hpc2_0_U44 ( .A(io_i1_s2), .B(p_rand_3), .Z(n_hpc2_0_N36) );
  XOR2_X1 u_hpc2_0_U43 ( .A(io_i1_s3), .B(p_rand_4), .Z(n_hpc2_0_N37) );
  XOR2_X1 u_hpc2_0_U42 ( .A(io_i1_s0), .B(p_rand_1), .Z(n_hpc2_0_N38) );
  XOR2_X1 u_hpc2_0_U41 ( .A(io_i1_s1), .B(p_rand_3), .Z(n_hpc2_0_N39) );
  NOR2_X1 u_hpc2_0_U40 ( .A1(n_hpc2_0_n58), .A2(n_hpc2_0_n8), .ZN(n_hpc2_0_N4)
         );
  XOR2_X1 u_hpc2_0_U39 ( .A(io_i1_s3), .B(p_rand_5), .Z(n_hpc2_0_N40) );
  XOR2_X1 u_hpc2_0_U38 ( .A(io_i1_s0), .B(p_rand_2), .Z(n_hpc2_0_N41) );
  XOR2_X1 u_hpc2_0_U37 ( .A(io_i1_s1), .B(p_rand_4), .Z(n_hpc2_0_N42) );
  XOR2_X1 u_hpc2_0_U36 ( .A(io_i1_s2), .B(p_rand_5), .Z(n_hpc2_0_N43) );
  NOR2_X1 u_hpc2_0_U35 ( .A1(n_hpc2_0_n57), .A2(n_hpc2_0_n7), .ZN(n_hpc2_0_N5)
         );
  NOR2_X1 u_hpc2_0_U34 ( .A1(n_hpc2_0_n56), .A2(n_hpc2_0_n6), .ZN(n_hpc2_0_N6)
         );
  NOR2_X1 u_hpc2_0_U33 ( .A1(n_hpc2_0_n55), .A2(n_hpc2_0_n5), .ZN(n_hpc2_0_N7)
         );
  NOR2_X1 u_hpc2_0_U32 ( .A1(n_hpc2_0_n54), .A2(n_hpc2_0_n8), .ZN(n_hpc2_0_N8)
         );
  NOR2_X1 u_hpc2_0_U31 ( .A1(n_hpc2_0_n53), .A2(n_hpc2_0_n8), .ZN(n_hpc2_0_N9)
         );
  INV_X1 u_hpc2_0_U30 ( .A(io_i0_s0), .ZN(n_hpc2_0_n1) );
  INV_X1 u_hpc2_0_U29 ( .A(io_i0_s1), .ZN(n_hpc2_0_n2) );
  INV_X1 u_hpc2_0_U28 ( .A(io_i0_s2), .ZN(n_hpc2_0_n3) );
  INV_X1 u_hpc2_0_U27 ( .A(io_i0_s3), .ZN(n_hpc2_0_n4) );
  XOR2_X1 u_hpc2_0_U26 ( .A(n_hpc2_0__hpc_u02), .B(n_hpc2_0_n49), .Z(
        n_hpc2_0_n27) );
  XOR2_X1 u_hpc2_0_U25 ( .A(n_hpc2_0_n47), .B(n_hpc2_0_n48), .Z(n_hpc2_0_n28)
         );
  XOR2_X1 u_hpc2_0_U24 ( .A(n_hpc2_0_n27), .B(n_hpc2_0_n28), .Z(n_hpc2_0_n24)
         );
  XOR2_X1 u_hpc2_0_U23 ( .A(n_hpc2_0_n50), .B(n_hpc2_0_n51), .Z(n_hpc2_0_n26)
         );
  XOR2_X1 u_hpc2_0_U22 ( .A(n_hpc2_0_n52), .B(n_hpc2_0_n26), .Z(n_hpc2_0_n25)
         );
  XOR2_X1 u_hpc2_0_U21 ( .A(n_hpc2_0_n24), .B(n_hpc2_0_n25), .Z(io_o0_s0) );
  XOR2_X1 u_hpc2_0_U20 ( .A(n_hpc2_0__hpc_u12), .B(n_hpc2_0_n43), .Z(
        n_hpc2_0_n22) );
  XOR2_X1 u_hpc2_0_U19 ( .A(n_hpc2_0_n41), .B(n_hpc2_0_n42), .Z(n_hpc2_0_n23)
         );
  XOR2_X1 u_hpc2_0_U18 ( .A(n_hpc2_0_n22), .B(n_hpc2_0_n23), .Z(n_hpc2_0_n19)
         );
  XOR2_X1 u_hpc2_0_U17 ( .A(n_hpc2_0_n44), .B(n_hpc2_0_n45), .Z(n_hpc2_0_n21)
         );
  XOR2_X1 u_hpc2_0_U16 ( .A(n_hpc2_0_n46), .B(n_hpc2_0_n21), .Z(n_hpc2_0_n20)
         );
  XOR2_X1 u_hpc2_0_U15 ( .A(n_hpc2_0_n19), .B(n_hpc2_0_n20), .Z(io_o0_s1) );
  XOR2_X1 u_hpc2_0_U14 ( .A(n_hpc2_0__hpc_u21), .B(n_hpc2_0_n37), .Z(
        n_hpc2_0_n17) );
  XOR2_X1 u_hpc2_0_U13 ( .A(n_hpc2_0_n35), .B(n_hpc2_0_n36), .Z(n_hpc2_0_n18)
         );
  XOR2_X1 u_hpc2_0_U12 ( .A(n_hpc2_0_n17), .B(n_hpc2_0_n18), .Z(n_hpc2_0_n14)
         );
  XOR2_X1 u_hpc2_0_U11 ( .A(n_hpc2_0_n38), .B(n_hpc2_0_n39), .Z(n_hpc2_0_n16)
         );
  XOR2_X1 u_hpc2_0_U10 ( .A(n_hpc2_0_n40), .B(n_hpc2_0_n16), .Z(n_hpc2_0_n15)
         );
  XOR2_X1 u_hpc2_0_U9 ( .A(n_hpc2_0_n14), .B(n_hpc2_0_n15), .Z(io_o0_s2) );
  XOR2_X1 u_hpc2_0_U8 ( .A(n_hpc2_0__hpc_u31), .B(n_hpc2_0_n31), .Z(
        n_hpc2_0_n12) );
  XOR2_X1 u_hpc2_0_U7 ( .A(n_hpc2_0_n29), .B(n_hpc2_0_n30), .Z(n_hpc2_0_n13)
         );
  XOR2_X1 u_hpc2_0_U6 ( .A(n_hpc2_0_n12), .B(n_hpc2_0_n13), .Z(n_hpc2_0_n9) );
  XOR2_X1 u_hpc2_0_U5 ( .A(n_hpc2_0_n32), .B(n_hpc2_0_n33), .Z(n_hpc2_0_n11)
         );
  XOR2_X1 u_hpc2_0_U4 ( .A(n_hpc2_0_n34), .B(n_hpc2_0_n11), .Z(n_hpc2_0_n10)
         );
  XOR2_X1 u_hpc2_0_U3 ( .A(n_hpc2_0_n9), .B(n_hpc2_0_n10), .Z(io_o0_s3) );
  DFF_X1 u_hpc2_0__hpc_av13_reg ( .D(n_hpc2_0_N13), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n45) );
  DFF_X1 u_hpc2_0__hpc_v13_reg ( .D(n_hpc2_0_N37), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n83) );
  DFF_X1 u_hpc2_0__hpc_av12_reg ( .D(n_hpc2_0_N12), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n43) );
  DFF_X1 u_hpc2_0__hpc_v12_reg ( .D(n_hpc2_0_N36), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n84) );
  DFF_X1 u_hpc2_0__hpc_av10_reg ( .D(n_hpc2_0_N11), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n42) );
  DFF_X1 u_hpc2_0__hpc_v10_reg ( .D(n_hpc2_0_N35), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n85) );
  DFF_X1 u_hpc2_0__hpc_av03_reg ( .D(n_hpc2_0_N10), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n51) );
  DFF_X1 u_hpc2_0__hpc_v03_reg ( .D(n_hpc2_0_N34), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n86) );
  DFF_X1 u_hpc2_0__hpc_av02_reg ( .D(n_hpc2_0_N9), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n49) );
  DFF_X1 u_hpc2_0__hpc_v02_reg ( .D(n_hpc2_0_N33), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n53) );
  DFF_X1 u_hpc2_0__hpc_av01_reg ( .D(n_hpc2_0_N8), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n48) );
  DFF_X1 u_hpc2_0__hpc_v01_reg ( .D(n_hpc2_0_N32), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n54) );
  DFF_X1 u_hpc2_0__hpc_u32_reg ( .D(n_hpc2_0_N31), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n32) );
  DFF_X1 u_hpc2_0__hpc_u31_reg ( .D(n_hpc2_0_N30), .CK(clock_0), .Q(
        n_hpc2_0__hpc_u31), .QN() );
  DFF_X1 u_hpc2_0__hpc_u30_reg ( .D(n_hpc2_0_N29), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n34) );
  DFF_X1 u_hpc2_0__hpc_u23_reg ( .D(n_hpc2_0_N28), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n38) );
  DFF_X1 u_hpc2_0__hpc_u21_reg ( .D(n_hpc2_0_N27), .CK(clock_0), .Q(
        n_hpc2_0__hpc_u21), .QN() );
  DFF_X1 u_hpc2_0__hpc_u20_reg ( .D(n_hpc2_0_N26), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n40) );
  DFF_X1 u_hpc2_0__hpc_u13_reg ( .D(n_hpc2_0_N25), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n44) );
  DFF_X1 u_hpc2_0__hpc_u12_reg ( .D(n_hpc2_0_N24), .CK(clock_0), .Q(
        n_hpc2_0__hpc_u12), .QN() );
  DFF_X1 u_hpc2_0__hpc_u10_reg ( .D(n_hpc2_0_N23), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n46) );
  DFF_X1 u_hpc2_0__hpc_u03_reg ( .D(n_hpc2_0_N22), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n50) );
  DFF_X1 u_hpc2_0__hpc_u02_reg ( .D(n_hpc2_0_N21), .CK(clock_0), .Q(
        n_hpc2_0__hpc_u02), .QN() );
  DFF_X1 u_hpc2_0__hpc_u01_reg ( .D(n_hpc2_0_N20), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n52) );
  DFF_X1 u_hpc2_0__hpc_ab3_reg ( .D(n_hpc2_0_N7), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n29) );
  DFF_X1 u_hpc2_0__hpc_b3_reg ( .D(io_i1_s3), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n55) );
  DFF_X1 u_hpc2_0__hpc_ab2_reg ( .D(n_hpc2_0_N6), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n35) );
  DFF_X1 u_hpc2_0__hpc_b2_reg ( .D(io_i1_s2), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n56) );
  DFF_X1 u_hpc2_0__hpc_ab1_reg ( .D(n_hpc2_0_N5), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n41) );
  DFF_X1 u_hpc2_0__hpc_b1_reg ( .D(io_i1_s1), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n57) );
  DFF_X1 u_hpc2_0__hpc_ab0_reg ( .D(n_hpc2_0_N4), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n47) );
  DFF_X1 u_hpc2_0__hpc_b0_reg ( .D(io_i1_s0), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n58) );
  DFF_X1 u_hpc2_0__hpc_av32_reg ( .D(n_hpc2_0_N19), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n33) );
  DFF_X1 u_hpc2_0__hpc_av31_reg ( .D(n_hpc2_0_N18), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n31) );
  DFF_X1 u_hpc2_0__hpc_av30_reg ( .D(n_hpc2_0_N17), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n30) );
  DFF_X1 u_hpc2_0__hpc_av23_reg ( .D(n_hpc2_0_N16), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n39) );
  DFF_X1 u_hpc2_0__hpc_av21_reg ( .D(n_hpc2_0_N15), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n37) );
  DFF_X1 u_hpc2_0__hpc_av20_reg ( .D(n_hpc2_0_N14), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n36) );
  DFF_X1 u_hpc2_0_reg_pipeline_0_reg ( .D(n_hpc2_0_n4), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n60) );
  DFF_X1 u_hpc2_0_reg_pipeline_1_reg ( .D(n_hpc2_0_n4), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n61) );
  DFF_X1 u_hpc2_0_reg_pipeline_11_reg ( .D(io_i0_s0), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n8) );
  DFF_X1 u_hpc2_0_reg_pipeline_12_reg ( .D(io_i0_s1), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n7) );
  DFF_X1 u_hpc2_0_reg_pipeline_reg ( .D(n_hpc2_0_n4), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n59) );
  DFF_X1 u_hpc2_0_reg_pipeline_13_reg ( .D(io_i0_s2), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n6) );
  DFF_X1 u_hpc2_0_reg_pipeline_14_reg ( .D(io_i0_s3), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n5) );
  DFF_X1 u_hpc2_0_reg_pipeline_10_reg ( .D(n_hpc2_0_n1), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n76) );
  DFF_X1 u_hpc2_0_reg_pipeline_6_reg ( .D(n_hpc2_0_n2), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n69) );
  DFF_X1 u_hpc2_0_reg_pipeline_7_reg ( .D(n_hpc2_0_n2), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n70) );
  DFF_X1 u_hpc2_0_reg_pipeline_9_reg ( .D(n_hpc2_0_n1), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n74) );
  DFF_X1 u_hpc2_0_reg_pipeline_8_reg ( .D(n_hpc2_0_n1), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n72) );
  DFF_X1 u_hpc2_0__hpc_r5_reg ( .D(p_rand_5), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n62) );
  DFF_X1 u_hpc2_0__hpc_r4_reg ( .D(p_rand_4), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n66) );
  DFF_X1 u_hpc2_0__hpc_v32_reg ( .D(n_hpc2_0_N43), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n77) );
  DFF_X1 u_hpc2_0__hpc_v31_reg ( .D(n_hpc2_0_N42), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n78) );
  DFF_X1 u_hpc2_0__hpc_v30_reg ( .D(n_hpc2_0_N41), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n79) );
  DFF_X1 u_hpc2_0__hpc_v23_reg ( .D(n_hpc2_0_N40), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n80) );
  DFF_X1 u_hpc2_0__hpc_v21_reg ( .D(n_hpc2_0_N39), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n81) );
  DFF_X1 u_hpc2_0__hpc_v20_reg ( .D(n_hpc2_0_N38), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n82) );
  DFF_X1 u_hpc2_0_reg_pipeline_5_reg ( .D(n_hpc2_0_n2), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n67) );
  DFF_X1 u_hpc2_0_reg_pipeline_2_reg ( .D(n_hpc2_0_n3), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n63) );
  DFF_X1 u_hpc2_0_reg_pipeline_3_reg ( .D(n_hpc2_0_n3), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n64) );
  DFF_X1 u_hpc2_0_reg_pipeline_4_reg ( .D(n_hpc2_0_n3), .CK(clock_0), .Q(), 
        .QN(n_hpc2_0_n65) );
  DFF_X1 u_hpc2_0__hpc_r3_reg ( .D(p_rand_3), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n68) );
  DFF_X1 u_hpc2_0__hpc_r2_reg ( .D(p_rand_2), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n71) );
  DFF_X1 u_hpc2_0__hpc_r1_reg ( .D(p_rand_1), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n73) );
  DFF_X1 u_hpc2_0__hpc_r0_reg ( .D(p_rand_0), .CK(clock_0), .Q(), .QN(
        n_hpc2_0_n75) );
endmodule

