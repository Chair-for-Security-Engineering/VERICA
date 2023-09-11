/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Thu Mar  2 10:15:39 2023
/////////////////////////////////////////////////////////////


module dom_dep_insecure ( clk, port_a, port_r1, port_r2, port_c );
  input [2:0] port_a;
  input [2:0] port_r1;
  input [2:0] port_r2;
  output [2:0] port_c;
  input clk;
  wire   insecure_dom_mul_n9, insecure_dom_mul_n8, insecure_dom_mul_n7,
         insecure_dom_mul_n6, insecure_dom_mul_n5, insecure_dom_mul_n4,
         insecure_dom_mul_n3, insecure_dom_mul_n2, insecure_dom_mul_n1,
         insecure_dom_dec_n2, insecure_dom_dec_n1;
  wire   [2:0] insecure_dom_dec_out;
  wire   [2:0] insecure_dom_mul_out;
  wire   [2:0] insecure_a_delayed;
  wire   [8:0] insecure_dom_mul_partial_products_delayed;
  wire   [8:0] insecure_dom_mul_partial_products;
  wire   [2:0] insecure_dom_dec_b_masked_delayed;
  wire   [2:0] insecure_dom_dec_b_masked;

  XOR2_X1 insecure_U3 ( .A(insecure_dom_mul_out[2]), .B(
        insecure_dom_dec_out[2]), .Z(port_c[2]) );
  XOR2_X1 insecure_U2 ( .A(insecure_dom_mul_out[1]), .B(
        insecure_dom_dec_out[1]), .Z(port_c[1]) );
  XOR2_X1 insecure_U1 ( .A(insecure_dom_mul_out[0]), .B(
        insecure_dom_dec_out[0]), .Z(port_c[0]) );
  DFF_X1 insecure_genblk1_delay_a_genblk1_0__dff_i_q_reg ( .D(port_a[0]), .CK(
        clk), .Q(insecure_a_delayed[0]), .QN() );
  DFF_X1 insecure_genblk1_delay_a_genblk1_1__dff_i_q_reg ( .D(port_a[1]), .CK(
        clk), .Q(insecure_a_delayed[1]), .QN() );
  DFF_X1 insecure_genblk1_delay_a_genblk1_2__dff_i_q_reg ( .D(port_a[2]), .CK(
        clk), .Q(insecure_a_delayed[2]), .QN() );
  AND2_X1 insecure_dom_mul_U21 ( .A1(port_a[2]), .A2(port_r1[2]), .ZN(
        insecure_dom_mul_partial_products[8]) );
  AND2_X1 insecure_dom_mul_U20 ( .A1(port_r1[1]), .A2(port_a[1]), .ZN(
        insecure_dom_mul_partial_products[4]) );
  AND2_X1 insecure_dom_mul_U19 ( .A1(port_r1[0]), .A2(port_a[0]), .ZN(
        insecure_dom_mul_partial_products[0]) );
  NAND2_X1 insecure_dom_mul_U18 ( .A1(port_r1[1]), .A2(port_a[2]), .ZN(
        insecure_dom_mul_n4) );
  XNOR2_X1 insecure_dom_mul_U17 ( .A(port_r2[2]), .B(insecure_dom_mul_n4), 
        .ZN(insecure_dom_mul_partial_products[7]) );
  NAND2_X1 insecure_dom_mul_U16 ( .A1(port_r1[0]), .A2(port_a[2]), .ZN(
        insecure_dom_mul_n5) );
  XNOR2_X1 insecure_dom_mul_U15 ( .A(port_r2[1]), .B(insecure_dom_mul_n5), 
        .ZN(insecure_dom_mul_partial_products[6]) );
  NAND2_X1 insecure_dom_mul_U14 ( .A1(port_a[1]), .A2(port_r1[2]), .ZN(
        insecure_dom_mul_n6) );
  XNOR2_X1 insecure_dom_mul_U13 ( .A(port_r2[2]), .B(insecure_dom_mul_n6), 
        .ZN(insecure_dom_mul_partial_products[5]) );
  NAND2_X1 insecure_dom_mul_U12 ( .A1(port_a[1]), .A2(port_r1[0]), .ZN(
        insecure_dom_mul_n7) );
  XNOR2_X1 insecure_dom_mul_U11 ( .A(port_r2[0]), .B(insecure_dom_mul_n7), 
        .ZN(insecure_dom_mul_partial_products[3]) );
  NAND2_X1 insecure_dom_mul_U10 ( .A1(port_a[0]), .A2(port_r1[2]), .ZN(
        insecure_dom_mul_n8) );
  XNOR2_X1 insecure_dom_mul_U9 ( .A(port_r2[1]), .B(insecure_dom_mul_n8), .ZN(
        insecure_dom_mul_partial_products[2]) );
  NAND2_X1 insecure_dom_mul_U8 ( .A1(port_a[0]), .A2(port_r1[1]), .ZN(
        insecure_dom_mul_n9) );
  XNOR2_X1 insecure_dom_mul_U7 ( .A(port_r2[0]), .B(insecure_dom_mul_n9), .ZN(
        insecure_dom_mul_partial_products[1]) );
  XOR2_X1 insecure_dom_mul_U6 ( .A(
        insecure_dom_mul_partial_products_delayed[8]), .B(
        insecure_dom_mul_partial_products_delayed[7]), .Z(insecure_dom_mul_n1)
         );
  XOR2_X1 insecure_dom_mul_U5 ( .A(
        insecure_dom_mul_partial_products_delayed[6]), .B(insecure_dom_mul_n1), 
        .Z(insecure_dom_mul_out[2]) );
  XOR2_X1 insecure_dom_mul_U4 ( .A(
        insecure_dom_mul_partial_products_delayed[5]), .B(
        insecure_dom_mul_partial_products_delayed[4]), .Z(insecure_dom_mul_n2)
         );
  XOR2_X1 insecure_dom_mul_U3 ( .A(
        insecure_dom_mul_partial_products_delayed[3]), .B(insecure_dom_mul_n2), 
        .Z(insecure_dom_mul_out[1]) );
  XOR2_X1 insecure_dom_mul_U2 ( .A(
        insecure_dom_mul_partial_products_delayed[2]), .B(
        insecure_dom_mul_partial_products_delayed[1]), .Z(insecure_dom_mul_n3)
         );
  XOR2_X1 insecure_dom_mul_U1 ( .A(
        insecure_dom_mul_partial_products_delayed[0]), .B(insecure_dom_mul_n3), 
        .Z(insecure_dom_mul_out[0]) );
  DFF_X1 insecure_dom_mul_genblk2_0__delay_partial_products_genblk1_0__dff_i_q_reg ( 
        .D(insecure_dom_mul_partial_products[0]), .CK(clk), .Q(
        insecure_dom_mul_partial_products_delayed[0]), .QN() );
  DFF_X1 insecure_dom_mul_genblk2_0__delay_partial_products_genblk1_1__dff_i_q_reg ( 
        .D(insecure_dom_mul_partial_products[1]), .CK(clk), .Q(
        insecure_dom_mul_partial_products_delayed[1]), .QN() );
  DFF_X1 insecure_dom_mul_genblk2_0__delay_partial_products_genblk1_2__dff_i_q_reg ( 
        .D(insecure_dom_mul_partial_products[2]), .CK(clk), .Q(
        insecure_dom_mul_partial_products_delayed[2]), .QN() );
  DFF_X1 insecure_dom_mul_genblk2_1__delay_partial_products_genblk1_0__dff_i_q_reg ( 
        .D(insecure_dom_mul_partial_products[3]), .CK(clk), .Q(
        insecure_dom_mul_partial_products_delayed[3]), .QN() );
  DFF_X1 insecure_dom_mul_genblk2_1__delay_partial_products_genblk1_1__dff_i_q_reg ( 
        .D(insecure_dom_mul_partial_products[4]), .CK(clk), .Q(
        insecure_dom_mul_partial_products_delayed[4]), .QN() );
  DFF_X1 insecure_dom_mul_genblk2_1__delay_partial_products_genblk1_2__dff_i_q_reg ( 
        .D(insecure_dom_mul_partial_products[5]), .CK(clk), .Q(
        insecure_dom_mul_partial_products_delayed[5]), .QN() );
  DFF_X1 insecure_dom_mul_genblk2_2__delay_partial_products_genblk1_0__dff_i_q_reg ( 
        .D(insecure_dom_mul_partial_products[6]), .CK(clk), .Q(
        insecure_dom_mul_partial_products_delayed[6]), .QN() );
  DFF_X1 insecure_dom_mul_genblk2_2__delay_partial_products_genblk1_1__dff_i_q_reg ( 
        .D(insecure_dom_mul_partial_products[7]), .CK(clk), .Q(
        insecure_dom_mul_partial_products_delayed[7]), .QN() );
  DFF_X1 insecure_dom_mul_genblk2_2__delay_partial_products_genblk1_2__dff_i_q_reg ( 
        .D(insecure_dom_mul_partial_products[8]), .CK(clk), .Q(
        insecure_dom_mul_partial_products_delayed[8]), .QN() );
  AND2_X1 insecure_dom_dec_U8 ( .A1(insecure_a_delayed[2]), .A2(
        insecure_dom_dec_n1), .ZN(insecure_dom_dec_out[2]) );
  AND2_X1 insecure_dom_dec_U7 ( .A1(insecure_a_delayed[1]), .A2(
        insecure_dom_dec_n1), .ZN(insecure_dom_dec_out[1]) );
  AND2_X1 insecure_dom_dec_U6 ( .A1(insecure_a_delayed[0]), .A2(
        insecure_dom_dec_n1), .ZN(insecure_dom_dec_out[0]) );
  XOR2_X1 insecure_dom_dec_U5 ( .A(port_r1[2]), .B(port_a[2]), .Z(
        insecure_dom_dec_b_masked[2]) );
  XOR2_X1 insecure_dom_dec_U4 ( .A(port_r1[1]), .B(port_a[1]), .Z(
        insecure_dom_dec_b_masked[1]) );
  XOR2_X1 insecure_dom_dec_U3 ( .A(port_r1[0]), .B(port_a[0]), .Z(
        insecure_dom_dec_b_masked[0]) );
  XNOR2_X1 insecure_dom_dec_U2 ( .A(insecure_dom_dec_b_masked_delayed[2]), .B(
        insecure_dom_dec_b_masked_delayed[1]), .ZN(insecure_dom_dec_n2) );
  XNOR2_X1 insecure_dom_dec_U1 ( .A(insecure_dom_dec_n2), .B(
        insecure_dom_dec_b_masked_delayed[0]), .ZN(insecure_dom_dec_n1) );
  DFF_X1 insecure_dom_dec_delay_b_masked_genblk1_0__dff_i_q_reg ( .D(
        insecure_dom_dec_b_masked[0]), .CK(clk), .Q(
        insecure_dom_dec_b_masked_delayed[0]), .QN() );
  DFF_X1 insecure_dom_dec_delay_b_masked_genblk1_1__dff_i_q_reg ( .D(
        insecure_dom_dec_b_masked[1]), .CK(clk), .Q(
        insecure_dom_dec_b_masked_delayed[1]), .QN() );
  DFF_X1 insecure_dom_dec_delay_b_masked_genblk1_2__dff_i_q_reg ( .D(
        insecure_dom_dec_b_masked[2]), .CK(clk), .Q(
        insecure_dom_dec_b_masked_delayed[2]), .QN() );
endmodule

