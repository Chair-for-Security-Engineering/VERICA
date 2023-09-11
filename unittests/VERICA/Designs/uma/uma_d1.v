/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Dec 13 11:34:55 2022
/////////////////////////////////////////////////////////////


module uma ( clk, port_r, port_a, port_b, port_c );
  input [0:0] port_r;
  input [1:0] port_a;
  input [1:0] port_b;
  output [1:0] port_c;
  input clk;
  wire   genblk3_genblk1_ic__0_net__0_, genblk3_genblk1_ic__0_net__1_;
  wire   [1:0] id_c;
  wire   [1:0] ic_c;
  wire   [1:0] c_c_reg_in;
  wire   [1:0] genblk3_genblk1_ic_and_rotated_b;

  XOR2_X1 U3 ( .A(id_c[1]), .B(ic_c[1]), .Z(c_c_reg_in[1]) );
  XOR2_X1 U4 ( .A(id_c[0]), .B(ic_c[0]), .Z(c_c_reg_in[0]) );
  AND2_X1 genblk1_id_U2 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(id_c[0]) );
  AND2_X1 genblk1_id_U1 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(id_c[1]) );
  XOR2_X1 genblk3_genblk1_ic_U2 ( .A(port_r[0]), .B(
        genblk3_genblk1_ic_and_rotated_b[1]), .Z(genblk3_genblk1_ic__0_net__1_) );
  XOR2_X1 genblk3_genblk1_ic_U1 ( .A(port_r[0]), .B(
        genblk3_genblk1_ic_and_rotated_b[0]), .Z(genblk3_genblk1_ic__0_net__0_) );
  AND2_X1 genblk3_genblk1_ic_ab1_U2 ( .A1(port_b[0]), .A2(port_a[1]), .ZN(
        genblk3_genblk1_ic_and_rotated_b[1]) );
  AND2_X1 genblk3_genblk1_ic_ab1_U1 ( .A1(port_b[1]), .A2(port_a[0]), .ZN(
        genblk3_genblk1_ic_and_rotated_b[0]) );
  DFF_X1 genblk3_genblk1_ic_delay_ab1_genblk1_0__dff_i_q_reg ( .D(
        genblk3_genblk1_ic__0_net__0_), .CK(clk), .Q(ic_c[0]), .QN() );
  DFF_X1 genblk3_genblk1_ic_delay_ab1_genblk1_1__dff_i_q_reg ( .D(
        genblk3_genblk1_ic__0_net__1_), .CK(clk), .Q(ic_c[1]), .QN() );
  DFF_X1 delay_output_genblk1_0__dff_i_q_reg ( .D(c_c_reg_in[0]), .CK(clk), 
        .Q(port_c[0]), .QN() );
  DFF_X1 delay_output_genblk1_1__dff_i_q_reg ( .D(c_c_reg_in[1]), .CK(clk), 
        .Q(port_c[1]), .QN() );
endmodule

