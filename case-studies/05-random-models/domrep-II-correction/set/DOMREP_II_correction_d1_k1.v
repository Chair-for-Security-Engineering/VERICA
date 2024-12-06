/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Wed Aug 28 11:56:32 2024
/////////////////////////////////////////////////////////////


module DOMREP_II_toTest ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, 
        port_c_1, port_r_dom, port_r_rep, clk, reset );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  input [1:0] port_r_dom;
  input [7:0] port_r_rep;
  input clk, reset;
  wire   dom_mul_n12, dom_mul_n11, dom_mul_n10, dom_mul_n9, dom_mul_n8,
         dom_mul_n7, dom_mul_n6, dom_mul_n5, dom_mul_n4, dom_mul_n3,
         dom_mul_n2, dom_mul_n1, dom_mul_N13, dom_mul_N12, dom_mul_N11,
         dom_mul_N10, dom_mul_N9, dom_mul_N8, secrep_n11, secrep_n10,
         secrep_n9, secrep_n7, secrep_n6, secrep_n5, secrep_n3, secrep_n2,
         secrep_n1, secrep_andDOM_29_port_c_0_0_, secrep_andDOM_28_port_c_1_0_,
         secrep_andDOM_28_port_c_0_0_, secrep_andDOM_27_port_c_1_0_,
         secrep_andDOM_27_port_c_0_0_, secrep_andDOM_26_port_c_1_0_,
         secrep_andDOM_26_port_c_0_0_, secrep_andDOM_25_port_c_1_0_,
         secrep_andDOM_25_port_c_0_0_, secrep_andDOM_24_port_c_0_0_,
         secrep_andDOM_23_port_c_1_0_, secrep_andDOM_23_port_c_0_0_,
         secrep_andDOM_22_port_c_1_0_, secrep_andDOM_22_port_c_0_0_,
         secrep_andDOM_21_port_c_1_0_, secrep_andDOM_21_port_c_0_0_,
         secrep_andDOM_20_port_c_1_0_, secrep_andDOM_20_port_c_0_0_,
         secrep_andDOM_19_port_c_0_0_, secrep_andDOM_18_port_c_1_0_,
         secrep_andDOM_18_port_c_0_0_, secrep_andDOM_17_port_c_1_0_,
         secrep_andDOM_17_port_c_0_0_, secrep_andDOM_16_port_c_1_0_,
         secrep_andDOM_16_port_c_0_0_, secrep_andDOM_15_port_c_1_0_,
         secrep_andDOM_15_port_c_0_0_, secrep_andDOM_15_n2,
         secrep_andDOM_15_n1, secrep_andDOM_15_N3, secrep_andDOM_15_N2,
         secrep_andDOM_15_N1, secrep_andDOM_15_N0, secrep_andDOM_15_comp_1_0_,
         secrep_andDOM_15_z_tilde_1_0_0, secrep_andDOM_15_z_tilde_1_1_0,
         secrep_andDOM_15_comp_0_0_, secrep_andDOM_15_z_tilde_0_1_0,
         secrep_andDOM_15_z_tilde_0_0_0, secrep_andDOM_16_n4,
         secrep_andDOM_16_n3, secrep_andDOM_16_N3, secrep_andDOM_16_N2,
         secrep_andDOM_16_N1, secrep_andDOM_16_N0, secrep_andDOM_16_comp_1_0_,
         secrep_andDOM_16_z_tilde_1_0_0, secrep_andDOM_16_z_tilde_1_1_0,
         secrep_andDOM_16_comp_0_0_, secrep_andDOM_16_z_tilde_0_1_0,
         secrep_andDOM_16_z_tilde_0_0_0, secrep_andDOM_17_n4,
         secrep_andDOM_17_n3, secrep_andDOM_17_N3, secrep_andDOM_17_N2,
         secrep_andDOM_17_N1, secrep_andDOM_17_N0, secrep_andDOM_17_comp_1_0_,
         secrep_andDOM_17_z_tilde_1_0_0, secrep_andDOM_17_z_tilde_1_1_0,
         secrep_andDOM_17_comp_0_0_, secrep_andDOM_17_z_tilde_0_1_0,
         secrep_andDOM_17_z_tilde_0_0_0, secrep_andDOM_18_n4,
         secrep_andDOM_18_n3, secrep_andDOM_18_N3, secrep_andDOM_18_N2,
         secrep_andDOM_18_N1, secrep_andDOM_18_N0, secrep_andDOM_18_comp_1_0_,
         secrep_andDOM_18_z_tilde_1_0_0, secrep_andDOM_18_z_tilde_1_1_0,
         secrep_andDOM_18_comp_0_0_, secrep_andDOM_18_z_tilde_0_1_0,
         secrep_andDOM_18_z_tilde_0_0_0, secrep_andDOM_19_n4,
         secrep_andDOM_19_n3, secrep_andDOM_19_N3, secrep_andDOM_19_N2,
         secrep_andDOM_19_N1, secrep_andDOM_19_N0, secrep_andDOM_19_comp_1_0_,
         secrep_andDOM_19_z_tilde_1_0_0, secrep_andDOM_19_z_tilde_1_1_0,
         secrep_andDOM_19_comp_0_0_, secrep_andDOM_19_z_tilde_0_1_0,
         secrep_andDOM_19_z_tilde_0_0_0, secrep_andDOM_20_n4,
         secrep_andDOM_20_n3, secrep_andDOM_20_N3, secrep_andDOM_20_N2,
         secrep_andDOM_20_N1, secrep_andDOM_20_N0, secrep_andDOM_20_comp_1_0_,
         secrep_andDOM_20_z_tilde_1_0_0, secrep_andDOM_20_z_tilde_1_1_0,
         secrep_andDOM_20_comp_0_0_, secrep_andDOM_20_z_tilde_0_1_0,
         secrep_andDOM_20_z_tilde_0_0_0, secrep_andDOM_21_n4,
         secrep_andDOM_21_n3, secrep_andDOM_21_N3, secrep_andDOM_21_N2,
         secrep_andDOM_21_N1, secrep_andDOM_21_N0, secrep_andDOM_21_comp_1_0_,
         secrep_andDOM_21_z_tilde_1_0_0, secrep_andDOM_21_z_tilde_1_1_0,
         secrep_andDOM_21_comp_0_0_, secrep_andDOM_21_z_tilde_0_1_0,
         secrep_andDOM_21_z_tilde_0_0_0, secrep_andDOM_22_n4,
         secrep_andDOM_22_n3, secrep_andDOM_22_N3, secrep_andDOM_22_N2,
         secrep_andDOM_22_N1, secrep_andDOM_22_N0, secrep_andDOM_22_comp_1_0_,
         secrep_andDOM_22_z_tilde_1_0_0, secrep_andDOM_22_z_tilde_1_1_0,
         secrep_andDOM_22_comp_0_0_, secrep_andDOM_22_z_tilde_0_1_0,
         secrep_andDOM_22_z_tilde_0_0_0, secrep_andDOM_23_n4,
         secrep_andDOM_23_n3, secrep_andDOM_23_N3, secrep_andDOM_23_N2,
         secrep_andDOM_23_N1, secrep_andDOM_23_N0, secrep_andDOM_23_comp_1_0_,
         secrep_andDOM_23_z_tilde_1_0_0, secrep_andDOM_23_z_tilde_1_1_0,
         secrep_andDOM_23_comp_0_0_, secrep_andDOM_23_z_tilde_0_1_0,
         secrep_andDOM_23_z_tilde_0_0_0, secrep_andDOM_24_n4,
         secrep_andDOM_24_n3, secrep_andDOM_24_N3, secrep_andDOM_24_N2,
         secrep_andDOM_24_N1, secrep_andDOM_24_N0, secrep_andDOM_24_comp_1_0_,
         secrep_andDOM_24_z_tilde_1_0_0, secrep_andDOM_24_z_tilde_1_1_0,
         secrep_andDOM_24_comp_0_0_, secrep_andDOM_24_z_tilde_0_1_0,
         secrep_andDOM_24_z_tilde_0_0_0, secrep_andDOM_25_n4,
         secrep_andDOM_25_n3, secrep_andDOM_25_N3, secrep_andDOM_25_N2,
         secrep_andDOM_25_N1, secrep_andDOM_25_N0, secrep_andDOM_25_comp_1_0_,
         secrep_andDOM_25_z_tilde_1_0_0, secrep_andDOM_25_z_tilde_1_1_0,
         secrep_andDOM_25_comp_0_0_, secrep_andDOM_25_z_tilde_0_1_0,
         secrep_andDOM_25_z_tilde_0_0_0, secrep_andDOM_26_n4,
         secrep_andDOM_26_n3, secrep_andDOM_26_N3, secrep_andDOM_26_N2,
         secrep_andDOM_26_N1, secrep_andDOM_26_N0, secrep_andDOM_26_comp_1_0_,
         secrep_andDOM_26_z_tilde_1_0_0, secrep_andDOM_26_z_tilde_1_1_0,
         secrep_andDOM_26_comp_0_0_, secrep_andDOM_26_z_tilde_0_1_0,
         secrep_andDOM_26_z_tilde_0_0_0, secrep_andDOM_27_n4,
         secrep_andDOM_27_n3, secrep_andDOM_27_N3, secrep_andDOM_27_N2,
         secrep_andDOM_27_N1, secrep_andDOM_27_N0, secrep_andDOM_27_comp_1_0_,
         secrep_andDOM_27_z_tilde_1_0_0, secrep_andDOM_27_z_tilde_1_1_0,
         secrep_andDOM_27_comp_0_0_, secrep_andDOM_27_z_tilde_0_1_0,
         secrep_andDOM_27_z_tilde_0_0_0, secrep_andDOM_28_n4,
         secrep_andDOM_28_n3, secrep_andDOM_28_N3, secrep_andDOM_28_N2,
         secrep_andDOM_28_N1, secrep_andDOM_28_N0, secrep_andDOM_28_comp_1_0_,
         secrep_andDOM_28_z_tilde_1_0_0, secrep_andDOM_28_z_tilde_1_1_0,
         secrep_andDOM_28_comp_0_0_, secrep_andDOM_28_z_tilde_0_1_0,
         secrep_andDOM_28_z_tilde_0_0_0, secrep_andDOM_29_n4,
         secrep_andDOM_29_n3, secrep_andDOM_29_N3, secrep_andDOM_29_N2,
         secrep_andDOM_29_N1, secrep_andDOM_29_N0, secrep_andDOM_29_comp_1_0_,
         secrep_andDOM_29_z_tilde_1_0_0, secrep_andDOM_29_z_tilde_1_1_0,
         secrep_andDOM_29_comp_0_0_, secrep_andDOM_29_z_tilde_0_1_0,
         secrep_andDOM_29_z_tilde_0_0_0;
  wire   [2:0] dom_port_c_0;
  wire   [2:0] dom_port_c_1;
  wire   [2:0] dom_comp_1;
  wire   [2:0] dom_comp_0;
  wire   [2:0] dom_mul_port_c_1_1;
  wire   [2:0] dom_mul_port_c_1_0;
  wire   [2:0] dom_mul_port_c_0_1;
  wire   [2:0] dom_mul_port_c_0_0;
  wire   [2:0] dom_mul_xor2_7_port_z;
  wire   [2:0] dom_mul_xor2_6_port_z;
  wire   [2:0] dom_mul_xor2_6_port_a0;
  wire   [2:0] dom_mul_xor2_5_port_z;
  wire   [2:0] dom_mul_xor2_4_port_z;
  wire   [2:0] dom_mul_xor2_4_port_a0;
  wire   [2:0] secrep_refreshed_1;
  wire   [2:0] secrep_refreshed_0;

  XOR2_X1 dom_U8 ( .A(dom_mul_port_c_0_1[2]), .B(dom_mul_port_c_0_0[2]), .Z(
        dom_comp_0[2]) );
  XOR2_X1 dom_U7 ( .A(dom_mul_port_c_0_1[1]), .B(dom_mul_port_c_0_0[1]), .Z(
        dom_comp_0[1]) );
  XOR2_X1 dom_U6 ( .A(dom_mul_port_c_0_1[0]), .B(dom_mul_port_c_0_0[0]), .Z(
        dom_comp_0[0]) );
  XOR2_X1 dom_U5 ( .A(dom_mul_port_c_1_1[2]), .B(dom_mul_port_c_1_0[2]), .Z(
        dom_comp_1[2]) );
  XOR2_X1 dom_U4 ( .A(dom_mul_port_c_1_1[1]), .B(dom_mul_port_c_1_0[1]), .Z(
        dom_comp_1[1]) );
  XOR2_X1 dom_U3 ( .A(dom_mul_port_c_1_1[0]), .B(dom_mul_port_c_1_0[0]), .Z(
        dom_comp_1[0]) );
  DFF_X1 dom_result_1_reg_0_ ( .D(dom_comp_1[0]), .CK(clk), .Q(dom_port_c_1[0]), .QN() );
  DFF_X1 dom_result_1_reg_1_ ( .D(dom_comp_1[1]), .CK(clk), .Q(dom_port_c_1[1]), .QN() );
  DFF_X1 dom_result_1_reg_2_ ( .D(dom_comp_1[2]), .CK(clk), .Q(dom_port_c_1[2]), .QN() );
  DFF_X1 dom_result_0_reg_0_ ( .D(dom_comp_0[0]), .CK(clk), .Q(dom_port_c_0[0]), .QN() );
  DFF_X1 dom_result_0_reg_1_ ( .D(dom_comp_0[1]), .CK(clk), .Q(dom_port_c_0[1]), .QN() );
  DFF_X1 dom_result_0_reg_2_ ( .D(dom_comp_0[2]), .CK(clk), .Q(dom_port_c_0[2]), .QN() );
  INV_X1 dom_mul_U26 ( .A(port_b_1[2]), .ZN(dom_mul_n10) );
  INV_X1 dom_mul_U25 ( .A(port_b_1[1]), .ZN(dom_mul_n11) );
  INV_X1 dom_mul_U24 ( .A(port_b_1[0]), .ZN(dom_mul_n12) );
  INV_X1 dom_mul_U23 ( .A(port_a_0[2]), .ZN(dom_mul_n1) );
  INV_X1 dom_mul_U22 ( .A(port_a_0[1]), .ZN(dom_mul_n2) );
  INV_X1 dom_mul_U21 ( .A(port_a_0[0]), .ZN(dom_mul_n3) );
  INV_X1 dom_mul_U20 ( .A(port_b_0[2]), .ZN(dom_mul_n7) );
  INV_X1 dom_mul_U19 ( .A(port_b_0[1]), .ZN(dom_mul_n8) );
  INV_X1 dom_mul_U18 ( .A(port_b_0[0]), .ZN(dom_mul_n9) );
  INV_X1 dom_mul_U17 ( .A(port_a_1[2]), .ZN(dom_mul_n4) );
  INV_X1 dom_mul_U16 ( .A(port_a_1[1]), .ZN(dom_mul_n5) );
  INV_X1 dom_mul_U15 ( .A(port_a_1[0]), .ZN(dom_mul_n6) );
  NOR2_X1 dom_mul_U14 ( .A1(dom_mul_n1), .A2(dom_mul_n10), .ZN(
        dom_mul_xor2_4_port_a0[2]) );
  NOR2_X1 dom_mul_U13 ( .A1(dom_mul_n2), .A2(dom_mul_n11), .ZN(
        dom_mul_xor2_4_port_a0[1]) );
  NOR2_X1 dom_mul_U12 ( .A1(dom_mul_n3), .A2(dom_mul_n12), .ZN(
        dom_mul_xor2_4_port_a0[0]) );
  NOR2_X1 dom_mul_U11 ( .A1(dom_mul_n4), .A2(dom_mul_n7), .ZN(
        dom_mul_xor2_6_port_a0[2]) );
  NOR2_X1 dom_mul_U10 ( .A1(dom_mul_n5), .A2(dom_mul_n8), .ZN(
        dom_mul_xor2_6_port_a0[1]) );
  NOR2_X1 dom_mul_U9 ( .A1(dom_mul_n6), .A2(dom_mul_n9), .ZN(
        dom_mul_xor2_6_port_a0[0]) );
  NOR2_X1 dom_mul_U8 ( .A1(dom_mul_n7), .A2(dom_mul_n1), .ZN(dom_mul_N8) );
  NOR2_X1 dom_mul_U7 ( .A1(dom_mul_n8), .A2(dom_mul_n2), .ZN(dom_mul_N9) );
  NOR2_X1 dom_mul_U6 ( .A1(dom_mul_n9), .A2(dom_mul_n3), .ZN(dom_mul_N10) );
  NOR2_X1 dom_mul_U5 ( .A1(dom_mul_n4), .A2(dom_mul_n10), .ZN(dom_mul_N11) );
  NOR2_X1 dom_mul_U4 ( .A1(dom_mul_n5), .A2(dom_mul_n11), .ZN(dom_mul_N12) );
  NOR2_X1 dom_mul_U3 ( .A1(dom_mul_n6), .A2(dom_mul_n12), .ZN(dom_mul_N13) );
  DFF_X1 dom_mul_u_1_1_reg_0_ ( .D(dom_mul_N13), .CK(clk), .Q(
        dom_mul_port_c_1_1[0]), .QN() );
  DFF_X1 dom_mul_u_1_1_reg_1_ ( .D(dom_mul_N12), .CK(clk), .Q(
        dom_mul_port_c_1_1[1]), .QN() );
  DFF_X1 dom_mul_u_1_1_reg_2_ ( .D(dom_mul_N11), .CK(clk), .Q(
        dom_mul_port_c_1_1[2]), .QN() );
  DFF_X1 dom_mul_u_1_0_reg_0_ ( .D(dom_mul_xor2_7_port_z[0]), .CK(clk), .Q(
        dom_mul_port_c_1_0[0]), .QN() );
  DFF_X1 dom_mul_u_1_0_reg_1_ ( .D(dom_mul_xor2_7_port_z[1]), .CK(clk), .Q(
        dom_mul_port_c_1_0[1]), .QN() );
  DFF_X1 dom_mul_u_1_0_reg_2_ ( .D(dom_mul_xor2_7_port_z[2]), .CK(clk), .Q(
        dom_mul_port_c_1_0[2]), .QN() );
  DFF_X1 dom_mul_u_0_1_reg_0_ ( .D(dom_mul_xor2_5_port_z[0]), .CK(clk), .Q(
        dom_mul_port_c_0_1[0]), .QN() );
  DFF_X1 dom_mul_u_0_1_reg_1_ ( .D(dom_mul_xor2_5_port_z[1]), .CK(clk), .Q(
        dom_mul_port_c_0_1[1]), .QN() );
  DFF_X1 dom_mul_u_0_1_reg_2_ ( .D(dom_mul_xor2_5_port_z[2]), .CK(clk), .Q(
        dom_mul_port_c_0_1[2]), .QN() );
  DFF_X1 dom_mul_u_0_0_reg_0_ ( .D(dom_mul_N10), .CK(clk), .Q(
        dom_mul_port_c_0_0[0]), .QN() );
  DFF_X1 dom_mul_u_0_0_reg_1_ ( .D(dom_mul_N9), .CK(clk), .Q(
        dom_mul_port_c_0_0[1]), .QN() );
  DFF_X1 dom_mul_u_0_0_reg_2_ ( .D(dom_mul_N8), .CK(clk), .Q(
        dom_mul_port_c_0_0[2]), .QN() );
  XOR2_X1 dom_mul_xor2_4_U3 ( .A(port_r_dom[0]), .B(dom_mul_xor2_4_port_a0[2]), 
        .Z(dom_mul_xor2_4_port_z[2]) );
  XOR2_X1 dom_mul_xor2_4_U2 ( .A(port_r_dom[0]), .B(dom_mul_xor2_4_port_a0[1]), 
        .Z(dom_mul_xor2_4_port_z[1]) );
  XOR2_X1 dom_mul_xor2_4_U1 ( .A(port_r_dom[0]), .B(dom_mul_xor2_4_port_a0[0]), 
        .Z(dom_mul_xor2_4_port_z[0]) );
  XOR2_X1 dom_mul_xor2_5_U3 ( .A(port_r_dom[1]), .B(dom_mul_xor2_4_port_z[2]), 
        .Z(dom_mul_xor2_5_port_z[2]) );
  XOR2_X1 dom_mul_xor2_5_U2 ( .A(port_r_dom[1]), .B(dom_mul_xor2_4_port_z[1]), 
        .Z(dom_mul_xor2_5_port_z[1]) );
  XOR2_X1 dom_mul_xor2_5_U1 ( .A(port_r_dom[1]), .B(dom_mul_xor2_4_port_z[0]), 
        .Z(dom_mul_xor2_5_port_z[0]) );
  XOR2_X1 dom_mul_xor2_6_U3 ( .A(port_r_dom[0]), .B(dom_mul_xor2_6_port_a0[2]), 
        .Z(dom_mul_xor2_6_port_z[2]) );
  XOR2_X1 dom_mul_xor2_6_U2 ( .A(port_r_dom[0]), .B(dom_mul_xor2_6_port_a0[1]), 
        .Z(dom_mul_xor2_6_port_z[1]) );
  XOR2_X1 dom_mul_xor2_6_U1 ( .A(port_r_dom[0]), .B(dom_mul_xor2_6_port_a0[0]), 
        .Z(dom_mul_xor2_6_port_z[0]) );
  XOR2_X1 dom_mul_xor2_7_U3 ( .A(port_r_dom[1]), .B(dom_mul_xor2_6_port_z[2]), 
        .Z(dom_mul_xor2_7_port_z[2]) );
  XOR2_X1 dom_mul_xor2_7_U2 ( .A(port_r_dom[1]), .B(dom_mul_xor2_6_port_z[1]), 
        .Z(dom_mul_xor2_7_port_z[1]) );
  XOR2_X1 dom_mul_xor2_7_U1 ( .A(port_r_dom[1]), .B(dom_mul_xor2_6_port_z[0]), 
        .Z(dom_mul_xor2_7_port_z[0]) );
  INV_X1 secrep_U12 ( .A(secrep_andDOM_29_port_c_0_0_), .ZN(port_c_0[2]) );
  INV_X1 secrep_U11 ( .A(secrep_andDOM_24_port_c_0_0_), .ZN(port_c_0[1]) );
  INV_X1 secrep_U10 ( .A(secrep_andDOM_19_port_c_0_0_), .ZN(port_c_0[0]) );
  INV_X1 secrep_U9 ( .A(secrep_andDOM_27_port_c_0_0_), .ZN(secrep_n11) );
  INV_X1 secrep_U8 ( .A(secrep_andDOM_26_port_c_0_0_), .ZN(secrep_n10) );
  INV_X1 secrep_U7 ( .A(secrep_andDOM_22_port_c_0_0_), .ZN(secrep_n7) );
  INV_X1 secrep_U6 ( .A(secrep_andDOM_21_port_c_0_0_), .ZN(secrep_n6) );
  INV_X1 secrep_U5 ( .A(secrep_andDOM_17_port_c_0_0_), .ZN(secrep_n3) );
  INV_X1 secrep_U4 ( .A(secrep_andDOM_16_port_c_0_0_), .ZN(secrep_n2) );
  INV_X1 secrep_U3 ( .A(secrep_andDOM_25_port_c_0_0_), .ZN(secrep_n9) );
  INV_X1 secrep_U2 ( .A(secrep_andDOM_20_port_c_0_0_), .ZN(secrep_n5) );
  INV_X1 secrep_U1 ( .A(secrep_andDOM_15_port_c_0_0_), .ZN(secrep_n1) );
  XOR2_X1 secrep_xor_7_U1 ( .A(port_r_rep[0]), .B(dom_port_c_0[0]), .Z(
        secrep_refreshed_0[0]) );
  XOR2_X1 secrep_xor_8_U1 ( .A(port_r_rep[0]), .B(dom_port_c_1[0]), .Z(
        secrep_refreshed_1[0]) );
  XOR2_X1 secrep_xor_9_U1 ( .A(port_r_rep[1]), .B(dom_port_c_0[1]), .Z(
        secrep_refreshed_0[1]) );
  XOR2_X1 secrep_xor_10_U1 ( .A(port_r_rep[1]), .B(dom_port_c_1[1]), .Z(
        secrep_refreshed_1[1]) );
  XOR2_X1 secrep_xor_11_U1 ( .A(port_r_rep[2]), .B(dom_port_c_0[2]), .Z(
        secrep_refreshed_0[2]) );
  XOR2_X1 secrep_xor_12_U1 ( .A(port_r_rep[2]), .B(dom_port_c_1[2]), .Z(
        secrep_refreshed_1[2]) );
  XOR2_X1 secrep_andDOM_15_U10 ( .A(secrep_andDOM_15_z_tilde_1_1_0), .B(
        secrep_andDOM_15_z_tilde_1_0_0), .Z(secrep_andDOM_15_comp_1_0_) );
  XOR2_X1 secrep_andDOM_15_U9 ( .A(secrep_andDOM_15_z_tilde_0_1_0), .B(
        secrep_andDOM_15_z_tilde_0_0_0), .Z(secrep_andDOM_15_comp_0_0_) );
  NAND2_X1 secrep_andDOM_15_U8 ( .A1(secrep_refreshed_0[1]), .A2(
        secrep_refreshed_1[0]), .ZN(secrep_andDOM_15_n1) );
  XNOR2_X1 secrep_andDOM_15_U7 ( .A(port_r_rep[3]), .B(secrep_andDOM_15_n1), 
        .ZN(secrep_andDOM_15_N2) );
  NAND2_X1 secrep_andDOM_15_U6 ( .A1(secrep_refreshed_0[0]), .A2(
        secrep_refreshed_1[1]), .ZN(secrep_andDOM_15_n2) );
  XNOR2_X1 secrep_andDOM_15_U5 ( .A(port_r_rep[3]), .B(secrep_andDOM_15_n2), 
        .ZN(secrep_andDOM_15_N1) );
  AND2_X1 secrep_andDOM_15_U4 ( .A1(secrep_refreshed_0[1]), .A2(
        secrep_refreshed_0[0]), .ZN(secrep_andDOM_15_N0) );
  AND2_X1 secrep_andDOM_15_U3 ( .A1(secrep_refreshed_1[0]), .A2(
        secrep_refreshed_1[1]), .ZN(secrep_andDOM_15_N3) );
  DFF_X1 secrep_andDOM_15_result_0_reg_0_ ( .D(secrep_andDOM_15_comp_0_0_), 
        .CK(clk), .Q(secrep_andDOM_15_port_c_0_0_), .QN() );
  DFF_X1 secrep_andDOM_15_z_tilde_0_0_0_reg ( .D(secrep_andDOM_15_N0), .CK(clk), .Q(secrep_andDOM_15_z_tilde_0_0_0), .QN() );
  DFF_X1 secrep_andDOM_15_result_1_reg_0_ ( .D(secrep_andDOM_15_comp_1_0_), 
        .CK(clk), .Q(secrep_andDOM_15_port_c_1_0_), .QN() );
  DFF_X1 secrep_andDOM_15_z_tilde_1_0_0_reg ( .D(secrep_andDOM_15_N2), .CK(clk), .Q(secrep_andDOM_15_z_tilde_1_0_0), .QN() );
  DFF_X1 secrep_andDOM_15_z_tilde_0_1_0_reg ( .D(secrep_andDOM_15_N1), .CK(clk), .Q(secrep_andDOM_15_z_tilde_0_1_0), .QN() );
  DFF_X1 secrep_andDOM_15_z_tilde_1_1_0_reg ( .D(secrep_andDOM_15_N3), .CK(clk), .Q(secrep_andDOM_15_z_tilde_1_1_0), .QN() );
  XOR2_X1 secrep_andDOM_16_U10 ( .A(secrep_andDOM_16_z_tilde_1_1_0), .B(
        secrep_andDOM_16_z_tilde_1_0_0), .Z(secrep_andDOM_16_comp_1_0_) );
  XOR2_X1 secrep_andDOM_16_U9 ( .A(secrep_andDOM_16_z_tilde_0_1_0), .B(
        secrep_andDOM_16_z_tilde_0_0_0), .Z(secrep_andDOM_16_comp_0_0_) );
  NAND2_X1 secrep_andDOM_16_U8 ( .A1(secrep_refreshed_0[2]), .A2(
        secrep_refreshed_1[0]), .ZN(secrep_andDOM_16_n4) );
  XNOR2_X1 secrep_andDOM_16_U7 ( .A(port_r_rep[4]), .B(secrep_andDOM_16_n4), 
        .ZN(secrep_andDOM_16_N2) );
  NAND2_X1 secrep_andDOM_16_U6 ( .A1(secrep_refreshed_0[0]), .A2(
        secrep_refreshed_1[2]), .ZN(secrep_andDOM_16_n3) );
  XNOR2_X1 secrep_andDOM_16_U5 ( .A(port_r_rep[4]), .B(secrep_andDOM_16_n3), 
        .ZN(secrep_andDOM_16_N1) );
  AND2_X1 secrep_andDOM_16_U4 ( .A1(secrep_refreshed_0[2]), .A2(
        secrep_refreshed_0[0]), .ZN(secrep_andDOM_16_N0) );
  AND2_X1 secrep_andDOM_16_U3 ( .A1(secrep_refreshed_1[0]), .A2(
        secrep_refreshed_1[2]), .ZN(secrep_andDOM_16_N3) );
  DFF_X1 secrep_andDOM_16_result_0_reg_0_ ( .D(secrep_andDOM_16_comp_0_0_), 
        .CK(clk), .Q(secrep_andDOM_16_port_c_0_0_), .QN() );
  DFF_X1 secrep_andDOM_16_z_tilde_0_0_0_reg ( .D(secrep_andDOM_16_N0), .CK(clk), .Q(secrep_andDOM_16_z_tilde_0_0_0), .QN() );
  DFF_X1 secrep_andDOM_16_result_1_reg_0_ ( .D(secrep_andDOM_16_comp_1_0_), 
        .CK(clk), .Q(secrep_andDOM_16_port_c_1_0_), .QN() );
  DFF_X1 secrep_andDOM_16_z_tilde_1_0_0_reg ( .D(secrep_andDOM_16_N2), .CK(clk), .Q(secrep_andDOM_16_z_tilde_1_0_0), .QN() );
  DFF_X1 secrep_andDOM_16_z_tilde_0_1_0_reg ( .D(secrep_andDOM_16_N1), .CK(clk), .Q(secrep_andDOM_16_z_tilde_0_1_0), .QN() );
  DFF_X1 secrep_andDOM_16_z_tilde_1_1_0_reg ( .D(secrep_andDOM_16_N3), .CK(clk), .Q(secrep_andDOM_16_z_tilde_1_1_0), .QN() );
  XOR2_X1 secrep_andDOM_17_U10 ( .A(secrep_andDOM_17_z_tilde_1_1_0), .B(
        secrep_andDOM_17_z_tilde_1_0_0), .Z(secrep_andDOM_17_comp_1_0_) );
  XOR2_X1 secrep_andDOM_17_U9 ( .A(secrep_andDOM_17_z_tilde_0_1_0), .B(
        secrep_andDOM_17_z_tilde_0_0_0), .Z(secrep_andDOM_17_comp_0_0_) );
  NAND2_X1 secrep_andDOM_17_U8 ( .A1(secrep_refreshed_0[2]), .A2(
        secrep_refreshed_1[1]), .ZN(secrep_andDOM_17_n4) );
  XNOR2_X1 secrep_andDOM_17_U7 ( .A(port_r_rep[5]), .B(secrep_andDOM_17_n4), 
        .ZN(secrep_andDOM_17_N2) );
  NAND2_X1 secrep_andDOM_17_U6 ( .A1(secrep_refreshed_0[1]), .A2(
        secrep_refreshed_1[2]), .ZN(secrep_andDOM_17_n3) );
  XNOR2_X1 secrep_andDOM_17_U5 ( .A(port_r_rep[5]), .B(secrep_andDOM_17_n3), 
        .ZN(secrep_andDOM_17_N1) );
  AND2_X1 secrep_andDOM_17_U4 ( .A1(secrep_refreshed_0[2]), .A2(
        secrep_refreshed_0[1]), .ZN(secrep_andDOM_17_N0) );
  AND2_X1 secrep_andDOM_17_U3 ( .A1(secrep_refreshed_1[1]), .A2(
        secrep_refreshed_1[2]), .ZN(secrep_andDOM_17_N3) );
  DFF_X1 secrep_andDOM_17_result_0_reg_0_ ( .D(secrep_andDOM_17_comp_0_0_), 
        .CK(clk), .Q(secrep_andDOM_17_port_c_0_0_), .QN() );
  DFF_X1 secrep_andDOM_17_z_tilde_0_0_0_reg ( .D(secrep_andDOM_17_N0), .CK(clk), .Q(secrep_andDOM_17_z_tilde_0_0_0), .QN() );
  DFF_X1 secrep_andDOM_17_result_1_reg_0_ ( .D(secrep_andDOM_17_comp_1_0_), 
        .CK(clk), .Q(secrep_andDOM_17_port_c_1_0_), .QN() );
  DFF_X1 secrep_andDOM_17_z_tilde_1_0_0_reg ( .D(secrep_andDOM_17_N2), .CK(clk), .Q(secrep_andDOM_17_z_tilde_1_0_0), .QN() );
  DFF_X1 secrep_andDOM_17_z_tilde_0_1_0_reg ( .D(secrep_andDOM_17_N1), .CK(clk), .Q(secrep_andDOM_17_z_tilde_0_1_0), .QN() );
  DFF_X1 secrep_andDOM_17_z_tilde_1_1_0_reg ( .D(secrep_andDOM_17_N3), .CK(clk), .Q(secrep_andDOM_17_z_tilde_1_1_0), .QN() );
  AND2_X1 secrep_andDOM_18_U10 ( .A1(secrep_andDOM_15_port_c_1_0_), .A2(
        secrep_andDOM_16_port_c_1_0_), .ZN(secrep_andDOM_18_N3) );
  XOR2_X1 secrep_andDOM_18_U9 ( .A(secrep_andDOM_18_z_tilde_1_1_0), .B(
        secrep_andDOM_18_z_tilde_1_0_0), .Z(secrep_andDOM_18_comp_1_0_) );
  XOR2_X1 secrep_andDOM_18_U8 ( .A(secrep_andDOM_18_z_tilde_0_1_0), .B(
        secrep_andDOM_18_z_tilde_0_0_0), .Z(secrep_andDOM_18_comp_0_0_) );
  NAND2_X1 secrep_andDOM_18_U7 ( .A1(secrep_n1), .A2(
        secrep_andDOM_16_port_c_1_0_), .ZN(secrep_andDOM_18_n3) );
  XNOR2_X1 secrep_andDOM_18_U6 ( .A(port_r_rep[6]), .B(secrep_andDOM_18_n3), 
        .ZN(secrep_andDOM_18_N1) );
  NAND2_X1 secrep_andDOM_18_U5 ( .A1(secrep_n2), .A2(
        secrep_andDOM_15_port_c_1_0_), .ZN(secrep_andDOM_18_n4) );
  XNOR2_X1 secrep_andDOM_18_U4 ( .A(port_r_rep[6]), .B(secrep_andDOM_18_n4), 
        .ZN(secrep_andDOM_18_N2) );
  AND2_X1 secrep_andDOM_18_U3 ( .A1(secrep_n2), .A2(secrep_n1), .ZN(
        secrep_andDOM_18_N0) );
  DFF_X1 secrep_andDOM_18_result_0_reg_0_ ( .D(secrep_andDOM_18_comp_0_0_), 
        .CK(clk), .Q(secrep_andDOM_18_port_c_0_0_), .QN() );
  DFF_X1 secrep_andDOM_18_z_tilde_0_0_0_reg ( .D(secrep_andDOM_18_N0), .CK(clk), .Q(secrep_andDOM_18_z_tilde_0_0_0), .QN() );
  DFF_X1 secrep_andDOM_18_result_1_reg_0_ ( .D(secrep_andDOM_18_comp_1_0_), 
        .CK(clk), .Q(secrep_andDOM_18_port_c_1_0_), .QN() );
  DFF_X1 secrep_andDOM_18_z_tilde_1_0_0_reg ( .D(secrep_andDOM_18_N2), .CK(clk), .Q(secrep_andDOM_18_z_tilde_1_0_0), .QN() );
  DFF_X1 secrep_andDOM_18_z_tilde_0_1_0_reg ( .D(secrep_andDOM_18_N1), .CK(clk), .Q(secrep_andDOM_18_z_tilde_0_1_0), .QN() );
  DFF_X1 secrep_andDOM_18_z_tilde_1_1_0_reg ( .D(secrep_andDOM_18_N3), .CK(clk), .Q(secrep_andDOM_18_z_tilde_1_1_0), .QN() );
  AND2_X1 secrep_andDOM_19_U10 ( .A1(secrep_andDOM_18_port_c_1_0_), .A2(
        secrep_andDOM_17_port_c_1_0_), .ZN(secrep_andDOM_19_N3) );
  XOR2_X1 secrep_andDOM_19_U9 ( .A(secrep_andDOM_19_z_tilde_1_1_0), .B(
        secrep_andDOM_19_z_tilde_1_0_0), .Z(secrep_andDOM_19_comp_1_0_) );
  XOR2_X1 secrep_andDOM_19_U8 ( .A(secrep_andDOM_19_z_tilde_0_1_0), .B(
        secrep_andDOM_19_z_tilde_0_0_0), .Z(secrep_andDOM_19_comp_0_0_) );
  AND2_X1 secrep_andDOM_19_U7 ( .A1(secrep_n3), .A2(
        secrep_andDOM_18_port_c_0_0_), .ZN(secrep_andDOM_19_N0) );
  NAND2_X1 secrep_andDOM_19_U6 ( .A1(secrep_andDOM_18_port_c_0_0_), .A2(
        secrep_andDOM_17_port_c_1_0_), .ZN(secrep_andDOM_19_n3) );
  XNOR2_X1 secrep_andDOM_19_U5 ( .A(port_r_rep[7]), .B(secrep_andDOM_19_n3), 
        .ZN(secrep_andDOM_19_N1) );
  NAND2_X1 secrep_andDOM_19_U4 ( .A1(secrep_n3), .A2(
        secrep_andDOM_18_port_c_1_0_), .ZN(secrep_andDOM_19_n4) );
  XNOR2_X1 secrep_andDOM_19_U3 ( .A(port_r_rep[7]), .B(secrep_andDOM_19_n4), 
        .ZN(secrep_andDOM_19_N2) );
  DFF_X1 secrep_andDOM_19_result_0_reg_0_ ( .D(secrep_andDOM_19_comp_0_0_), 
        .CK(clk), .Q(secrep_andDOM_19_port_c_0_0_), .QN() );
  DFF_X1 secrep_andDOM_19_z_tilde_0_0_0_reg ( .D(secrep_andDOM_19_N0), .CK(clk), .Q(secrep_andDOM_19_z_tilde_0_0_0), .QN() );
  DFF_X1 secrep_andDOM_19_result_1_reg_0_ ( .D(secrep_andDOM_19_comp_1_0_), 
        .CK(clk), .Q(port_c_1[0]), .QN() );
  DFF_X1 secrep_andDOM_19_z_tilde_1_0_0_reg ( .D(secrep_andDOM_19_N2), .CK(clk), .Q(secrep_andDOM_19_z_tilde_1_0_0), .QN() );
  DFF_X1 secrep_andDOM_19_z_tilde_0_1_0_reg ( .D(secrep_andDOM_19_N1), .CK(clk), .Q(secrep_andDOM_19_z_tilde_0_1_0), .QN() );
  DFF_X1 secrep_andDOM_19_z_tilde_1_1_0_reg ( .D(secrep_andDOM_19_N3), .CK(clk), .Q(secrep_andDOM_19_z_tilde_1_1_0), .QN() );
  XOR2_X1 secrep_andDOM_20_U10 ( .A(secrep_andDOM_20_z_tilde_1_1_0), .B(
        secrep_andDOM_20_z_tilde_1_0_0), .Z(secrep_andDOM_20_comp_1_0_) );
  XOR2_X1 secrep_andDOM_20_U9 ( .A(secrep_andDOM_20_z_tilde_0_1_0), .B(
        secrep_andDOM_20_z_tilde_0_0_0), .Z(secrep_andDOM_20_comp_0_0_) );
  NAND2_X1 secrep_andDOM_20_U8 ( .A1(secrep_refreshed_0[1]), .A2(
        secrep_refreshed_1[0]), .ZN(secrep_andDOM_20_n4) );
  XNOR2_X1 secrep_andDOM_20_U7 ( .A(port_r_rep[3]), .B(secrep_andDOM_20_n4), 
        .ZN(secrep_andDOM_20_N2) );
  NAND2_X1 secrep_andDOM_20_U6 ( .A1(secrep_refreshed_0[0]), .A2(
        secrep_refreshed_1[1]), .ZN(secrep_andDOM_20_n3) );
  XNOR2_X1 secrep_andDOM_20_U5 ( .A(port_r_rep[3]), .B(secrep_andDOM_20_n3), 
        .ZN(secrep_andDOM_20_N1) );
  AND2_X1 secrep_andDOM_20_U4 ( .A1(secrep_refreshed_0[1]), .A2(
        secrep_refreshed_0[0]), .ZN(secrep_andDOM_20_N0) );
  AND2_X1 secrep_andDOM_20_U3 ( .A1(secrep_refreshed_1[0]), .A2(
        secrep_refreshed_1[1]), .ZN(secrep_andDOM_20_N3) );
  DFF_X1 secrep_andDOM_20_result_0_reg_0_ ( .D(secrep_andDOM_20_comp_0_0_), 
        .CK(clk), .Q(secrep_andDOM_20_port_c_0_0_), .QN() );
  DFF_X1 secrep_andDOM_20_z_tilde_0_0_0_reg ( .D(secrep_andDOM_20_N0), .CK(clk), .Q(secrep_andDOM_20_z_tilde_0_0_0), .QN() );
  DFF_X1 secrep_andDOM_20_result_1_reg_0_ ( .D(secrep_andDOM_20_comp_1_0_), 
        .CK(clk), .Q(secrep_andDOM_20_port_c_1_0_), .QN() );
  DFF_X1 secrep_andDOM_20_z_tilde_1_0_0_reg ( .D(secrep_andDOM_20_N2), .CK(clk), .Q(secrep_andDOM_20_z_tilde_1_0_0), .QN() );
  DFF_X1 secrep_andDOM_20_z_tilde_0_1_0_reg ( .D(secrep_andDOM_20_N1), .CK(clk), .Q(secrep_andDOM_20_z_tilde_0_1_0), .QN() );
  DFF_X1 secrep_andDOM_20_z_tilde_1_1_0_reg ( .D(secrep_andDOM_20_N3), .CK(clk), .Q(secrep_andDOM_20_z_tilde_1_1_0), .QN() );
  XOR2_X1 secrep_andDOM_21_U10 ( .A(secrep_andDOM_21_z_tilde_1_1_0), .B(
        secrep_andDOM_21_z_tilde_1_0_0), .Z(secrep_andDOM_21_comp_1_0_) );
  XOR2_X1 secrep_andDOM_21_U9 ( .A(secrep_andDOM_21_z_tilde_0_1_0), .B(
        secrep_andDOM_21_z_tilde_0_0_0), .Z(secrep_andDOM_21_comp_0_0_) );
  NAND2_X1 secrep_andDOM_21_U8 ( .A1(secrep_refreshed_0[2]), .A2(
        secrep_refreshed_1[0]), .ZN(secrep_andDOM_21_n4) );
  XNOR2_X1 secrep_andDOM_21_U7 ( .A(port_r_rep[4]), .B(secrep_andDOM_21_n4), 
        .ZN(secrep_andDOM_21_N2) );
  NAND2_X1 secrep_andDOM_21_U6 ( .A1(secrep_refreshed_0[0]), .A2(
        secrep_refreshed_1[2]), .ZN(secrep_andDOM_21_n3) );
  XNOR2_X1 secrep_andDOM_21_U5 ( .A(port_r_rep[4]), .B(secrep_andDOM_21_n3), 
        .ZN(secrep_andDOM_21_N1) );
  AND2_X1 secrep_andDOM_21_U4 ( .A1(secrep_refreshed_0[2]), .A2(
        secrep_refreshed_0[0]), .ZN(secrep_andDOM_21_N0) );
  AND2_X1 secrep_andDOM_21_U3 ( .A1(secrep_refreshed_1[0]), .A2(
        secrep_refreshed_1[2]), .ZN(secrep_andDOM_21_N3) );
  DFF_X1 secrep_andDOM_21_result_0_reg_0_ ( .D(secrep_andDOM_21_comp_0_0_), 
        .CK(clk), .Q(secrep_andDOM_21_port_c_0_0_), .QN() );
  DFF_X1 secrep_andDOM_21_z_tilde_0_0_0_reg ( .D(secrep_andDOM_21_N0), .CK(clk), .Q(secrep_andDOM_21_z_tilde_0_0_0), .QN() );
  DFF_X1 secrep_andDOM_21_result_1_reg_0_ ( .D(secrep_andDOM_21_comp_1_0_), 
        .CK(clk), .Q(secrep_andDOM_21_port_c_1_0_), .QN() );
  DFF_X1 secrep_andDOM_21_z_tilde_1_0_0_reg ( .D(secrep_andDOM_21_N2), .CK(clk), .Q(secrep_andDOM_21_z_tilde_1_0_0), .QN() );
  DFF_X1 secrep_andDOM_21_z_tilde_0_1_0_reg ( .D(secrep_andDOM_21_N1), .CK(clk), .Q(secrep_andDOM_21_z_tilde_0_1_0), .QN() );
  DFF_X1 secrep_andDOM_21_z_tilde_1_1_0_reg ( .D(secrep_andDOM_21_N3), .CK(clk), .Q(secrep_andDOM_21_z_tilde_1_1_0), .QN() );
  XOR2_X1 secrep_andDOM_22_U10 ( .A(secrep_andDOM_22_z_tilde_1_1_0), .B(
        secrep_andDOM_22_z_tilde_1_0_0), .Z(secrep_andDOM_22_comp_1_0_) );
  XOR2_X1 secrep_andDOM_22_U9 ( .A(secrep_andDOM_22_z_tilde_0_1_0), .B(
        secrep_andDOM_22_z_tilde_0_0_0), .Z(secrep_andDOM_22_comp_0_0_) );
  NAND2_X1 secrep_andDOM_22_U8 ( .A1(secrep_refreshed_0[2]), .A2(
        secrep_refreshed_1[1]), .ZN(secrep_andDOM_22_n4) );
  XNOR2_X1 secrep_andDOM_22_U7 ( .A(port_r_rep[5]), .B(secrep_andDOM_22_n4), 
        .ZN(secrep_andDOM_22_N2) );
  NAND2_X1 secrep_andDOM_22_U6 ( .A1(secrep_refreshed_0[1]), .A2(
        secrep_refreshed_1[2]), .ZN(secrep_andDOM_22_n3) );
  XNOR2_X1 secrep_andDOM_22_U5 ( .A(port_r_rep[5]), .B(secrep_andDOM_22_n3), 
        .ZN(secrep_andDOM_22_N1) );
  AND2_X1 secrep_andDOM_22_U4 ( .A1(secrep_refreshed_0[2]), .A2(
        secrep_refreshed_0[1]), .ZN(secrep_andDOM_22_N0) );
  AND2_X1 secrep_andDOM_22_U3 ( .A1(secrep_refreshed_1[1]), .A2(
        secrep_refreshed_1[2]), .ZN(secrep_andDOM_22_N3) );
  DFF_X1 secrep_andDOM_22_result_0_reg_0_ ( .D(secrep_andDOM_22_comp_0_0_), 
        .CK(clk), .Q(secrep_andDOM_22_port_c_0_0_), .QN() );
  DFF_X1 secrep_andDOM_22_z_tilde_0_0_0_reg ( .D(secrep_andDOM_22_N0), .CK(clk), .Q(secrep_andDOM_22_z_tilde_0_0_0), .QN() );
  DFF_X1 secrep_andDOM_22_result_1_reg_0_ ( .D(secrep_andDOM_22_comp_1_0_), 
        .CK(clk), .Q(secrep_andDOM_22_port_c_1_0_), .QN() );
  DFF_X1 secrep_andDOM_22_z_tilde_1_0_0_reg ( .D(secrep_andDOM_22_N2), .CK(clk), .Q(secrep_andDOM_22_z_tilde_1_0_0), .QN() );
  DFF_X1 secrep_andDOM_22_z_tilde_0_1_0_reg ( .D(secrep_andDOM_22_N1), .CK(clk), .Q(secrep_andDOM_22_z_tilde_0_1_0), .QN() );
  DFF_X1 secrep_andDOM_22_z_tilde_1_1_0_reg ( .D(secrep_andDOM_22_N3), .CK(clk), .Q(secrep_andDOM_22_z_tilde_1_1_0), .QN() );
  AND2_X1 secrep_andDOM_23_U10 ( .A1(secrep_andDOM_20_port_c_1_0_), .A2(
        secrep_andDOM_21_port_c_1_0_), .ZN(secrep_andDOM_23_N3) );
  XOR2_X1 secrep_andDOM_23_U9 ( .A(secrep_andDOM_23_z_tilde_1_1_0), .B(
        secrep_andDOM_23_z_tilde_1_0_0), .Z(secrep_andDOM_23_comp_1_0_) );
  XOR2_X1 secrep_andDOM_23_U8 ( .A(secrep_andDOM_23_z_tilde_0_1_0), .B(
        secrep_andDOM_23_z_tilde_0_0_0), .Z(secrep_andDOM_23_comp_0_0_) );
  NAND2_X1 secrep_andDOM_23_U7 ( .A1(secrep_n5), .A2(
        secrep_andDOM_21_port_c_1_0_), .ZN(secrep_andDOM_23_n3) );
  XNOR2_X1 secrep_andDOM_23_U6 ( .A(port_r_rep[6]), .B(secrep_andDOM_23_n3), 
        .ZN(secrep_andDOM_23_N1) );
  NAND2_X1 secrep_andDOM_23_U5 ( .A1(secrep_n6), .A2(
        secrep_andDOM_20_port_c_1_0_), .ZN(secrep_andDOM_23_n4) );
  XNOR2_X1 secrep_andDOM_23_U4 ( .A(port_r_rep[6]), .B(secrep_andDOM_23_n4), 
        .ZN(secrep_andDOM_23_N2) );
  AND2_X1 secrep_andDOM_23_U3 ( .A1(secrep_n6), .A2(secrep_n5), .ZN(
        secrep_andDOM_23_N0) );
  DFF_X1 secrep_andDOM_23_result_0_reg_0_ ( .D(secrep_andDOM_23_comp_0_0_), 
        .CK(clk), .Q(secrep_andDOM_23_port_c_0_0_), .QN() );
  DFF_X1 secrep_andDOM_23_z_tilde_0_0_0_reg ( .D(secrep_andDOM_23_N0), .CK(clk), .Q(secrep_andDOM_23_z_tilde_0_0_0), .QN() );
  DFF_X1 secrep_andDOM_23_result_1_reg_0_ ( .D(secrep_andDOM_23_comp_1_0_), 
        .CK(clk), .Q(secrep_andDOM_23_port_c_1_0_), .QN() );
  DFF_X1 secrep_andDOM_23_z_tilde_1_0_0_reg ( .D(secrep_andDOM_23_N2), .CK(clk), .Q(secrep_andDOM_23_z_tilde_1_0_0), .QN() );
  DFF_X1 secrep_andDOM_23_z_tilde_0_1_0_reg ( .D(secrep_andDOM_23_N1), .CK(clk), .Q(secrep_andDOM_23_z_tilde_0_1_0), .QN() );
  DFF_X1 secrep_andDOM_23_z_tilde_1_1_0_reg ( .D(secrep_andDOM_23_N3), .CK(clk), .Q(secrep_andDOM_23_z_tilde_1_1_0), .QN() );
  AND2_X1 secrep_andDOM_24_U10 ( .A1(secrep_andDOM_23_port_c_1_0_), .A2(
        secrep_andDOM_22_port_c_1_0_), .ZN(secrep_andDOM_24_N3) );
  XOR2_X1 secrep_andDOM_24_U9 ( .A(secrep_andDOM_24_z_tilde_1_1_0), .B(
        secrep_andDOM_24_z_tilde_1_0_0), .Z(secrep_andDOM_24_comp_1_0_) );
  XOR2_X1 secrep_andDOM_24_U8 ( .A(secrep_andDOM_24_z_tilde_0_1_0), .B(
        secrep_andDOM_24_z_tilde_0_0_0), .Z(secrep_andDOM_24_comp_0_0_) );
  AND2_X1 secrep_andDOM_24_U7 ( .A1(secrep_n7), .A2(
        secrep_andDOM_23_port_c_0_0_), .ZN(secrep_andDOM_24_N0) );
  NAND2_X1 secrep_andDOM_24_U6 ( .A1(secrep_andDOM_23_port_c_0_0_), .A2(
        secrep_andDOM_22_port_c_1_0_), .ZN(secrep_andDOM_24_n3) );
  XNOR2_X1 secrep_andDOM_24_U5 ( .A(port_r_rep[7]), .B(secrep_andDOM_24_n3), 
        .ZN(secrep_andDOM_24_N1) );
  NAND2_X1 secrep_andDOM_24_U4 ( .A1(secrep_n7), .A2(
        secrep_andDOM_23_port_c_1_0_), .ZN(secrep_andDOM_24_n4) );
  XNOR2_X1 secrep_andDOM_24_U3 ( .A(port_r_rep[7]), .B(secrep_andDOM_24_n4), 
        .ZN(secrep_andDOM_24_N2) );
  DFF_X1 secrep_andDOM_24_result_0_reg_0_ ( .D(secrep_andDOM_24_comp_0_0_), 
        .CK(clk), .Q(secrep_andDOM_24_port_c_0_0_), .QN() );
  DFF_X1 secrep_andDOM_24_z_tilde_0_0_0_reg ( .D(secrep_andDOM_24_N0), .CK(clk), .Q(secrep_andDOM_24_z_tilde_0_0_0), .QN() );
  DFF_X1 secrep_andDOM_24_result_1_reg_0_ ( .D(secrep_andDOM_24_comp_1_0_), 
        .CK(clk), .Q(port_c_1[1]), .QN() );
  DFF_X1 secrep_andDOM_24_z_tilde_1_0_0_reg ( .D(secrep_andDOM_24_N2), .CK(clk), .Q(secrep_andDOM_24_z_tilde_1_0_0), .QN() );
  DFF_X1 secrep_andDOM_24_z_tilde_0_1_0_reg ( .D(secrep_andDOM_24_N1), .CK(clk), .Q(secrep_andDOM_24_z_tilde_0_1_0), .QN() );
  DFF_X1 secrep_andDOM_24_z_tilde_1_1_0_reg ( .D(secrep_andDOM_24_N3), .CK(clk), .Q(secrep_andDOM_24_z_tilde_1_1_0), .QN() );
  XOR2_X1 secrep_andDOM_25_U10 ( .A(secrep_andDOM_25_z_tilde_1_1_0), .B(
        secrep_andDOM_25_z_tilde_1_0_0), .Z(secrep_andDOM_25_comp_1_0_) );
  XOR2_X1 secrep_andDOM_25_U9 ( .A(secrep_andDOM_25_z_tilde_0_1_0), .B(
        secrep_andDOM_25_z_tilde_0_0_0), .Z(secrep_andDOM_25_comp_0_0_) );
  NAND2_X1 secrep_andDOM_25_U8 ( .A1(secrep_refreshed_0[1]), .A2(
        secrep_refreshed_1[0]), .ZN(secrep_andDOM_25_n4) );
  XNOR2_X1 secrep_andDOM_25_U7 ( .A(port_r_rep[3]), .B(secrep_andDOM_25_n4), 
        .ZN(secrep_andDOM_25_N2) );
  NAND2_X1 secrep_andDOM_25_U6 ( .A1(secrep_refreshed_0[0]), .A2(
        secrep_refreshed_1[1]), .ZN(secrep_andDOM_25_n3) );
  XNOR2_X1 secrep_andDOM_25_U5 ( .A(port_r_rep[3]), .B(secrep_andDOM_25_n3), 
        .ZN(secrep_andDOM_25_N1) );
  AND2_X1 secrep_andDOM_25_U4 ( .A1(secrep_refreshed_0[1]), .A2(
        secrep_refreshed_0[0]), .ZN(secrep_andDOM_25_N0) );
  AND2_X1 secrep_andDOM_25_U3 ( .A1(secrep_refreshed_1[0]), .A2(
        secrep_refreshed_1[1]), .ZN(secrep_andDOM_25_N3) );
  DFF_X1 secrep_andDOM_25_result_0_reg_0_ ( .D(secrep_andDOM_25_comp_0_0_), 
        .CK(clk), .Q(secrep_andDOM_25_port_c_0_0_), .QN() );
  DFF_X1 secrep_andDOM_25_z_tilde_0_0_0_reg ( .D(secrep_andDOM_25_N0), .CK(clk), .Q(secrep_andDOM_25_z_tilde_0_0_0), .QN() );
  DFF_X1 secrep_andDOM_25_result_1_reg_0_ ( .D(secrep_andDOM_25_comp_1_0_), 
        .CK(clk), .Q(secrep_andDOM_25_port_c_1_0_), .QN() );
  DFF_X1 secrep_andDOM_25_z_tilde_1_0_0_reg ( .D(secrep_andDOM_25_N2), .CK(clk), .Q(secrep_andDOM_25_z_tilde_1_0_0), .QN() );
  DFF_X1 secrep_andDOM_25_z_tilde_0_1_0_reg ( .D(secrep_andDOM_25_N1), .CK(clk), .Q(secrep_andDOM_25_z_tilde_0_1_0), .QN() );
  DFF_X1 secrep_andDOM_25_z_tilde_1_1_0_reg ( .D(secrep_andDOM_25_N3), .CK(clk), .Q(secrep_andDOM_25_z_tilde_1_1_0), .QN() );
  XOR2_X1 secrep_andDOM_26_U10 ( .A(secrep_andDOM_26_z_tilde_1_1_0), .B(
        secrep_andDOM_26_z_tilde_1_0_0), .Z(secrep_andDOM_26_comp_1_0_) );
  XOR2_X1 secrep_andDOM_26_U9 ( .A(secrep_andDOM_26_z_tilde_0_1_0), .B(
        secrep_andDOM_26_z_tilde_0_0_0), .Z(secrep_andDOM_26_comp_0_0_) );
  NAND2_X1 secrep_andDOM_26_U8 ( .A1(secrep_refreshed_0[2]), .A2(
        secrep_refreshed_1[0]), .ZN(secrep_andDOM_26_n4) );
  XNOR2_X1 secrep_andDOM_26_U7 ( .A(port_r_rep[4]), .B(secrep_andDOM_26_n4), 
        .ZN(secrep_andDOM_26_N2) );
  NAND2_X1 secrep_andDOM_26_U6 ( .A1(secrep_refreshed_0[0]), .A2(
        secrep_refreshed_1[2]), .ZN(secrep_andDOM_26_n3) );
  XNOR2_X1 secrep_andDOM_26_U5 ( .A(port_r_rep[4]), .B(secrep_andDOM_26_n3), 
        .ZN(secrep_andDOM_26_N1) );
  AND2_X1 secrep_andDOM_26_U4 ( .A1(secrep_refreshed_0[2]), .A2(
        secrep_refreshed_0[0]), .ZN(secrep_andDOM_26_N0) );
  AND2_X1 secrep_andDOM_26_U3 ( .A1(secrep_refreshed_1[0]), .A2(
        secrep_refreshed_1[2]), .ZN(secrep_andDOM_26_N3) );
  DFF_X1 secrep_andDOM_26_result_0_reg_0_ ( .D(secrep_andDOM_26_comp_0_0_), 
        .CK(clk), .Q(secrep_andDOM_26_port_c_0_0_), .QN() );
  DFF_X1 secrep_andDOM_26_z_tilde_0_0_0_reg ( .D(secrep_andDOM_26_N0), .CK(clk), .Q(secrep_andDOM_26_z_tilde_0_0_0), .QN() );
  DFF_X1 secrep_andDOM_26_result_1_reg_0_ ( .D(secrep_andDOM_26_comp_1_0_), 
        .CK(clk), .Q(secrep_andDOM_26_port_c_1_0_), .QN() );
  DFF_X1 secrep_andDOM_26_z_tilde_1_0_0_reg ( .D(secrep_andDOM_26_N2), .CK(clk), .Q(secrep_andDOM_26_z_tilde_1_0_0), .QN() );
  DFF_X1 secrep_andDOM_26_z_tilde_0_1_0_reg ( .D(secrep_andDOM_26_N1), .CK(clk), .Q(secrep_andDOM_26_z_tilde_0_1_0), .QN() );
  DFF_X1 secrep_andDOM_26_z_tilde_1_1_0_reg ( .D(secrep_andDOM_26_N3), .CK(clk), .Q(secrep_andDOM_26_z_tilde_1_1_0), .QN() );
  XOR2_X1 secrep_andDOM_27_U10 ( .A(secrep_andDOM_27_z_tilde_1_1_0), .B(
        secrep_andDOM_27_z_tilde_1_0_0), .Z(secrep_andDOM_27_comp_1_0_) );
  XOR2_X1 secrep_andDOM_27_U9 ( .A(secrep_andDOM_27_z_tilde_0_1_0), .B(
        secrep_andDOM_27_z_tilde_0_0_0), .Z(secrep_andDOM_27_comp_0_0_) );
  NAND2_X1 secrep_andDOM_27_U8 ( .A1(secrep_refreshed_0[2]), .A2(
        secrep_refreshed_1[1]), .ZN(secrep_andDOM_27_n4) );
  XNOR2_X1 secrep_andDOM_27_U7 ( .A(port_r_rep[5]), .B(secrep_andDOM_27_n4), 
        .ZN(secrep_andDOM_27_N2) );
  NAND2_X1 secrep_andDOM_27_U6 ( .A1(secrep_refreshed_0[1]), .A2(
        secrep_refreshed_1[2]), .ZN(secrep_andDOM_27_n3) );
  XNOR2_X1 secrep_andDOM_27_U5 ( .A(port_r_rep[5]), .B(secrep_andDOM_27_n3), 
        .ZN(secrep_andDOM_27_N1) );
  AND2_X1 secrep_andDOM_27_U4 ( .A1(secrep_refreshed_0[2]), .A2(
        secrep_refreshed_0[1]), .ZN(secrep_andDOM_27_N0) );
  AND2_X1 secrep_andDOM_27_U3 ( .A1(secrep_refreshed_1[1]), .A2(
        secrep_refreshed_1[2]), .ZN(secrep_andDOM_27_N3) );
  DFF_X1 secrep_andDOM_27_result_0_reg_0_ ( .D(secrep_andDOM_27_comp_0_0_), 
        .CK(clk), .Q(secrep_andDOM_27_port_c_0_0_), .QN() );
  DFF_X1 secrep_andDOM_27_z_tilde_0_0_0_reg ( .D(secrep_andDOM_27_N0), .CK(clk), .Q(secrep_andDOM_27_z_tilde_0_0_0), .QN() );
  DFF_X1 secrep_andDOM_27_result_1_reg_0_ ( .D(secrep_andDOM_27_comp_1_0_), 
        .CK(clk), .Q(secrep_andDOM_27_port_c_1_0_), .QN() );
  DFF_X1 secrep_andDOM_27_z_tilde_1_0_0_reg ( .D(secrep_andDOM_27_N2), .CK(clk), .Q(secrep_andDOM_27_z_tilde_1_0_0), .QN() );
  DFF_X1 secrep_andDOM_27_z_tilde_0_1_0_reg ( .D(secrep_andDOM_27_N1), .CK(clk), .Q(secrep_andDOM_27_z_tilde_0_1_0), .QN() );
  DFF_X1 secrep_andDOM_27_z_tilde_1_1_0_reg ( .D(secrep_andDOM_27_N3), .CK(clk), .Q(secrep_andDOM_27_z_tilde_1_1_0), .QN() );
  AND2_X1 secrep_andDOM_28_U10 ( .A1(secrep_andDOM_25_port_c_1_0_), .A2(
        secrep_andDOM_26_port_c_1_0_), .ZN(secrep_andDOM_28_N3) );
  XOR2_X1 secrep_andDOM_28_U9 ( .A(secrep_andDOM_28_z_tilde_1_1_0), .B(
        secrep_andDOM_28_z_tilde_1_0_0), .Z(secrep_andDOM_28_comp_1_0_) );
  XOR2_X1 secrep_andDOM_28_U8 ( .A(secrep_andDOM_28_z_tilde_0_1_0), .B(
        secrep_andDOM_28_z_tilde_0_0_0), .Z(secrep_andDOM_28_comp_0_0_) );
  NAND2_X1 secrep_andDOM_28_U7 ( .A1(secrep_n9), .A2(
        secrep_andDOM_26_port_c_1_0_), .ZN(secrep_andDOM_28_n3) );
  XNOR2_X1 secrep_andDOM_28_U6 ( .A(port_r_rep[6]), .B(secrep_andDOM_28_n3), 
        .ZN(secrep_andDOM_28_N1) );
  NAND2_X1 secrep_andDOM_28_U5 ( .A1(secrep_n10), .A2(
        secrep_andDOM_25_port_c_1_0_), .ZN(secrep_andDOM_28_n4) );
  XNOR2_X1 secrep_andDOM_28_U4 ( .A(port_r_rep[6]), .B(secrep_andDOM_28_n4), 
        .ZN(secrep_andDOM_28_N2) );
  AND2_X1 secrep_andDOM_28_U3 ( .A1(secrep_n10), .A2(secrep_n9), .ZN(
        secrep_andDOM_28_N0) );
  DFF_X1 secrep_andDOM_28_result_0_reg_0_ ( .D(secrep_andDOM_28_comp_0_0_), 
        .CK(clk), .Q(secrep_andDOM_28_port_c_0_0_), .QN() );
  DFF_X1 secrep_andDOM_28_z_tilde_0_0_0_reg ( .D(secrep_andDOM_28_N0), .CK(clk), .Q(secrep_andDOM_28_z_tilde_0_0_0), .QN() );
  DFF_X1 secrep_andDOM_28_result_1_reg_0_ ( .D(secrep_andDOM_28_comp_1_0_), 
        .CK(clk), .Q(secrep_andDOM_28_port_c_1_0_), .QN() );
  DFF_X1 secrep_andDOM_28_z_tilde_1_0_0_reg ( .D(secrep_andDOM_28_N2), .CK(clk), .Q(secrep_andDOM_28_z_tilde_1_0_0), .QN() );
  DFF_X1 secrep_andDOM_28_z_tilde_0_1_0_reg ( .D(secrep_andDOM_28_N1), .CK(clk), .Q(secrep_andDOM_28_z_tilde_0_1_0), .QN() );
  DFF_X1 secrep_andDOM_28_z_tilde_1_1_0_reg ( .D(secrep_andDOM_28_N3), .CK(clk), .Q(secrep_andDOM_28_z_tilde_1_1_0), .QN() );
  AND2_X1 secrep_andDOM_29_U10 ( .A1(secrep_andDOM_28_port_c_1_0_), .A2(
        secrep_andDOM_27_port_c_1_0_), .ZN(secrep_andDOM_29_N3) );
  XOR2_X1 secrep_andDOM_29_U9 ( .A(secrep_andDOM_29_z_tilde_1_1_0), .B(
        secrep_andDOM_29_z_tilde_1_0_0), .Z(secrep_andDOM_29_comp_1_0_) );
  XOR2_X1 secrep_andDOM_29_U8 ( .A(secrep_andDOM_29_z_tilde_0_1_0), .B(
        secrep_andDOM_29_z_tilde_0_0_0), .Z(secrep_andDOM_29_comp_0_0_) );
  AND2_X1 secrep_andDOM_29_U7 ( .A1(secrep_n11), .A2(
        secrep_andDOM_28_port_c_0_0_), .ZN(secrep_andDOM_29_N0) );
  NAND2_X1 secrep_andDOM_29_U6 ( .A1(secrep_andDOM_28_port_c_0_0_), .A2(
        secrep_andDOM_27_port_c_1_0_), .ZN(secrep_andDOM_29_n3) );
  XNOR2_X1 secrep_andDOM_29_U5 ( .A(port_r_rep[7]), .B(secrep_andDOM_29_n3), 
        .ZN(secrep_andDOM_29_N1) );
  NAND2_X1 secrep_andDOM_29_U4 ( .A1(secrep_n11), .A2(
        secrep_andDOM_28_port_c_1_0_), .ZN(secrep_andDOM_29_n4) );
  XNOR2_X1 secrep_andDOM_29_U3 ( .A(port_r_rep[7]), .B(secrep_andDOM_29_n4), 
        .ZN(secrep_andDOM_29_N2) );
  DFF_X1 secrep_andDOM_29_result_0_reg_0_ ( .D(secrep_andDOM_29_comp_0_0_), 
        .CK(clk), .Q(secrep_andDOM_29_port_c_0_0_), .QN() );
  DFF_X1 secrep_andDOM_29_z_tilde_0_0_0_reg ( .D(secrep_andDOM_29_N0), .CK(clk), .Q(secrep_andDOM_29_z_tilde_0_0_0), .QN() );
  DFF_X1 secrep_andDOM_29_result_1_reg_0_ ( .D(secrep_andDOM_29_comp_1_0_), 
        .CK(clk), .Q(port_c_1[2]), .QN() );
  DFF_X1 secrep_andDOM_29_z_tilde_1_0_0_reg ( .D(secrep_andDOM_29_N2), .CK(clk), .Q(secrep_andDOM_29_z_tilde_1_0_0), .QN() );
  DFF_X1 secrep_andDOM_29_z_tilde_0_1_0_reg ( .D(secrep_andDOM_29_N1), .CK(clk), .Q(secrep_andDOM_29_z_tilde_0_1_0), .QN() );
  DFF_X1 secrep_andDOM_29_z_tilde_1_1_0_reg ( .D(secrep_andDOM_29_N3), .CK(clk), .Q(secrep_andDOM_29_z_tilde_1_1_0), .QN() );
endmodule

