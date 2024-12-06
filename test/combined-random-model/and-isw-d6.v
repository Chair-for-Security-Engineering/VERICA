
module and_isw ( port_a_0, port_a_1, port_a_2, port_a_3, port_a_4, port_a_5, 
        port_a_6, port_b_0, port_b_1, port_b_2, port_b_3, port_b_4, port_b_5, 
        port_b_6, port_r_0, port_r_1, port_r_2, port_r_3, port_r_4, port_r_5, 
        port_r_6, port_r_7, port_r_8, port_r_9, port_r_10, port_r_11, 
        port_r_12, port_r_13, port_r_14, port_r_15, port_r_16, port_r_17, 
        port_r_18, port_r_19, port_r_20, port_c_0, port_c_1, port_c_2, 
        port_c_3, port_c_4, port_c_5, port_c_6, clk, reset );
  input port_a_0, port_a_1, port_a_2, port_a_3, port_a_4, port_a_5, port_a_6,
         port_b_0, port_b_1, port_b_2, port_b_3, port_b_4, port_b_5, port_b_6,
         port_r_0, port_r_1, port_r_2, port_r_3, port_r_4, port_r_5, port_r_6,
         port_r_7, port_r_8, port_r_9, port_r_10, port_r_11, port_r_12,
         port_r_13, port_r_14, port_r_15, port_r_16, port_r_17, port_r_18,
         port_r_19, port_r_20, clk, reset;
  output port_c_0, port_c_1, port_c_2, port_c_3, port_c_4, port_c_5, port_c_6;
  wire   N0, N1, n_zz_z_0, n_zz_z_0_1, N2, N3, N4, n_zz_z_1, n_zz_z_1_1, N5,
         N6, N7, n_zz_z_2, n_zz_z_2_1, N8, N9, N10, n_zz_z_3, n_zz_z_3_1, N11,
         N12, N13, n_zz_z_4, n_zz_z_4_1, N14, N15, N16, n_zz_z_5, n_zz_z_5_1,
         N17, N18, N19, n_zz_z_6, n_zz_z_6_1, N20, N21, N22, n_zz_z_7,
         n_zz_z_7_1, N23, N24, N25, n_zz_z_8, n_zz_z_8_1, N26, N27, N28,
         n_zz_z_9, n_zz_z_9_1, N29, N30, N31, n_zz_z_10, n_zz_z_10_1, N32, N33,
         N34, n_zz_z_11, n_zz_z_11_1, N35, N36, N37, n_zz_z_12, n_zz_z_12_1,
         N38, N39, N40, n_zz_z_13, n_zz_z_13_1, N41, N42, N43, n_zz_z_14,
         n_zz_z_14_1, N44, N45, N46, n_zz_z_15, n_zz_z_15_1, N47, N48, N49,
         n_zz_z_16, n_zz_z_16_1, N50, N51, N52, n_zz_z_17, n_zz_z_17_1, N53,
         N54, N55, n_zz_z_18, n_zz_z_18_1, N56, N57, N58, n_zz_z_19,
         n_zz_z_19_1, N59, N60, N61, n_zz_z_20, n_zz_z_20_1, N62, N63,
         n_zz_result_0, n_zz_result_0_2, n_zz_result_0_4, n_zz_result_0_6,
         n_zz_result_0_8, n_zz_result_0_10, n_zz_result_0_12, N64,
         n_zz_result_1, n_zz_result_1_2, n_zz_result_1_4, n_zz_result_1_6,
         n_zz_result_1_8, n_zz_result_1_10, N65, n_zz_result_2,
         n_zz_result_2_2, n_zz_result_2_4, n_zz_result_2_6, n_zz_result_2_8,
         N66, n_zz_result_3, n_zz_result_3_2, n_zz_result_3_4, n_zz_result_3_6,
         N67, n_zz_result_4, n_zz_result_4_2, n_zz_result_4_4, N68,
         n_zz_result_5, n_zz_result_5_2, N69, n_zz_result_6, n_zz_result_0_1,
         n_zz_result_0_3, n_zz_result_0_5, n_zz_result_0_7, n_zz_result_0_9,
         n_zz_result_0_11, n_zz_result_0_13, N70, n_zz_result_1_1, z_0,
         n_zz_result_1_3, n_zz_result_1_5, n_zz_result_1_7, n_zz_result_1_9,
         n_zz_result_1_11, N71, n_zz_result_2_1, z_1, z_2, n_zz_result_2_3,
         n_zz_result_2_5, n_zz_result_2_7, n_zz_result_2_9, N72,
         n_zz_result_3_1, z_3, z_4, z_5, n_zz_result_3_3, n_zz_result_3_5,
         n_zz_result_3_7, N73, n_zz_result_4_1, z_6, z_7, z_8, z_9,
         n_zz_result_4_3, n_zz_result_4_5, N74, n_zz_result_5_1, z_10, z_11,
         z_12, z_13, z_14, n_zz_result_5_3, N75, n_zz_result_6_1, z_15, z_16,
         z_17, z_18, z_19, z_20, N76, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70;

  DFF_X1 u_zz_z_0_1_reg ( .D(N1), .CK(clk), .Q(n_zz_z_0_1), .QN() );
  DFF_X1 u_zz_z_1_1_reg ( .D(N4), .CK(clk), .Q(n_zz_z_1_1), .QN() );
  DFF_X1 u_zz_z_0_reg ( .D(N0), .CK(clk), .Q(n_zz_z_0), .QN() );
  DFF_X1 z_0_reg ( .D(N2), .CK(clk), .Q(z_0), .QN() );
  DFF_X1 u_zz_result_6_reg ( .D(N69), .CK(clk), .Q(n_zz_result_6), .QN() );
  DFF_X1 u_zz_result_6_1_reg ( .D(n_zz_result_6), .CK(clk), .Q(n_zz_result_6_1), .QN() );
  DFF_X1 u_zz_z_17_reg ( .D(N51), .CK(clk), .Q(n_zz_z_17), .QN() );
  DFF_X1 u_zz_z_2_reg ( .D(N6), .CK(clk), .Q(n_zz_z_2), .QN() );
  DFF_X1 u_zz_result_5_2_reg ( .D(port_r_20), .CK(clk), .Q(n_zz_result_5_2), 
        .QN() );
  DFF_X1 u_zz_result_5_3_reg ( .D(n_zz_result_5_2), .CK(clk), .Q(
        n_zz_result_5_3), .QN() );
  DFF_X1 u_zz_result_5_reg ( .D(N68), .CK(clk), .Q(n_zz_result_5), .QN() );
  DFF_X1 u_zz_result_5_1_reg ( .D(n_zz_result_5), .CK(clk), .Q(n_zz_result_5_1), .QN() );
  DFF_X1 u_zz_z_13_reg ( .D(N39), .CK(clk), .Q(n_zz_z_13), .QN() );
  DFF_X1 u_zz_result_4_4_reg ( .D(port_r_19), .CK(clk), .Q(n_zz_result_4_4), 
        .QN() );
  DFF_X1 u_zz_result_4_5_reg ( .D(n_zz_result_4_4), .CK(clk), .Q(
        n_zz_result_4_5), .QN() );
  DFF_X1 u_zz_z_16_1_reg ( .D(N49), .CK(clk), .Q(n_zz_z_16_1), .QN() );
  DFF_X1 u_zz_z_3_1_reg ( .D(N10), .CK(clk), .Q(n_zz_z_3_1), .QN() );
  DFF_X1 u_zz_result_4_2_reg ( .D(port_r_14), .CK(clk), .Q(n_zz_result_4_2), 
        .QN() );
  DFF_X1 u_zz_result_4_3_reg ( .D(n_zz_result_4_2), .CK(clk), .Q(
        n_zz_result_4_3), .QN() );
  DFF_X1 u_zz_result_4_reg ( .D(N67), .CK(clk), .Q(n_zz_result_4), .QN() );
  DFF_X1 u_zz_result_4_1_reg ( .D(n_zz_result_4), .CK(clk), .Q(n_zz_result_4_1), .QN() );
  DFF_X1 u_zz_z_12_1_reg ( .D(N37), .CK(clk), .Q(n_zz_z_12_1), .QN() );
  DFF_X1 u_zz_result_3_6_reg ( .D(port_r_18), .CK(clk), .Q(n_zz_result_3_6), 
        .QN() );
  DFF_X1 u_zz_result_3_7_reg ( .D(n_zz_result_3_6), .CK(clk), .Q(
        n_zz_result_3_7), .QN() );
  DFF_X1 u_zz_z_9_reg ( .D(N27), .CK(clk), .Q(n_zz_z_9), .QN() );
  DFF_X1 u_zz_result_3_4_reg ( .D(port_r_13), .CK(clk), .Q(n_zz_result_3_4), 
        .QN() );
  DFF_X1 u_zz_result_3_5_reg ( .D(n_zz_result_3_4), .CK(clk), .Q(
        n_zz_result_3_5), .QN() );
  DFF_X1 u_zz_result_3_2_reg ( .D(port_r_9), .CK(clk), .Q(n_zz_result_3_2), 
        .QN() );
  DFF_X1 u_zz_result_3_3_reg ( .D(n_zz_result_3_2), .CK(clk), .Q(
        n_zz_result_3_3), .QN() );
  DFF_X1 u_zz_z_4_reg ( .D(N12), .CK(clk), .Q(n_zz_z_4), .QN() );
  DFF_X1 u_zz_result_3_reg ( .D(N66), .CK(clk), .Q(n_zz_result_3), .QN() );
  DFF_X1 u_zz_result_3_1_reg ( .D(n_zz_result_3), .CK(clk), .Q(n_zz_result_3_1), .QN() );
  DFF_X1 u_zz_result_2_8_reg ( .D(port_r_17), .CK(clk), .Q(n_zz_result_2_8), 
        .QN() );
  DFF_X1 u_zz_result_2_9_reg ( .D(n_zz_result_2_8), .CK(clk), .Q(
        n_zz_result_2_9), .QN() );
  DFF_X1 u_zz_result_2_6_reg ( .D(port_r_12), .CK(clk), .Q(n_zz_result_2_6), 
        .QN() );
  DFF_X1 u_zz_result_2_7_reg ( .D(n_zz_result_2_6), .CK(clk), .Q(
        n_zz_result_2_7), .QN() );
  DFF_X1 u_zz_z_8_1_reg ( .D(N25), .CK(clk), .Q(n_zz_z_8_1), .QN() );
  DFF_X1 u_zz_result_2_4_reg ( .D(port_r_8), .CK(clk), .Q(n_zz_result_2_4), 
        .QN() );
  DFF_X1 u_zz_result_2_5_reg ( .D(n_zz_result_2_4), .CK(clk), .Q(
        n_zz_result_2_5), .QN() );
  DFF_X1 u_zz_result_2_2_reg ( .D(port_r_5), .CK(clk), .Q(n_zz_result_2_2), 
        .QN() );
  DFF_X1 u_zz_result_2_3_reg ( .D(n_zz_result_2_2), .CK(clk), .Q(
        n_zz_result_2_3), .QN() );
  DFF_X1 u_zz_result_2_reg ( .D(N65), .CK(clk), .Q(n_zz_result_2), .QN() );
  DFF_X1 u_zz_result_2_1_reg ( .D(n_zz_result_2), .CK(clk), .Q(n_zz_result_2_1), .QN() );
  DFF_X1 u_zz_z_15_reg ( .D(N45), .CK(clk), .Q(n_zz_z_15), .QN() );
  DFF_X1 u_zz_z_5_1_reg ( .D(N16), .CK(clk), .Q(n_zz_z_5_1), .QN() );
  DFF_X1 u_zz_result_1_10_reg ( .D(port_r_16), .CK(clk), .Q(n_zz_result_1_10), 
        .QN() );
  DFF_X1 u_zz_result_1_11_reg ( .D(n_zz_result_1_10), .CK(clk), .Q(
        n_zz_result_1_11), .QN() );
  DFF_X1 u_zz_z_11_reg ( .D(N33), .CK(clk), .Q(n_zz_z_11), .QN() );
  DFF_X1 u_zz_result_1_8_reg ( .D(port_r_11), .CK(clk), .Q(n_zz_result_1_8), 
        .QN() );
  DFF_X1 u_zz_result_1_9_reg ( .D(n_zz_result_1_8), .CK(clk), .Q(
        n_zz_result_1_9), .QN() );
  DFF_X1 u_zz_result_1_6_reg ( .D(port_r_7), .CK(clk), .Q(n_zz_result_1_6), 
        .QN() );
  DFF_X1 u_zz_result_1_7_reg ( .D(n_zz_result_1_6), .CK(clk), .Q(
        n_zz_result_1_7), .QN() );
  DFF_X1 u_zz_result_1_4_reg ( .D(port_r_4), .CK(clk), .Q(n_zz_result_1_4), 
        .QN() );
  DFF_X1 u_zz_result_1_5_reg ( .D(n_zz_result_1_4), .CK(clk), .Q(
        n_zz_result_1_5), .QN() );
  DFF_X1 u_zz_z_5_reg ( .D(N15), .CK(clk), .Q(n_zz_z_5), .QN() );
  DFF_X1 z_5_reg ( .D(N17), .CK(clk), .Q(z_5), .QN() );
  DFF_X1 u_zz_result_1_2_reg ( .D(port_r_2), .CK(clk), .Q(n_zz_result_1_2), 
        .QN() );
  DFF_X1 u_zz_result_1_3_reg ( .D(n_zz_result_1_2), .CK(clk), .Q(
        n_zz_result_1_3), .QN() );
  DFF_X1 u_zz_result_1_reg ( .D(N64), .CK(clk), .Q(n_zz_result_1), .QN() );
  DFF_X1 u_zz_result_1_1_reg ( .D(n_zz_result_1), .CK(clk), .Q(n_zz_result_1_1), .QN() );
  DFF_X1 u_zz_z_3_reg ( .D(N9), .CK(clk), .Q(n_zz_z_3), .QN() );
  DFF_X1 z_3_reg ( .D(N11), .CK(clk), .Q(z_3), .QN() );
  DFF_X1 u_zz_result_0_12_reg ( .D(port_r_15), .CK(clk), .Q(n_zz_result_0_12), 
        .QN() );
  DFF_X1 u_zz_result_0_13_reg ( .D(n_zz_result_0_12), .CK(clk), .Q(
        n_zz_result_0_13), .QN() );
  DFF_X1 u_zz_z_14_1_reg ( .D(N43), .CK(clk), .Q(n_zz_z_14_1), .QN() );
  DFF_X1 u_zz_z_6_1_reg ( .D(N19), .CK(clk), .Q(n_zz_z_6_1), .QN() );
  DFF_X1 u_zz_result_0_10_reg ( .D(port_r_10), .CK(clk), .Q(n_zz_result_0_10), 
        .QN() );
  DFF_X1 u_zz_result_0_11_reg ( .D(n_zz_result_0_10), .CK(clk), .Q(
        n_zz_result_0_11), .QN() );
  DFF_X1 u_zz_z_6_reg ( .D(N18), .CK(clk), .Q(n_zz_z_6), .QN() );
  DFF_X1 u_zz_result_0_8_reg ( .D(port_r_6), .CK(clk), .Q(n_zz_result_0_8), 
        .QN() );
  DFF_X1 u_zz_result_0_9_reg ( .D(n_zz_result_0_8), .CK(clk), .Q(
        n_zz_result_0_9), .QN() );
  DFF_X1 u_zz_z_10_1_reg ( .D(N31), .CK(clk), .Q(n_zz_z_10_1), .QN() );
  DFF_X1 u_zz_result_0_6_reg ( .D(port_r_3), .CK(clk), .Q(n_zz_result_0_6), 
        .QN() );
  DFF_X1 u_zz_result_0_7_reg ( .D(n_zz_result_0_6), .CK(clk), .Q(
        n_zz_result_0_7), .QN() );
  DFF_X1 u_zz_z_7_reg ( .D(N21), .CK(clk), .Q(n_zz_z_7), .QN() );
  DFF_X1 u_zz_result_0_4_reg ( .D(port_r_1), .CK(clk), .Q(n_zz_result_0_4), 
        .QN() );
  DFF_X1 u_zz_result_0_5_reg ( .D(n_zz_result_0_4), .CK(clk), .Q(
        n_zz_result_0_5), .QN() );
  DFF_X1 u_zz_result_0_2_reg ( .D(port_r_0), .CK(clk), .Q(n_zz_result_0_2), 
        .QN() );
  DFF_X1 u_zz_result_0_3_reg ( .D(n_zz_result_0_2), .CK(clk), .Q(
        n_zz_result_0_3), .QN() );
  DFF_X1 u_zz_z_4_1_reg ( .D(N13), .CK(clk), .Q(n_zz_z_4_1), .QN() );
  DFF_X1 z_4_reg ( .D(N14), .CK(clk), .Q(z_4), .QN() );
  DFF_X1 u_zz_result_0_reg ( .D(N63), .CK(clk), .Q(n_zz_result_0), .QN() );
  DFF_X1 u_zz_result_0_1_reg ( .D(n_zz_result_0), .CK(clk), .Q(n_zz_result_0_1), .QN() );
  DFF_X1 u_zz_z_2_1_reg ( .D(N7), .CK(clk), .Q(n_zz_z_2_1), .QN() );
  DFF_X1 z_2_reg ( .D(N8), .CK(clk), .Q(z_2), .QN() );
  DFF_X1 u_zz_z_20_1_reg ( .D(N61), .CK(clk), .Q(n_zz_z_20_1), .QN() );
  DFF_X1 u_zz_z_20_reg ( .D(N60), .CK(clk), .Q(n_zz_z_20), .QN() );
  DFF_X1 z_20_reg ( .D(N62), .CK(clk), .Q(z_20), .QN() );
  DFF_X1 u_zz_z_1_reg ( .D(N3), .CK(clk), .Q(n_zz_z_1), .QN() );
  DFF_X1 z_1_reg ( .D(N5), .CK(clk), .Q(z_1), .QN() );
  DFF_X1 u_zz_z_19_1_reg ( .D(N58), .CK(clk), .Q(n_zz_z_19_1), .QN() );
  DFF_X1 u_zz_z_19_reg ( .D(N57), .CK(clk), .Q(n_zz_z_19), .QN() );
  DFF_X1 z_19_reg ( .D(N59), .CK(clk), .Q(z_19), .QN() );
  DFF_X1 u_zz_z_18_1_reg ( .D(N55), .CK(clk), .Q(n_zz_z_18_1), .QN() );
  DFF_X1 u_zz_z_18_reg ( .D(N54), .CK(clk), .Q(n_zz_z_18), .QN() );
  DFF_X1 z_18_reg ( .D(N56), .CK(clk), .Q(z_18), .QN() );
  DFF_X1 u_zz_z_17_1_reg ( .D(N52), .CK(clk), .Q(n_zz_z_17_1), .QN() );
  DFF_X1 z_17_reg ( .D(N53), .CK(clk), .Q(z_17), .QN() );
  DFF_X1 u_zz_z_16_reg ( .D(N48), .CK(clk), .Q(n_zz_z_16), .QN() );
  DFF_X1 z_16_reg ( .D(N50), .CK(clk), .Q(z_16), .QN() );
  DFF_X1 u_zz_z_15_1_reg ( .D(N46), .CK(clk), .Q(n_zz_z_15_1), .QN() );
  DFF_X1 z_15_reg ( .D(N47), .CK(clk), .Q(z_15), .QN() );
  DFF_X1 u_zz_z_14_reg ( .D(N42), .CK(clk), .Q(n_zz_z_14), .QN() );
  DFF_X1 z_14_reg ( .D(N44), .CK(clk), .Q(z_14), .QN() );
  DFF_X1 u_zz_z_13_1_reg ( .D(N40), .CK(clk), .Q(n_zz_z_13_1), .QN() );
  DFF_X1 z_13_reg ( .D(N41), .CK(clk), .Q(z_13), .QN() );
  DFF_X1 u_zz_z_12_reg ( .D(N36), .CK(clk), .Q(n_zz_z_12), .QN() );
  DFF_X1 z_12_reg ( .D(N38), .CK(clk), .Q(z_12), .QN() );
  DFF_X1 u_zz_z_11_1_reg ( .D(N34), .CK(clk), .Q(n_zz_z_11_1), .QN() );
  DFF_X1 z_11_reg ( .D(N35), .CK(clk), .Q(z_11), .QN() );
  DFF_X1 u_zz_z_10_reg ( .D(N30), .CK(clk), .Q(n_zz_z_10), .QN() );
  DFF_X1 z_10_reg ( .D(N32), .CK(clk), .Q(z_10), .QN() );
  DFF_X1 u_zz_z_9_1_reg ( .D(N28), .CK(clk), .Q(n_zz_z_9_1), .QN() );
  DFF_X1 z_9_reg ( .D(N29), .CK(clk), .Q(z_9), .QN() );
  DFF_X1 u_zz_z_8_reg ( .D(N24), .CK(clk), .Q(n_zz_z_8), .QN() );
  DFF_X1 z_8_reg ( .D(N26), .CK(clk), .Q(z_8), .QN() );
  DFF_X1 u_zz_z_7_1_reg ( .D(N22), .CK(clk), .Q(n_zz_z_7_1), .QN() );
  DFF_X1 z_7_reg ( .D(N23), .CK(clk), .Q(z_7), .QN() );
  DFF_X1 z_6_reg ( .D(N20), .CK(clk), .Q(z_6), .QN() );
  DFF_X1 result_0_reg ( .D(N70), .CK(clk), .Q(port_c_0), .QN() );
  DFF_X1 result_1_reg ( .D(N71), .CK(clk), .Q(port_c_1), .QN() );
  DFF_X1 result_2_reg ( .D(N72), .CK(clk), .Q(port_c_2), .QN() );
  DFF_X1 result_3_reg ( .D(N73), .CK(clk), .Q(port_c_3), .QN() );
  DFF_X1 result_4_reg ( .D(N74), .CK(clk), .Q(port_c_4), .QN() );
  DFF_X1 result_5_reg ( .D(N75), .CK(clk), .Q(port_c_5), .QN() );
  DFF_X1 result_6_reg ( .D(N76), .CK(clk), .Q(port_c_6), .QN() );
  NOR2_X1 U150 ( .A1(n2), .A2(n8), .ZN(N1) );
  NOR2_X1 U151 ( .A1(n4), .A2(n10), .ZN(N16) );
  NOR2_X1 U152 ( .A1(n4), .A2(n8), .ZN(N10) );
  NOR2_X1 U153 ( .A1(n5), .A2(n8), .ZN(N19) );
  NOR2_X1 U154 ( .A1(n5), .A2(n10), .ZN(N25) );
  NOR2_X1 U155 ( .A1(n5), .A2(n12), .ZN(N67) );
  NOR2_X1 U156 ( .A1(n6), .A2(n8), .ZN(N31) );
  NOR2_X1 U157 ( .A1(n6), .A2(n12), .ZN(N43) );
  NOR2_X1 U158 ( .A1(n6), .A2(n10), .ZN(N37) );
  NOR2_X1 U159 ( .A1(n6), .A2(n13), .ZN(N68) );
  NOR2_X1 U160 ( .A1(n9), .A2(n5), .ZN(N22) );
  NOR2_X1 U161 ( .A1(n9), .A2(n6), .ZN(N34) );
  NOR2_X1 U162 ( .A1(n7), .A2(n8), .ZN(N46) );
  NOR2_X1 U163 ( .A1(n7), .A2(n10), .ZN(N52) );
  NOR2_X1 U164 ( .A1(n7), .A2(n12), .ZN(N58) );
  NOR2_X1 U165 ( .A1(n7), .A2(n13), .ZN(N61) );
  NOR2_X1 U166 ( .A1(n9), .A2(n4), .ZN(N13) );
  NOR2_X1 U167 ( .A1(n9), .A2(n2), .ZN(N64) );
  NOR2_X1 U168 ( .A1(n9), .A2(n7), .ZN(N49) );
  NOR2_X1 U169 ( .A1(n7), .A2(n14), .ZN(N69) );
  NOR2_X1 U170 ( .A1(n11), .A2(n5), .ZN(N28) );
  NOR2_X1 U171 ( .A1(n11), .A2(n6), .ZN(N40) );
  NOR2_X1 U172 ( .A1(n11), .A2(n7), .ZN(N55) );
  NOR2_X1 U173 ( .A1(n3), .A2(n9), .ZN(N7) );
  NOR2_X1 U174 ( .A1(n3), .A2(n10), .ZN(N65) );
  NOR2_X1 U175 ( .A1(n11), .A2(n4), .ZN(N66) );
  NOR2_X1 U176 ( .A1(n3), .A2(n8), .ZN(N4) );
  NOR2_X1 U177 ( .A1(n1), .A2(n8), .ZN(N63) );
  XOR2_X1 U178 ( .A(z_20), .B(z_19), .Z(n20) );
  XOR2_X1 U179 ( .A(z_14), .B(z_13), .Z(n25) );
  XOR2_X1 U180 ( .A(z_9), .B(z_8), .Z(n30) );
  XOR2_X1 U181 ( .A(z_5), .B(z_4), .Z(n35) );
  XOR2_X1 U182 ( .A(z_2), .B(z_1), .Z(n40) );
  XOR2_X1 U183 ( .A(z_0), .B(n_zz_result_1_9), .Z(n45) );
  XOR2_X1 U184 ( .A(n_zz_result_0_9), .B(n_zz_result_0_7), .Z(n50) );
  XOR2_X1 U185 ( .A(n16), .B(n17), .Z(N76) );
  XOR2_X1 U186 ( .A(n18), .B(n_zz_result_6_1), .Z(n17) );
  XOR2_X1 U187 ( .A(n19), .B(n20), .Z(n16) );
  XNOR2_X1 U188 ( .A(z_16), .B(z_15), .ZN(n18) );
  XOR2_X1 U189 ( .A(n21), .B(n22), .Z(N75) );
  XOR2_X1 U190 ( .A(n23), .B(n_zz_result_5_1), .Z(n22) );
  XOR2_X1 U191 ( .A(n24), .B(n25), .Z(n21) );
  XNOR2_X1 U192 ( .A(z_10), .B(n_zz_result_5_3), .ZN(n23) );
  XOR2_X1 U193 ( .A(n26), .B(n27), .Z(N74) );
  XOR2_X1 U194 ( .A(n28), .B(n_zz_result_4_1), .Z(n27) );
  XOR2_X1 U195 ( .A(n29), .B(n30), .Z(n26) );
  XNOR2_X1 U196 ( .A(n_zz_result_4_5), .B(n_zz_result_4_3), .ZN(n28) );
  XOR2_X1 U197 ( .A(n31), .B(n32), .Z(N73) );
  XOR2_X1 U198 ( .A(n33), .B(n_zz_result_3_1), .Z(n32) );
  XOR2_X1 U199 ( .A(n34), .B(n35), .Z(n31) );
  XNOR2_X1 U200 ( .A(n_zz_result_3_5), .B(n_zz_result_3_3), .ZN(n33) );
  XOR2_X1 U201 ( .A(n36), .B(n37), .Z(N72) );
  XOR2_X1 U202 ( .A(n38), .B(n_zz_result_2_1), .Z(n37) );
  XOR2_X1 U203 ( .A(n39), .B(n40), .Z(n36) );
  XNOR2_X1 U204 ( .A(n_zz_result_2_5), .B(n_zz_result_2_3), .ZN(n38) );
  XOR2_X1 U205 ( .A(n41), .B(n42), .Z(N71) );
  XOR2_X1 U206 ( .A(n43), .B(n_zz_result_1_1), .Z(n42) );
  XOR2_X1 U207 ( .A(n44), .B(n45), .Z(n41) );
  XNOR2_X1 U208 ( .A(n_zz_result_1_3), .B(n_zz_result_1_11), .ZN(n43) );
  XOR2_X1 U209 ( .A(n46), .B(n47), .Z(N70) );
  XOR2_X1 U210 ( .A(n48), .B(n_zz_result_0_1), .Z(n47) );
  XOR2_X1 U211 ( .A(n49), .B(n50), .Z(n46) );
  XNOR2_X1 U212 ( .A(n_zz_result_0_13), .B(n_zz_result_0_11), .ZN(n48) );
  XNOR2_X1 U213 ( .A(z_18), .B(z_17), .ZN(n19) );
  XNOR2_X1 U214 ( .A(z_12), .B(z_11), .ZN(n24) );
  XNOR2_X1 U215 ( .A(z_7), .B(z_6), .ZN(n29) );
  XNOR2_X1 U216 ( .A(z_3), .B(n_zz_result_3_7), .ZN(n34) );
  XNOR2_X1 U217 ( .A(n_zz_result_2_9), .B(n_zz_result_2_7), .ZN(n39) );
  XNOR2_X1 U218 ( .A(n_zz_result_1_7), .B(n_zz_result_1_5), .ZN(n44) );
  XNOR2_X1 U219 ( .A(n_zz_result_0_5), .B(n_zz_result_0_3), .ZN(n49) );
  XOR2_X1 U220 ( .A(n_zz_z_6_1), .B(n_zz_z_6), .Z(N20) );
  XOR2_X1 U221 ( .A(n_zz_z_7_1), .B(n_zz_z_7), .Z(N23) );
  XOR2_X1 U222 ( .A(n_zz_z_8_1), .B(n_zz_z_8), .Z(N26) );
  XOR2_X1 U223 ( .A(n_zz_z_9_1), .B(n_zz_z_9), .Z(N29) );
  XOR2_X1 U224 ( .A(n_zz_z_10_1), .B(n_zz_z_10), .Z(N32) );
  XOR2_X1 U225 ( .A(n_zz_z_11_1), .B(n_zz_z_11), .Z(N35) );
  XOR2_X1 U226 ( .A(n_zz_z_12_1), .B(n_zz_z_12), .Z(N38) );
  XOR2_X1 U227 ( .A(n_zz_z_13_1), .B(n_zz_z_13), .Z(N41) );
  XOR2_X1 U228 ( .A(n_zz_z_14_1), .B(n_zz_z_14), .Z(N44) );
  XOR2_X1 U229 ( .A(n_zz_z_15_1), .B(n_zz_z_15), .Z(N47) );
  XOR2_X1 U230 ( .A(n_zz_z_16_1), .B(n_zz_z_16), .Z(N50) );
  XOR2_X1 U231 ( .A(n_zz_z_17_1), .B(n_zz_z_17), .Z(N53) );
  XOR2_X1 U232 ( .A(n_zz_z_18_1), .B(n_zz_z_18), .Z(N56) );
  XOR2_X1 U233 ( .A(n_zz_z_19_1), .B(n_zz_z_19), .Z(N59) );
  XOR2_X1 U234 ( .A(n_zz_z_1_1), .B(n_zz_z_1), .Z(N5) );
  XOR2_X1 U235 ( .A(n_zz_z_20_1), .B(n_zz_z_20), .Z(N62) );
  XOR2_X1 U236 ( .A(n_zz_z_2_1), .B(n_zz_z_2), .Z(N8) );
  XOR2_X1 U237 ( .A(n_zz_z_4_1), .B(n_zz_z_4), .Z(N14) );
  XOR2_X1 U238 ( .A(n_zz_z_3_1), .B(n_zz_z_3), .Z(N11) );
  XOR2_X1 U239 ( .A(n_zz_z_5_1), .B(n_zz_z_5), .Z(N17) );
  XOR2_X1 U240 ( .A(n_zz_z_0_1), .B(n_zz_z_0), .Z(N2) );
  INV_X1 U241 ( .A(port_b_0), .ZN(n8) );
  INV_X1 U242 ( .A(port_a_1), .ZN(n2) );
  INV_X1 U243 ( .A(port_b_2), .ZN(n10) );
  INV_X1 U244 ( .A(port_b_4), .ZN(n12) );
  INV_X1 U245 ( .A(port_a_3), .ZN(n4) );
  INV_X1 U246 ( .A(port_b_5), .ZN(n13) );
  INV_X1 U247 ( .A(port_a_4), .ZN(n5) );
  INV_X1 U248 ( .A(port_b_6), .ZN(n14) );
  INV_X1 U249 ( .A(port_a_5), .ZN(n6) );
  INV_X1 U250 ( .A(port_b_1), .ZN(n9) );
  INV_X1 U251 ( .A(port_a_6), .ZN(n7) );
  INV_X1 U252 ( .A(port_a_2), .ZN(n3) );
  INV_X1 U253 ( .A(port_b_3), .ZN(n11) );
  INV_X1 U254 ( .A(port_a_0), .ZN(n1) );
  XOR2_X1 U255 ( .A(port_r_16), .B(n56), .Z(N48) );
  NOR2_X1 U256 ( .A1(n14), .A2(n2), .ZN(n56) );
  XOR2_X1 U257 ( .A(port_r_1), .B(n63), .Z(N3) );
  NOR2_X1 U258 ( .A1(n1), .A2(n10), .ZN(n63) );
  XOR2_X1 U259 ( .A(port_r_7), .B(n66), .Z(N21) );
  NOR2_X1 U260 ( .A1(n12), .A2(n2), .ZN(n66) );
  XOR2_X1 U261 ( .A(port_r_11), .B(n61), .Z(N33) );
  NOR2_X1 U262 ( .A1(n13), .A2(n2), .ZN(n61) );
  XOR2_X1 U263 ( .A(port_r_4), .B(n69), .Z(N12) );
  NOR2_X1 U264 ( .A1(n11), .A2(n2), .ZN(n69) );
  XOR2_X1 U265 ( .A(port_r_2), .B(n52), .Z(N6) );
  NOR2_X1 U266 ( .A1(n10), .A2(n2), .ZN(n52) );
  XOR2_X1 U267 ( .A(port_r_8), .B(n65), .Z(N24) );
  NOR2_X1 U268 ( .A1(n3), .A2(n12), .ZN(n65) );
  XOR2_X1 U269 ( .A(port_r_18), .B(n54), .Z(N54) );
  NOR2_X1 U270 ( .A1(n14), .A2(n4), .ZN(n54) );
  XOR2_X1 U271 ( .A(port_r_6), .B(n67), .Z(N18) );
  NOR2_X1 U272 ( .A1(n1), .A2(n12), .ZN(n67) );
  XOR2_X1 U273 ( .A(port_r_9), .B(n64), .Z(N27) );
  NOR2_X1 U274 ( .A1(n12), .A2(n4), .ZN(n64) );
  XOR2_X1 U275 ( .A(port_r_13), .B(n59), .Z(N39) );
  NOR2_X1 U276 ( .A1(n13), .A2(n4), .ZN(n59) );
  XOR2_X1 U277 ( .A(port_r_10), .B(n62), .Z(N30) );
  NOR2_X1 U278 ( .A1(n1), .A2(n13), .ZN(n62) );
  XOR2_X1 U279 ( .A(port_r_12), .B(n60), .Z(N36) );
  NOR2_X1 U280 ( .A1(n3), .A2(n13), .ZN(n60) );
  XOR2_X1 U281 ( .A(port_r_14), .B(n58), .Z(N42) );
  NOR2_X1 U282 ( .A1(n13), .A2(n5), .ZN(n58) );
  XOR2_X1 U283 ( .A(port_r_19), .B(n53), .Z(N57) );
  NOR2_X1 U284 ( .A1(n14), .A2(n5), .ZN(n53) );
  XOR2_X1 U285 ( .A(port_r_20), .B(n51), .Z(N60) );
  NOR2_X1 U286 ( .A1(n14), .A2(n6), .ZN(n51) );
  XOR2_X1 U287 ( .A(port_r_15), .B(n57), .Z(N45) );
  NOR2_X1 U288 ( .A1(n1), .A2(n14), .ZN(n57) );
  XOR2_X1 U289 ( .A(port_r_17), .B(n55), .Z(N51) );
  NOR2_X1 U290 ( .A1(n3), .A2(n14), .ZN(n55) );
  XOR2_X1 U291 ( .A(port_r_0), .B(n70), .Z(N0) );
  NOR2_X1 U292 ( .A1(n1), .A2(n9), .ZN(n70) );
  XOR2_X1 U293 ( .A(port_r_3), .B(n15), .Z(N9) );
  NOR2_X1 U294 ( .A1(n1), .A2(n11), .ZN(n15) );
  XOR2_X1 U295 ( .A(port_r_5), .B(n68), .Z(N15) );
  NOR2_X1 U296 ( .A1(n11), .A2(n3), .ZN(n68) );
endmodule

