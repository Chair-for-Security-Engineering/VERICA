/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Dec 13 11:32:33 2022
/////////////////////////////////////////////////////////////


module uma ( clk, port_r, port_a, port_b, port_c );
  input [1:0] port_r;
  input [2:0] port_a;
  input [2:0] port_b;
  output [2:0] port_c;
  input clk;
  wire   genblk3_hc2_n12, genblk3_hc2_n11, genblk3_hc2_n10, genblk3_hc2_n9,
         genblk3_hc2_n8, genblk3_hc2_n7, genblk3_hc2_n6, genblk3_hc2_n5,
         genblk3_hc2_n4, genblk3_hc2_n3, genblk3_hc2_n2, genblk3_hc2_n1,
         genblk3_hc2_z_in_0_;
  wire   [2:0] id_c;
  wire   [2:0] hc_c;
  wire   [2:0] c_c_reg_in;
  wire   [2:0] genblk3_hc2_tmp_c1_in;
  wire   [2:0] genblk3_hc2_tmp_c0_out;
  wire   [2:0] genblk3_hc2_tmp_c0_in;
  wire   [2:0] genblk3_hc2_z_out;

  XOR2_X1 U4 ( .A(id_c[1]), .B(hc_c[1]), .Z(c_c_reg_in[1]) );
  XOR2_X1 U5 ( .A(id_c[2]), .B(hc_c[2]), .Z(c_c_reg_in[2]) );
  XOR2_X1 U6 ( .A(id_c[0]), .B(hc_c[0]), .Z(c_c_reg_in[0]) );
  AND2_X1 genblk1_id_U3 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(id_c[0]) );
  AND2_X1 genblk1_id_U2 ( .A1(port_b[2]), .A2(port_a[2]), .ZN(id_c[2]) );
  AND2_X1 genblk1_id_U1 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(id_c[1]) );
  INV_X1 genblk3_hc2_U19 ( .A(port_b[0]), .ZN(genblk3_hc2_n6) );
  INV_X1 genblk3_hc2_U18 ( .A(port_b[2]), .ZN(genblk3_hc2_n4) );
  INV_X1 genblk3_hc2_U17 ( .A(port_a[0]), .ZN(genblk3_hc2_n3) );
  INV_X1 genblk3_hc2_U16 ( .A(port_b[1]), .ZN(genblk3_hc2_n5) );
  INV_X1 genblk3_hc2_U15 ( .A(port_a[2]), .ZN(genblk3_hc2_n1) );
  INV_X1 genblk3_hc2_U14 ( .A(port_a[1]), .ZN(genblk3_hc2_n2) );
  XOR2_X1 genblk3_hc2_U13 ( .A(port_r[1]), .B(port_r[0]), .Z(
        genblk3_hc2_z_in_0_) );
  NOR2_X1 genblk3_hc2_U12 ( .A1(genblk3_hc2_n2), .A2(genblk3_hc2_n4), .ZN(
        genblk3_hc2_n7) );
  XOR2_X1 genblk3_hc2_U11 ( .A(genblk3_hc2_tmp_c0_out[2]), .B(genblk3_hc2_n7), 
        .Z(genblk3_hc2_tmp_c1_in[2]) );
  NOR2_X1 genblk3_hc2_U10 ( .A1(genblk3_hc2_n3), .A2(genblk3_hc2_n5), .ZN(
        genblk3_hc2_n8) );
  XOR2_X1 genblk3_hc2_U9 ( .A(genblk3_hc2_tmp_c0_out[1]), .B(genblk3_hc2_n8), 
        .Z(genblk3_hc2_tmp_c1_in[1]) );
  NOR2_X1 genblk3_hc2_U8 ( .A1(genblk3_hc2_n1), .A2(genblk3_hc2_n6), .ZN(
        genblk3_hc2_n9) );
  XOR2_X1 genblk3_hc2_U7 ( .A(genblk3_hc2_tmp_c0_out[0]), .B(genblk3_hc2_n9), 
        .Z(genblk3_hc2_tmp_c1_in[0]) );
  NOR2_X1 genblk3_hc2_U6 ( .A1(genblk3_hc2_n5), .A2(genblk3_hc2_n1), .ZN(
        genblk3_hc2_n10) );
  XOR2_X1 genblk3_hc2_U5 ( .A(genblk3_hc2_z_out[2]), .B(genblk3_hc2_n10), .Z(
        genblk3_hc2_tmp_c0_in[2]) );
  NOR2_X1 genblk3_hc2_U4 ( .A1(genblk3_hc2_n2), .A2(genblk3_hc2_n6), .ZN(
        genblk3_hc2_n11) );
  XOR2_X1 genblk3_hc2_U3 ( .A(genblk3_hc2_z_out[1]), .B(genblk3_hc2_n11), .Z(
        genblk3_hc2_tmp_c0_in[1]) );
  NOR2_X1 genblk3_hc2_U2 ( .A1(genblk3_hc2_n4), .A2(genblk3_hc2_n3), .ZN(
        genblk3_hc2_n12) );
  XOR2_X1 genblk3_hc2_U1 ( .A(genblk3_hc2_z_out[0]), .B(genblk3_hc2_n12), .Z(
        genblk3_hc2_tmp_c0_in[0]) );
  DFF_X1 genblk3_hc2_delay_z_genblk1_0__dff_i_q_reg ( .D(genblk3_hc2_z_in_0_), 
        .CK(clk), .Q(genblk3_hc2_z_out[0]), .QN() );
  DFF_X1 genblk3_hc2_delay_z_genblk1_1__dff_i_q_reg ( .D(port_r[1]), .CK(clk), 
        .Q(genblk3_hc2_z_out[1]), .QN() );
  DFF_X1 genblk3_hc2_delay_z_genblk1_2__dff_i_q_reg ( .D(port_r[0]), .CK(clk), 
        .Q(genblk3_hc2_z_out[2]), .QN() );
  DFF_X1 genblk3_hc2_delay_z_ab1_genblk1_0__dff_i_q_reg ( .D(
        genblk3_hc2_tmp_c0_in[0]), .CK(clk), .Q(genblk3_hc2_tmp_c0_out[0]), 
        .QN() );
  DFF_X1 genblk3_hc2_delay_z_ab1_genblk1_1__dff_i_q_reg ( .D(
        genblk3_hc2_tmp_c0_in[1]), .CK(clk), .Q(genblk3_hc2_tmp_c0_out[1]), 
        .QN() );
  DFF_X1 genblk3_hc2_delay_z_ab1_genblk1_2__dff_i_q_reg ( .D(
        genblk3_hc2_tmp_c0_in[2]), .CK(clk), .Q(genblk3_hc2_tmp_c0_out[2]), 
        .QN() );
  DFF_X1 genblk3_hc2_delay_z_a1b_genblk1_0__dff_i_q_reg ( .D(
        genblk3_hc2_tmp_c1_in[0]), .CK(clk), .Q(hc_c[0]), .QN() );
  DFF_X1 genblk3_hc2_delay_z_a1b_genblk1_1__dff_i_q_reg ( .D(
        genblk3_hc2_tmp_c1_in[1]), .CK(clk), .Q(hc_c[1]), .QN() );
  DFF_X1 genblk3_hc2_delay_z_a1b_genblk1_2__dff_i_q_reg ( .D(
        genblk3_hc2_tmp_c1_in[2]), .CK(clk), .Q(hc_c[2]), .QN() );
  DFF_X1 delay_output_genblk1_0__dff_i_q_reg ( .D(c_c_reg_in[0]), .CK(clk), 
        .Q(port_c[0]), .QN() );
  DFF_X1 delay_output_genblk1_1__dff_i_q_reg ( .D(c_c_reg_in[1]), .CK(clk), 
        .Q(port_c[1]), .QN() );
  DFF_X1 delay_output_genblk1_2__dff_i_q_reg ( .D(c_c_reg_in[2]), .CK(clk), 
        .Q(port_c[2]), .QN() );
endmodule

