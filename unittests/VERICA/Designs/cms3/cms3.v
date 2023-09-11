/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Mon Jan  9 09:54:07 2023
/////////////////////////////////////////////////////////////


module cms3 ( clk, port_r, port_a, port_b, port_c );
  input [15:0] port_r;
  input [3:0] port_a;
  input [3:0] port_b;
  output [3:0] port_c;
  input clk;
  wire   nll_n8, nll_n7, nll_n6, nll_n5, nll_n4, nll_n3, nll_n2, nll_n1,
         rfl_n16, rfl_n15, rfl_n14, rfl_n13, rfl_n12, rfl_n11, rfl_n10, rfl_n9,
         rfl_n8, rfl_n7, rfl_n6, rfl_n5, rfl_n4, rfl_n3, rfl_n2, rfl_n1,
         cpl_n8, cpl_n7, cpl_n6, cpl_n5, cpl_n4, cpl_n3, cpl_n2, cpl_n1;
  wire   [15:0] nll_out;
  wire   [15:0] rfs_out;
  wire   [15:0] syn_out;

  NOR2_X1 nll_U24 ( .A1(nll_n8), .A2(nll_n4), .ZN(nll_out[0]) );
  NOR2_X1 nll_U23 ( .A1(nll_n5), .A2(nll_n1), .ZN(nll_out[15]) );
  NOR2_X1 nll_U22 ( .A1(nll_n6), .A2(nll_n1), .ZN(nll_out[14]) );
  NOR2_X1 nll_U21 ( .A1(nll_n7), .A2(nll_n1), .ZN(nll_out[13]) );
  NOR2_X1 nll_U20 ( .A1(nll_n8), .A2(nll_n1), .ZN(nll_out[12]) );
  NOR2_X1 nll_U19 ( .A1(nll_n2), .A2(nll_n5), .ZN(nll_out[11]) );
  NOR2_X1 nll_U18 ( .A1(nll_n2), .A2(nll_n6), .ZN(nll_out[10]) );
  NOR2_X1 nll_U17 ( .A1(nll_n2), .A2(nll_n7), .ZN(nll_out[9]) );
  NOR2_X1 nll_U16 ( .A1(nll_n2), .A2(nll_n8), .ZN(nll_out[8]) );
  NOR2_X1 nll_U15 ( .A1(nll_n3), .A2(nll_n5), .ZN(nll_out[7]) );
  NOR2_X1 nll_U14 ( .A1(nll_n3), .A2(nll_n6), .ZN(nll_out[6]) );
  NOR2_X1 nll_U13 ( .A1(nll_n7), .A2(nll_n3), .ZN(nll_out[5]) );
  NOR2_X1 nll_U12 ( .A1(nll_n8), .A2(nll_n3), .ZN(nll_out[4]) );
  NOR2_X1 nll_U11 ( .A1(nll_n5), .A2(nll_n4), .ZN(nll_out[3]) );
  NOR2_X1 nll_U10 ( .A1(nll_n6), .A2(nll_n4), .ZN(nll_out[2]) );
  NOR2_X1 nll_U9 ( .A1(nll_n7), .A2(nll_n4), .ZN(nll_out[1]) );
  INV_X1 nll_U8 ( .A(port_a[0]), .ZN(nll_n4) );
  INV_X1 nll_U7 ( .A(port_a[3]), .ZN(nll_n1) );
  INV_X1 nll_U6 ( .A(port_b[3]), .ZN(nll_n5) );
  INV_X1 nll_U5 ( .A(port_b[2]), .ZN(nll_n6) );
  INV_X1 nll_U4 ( .A(port_a[1]), .ZN(nll_n3) );
  INV_X1 nll_U3 ( .A(port_b[0]), .ZN(nll_n8) );
  INV_X1 nll_U2 ( .A(port_b[1]), .ZN(nll_n7) );
  INV_X1 nll_U1 ( .A(port_a[2]), .ZN(nll_n2) );
  XOR2_X1 rfl_U32 ( .A(nll_out[0]), .B(port_r[1]), .Z(rfl_n16) );
  XOR2_X1 rfl_U31 ( .A(port_r[0]), .B(rfl_n16), .Z(rfs_out[0]) );
  XOR2_X1 rfl_U30 ( .A(nll_out[15]), .B(port_r[15]), .Z(rfl_n10) );
  XOR2_X1 rfl_U29 ( .A(port_r[0]), .B(rfl_n10), .Z(rfs_out[15]) );
  XOR2_X1 rfl_U28 ( .A(nll_out[14]), .B(port_r[15]), .Z(rfl_n11) );
  XOR2_X1 rfl_U27 ( .A(port_r[14]), .B(rfl_n11), .Z(rfs_out[14]) );
  XOR2_X1 rfl_U26 ( .A(nll_out[13]), .B(port_r[14]), .Z(rfl_n12) );
  XOR2_X1 rfl_U25 ( .A(port_r[13]), .B(rfl_n12), .Z(rfs_out[13]) );
  XOR2_X1 rfl_U24 ( .A(nll_out[12]), .B(port_r[13]), .Z(rfl_n13) );
  XOR2_X1 rfl_U23 ( .A(port_r[12]), .B(rfl_n13), .Z(rfs_out[12]) );
  XOR2_X1 rfl_U22 ( .A(nll_out[11]), .B(port_r[12]), .Z(rfl_n14) );
  XOR2_X1 rfl_U21 ( .A(port_r[11]), .B(rfl_n14), .Z(rfs_out[11]) );
  XOR2_X1 rfl_U20 ( .A(nll_out[10]), .B(port_r[11]), .Z(rfl_n15) );
  XOR2_X1 rfl_U19 ( .A(port_r[10]), .B(rfl_n15), .Z(rfs_out[10]) );
  XOR2_X1 rfl_U18 ( .A(nll_out[9]), .B(port_r[9]), .Z(rfl_n1) );
  XOR2_X1 rfl_U17 ( .A(port_r[10]), .B(rfl_n1), .Z(rfs_out[9]) );
  XOR2_X1 rfl_U16 ( .A(nll_out[8]), .B(port_r[9]), .Z(rfl_n2) );
  XOR2_X1 rfl_U15 ( .A(port_r[8]), .B(rfl_n2), .Z(rfs_out[8]) );
  XOR2_X1 rfl_U14 ( .A(nll_out[7]), .B(port_r[8]), .Z(rfl_n3) );
  XOR2_X1 rfl_U13 ( .A(port_r[7]), .B(rfl_n3), .Z(rfs_out[7]) );
  XOR2_X1 rfl_U12 ( .A(nll_out[6]), .B(port_r[7]), .Z(rfl_n4) );
  XOR2_X1 rfl_U11 ( .A(port_r[6]), .B(rfl_n4), .Z(rfs_out[6]) );
  XOR2_X1 rfl_U10 ( .A(nll_out[5]), .B(port_r[6]), .Z(rfl_n5) );
  XOR2_X1 rfl_U9 ( .A(port_r[5]), .B(rfl_n5), .Z(rfs_out[5]) );
  XOR2_X1 rfl_U8 ( .A(nll_out[4]), .B(port_r[5]), .Z(rfl_n6) );
  XOR2_X1 rfl_U7 ( .A(port_r[4]), .B(rfl_n6), .Z(rfs_out[4]) );
  XOR2_X1 rfl_U6 ( .A(nll_out[3]), .B(port_r[4]), .Z(rfl_n7) );
  XOR2_X1 rfl_U5 ( .A(port_r[3]), .B(rfl_n7), .Z(rfs_out[3]) );
  XOR2_X1 rfl_U4 ( .A(nll_out[2]), .B(port_r[3]), .Z(rfl_n8) );
  XOR2_X1 rfl_U3 ( .A(port_r[2]), .B(rfl_n8), .Z(rfs_out[2]) );
  XOR2_X1 rfl_U2 ( .A(nll_out[1]), .B(port_r[2]), .Z(rfl_n9) );
  XOR2_X1 rfl_U1 ( .A(port_r[1]), .B(rfl_n9), .Z(rfs_out[1]) );
  DFF_X1 syl_genblk1_0__dff_i_q_reg ( .D(rfs_out[0]), .CK(clk), .Q(syn_out[0]), 
        .QN() );
  DFF_X1 syl_genblk1_1__dff_i_q_reg ( .D(rfs_out[1]), .CK(clk), .Q(syn_out[1]), 
        .QN() );
  DFF_X1 syl_genblk1_2__dff_i_q_reg ( .D(rfs_out[2]), .CK(clk), .Q(syn_out[2]), 
        .QN() );
  DFF_X1 syl_genblk1_3__dff_i_q_reg ( .D(rfs_out[3]), .CK(clk), .Q(syn_out[3]), 
        .QN() );
  DFF_X1 syl_genblk1_4__dff_i_q_reg ( .D(rfs_out[4]), .CK(clk), .Q(syn_out[4]), 
        .QN() );
  DFF_X1 syl_genblk1_5__dff_i_q_reg ( .D(rfs_out[5]), .CK(clk), .Q(syn_out[5]), 
        .QN() );
  DFF_X1 syl_genblk1_6__dff_i_q_reg ( .D(rfs_out[6]), .CK(clk), .Q(syn_out[6]), 
        .QN() );
  DFF_X1 syl_genblk1_7__dff_i_q_reg ( .D(rfs_out[7]), .CK(clk), .Q(syn_out[7]), 
        .QN() );
  DFF_X1 syl_genblk1_8__dff_i_q_reg ( .D(rfs_out[8]), .CK(clk), .Q(syn_out[8]), 
        .QN() );
  DFF_X1 syl_genblk1_9__dff_i_q_reg ( .D(rfs_out[9]), .CK(clk), .Q(syn_out[9]), 
        .QN() );
  DFF_X1 syl_genblk1_10__dff_i_q_reg ( .D(rfs_out[10]), .CK(clk), .Q(
        syn_out[10]), .QN() );
  DFF_X1 syl_genblk1_11__dff_i_q_reg ( .D(rfs_out[11]), .CK(clk), .Q(
        syn_out[11]), .QN() );
  DFF_X1 syl_genblk1_12__dff_i_q_reg ( .D(rfs_out[12]), .CK(clk), .Q(
        syn_out[12]), .QN() );
  DFF_X1 syl_genblk1_13__dff_i_q_reg ( .D(rfs_out[13]), .CK(clk), .Q(
        syn_out[13]), .QN() );
  DFF_X1 syl_genblk1_14__dff_i_q_reg ( .D(rfs_out[14]), .CK(clk), .Q(
        syn_out[14]), .QN() );
  DFF_X1 syl_genblk1_15__dff_i_q_reg ( .D(rfs_out[15]), .CK(clk), .Q(
        syn_out[15]), .QN() );
  XNOR2_X1 cpl_U12 ( .A(syn_out[13]), .B(syn_out[12]), .ZN(cpl_n2) );
  XNOR2_X1 cpl_U11 ( .A(syn_out[15]), .B(syn_out[14]), .ZN(cpl_n1) );
  XOR2_X1 cpl_U10 ( .A(cpl_n1), .B(cpl_n2), .Z(port_c[3]) );
  XNOR2_X1 cpl_U9 ( .A(syn_out[11]), .B(syn_out[10]), .ZN(cpl_n4) );
  XNOR2_X1 cpl_U8 ( .A(syn_out[9]), .B(syn_out[8]), .ZN(cpl_n3) );
  XOR2_X1 cpl_U7 ( .A(cpl_n3), .B(cpl_n4), .Z(port_c[2]) );
  XNOR2_X1 cpl_U6 ( .A(syn_out[5]), .B(syn_out[4]), .ZN(cpl_n6) );
  XNOR2_X1 cpl_U5 ( .A(syn_out[7]), .B(syn_out[6]), .ZN(cpl_n5) );
  XOR2_X1 cpl_U4 ( .A(cpl_n5), .B(cpl_n6), .Z(port_c[1]) );
  XNOR2_X1 cpl_U3 ( .A(syn_out[1]), .B(syn_out[0]), .ZN(cpl_n8) );
  XNOR2_X1 cpl_U2 ( .A(syn_out[3]), .B(syn_out[2]), .ZN(cpl_n7) );
  XOR2_X1 cpl_U1 ( .A(cpl_n7), .B(cpl_n8), .Z(port_c[0]) );
endmodule

