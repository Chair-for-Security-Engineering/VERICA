/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Dec 13 11:35:32 2022
/////////////////////////////////////////////////////////////


module uma ( clk, port_r, port_a, port_b, port_c );
  input [3:0] port_r;
  input [3:0] port_a;
  input [3:0] port_b;
  output [3:0] port_c;
  input clk;
  wire   genblk3_genblk1_pc_reg_out_0__0_, genblk3_genblk1_pc_reg_out_0__1_,
         genblk3_genblk1_pc_reg_out_0__2_, genblk3_genblk1_pc_reg_out_0__3_,
         genblk3_genblk1_pc_reg_out_1__0_, genblk3_genblk1_pc_reg_out_1__1_,
         genblk3_genblk1_pc_reg_out_1__2_, genblk3_genblk1_pc_reg_out_1__3_,
         genblk3_genblk1_pc_reg_out_2__0_, genblk3_genblk1_pc_reg_out_2__1_,
         genblk3_genblk1_pc_reg_out_2__2_, genblk3_genblk1_pc_reg_out_2__3_;
  wire   [3:0] id_c;
  wire   [3:0] pc_c;
  wire   [3:0] c_c_reg_in;
  wire   [3:0] genblk3_genblk1_pc_ab2;
  wire   [3:0] genblk3_genblk1_pc_a1b;
  wire   [15:0] genblk3_genblk1_pc_reg_in;
  wire   [3:0] genblk3_genblk1_pc_ab1;
  wire   [7:0] genblk3_genblk1_pc_r_shifted_delayed;

  XOR2_X1 U5 ( .A(pc_c[1]), .B(id_c[1]), .Z(c_c_reg_in[1]) );
  XOR2_X1 U6 ( .A(pc_c[2]), .B(id_c[2]), .Z(c_c_reg_in[2]) );
  XOR2_X1 U7 ( .A(pc_c[3]), .B(id_c[3]), .Z(c_c_reg_in[3]) );
  XOR2_X1 U8 ( .A(pc_c[0]), .B(id_c[0]), .Z(c_c_reg_in[0]) );
  AND2_X1 genblk1_id_U4 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(id_c[0]) );
  AND2_X1 genblk1_id_U3 ( .A1(port_b[3]), .A2(port_a[3]), .ZN(id_c[3]) );
  AND2_X1 genblk1_id_U2 ( .A1(port_b[2]), .A2(port_a[2]), .ZN(id_c[2]) );
  AND2_X1 genblk1_id_U1 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(id_c[1]) );
  XOR2_X1 genblk3_genblk1_pc_U16 ( .A(port_r[3]), .B(genblk3_genblk1_pc_ab1[3]), .Z(genblk3_genblk1_pc_reg_in[3]) );
  XOR2_X1 genblk3_genblk1_pc_U15 ( .A(port_r[2]), .B(genblk3_genblk1_pc_ab1[2]), .Z(genblk3_genblk1_pc_reg_in[2]) );
  XOR2_X1 genblk3_genblk1_pc_U14 ( .A(port_r[1]), .B(genblk3_genblk1_pc_ab1[1]), .Z(genblk3_genblk1_pc_reg_in[1]) );
  XOR2_X1 genblk3_genblk1_pc_U13 ( .A(port_r[0]), .B(genblk3_genblk1_pc_ab1[0]), .Z(genblk3_genblk1_pc_reg_in[0]) );
  XOR2_X1 genblk3_genblk1_pc_U12 ( .A(genblk3_genblk1_pc_reg_out_2__3_), .B(
        genblk3_genblk1_pc_ab2[3]), .Z(genblk3_genblk1_pc_reg_in[15]) );
  XOR2_X1 genblk3_genblk1_pc_U11 ( .A(genblk3_genblk1_pc_reg_out_2__2_), .B(
        genblk3_genblk1_pc_ab2[2]), .Z(genblk3_genblk1_pc_reg_in[14]) );
  XOR2_X1 genblk3_genblk1_pc_U10 ( .A(genblk3_genblk1_pc_reg_out_2__1_), .B(
        genblk3_genblk1_pc_ab2[1]), .Z(genblk3_genblk1_pc_reg_in[13]) );
  XOR2_X1 genblk3_genblk1_pc_U9 ( .A(genblk3_genblk1_pc_reg_out_2__0_), .B(
        genblk3_genblk1_pc_ab2[0]), .Z(genblk3_genblk1_pc_reg_in[12]) );
  XOR2_X1 genblk3_genblk1_pc_U8 ( .A(genblk3_genblk1_pc_reg_out_0__3_), .B(
        genblk3_genblk1_pc_a1b[3]), .Z(genblk3_genblk1_pc_reg_in[7]) );
  XOR2_X1 genblk3_genblk1_pc_U7 ( .A(genblk3_genblk1_pc_reg_out_0__2_), .B(
        genblk3_genblk1_pc_a1b[2]), .Z(genblk3_genblk1_pc_reg_in[6]) );
  XOR2_X1 genblk3_genblk1_pc_U6 ( .A(genblk3_genblk1_pc_reg_out_0__1_), .B(
        genblk3_genblk1_pc_a1b[1]), .Z(genblk3_genblk1_pc_reg_in[5]) );
  XOR2_X1 genblk3_genblk1_pc_U5 ( .A(genblk3_genblk1_pc_reg_out_0__0_), .B(
        genblk3_genblk1_pc_a1b[0]), .Z(genblk3_genblk1_pc_reg_in[4]) );
  XOR2_X1 genblk3_genblk1_pc_U4 ( .A(genblk3_genblk1_pc_reg_out_1__3_), .B(
        genblk3_genblk1_pc_r_shifted_delayed[7]), .Z(
        genblk3_genblk1_pc_reg_in[11]) );
  XOR2_X1 genblk3_genblk1_pc_U3 ( .A(genblk3_genblk1_pc_reg_out_1__2_), .B(
        genblk3_genblk1_pc_r_shifted_delayed[6]), .Z(
        genblk3_genblk1_pc_reg_in[10]) );
  XOR2_X1 genblk3_genblk1_pc_U2 ( .A(genblk3_genblk1_pc_reg_out_1__1_), .B(
        genblk3_genblk1_pc_r_shifted_delayed[5]), .Z(
        genblk3_genblk1_pc_reg_in[9]) );
  XOR2_X1 genblk3_genblk1_pc_U1 ( .A(genblk3_genblk1_pc_reg_out_1__0_), .B(
        genblk3_genblk1_pc_r_shifted_delayed[4]), .Z(
        genblk3_genblk1_pc_reg_in[8]) );
  DFF_X1 genblk3_genblk1_pc_delay1_r_genblk1_0__dff_i_q_reg ( .D(port_r[3]), 
        .CK(clk), .Q(genblk3_genblk1_pc_r_shifted_delayed[0]), .QN() );
  DFF_X1 genblk3_genblk1_pc_delay1_r_genblk1_1__dff_i_q_reg ( .D(port_r[0]), 
        .CK(clk), .Q(genblk3_genblk1_pc_r_shifted_delayed[1]), .QN() );
  DFF_X1 genblk3_genblk1_pc_delay1_r_genblk1_2__dff_i_q_reg ( .D(port_r[1]), 
        .CK(clk), .Q(genblk3_genblk1_pc_r_shifted_delayed[2]), .QN() );
  DFF_X1 genblk3_genblk1_pc_delay1_r_genblk1_3__dff_i_q_reg ( .D(port_r[2]), 
        .CK(clk), .Q(genblk3_genblk1_pc_r_shifted_delayed[3]), .QN() );
  DFF_X1 genblk3_genblk1_pc_delay2_r_genblk1_0__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_r_shifted_delayed[0]), .CK(clk), .Q(
        genblk3_genblk1_pc_r_shifted_delayed[4]), .QN() );
  DFF_X1 genblk3_genblk1_pc_delay2_r_genblk1_1__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_r_shifted_delayed[1]), .CK(clk), .Q(
        genblk3_genblk1_pc_r_shifted_delayed[5]), .QN() );
  DFF_X1 genblk3_genblk1_pc_delay2_r_genblk1_2__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_r_shifted_delayed[2]), .CK(clk), .Q(
        genblk3_genblk1_pc_r_shifted_delayed[6]), .QN() );
  DFF_X1 genblk3_genblk1_pc_delay2_r_genblk1_3__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_r_shifted_delayed[3]), .CK(clk), .Q(
        genblk3_genblk1_pc_r_shifted_delayed[7]), .QN() );
  AND2_X1 genblk3_genblk1_pc_and_ab1_U4 ( .A1(port_b[2]), .A2(port_a[3]), .ZN(
        genblk3_genblk1_pc_ab1[3]) );
  AND2_X1 genblk3_genblk1_pc_and_ab1_U3 ( .A1(port_b[1]), .A2(port_a[2]), .ZN(
        genblk3_genblk1_pc_ab1[2]) );
  AND2_X1 genblk3_genblk1_pc_and_ab1_U2 ( .A1(port_b[0]), .A2(port_a[1]), .ZN(
        genblk3_genblk1_pc_ab1[1]) );
  AND2_X1 genblk3_genblk1_pc_and_ab1_U1 ( .A1(port_b[3]), .A2(port_a[0]), .ZN(
        genblk3_genblk1_pc_ab1[0]) );
  DFF_X1 genblk3_genblk1_pc_reg0_genblk1_0__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[0]), .CK(clk), .Q(
        genblk3_genblk1_pc_reg_out_0__0_), .QN() );
  DFF_X1 genblk3_genblk1_pc_reg0_genblk1_1__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[1]), .CK(clk), .Q(
        genblk3_genblk1_pc_reg_out_0__1_), .QN() );
  DFF_X1 genblk3_genblk1_pc_reg0_genblk1_2__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[2]), .CK(clk), .Q(
        genblk3_genblk1_pc_reg_out_0__2_), .QN() );
  DFF_X1 genblk3_genblk1_pc_reg0_genblk1_3__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[3]), .CK(clk), .Q(
        genblk3_genblk1_pc_reg_out_0__3_), .QN() );
  AND2_X1 genblk3_genblk1_pc_and_a1b_U4 ( .A1(port_a[2]), .A2(port_b[3]), .ZN(
        genblk3_genblk1_pc_a1b[3]) );
  AND2_X1 genblk3_genblk1_pc_and_a1b_U3 ( .A1(port_a[1]), .A2(port_b[2]), .ZN(
        genblk3_genblk1_pc_a1b[2]) );
  AND2_X1 genblk3_genblk1_pc_and_a1b_U2 ( .A1(port_a[0]), .A2(port_b[1]), .ZN(
        genblk3_genblk1_pc_a1b[1]) );
  AND2_X1 genblk3_genblk1_pc_and_a1b_U1 ( .A1(port_a[3]), .A2(port_b[0]), .ZN(
        genblk3_genblk1_pc_a1b[0]) );
  DFF_X1 genblk3_genblk1_pc_reg1_genblk1_0__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[4]), .CK(clk), .Q(
        genblk3_genblk1_pc_reg_out_1__0_), .QN() );
  DFF_X1 genblk3_genblk1_pc_reg1_genblk1_1__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[5]), .CK(clk), .Q(
        genblk3_genblk1_pc_reg_out_1__1_), .QN() );
  DFF_X1 genblk3_genblk1_pc_reg1_genblk1_2__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[6]), .CK(clk), .Q(
        genblk3_genblk1_pc_reg_out_1__2_), .QN() );
  DFF_X1 genblk3_genblk1_pc_reg1_genblk1_3__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[7]), .CK(clk), .Q(
        genblk3_genblk1_pc_reg_out_1__3_), .QN() );
  DFF_X1 genblk3_genblk1_pc_reg2_genblk1_0__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[8]), .CK(clk), .Q(
        genblk3_genblk1_pc_reg_out_2__0_), .QN() );
  DFF_X1 genblk3_genblk1_pc_reg2_genblk1_1__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[9]), .CK(clk), .Q(
        genblk3_genblk1_pc_reg_out_2__1_), .QN() );
  DFF_X1 genblk3_genblk1_pc_reg2_genblk1_2__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[10]), .CK(clk), .Q(
        genblk3_genblk1_pc_reg_out_2__2_), .QN() );
  DFF_X1 genblk3_genblk1_pc_reg2_genblk1_3__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[11]), .CK(clk), .Q(
        genblk3_genblk1_pc_reg_out_2__3_), .QN() );
  AND2_X1 genblk3_genblk1_pc_and_ab2_U4 ( .A1(port_b[1]), .A2(port_a[3]), .ZN(
        genblk3_genblk1_pc_ab2[3]) );
  AND2_X1 genblk3_genblk1_pc_and_ab2_U3 ( .A1(port_b[0]), .A2(port_a[2]), .ZN(
        genblk3_genblk1_pc_ab2[2]) );
  AND2_X1 genblk3_genblk1_pc_and_ab2_U2 ( .A1(port_b[3]), .A2(port_a[1]), .ZN(
        genblk3_genblk1_pc_ab2[1]) );
  AND2_X1 genblk3_genblk1_pc_and_ab2_U1 ( .A1(port_b[2]), .A2(port_a[0]), .ZN(
        genblk3_genblk1_pc_ab2[0]) );
  DFF_X1 genblk3_genblk1_pc_reg3_genblk1_0__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[12]), .CK(clk), .Q(pc_c[0]), .QN() );
  DFF_X1 genblk3_genblk1_pc_reg3_genblk1_1__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[13]), .CK(clk), .Q(pc_c[1]), .QN() );
  DFF_X1 genblk3_genblk1_pc_reg3_genblk1_2__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[14]), .CK(clk), .Q(pc_c[2]), .QN() );
  DFF_X1 genblk3_genblk1_pc_reg3_genblk1_3__dff_i_q_reg ( .D(
        genblk3_genblk1_pc_reg_in[15]), .CK(clk), .Q(pc_c[3]), .QN() );
  DFF_X1 delay_output_genblk1_0__dff_i_q_reg ( .D(c_c_reg_in[0]), .CK(clk), 
        .Q(port_c[0]), .QN() );
  DFF_X1 delay_output_genblk1_1__dff_i_q_reg ( .D(c_c_reg_in[1]), .CK(clk), 
        .Q(port_c[1]), .QN() );
  DFF_X1 delay_output_genblk1_2__dff_i_q_reg ( .D(c_c_reg_in[2]), .CK(clk), 
        .Q(port_c[2]), .QN() );
  DFF_X1 delay_output_genblk1_3__dff_i_q_reg ( .D(c_c_reg_in[3]), .CK(clk), 
        .Q(port_c[3]), .QN() );
endmodule

