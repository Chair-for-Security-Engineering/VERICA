/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Dec 13 11:38:16 2022
/////////////////////////////////////////////////////////////


module uma2 ( clk, port_r1, port_r2, port_x, port_b, port_c );
  input [1:0] port_r1;
  input [1:0] port_r2;
  input [2:0] port_x;
  input [2:0] port_b;
  output [2:0] port_c;
  input clk;
  wire   mul1_genblk3_hc2_n12, mul1_genblk3_hc2_n11, mul1_genblk3_hc2_n10,
         mul1_genblk3_hc2_n9, mul1_genblk3_hc2_n8, mul1_genblk3_hc2_n7,
         mul1_genblk3_hc2_n6, mul1_genblk3_hc2_n5, mul1_genblk3_hc2_n4,
         mul1_genblk3_hc2_n3, mul1_genblk3_hc2_n2, mul1_genblk3_hc2_n1,
         mul1_genblk3_hc2_z_in_0_, mul2_genblk3_hc2_n24, mul2_genblk3_hc2_n23,
         mul2_genblk3_hc2_n22, mul2_genblk3_hc2_n21, mul2_genblk3_hc2_n20,
         mul2_genblk3_hc2_n19, mul2_genblk3_hc2_n18, mul2_genblk3_hc2_n17,
         mul2_genblk3_hc2_n16, mul2_genblk3_hc2_n15, mul2_genblk3_hc2_n14,
         mul2_genblk3_hc2_n13, mul2_genblk3_hc2_z_in_0_;
  wire   [2:0] a_out;
  wire   [2:0] a_delayed;
  wire   [2:0] b_delayed;
  wire   [2:0] mul1_c_c_reg_in;
  wire   [2:0] mul1_hc_c;
  wire   [2:0] mul1_id_c;
  wire   [2:0] mul1_genblk3_hc2_tmp_c1_in;
  wire   [2:0] mul1_genblk3_hc2_tmp_c0_out;
  wire   [2:0] mul1_genblk3_hc2_tmp_c0_in;
  wire   [2:0] mul1_genblk3_hc2_z_out;
  wire   [2:0] mul2_c_c_reg_in;
  wire   [2:0] mul2_hc_c;
  wire   [2:0] mul2_id_c;
  wire   [2:0] mul2_genblk3_hc2_tmp_c1_in;
  wire   [2:0] mul2_genblk3_hc2_tmp_c0_out;
  wire   [2:0] mul2_genblk3_hc2_tmp_c0_in;
  wire   [2:0] mul2_genblk3_hc2_z_out;

  XOR2_X1 mul1_U3 ( .A(mul1_id_c[2]), .B(mul1_hc_c[2]), .Z(mul1_c_c_reg_in[2])
         );
  XOR2_X1 mul1_U2 ( .A(mul1_id_c[1]), .B(mul1_hc_c[1]), .Z(mul1_c_c_reg_in[1])
         );
  XOR2_X1 mul1_U1 ( .A(mul1_id_c[0]), .B(mul1_hc_c[0]), .Z(mul1_c_c_reg_in[0])
         );
  AND2_X1 mul1_genblk1_id_U3 ( .A1(port_b[2]), .A2(port_x[2]), .ZN(
        mul1_id_c[2]) );
  AND2_X1 mul1_genblk1_id_U2 ( .A1(port_b[1]), .A2(port_x[1]), .ZN(
        mul1_id_c[1]) );
  AND2_X1 mul1_genblk1_id_U1 ( .A1(port_b[0]), .A2(port_x[0]), .ZN(
        mul1_id_c[0]) );
  INV_X1 mul1_genblk3_hc2_U19 ( .A(port_b[0]), .ZN(mul1_genblk3_hc2_n6) );
  INV_X1 mul1_genblk3_hc2_U18 ( .A(port_b[2]), .ZN(mul1_genblk3_hc2_n4) );
  INV_X1 mul1_genblk3_hc2_U17 ( .A(port_x[0]), .ZN(mul1_genblk3_hc2_n3) );
  INV_X1 mul1_genblk3_hc2_U16 ( .A(port_b[1]), .ZN(mul1_genblk3_hc2_n5) );
  INV_X1 mul1_genblk3_hc2_U15 ( .A(port_x[2]), .ZN(mul1_genblk3_hc2_n1) );
  INV_X1 mul1_genblk3_hc2_U14 ( .A(port_x[1]), .ZN(mul1_genblk3_hc2_n2) );
  XOR2_X1 mul1_genblk3_hc2_U13 ( .A(port_r1[1]), .B(port_r1[0]), .Z(
        mul1_genblk3_hc2_z_in_0_) );
  NOR2_X1 mul1_genblk3_hc2_U12 ( .A1(mul1_genblk3_hc2_n2), .A2(
        mul1_genblk3_hc2_n4), .ZN(mul1_genblk3_hc2_n7) );
  XOR2_X1 mul1_genblk3_hc2_U11 ( .A(mul1_genblk3_hc2_tmp_c0_out[2]), .B(
        mul1_genblk3_hc2_n7), .Z(mul1_genblk3_hc2_tmp_c1_in[2]) );
  NOR2_X1 mul1_genblk3_hc2_U10 ( .A1(mul1_genblk3_hc2_n3), .A2(
        mul1_genblk3_hc2_n5), .ZN(mul1_genblk3_hc2_n8) );
  XOR2_X1 mul1_genblk3_hc2_U9 ( .A(mul1_genblk3_hc2_tmp_c0_out[1]), .B(
        mul1_genblk3_hc2_n8), .Z(mul1_genblk3_hc2_tmp_c1_in[1]) );
  NOR2_X1 mul1_genblk3_hc2_U8 ( .A1(mul1_genblk3_hc2_n1), .A2(
        mul1_genblk3_hc2_n6), .ZN(mul1_genblk3_hc2_n9) );
  XOR2_X1 mul1_genblk3_hc2_U7 ( .A(mul1_genblk3_hc2_tmp_c0_out[0]), .B(
        mul1_genblk3_hc2_n9), .Z(mul1_genblk3_hc2_tmp_c1_in[0]) );
  NOR2_X1 mul1_genblk3_hc2_U6 ( .A1(mul1_genblk3_hc2_n5), .A2(
        mul1_genblk3_hc2_n1), .ZN(mul1_genblk3_hc2_n10) );
  XOR2_X1 mul1_genblk3_hc2_U5 ( .A(mul1_genblk3_hc2_z_out[2]), .B(
        mul1_genblk3_hc2_n10), .Z(mul1_genblk3_hc2_tmp_c0_in[2]) );
  NOR2_X1 mul1_genblk3_hc2_U4 ( .A1(mul1_genblk3_hc2_n2), .A2(
        mul1_genblk3_hc2_n6), .ZN(mul1_genblk3_hc2_n11) );
  XOR2_X1 mul1_genblk3_hc2_U3 ( .A(mul1_genblk3_hc2_z_out[1]), .B(
        mul1_genblk3_hc2_n11), .Z(mul1_genblk3_hc2_tmp_c0_in[1]) );
  NOR2_X1 mul1_genblk3_hc2_U2 ( .A1(mul1_genblk3_hc2_n4), .A2(
        mul1_genblk3_hc2_n3), .ZN(mul1_genblk3_hc2_n12) );
  XOR2_X1 mul1_genblk3_hc2_U1 ( .A(mul1_genblk3_hc2_z_out[0]), .B(
        mul1_genblk3_hc2_n12), .Z(mul1_genblk3_hc2_tmp_c0_in[0]) );
  DFF_X1 mul1_genblk3_hc2_delay_z_genblk1_0__dff_i_q_reg ( .D(
        mul1_genblk3_hc2_z_in_0_), .CK(clk), .Q(mul1_genblk3_hc2_z_out[0]), 
        .QN() );
  DFF_X1 mul1_genblk3_hc2_delay_z_genblk1_1__dff_i_q_reg ( .D(port_r1[1]), 
        .CK(clk), .Q(mul1_genblk3_hc2_z_out[1]), .QN() );
  DFF_X1 mul1_genblk3_hc2_delay_z_genblk1_2__dff_i_q_reg ( .D(port_r1[0]), 
        .CK(clk), .Q(mul1_genblk3_hc2_z_out[2]), .QN() );
  DFF_X1 mul1_genblk3_hc2_delay_z_ab1_genblk1_0__dff_i_q_reg ( .D(
        mul1_genblk3_hc2_tmp_c0_in[0]), .CK(clk), .Q(
        mul1_genblk3_hc2_tmp_c0_out[0]), .QN() );
  DFF_X1 mul1_genblk3_hc2_delay_z_ab1_genblk1_1__dff_i_q_reg ( .D(
        mul1_genblk3_hc2_tmp_c0_in[1]), .CK(clk), .Q(
        mul1_genblk3_hc2_tmp_c0_out[1]), .QN() );
  DFF_X1 mul1_genblk3_hc2_delay_z_ab1_genblk1_2__dff_i_q_reg ( .D(
        mul1_genblk3_hc2_tmp_c0_in[2]), .CK(clk), .Q(
        mul1_genblk3_hc2_tmp_c0_out[2]), .QN() );
  DFF_X1 mul1_genblk3_hc2_delay_z_a1b_genblk1_0__dff_i_q_reg ( .D(
        mul1_genblk3_hc2_tmp_c1_in[0]), .CK(clk), .Q(mul1_hc_c[0]), .QN() );
  DFF_X1 mul1_genblk3_hc2_delay_z_a1b_genblk1_1__dff_i_q_reg ( .D(
        mul1_genblk3_hc2_tmp_c1_in[1]), .CK(clk), .Q(mul1_hc_c[1]), .QN() );
  DFF_X1 mul1_genblk3_hc2_delay_z_a1b_genblk1_2__dff_i_q_reg ( .D(
        mul1_genblk3_hc2_tmp_c1_in[2]), .CK(clk), .Q(mul1_hc_c[2]), .QN() );
  DFF_X1 mul1_delay_output_genblk1_0__dff_i_q_reg ( .D(mul1_c_c_reg_in[0]), 
        .CK(clk), .Q(a_out[0]), .QN() );
  DFF_X1 mul1_delay_output_genblk1_1__dff_i_q_reg ( .D(mul1_c_c_reg_in[1]), 
        .CK(clk), .Q(a_out[1]), .QN() );
  DFF_X1 mul1_delay_output_genblk1_2__dff_i_q_reg ( .D(mul1_c_c_reg_in[2]), 
        .CK(clk), .Q(a_out[2]), .QN() );
  DFF_X1 delay_a_genblk1_0__dff_i_q_reg ( .D(a_out[0]), .CK(clk), .Q(
        a_delayed[0]), .QN() );
  DFF_X1 delay_a_genblk1_1__dff_i_q_reg ( .D(a_out[1]), .CK(clk), .Q(
        a_delayed[1]), .QN() );
  DFF_X1 delay_a_genblk1_2__dff_i_q_reg ( .D(a_out[2]), .CK(clk), .Q(
        a_delayed[2]), .QN() );
  DFF_X1 delay_b_genblk1_0__dff_i_q_reg ( .D(port_b[0]), .CK(clk), .Q(
        b_delayed[0]), .QN() );
  DFF_X1 delay_b_genblk1_1__dff_i_q_reg ( .D(port_b[1]), .CK(clk), .Q(
        b_delayed[1]), .QN() );
  DFF_X1 delay_b_genblk1_2__dff_i_q_reg ( .D(port_b[2]), .CK(clk), .Q(
        b_delayed[2]), .QN() );
  XOR2_X1 mul2_U3 ( .A(mul2_id_c[2]), .B(mul2_hc_c[2]), .Z(mul2_c_c_reg_in[2])
         );
  XOR2_X1 mul2_U2 ( .A(mul2_id_c[1]), .B(mul2_hc_c[1]), .Z(mul2_c_c_reg_in[1])
         );
  XOR2_X1 mul2_U1 ( .A(mul2_id_c[0]), .B(mul2_hc_c[0]), .Z(mul2_c_c_reg_in[0])
         );
  AND2_X1 mul2_genblk1_id_U3 ( .A1(b_delayed[2]), .A2(a_delayed[2]), .ZN(
        mul2_id_c[2]) );
  AND2_X1 mul2_genblk1_id_U2 ( .A1(b_delayed[1]), .A2(a_delayed[1]), .ZN(
        mul2_id_c[1]) );
  AND2_X1 mul2_genblk1_id_U1 ( .A1(b_delayed[0]), .A2(a_delayed[0]), .ZN(
        mul2_id_c[0]) );
  XOR2_X1 mul2_genblk3_hc2_U19 ( .A(port_r2[1]), .B(port_r2[0]), .Z(
        mul2_genblk3_hc2_z_in_0_) );
  INV_X1 mul2_genblk3_hc2_U18 ( .A(a_delayed[1]), .ZN(mul2_genblk3_hc2_n23) );
  INV_X1 mul2_genblk3_hc2_U17 ( .A(b_delayed[0]), .ZN(mul2_genblk3_hc2_n19) );
  INV_X1 mul2_genblk3_hc2_U16 ( .A(b_delayed[2]), .ZN(mul2_genblk3_hc2_n21) );
  INV_X1 mul2_genblk3_hc2_U15 ( .A(b_delayed[1]), .ZN(mul2_genblk3_hc2_n20) );
  INV_X1 mul2_genblk3_hc2_U14 ( .A(a_delayed[0]), .ZN(mul2_genblk3_hc2_n22) );
  INV_X1 mul2_genblk3_hc2_U13 ( .A(a_delayed[2]), .ZN(mul2_genblk3_hc2_n24) );
  NOR2_X1 mul2_genblk3_hc2_U12 ( .A1(mul2_genblk3_hc2_n23), .A2(
        mul2_genblk3_hc2_n21), .ZN(mul2_genblk3_hc2_n18) );
  XOR2_X1 mul2_genblk3_hc2_U11 ( .A(mul2_genblk3_hc2_tmp_c0_out[2]), .B(
        mul2_genblk3_hc2_n18), .Z(mul2_genblk3_hc2_tmp_c1_in[2]) );
  NOR2_X1 mul2_genblk3_hc2_U10 ( .A1(mul2_genblk3_hc2_n22), .A2(
        mul2_genblk3_hc2_n20), .ZN(mul2_genblk3_hc2_n17) );
  XOR2_X1 mul2_genblk3_hc2_U9 ( .A(mul2_genblk3_hc2_tmp_c0_out[1]), .B(
        mul2_genblk3_hc2_n17), .Z(mul2_genblk3_hc2_tmp_c1_in[1]) );
  NOR2_X1 mul2_genblk3_hc2_U8 ( .A1(mul2_genblk3_hc2_n24), .A2(
        mul2_genblk3_hc2_n19), .ZN(mul2_genblk3_hc2_n16) );
  XOR2_X1 mul2_genblk3_hc2_U7 ( .A(mul2_genblk3_hc2_tmp_c0_out[0]), .B(
        mul2_genblk3_hc2_n16), .Z(mul2_genblk3_hc2_tmp_c1_in[0]) );
  NOR2_X1 mul2_genblk3_hc2_U6 ( .A1(mul2_genblk3_hc2_n20), .A2(
        mul2_genblk3_hc2_n24), .ZN(mul2_genblk3_hc2_n15) );
  XOR2_X1 mul2_genblk3_hc2_U5 ( .A(mul2_genblk3_hc2_z_out[2]), .B(
        mul2_genblk3_hc2_n15), .Z(mul2_genblk3_hc2_tmp_c0_in[2]) );
  NOR2_X1 mul2_genblk3_hc2_U4 ( .A1(mul2_genblk3_hc2_n23), .A2(
        mul2_genblk3_hc2_n19), .ZN(mul2_genblk3_hc2_n14) );
  XOR2_X1 mul2_genblk3_hc2_U3 ( .A(mul2_genblk3_hc2_z_out[1]), .B(
        mul2_genblk3_hc2_n14), .Z(mul2_genblk3_hc2_tmp_c0_in[1]) );
  NOR2_X1 mul2_genblk3_hc2_U2 ( .A1(mul2_genblk3_hc2_n21), .A2(
        mul2_genblk3_hc2_n22), .ZN(mul2_genblk3_hc2_n13) );
  XOR2_X1 mul2_genblk3_hc2_U1 ( .A(mul2_genblk3_hc2_z_out[0]), .B(
        mul2_genblk3_hc2_n13), .Z(mul2_genblk3_hc2_tmp_c0_in[0]) );
  DFF_X1 mul2_genblk3_hc2_delay_z_genblk1_0__dff_i_q_reg ( .D(
        mul2_genblk3_hc2_z_in_0_), .CK(clk), .Q(mul2_genblk3_hc2_z_out[0]), 
        .QN() );
  DFF_X1 mul2_genblk3_hc2_delay_z_genblk1_1__dff_i_q_reg ( .D(port_r2[1]), 
        .CK(clk), .Q(mul2_genblk3_hc2_z_out[1]), .QN() );
  DFF_X1 mul2_genblk3_hc2_delay_z_genblk1_2__dff_i_q_reg ( .D(port_r2[0]), 
        .CK(clk), .Q(mul2_genblk3_hc2_z_out[2]), .QN() );
  DFF_X1 mul2_genblk3_hc2_delay_z_ab1_genblk1_0__dff_i_q_reg ( .D(
        mul2_genblk3_hc2_tmp_c0_in[0]), .CK(clk), .Q(
        mul2_genblk3_hc2_tmp_c0_out[0]), .QN() );
  DFF_X1 mul2_genblk3_hc2_delay_z_ab1_genblk1_1__dff_i_q_reg ( .D(
        mul2_genblk3_hc2_tmp_c0_in[1]), .CK(clk), .Q(
        mul2_genblk3_hc2_tmp_c0_out[1]), .QN() );
  DFF_X1 mul2_genblk3_hc2_delay_z_ab1_genblk1_2__dff_i_q_reg ( .D(
        mul2_genblk3_hc2_tmp_c0_in[2]), .CK(clk), .Q(
        mul2_genblk3_hc2_tmp_c0_out[2]), .QN() );
  DFF_X1 mul2_genblk3_hc2_delay_z_a1b_genblk1_0__dff_i_q_reg ( .D(
        mul2_genblk3_hc2_tmp_c1_in[0]), .CK(clk), .Q(mul2_hc_c[0]), .QN() );
  DFF_X1 mul2_genblk3_hc2_delay_z_a1b_genblk1_1__dff_i_q_reg ( .D(
        mul2_genblk3_hc2_tmp_c1_in[1]), .CK(clk), .Q(mul2_hc_c[1]), .QN() );
  DFF_X1 mul2_genblk3_hc2_delay_z_a1b_genblk1_2__dff_i_q_reg ( .D(
        mul2_genblk3_hc2_tmp_c1_in[2]), .CK(clk), .Q(mul2_hc_c[2]), .QN() );
  DFF_X1 mul2_delay_output_genblk1_0__dff_i_q_reg ( .D(mul2_c_c_reg_in[0]), 
        .CK(clk), .Q(port_c[0]), .QN() );
  DFF_X1 mul2_delay_output_genblk1_1__dff_i_q_reg ( .D(mul2_c_c_reg_in[1]), 
        .CK(clk), .Q(port_c[1]), .QN() );
  DFF_X1 mul2_delay_output_genblk1_2__dff_i_q_reg ( .D(mul2_c_c_reg_in[2]), 
        .CK(clk), .Q(port_c[2]), .QN() );
endmodule

