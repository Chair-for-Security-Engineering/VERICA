/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Dec 13 11:35:59 2022
/////////////////////////////////////////////////////////////


module uma ( clk, port_r, port_a, port_b, port_c );
  input [4:0] port_r;
  input [4:0] port_a;
  input [4:0] port_b;
  output [4:0] port_c;
  input clk;
  wire   genblk2_c_reg_out_0__0__0_, genblk2_c_reg_out_0__0__1_,
         genblk2_c_reg_out_0__0__2_, genblk2_c_reg_out_0__0__3_,
         genblk2_c_reg_out_0__0__4_, genblk2_c_reg_out_1__0__0_,
         genblk2_c_reg_out_1__0__1_, genblk2_c_reg_out_1__0__2_,
         genblk2_c_reg_out_1__0__3_, genblk2_c_reg_out_1__0__4_,
         genblk2_c_reg_out_2__0__0_, genblk2_c_reg_out_2__0__1_,
         genblk2_c_reg_out_2__0__2_, genblk2_c_reg_out_2__0__3_,
         genblk2_c_reg_out_2__0__4_, genblk2_c_reg_out_3__0__0_,
         genblk2_c_reg_out_3__0__1_, genblk2_c_reg_out_3__0__2_,
         genblk2_c_reg_out_3__0__3_, genblk2_c_reg_out_3__0__4_;
  wire   [4:0] id_c;
  wire   [4:0] c_c;
  wire   [4:0] c_c_reg_in;
  wire   [4:0] genblk2_c_a2b;
  wire   [4:0] genblk2_c_ab2;
  wire   [4:0] genblk2_c_a1b;
  wire   [24:0] genblk2_c_reg_in;
  wire   [4:0] genblk2_c_ab1;
  wire   [9:0] genblk2_c_r_shifted_delayed;

  XOR2_X1 U6 ( .A(id_c[1]), .B(c_c[1]), .Z(c_c_reg_in[1]) );
  XOR2_X1 U7 ( .A(id_c[2]), .B(c_c[2]), .Z(c_c_reg_in[2]) );
  XOR2_X1 U8 ( .A(id_c[3]), .B(c_c[3]), .Z(c_c_reg_in[3]) );
  XOR2_X1 U9 ( .A(id_c[4]), .B(c_c[4]), .Z(c_c_reg_in[4]) );
  XOR2_X1 U10 ( .A(id_c[0]), .B(c_c[0]), .Z(c_c_reg_in[0]) );
  AND2_X1 genblk1_id_U5 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(id_c[0]) );
  AND2_X1 genblk1_id_U4 ( .A1(port_b[4]), .A2(port_a[4]), .ZN(id_c[4]) );
  AND2_X1 genblk1_id_U3 ( .A1(port_b[3]), .A2(port_a[3]), .ZN(id_c[3]) );
  AND2_X1 genblk1_id_U2 ( .A1(port_b[2]), .A2(port_a[2]), .ZN(id_c[2]) );
  AND2_X1 genblk1_id_U1 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(id_c[1]) );
  XOR2_X1 genblk2_c_U25 ( .A(port_r[4]), .B(genblk2_c_ab1[4]), .Z(
        genblk2_c_reg_in[4]) );
  XOR2_X1 genblk2_c_U24 ( .A(port_r[3]), .B(genblk2_c_ab1[3]), .Z(
        genblk2_c_reg_in[3]) );
  XOR2_X1 genblk2_c_U23 ( .A(port_r[2]), .B(genblk2_c_ab1[2]), .Z(
        genblk2_c_reg_in[2]) );
  XOR2_X1 genblk2_c_U22 ( .A(port_r[1]), .B(genblk2_c_ab1[1]), .Z(
        genblk2_c_reg_in[1]) );
  XOR2_X1 genblk2_c_U21 ( .A(port_r[0]), .B(genblk2_c_ab1[0]), .Z(
        genblk2_c_reg_in[0]) );
  XOR2_X1 genblk2_c_U20 ( .A(genblk2_c_reg_out_3__0__4_), .B(genblk2_c_a2b[4]), 
        .Z(genblk2_c_reg_in[24]) );
  XOR2_X1 genblk2_c_U19 ( .A(genblk2_c_reg_out_3__0__3_), .B(genblk2_c_a2b[3]), 
        .Z(genblk2_c_reg_in[23]) );
  XOR2_X1 genblk2_c_U18 ( .A(genblk2_c_reg_out_3__0__2_), .B(genblk2_c_a2b[2]), 
        .Z(genblk2_c_reg_in[22]) );
  XOR2_X1 genblk2_c_U17 ( .A(genblk2_c_reg_out_3__0__1_), .B(genblk2_c_a2b[1]), 
        .Z(genblk2_c_reg_in[21]) );
  XOR2_X1 genblk2_c_U16 ( .A(genblk2_c_reg_out_3__0__0_), .B(genblk2_c_a2b[0]), 
        .Z(genblk2_c_reg_in[20]) );
  XOR2_X1 genblk2_c_U15 ( .A(genblk2_c_reg_out_2__0__4_), .B(genblk2_c_ab2[4]), 
        .Z(genblk2_c_reg_in[19]) );
  XOR2_X1 genblk2_c_U14 ( .A(genblk2_c_reg_out_2__0__3_), .B(genblk2_c_ab2[3]), 
        .Z(genblk2_c_reg_in[18]) );
  XOR2_X1 genblk2_c_U13 ( .A(genblk2_c_reg_out_2__0__2_), .B(genblk2_c_ab2[2]), 
        .Z(genblk2_c_reg_in[17]) );
  XOR2_X1 genblk2_c_U12 ( .A(genblk2_c_reg_out_2__0__1_), .B(genblk2_c_ab2[1]), 
        .Z(genblk2_c_reg_in[16]) );
  XOR2_X1 genblk2_c_U11 ( .A(genblk2_c_reg_out_2__0__0_), .B(genblk2_c_ab2[0]), 
        .Z(genblk2_c_reg_in[15]) );
  XOR2_X1 genblk2_c_U10 ( .A(genblk2_c_reg_out_0__0__4_), .B(genblk2_c_a1b[4]), 
        .Z(genblk2_c_reg_in[9]) );
  XOR2_X1 genblk2_c_U9 ( .A(genblk2_c_reg_out_0__0__3_), .B(genblk2_c_a1b[3]), 
        .Z(genblk2_c_reg_in[8]) );
  XOR2_X1 genblk2_c_U8 ( .A(genblk2_c_reg_out_0__0__2_), .B(genblk2_c_a1b[2]), 
        .Z(genblk2_c_reg_in[7]) );
  XOR2_X1 genblk2_c_U7 ( .A(genblk2_c_reg_out_0__0__1_), .B(genblk2_c_a1b[1]), 
        .Z(genblk2_c_reg_in[6]) );
  XOR2_X1 genblk2_c_U6 ( .A(genblk2_c_reg_out_0__0__0_), .B(genblk2_c_a1b[0]), 
        .Z(genblk2_c_reg_in[5]) );
  XOR2_X1 genblk2_c_U5 ( .A(genblk2_c_reg_out_1__0__4_), .B(
        genblk2_c_r_shifted_delayed[9]), .Z(genblk2_c_reg_in[14]) );
  XOR2_X1 genblk2_c_U4 ( .A(genblk2_c_reg_out_1__0__3_), .B(
        genblk2_c_r_shifted_delayed[8]), .Z(genblk2_c_reg_in[13]) );
  XOR2_X1 genblk2_c_U3 ( .A(genblk2_c_reg_out_1__0__2_), .B(
        genblk2_c_r_shifted_delayed[7]), .Z(genblk2_c_reg_in[12]) );
  XOR2_X1 genblk2_c_U2 ( .A(genblk2_c_reg_out_1__0__1_), .B(
        genblk2_c_r_shifted_delayed[6]), .Z(genblk2_c_reg_in[11]) );
  XOR2_X1 genblk2_c_U1 ( .A(genblk2_c_reg_out_1__0__0_), .B(
        genblk2_c_r_shifted_delayed[5]), .Z(genblk2_c_reg_in[10]) );
  DFF_X1 genblk2_c_delay1_r_genblk1_0__dff_i_q_reg ( .D(port_r[4]), .CK(clk), 
        .Q(genblk2_c_r_shifted_delayed[0]), .QN() );
  DFF_X1 genblk2_c_delay1_r_genblk1_1__dff_i_q_reg ( .D(port_r[0]), .CK(clk), 
        .Q(genblk2_c_r_shifted_delayed[1]), .QN() );
  DFF_X1 genblk2_c_delay1_r_genblk1_2__dff_i_q_reg ( .D(port_r[1]), .CK(clk), 
        .Q(genblk2_c_r_shifted_delayed[2]), .QN() );
  DFF_X1 genblk2_c_delay1_r_genblk1_3__dff_i_q_reg ( .D(port_r[2]), .CK(clk), 
        .Q(genblk2_c_r_shifted_delayed[3]), .QN() );
  DFF_X1 genblk2_c_delay1_r_genblk1_4__dff_i_q_reg ( .D(port_r[3]), .CK(clk), 
        .Q(genblk2_c_r_shifted_delayed[4]), .QN() );
  DFF_X1 genblk2_c_delay2_r_genblk1_0__dff_i_q_reg ( .D(
        genblk2_c_r_shifted_delayed[0]), .CK(clk), .Q(
        genblk2_c_r_shifted_delayed[5]), .QN() );
  DFF_X1 genblk2_c_delay2_r_genblk1_1__dff_i_q_reg ( .D(
        genblk2_c_r_shifted_delayed[1]), .CK(clk), .Q(
        genblk2_c_r_shifted_delayed[6]), .QN() );
  DFF_X1 genblk2_c_delay2_r_genblk1_2__dff_i_q_reg ( .D(
        genblk2_c_r_shifted_delayed[2]), .CK(clk), .Q(
        genblk2_c_r_shifted_delayed[7]), .QN() );
  DFF_X1 genblk2_c_delay2_r_genblk1_3__dff_i_q_reg ( .D(
        genblk2_c_r_shifted_delayed[3]), .CK(clk), .Q(
        genblk2_c_r_shifted_delayed[8]), .QN() );
  DFF_X1 genblk2_c_delay2_r_genblk1_4__dff_i_q_reg ( .D(
        genblk2_c_r_shifted_delayed[4]), .CK(clk), .Q(
        genblk2_c_r_shifted_delayed[9]), .QN() );
  AND2_X1 genblk2_c_genblk1_0__and_ab1_U5 ( .A1(port_b[3]), .A2(port_a[4]), 
        .ZN(genblk2_c_ab1[4]) );
  AND2_X1 genblk2_c_genblk1_0__and_ab1_U4 ( .A1(port_b[2]), .A2(port_a[3]), 
        .ZN(genblk2_c_ab1[3]) );
  AND2_X1 genblk2_c_genblk1_0__and_ab1_U3 ( .A1(port_b[1]), .A2(port_a[2]), 
        .ZN(genblk2_c_ab1[2]) );
  AND2_X1 genblk2_c_genblk1_0__and_ab1_U2 ( .A1(port_b[0]), .A2(port_a[1]), 
        .ZN(genblk2_c_ab1[1]) );
  AND2_X1 genblk2_c_genblk1_0__and_ab1_U1 ( .A1(port_b[4]), .A2(port_a[0]), 
        .ZN(genblk2_c_ab1[0]) );
  DFF_X1 genblk2_c_genblk1_0__reg0_genblk1_0__dff_i_q_reg ( .D(
        genblk2_c_reg_in[0]), .CK(clk), .Q(genblk2_c_reg_out_0__0__0_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg0_genblk1_1__dff_i_q_reg ( .D(
        genblk2_c_reg_in[1]), .CK(clk), .Q(genblk2_c_reg_out_0__0__1_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg0_genblk1_2__dff_i_q_reg ( .D(
        genblk2_c_reg_in[2]), .CK(clk), .Q(genblk2_c_reg_out_0__0__2_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg0_genblk1_3__dff_i_q_reg ( .D(
        genblk2_c_reg_in[3]), .CK(clk), .Q(genblk2_c_reg_out_0__0__3_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg0_genblk1_4__dff_i_q_reg ( .D(
        genblk2_c_reg_in[4]), .CK(clk), .Q(genblk2_c_reg_out_0__0__4_), .QN()
         );
  AND2_X1 genblk2_c_genblk1_0__and_a1b_U5 ( .A1(port_a[3]), .A2(port_b[4]), 
        .ZN(genblk2_c_a1b[4]) );
  AND2_X1 genblk2_c_genblk1_0__and_a1b_U4 ( .A1(port_a[2]), .A2(port_b[3]), 
        .ZN(genblk2_c_a1b[3]) );
  AND2_X1 genblk2_c_genblk1_0__and_a1b_U3 ( .A1(port_a[1]), .A2(port_b[2]), 
        .ZN(genblk2_c_a1b[2]) );
  AND2_X1 genblk2_c_genblk1_0__and_a1b_U2 ( .A1(port_a[0]), .A2(port_b[1]), 
        .ZN(genblk2_c_a1b[1]) );
  AND2_X1 genblk2_c_genblk1_0__and_a1b_U1 ( .A1(port_a[4]), .A2(port_b[0]), 
        .ZN(genblk2_c_a1b[0]) );
  DFF_X1 genblk2_c_genblk1_0__reg1_genblk1_0__dff_i_q_reg ( .D(
        genblk2_c_reg_in[5]), .CK(clk), .Q(genblk2_c_reg_out_1__0__0_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg1_genblk1_1__dff_i_q_reg ( .D(
        genblk2_c_reg_in[6]), .CK(clk), .Q(genblk2_c_reg_out_1__0__1_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg1_genblk1_2__dff_i_q_reg ( .D(
        genblk2_c_reg_in[7]), .CK(clk), .Q(genblk2_c_reg_out_1__0__2_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg1_genblk1_3__dff_i_q_reg ( .D(
        genblk2_c_reg_in[8]), .CK(clk), .Q(genblk2_c_reg_out_1__0__3_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg1_genblk1_4__dff_i_q_reg ( .D(
        genblk2_c_reg_in[9]), .CK(clk), .Q(genblk2_c_reg_out_1__0__4_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg2_genblk1_0__dff_i_q_reg ( .D(
        genblk2_c_reg_in[10]), .CK(clk), .Q(genblk2_c_reg_out_2__0__0_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg2_genblk1_1__dff_i_q_reg ( .D(
        genblk2_c_reg_in[11]), .CK(clk), .Q(genblk2_c_reg_out_2__0__1_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg2_genblk1_2__dff_i_q_reg ( .D(
        genblk2_c_reg_in[12]), .CK(clk), .Q(genblk2_c_reg_out_2__0__2_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg2_genblk1_3__dff_i_q_reg ( .D(
        genblk2_c_reg_in[13]), .CK(clk), .Q(genblk2_c_reg_out_2__0__3_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg2_genblk1_4__dff_i_q_reg ( .D(
        genblk2_c_reg_in[14]), .CK(clk), .Q(genblk2_c_reg_out_2__0__4_), .QN()
         );
  AND2_X1 genblk2_c_genblk1_0__and_ab2_U5 ( .A1(port_b[2]), .A2(port_a[4]), 
        .ZN(genblk2_c_ab2[4]) );
  AND2_X1 genblk2_c_genblk1_0__and_ab2_U4 ( .A1(port_b[1]), .A2(port_a[3]), 
        .ZN(genblk2_c_ab2[3]) );
  AND2_X1 genblk2_c_genblk1_0__and_ab2_U3 ( .A1(port_b[0]), .A2(port_a[2]), 
        .ZN(genblk2_c_ab2[2]) );
  AND2_X1 genblk2_c_genblk1_0__and_ab2_U2 ( .A1(port_b[4]), .A2(port_a[1]), 
        .ZN(genblk2_c_ab2[1]) );
  AND2_X1 genblk2_c_genblk1_0__and_ab2_U1 ( .A1(port_b[3]), .A2(port_a[0]), 
        .ZN(genblk2_c_ab2[0]) );
  DFF_X1 genblk2_c_genblk1_0__reg3_genblk1_0__dff_i_q_reg ( .D(
        genblk2_c_reg_in[15]), .CK(clk), .Q(genblk2_c_reg_out_3__0__0_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg3_genblk1_1__dff_i_q_reg ( .D(
        genblk2_c_reg_in[16]), .CK(clk), .Q(genblk2_c_reg_out_3__0__1_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg3_genblk1_2__dff_i_q_reg ( .D(
        genblk2_c_reg_in[17]), .CK(clk), .Q(genblk2_c_reg_out_3__0__2_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg3_genblk1_3__dff_i_q_reg ( .D(
        genblk2_c_reg_in[18]), .CK(clk), .Q(genblk2_c_reg_out_3__0__3_), .QN()
         );
  DFF_X1 genblk2_c_genblk1_0__reg3_genblk1_4__dff_i_q_reg ( .D(
        genblk2_c_reg_in[19]), .CK(clk), .Q(genblk2_c_reg_out_3__0__4_), .QN()
         );
  AND2_X1 genblk2_c_genblk1_0__and_a2b_U5 ( .A1(port_a[2]), .A2(port_b[4]), 
        .ZN(genblk2_c_a2b[4]) );
  AND2_X1 genblk2_c_genblk1_0__and_a2b_U4 ( .A1(port_a[1]), .A2(port_b[3]), 
        .ZN(genblk2_c_a2b[3]) );
  AND2_X1 genblk2_c_genblk1_0__and_a2b_U3 ( .A1(port_a[0]), .A2(port_b[2]), 
        .ZN(genblk2_c_a2b[2]) );
  AND2_X1 genblk2_c_genblk1_0__and_a2b_U2 ( .A1(port_a[4]), .A2(port_b[1]), 
        .ZN(genblk2_c_a2b[1]) );
  AND2_X1 genblk2_c_genblk1_0__and_a2b_U1 ( .A1(port_a[3]), .A2(port_b[0]), 
        .ZN(genblk2_c_a2b[0]) );
  DFF_X1 genblk2_c_genblk1_0__reg4_genblk1_0__dff_i_q_reg ( .D(
        genblk2_c_reg_in[20]), .CK(clk), .Q(c_c[0]), .QN() );
  DFF_X1 genblk2_c_genblk1_0__reg4_genblk1_1__dff_i_q_reg ( .D(
        genblk2_c_reg_in[21]), .CK(clk), .Q(c_c[1]), .QN() );
  DFF_X1 genblk2_c_genblk1_0__reg4_genblk1_2__dff_i_q_reg ( .D(
        genblk2_c_reg_in[22]), .CK(clk), .Q(c_c[2]), .QN() );
  DFF_X1 genblk2_c_genblk1_0__reg4_genblk1_3__dff_i_q_reg ( .D(
        genblk2_c_reg_in[23]), .CK(clk), .Q(c_c[3]), .QN() );
  DFF_X1 genblk2_c_genblk1_0__reg4_genblk1_4__dff_i_q_reg ( .D(
        genblk2_c_reg_in[24]), .CK(clk), .Q(c_c[4]), .QN() );
  DFF_X1 delay_output_genblk1_0__dff_i_q_reg ( .D(c_c_reg_in[0]), .CK(clk), 
        .Q(port_c[0]), .QN() );
  DFF_X1 delay_output_genblk1_1__dff_i_q_reg ( .D(c_c_reg_in[1]), .CK(clk), 
        .Q(port_c[1]), .QN() );
  DFF_X1 delay_output_genblk1_2__dff_i_q_reg ( .D(c_c_reg_in[2]), .CK(clk), 
        .Q(port_c[2]), .QN() );
  DFF_X1 delay_output_genblk1_3__dff_i_q_reg ( .D(c_c_reg_in[3]), .CK(clk), 
        .Q(port_c[3]), .QN() );
  DFF_X1 delay_output_genblk1_4__dff_i_q_reg ( .D(c_c_reg_in[4]), .CK(clk), 
        .Q(port_c[4]), .QN() );
endmodule

