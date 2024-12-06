/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Wed Aug 28 08:54:36 2024
/////////////////////////////////////////////////////////////


module andDOMREP_d1_k1 ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, 
        port_c_1, port_r, clk, reset );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  input [0:0] port_r;
  input clk, reset;
  wire   z_tilde_0_0_0, z_tilde_0_1_0, z_tilde_0_0_1, z_tilde_0_1_1,
         z_tilde_0_0_2, z_tilde_0_1_2, z_tilde_1_1_0, z_tilde_1_0_0,
         z_tilde_1_1_1, z_tilde_1_0_1, z_tilde_1_1_2, z_tilde_1_0_2, N0, N1,
         N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, n1, n2, n3, n4, n5, n6;
  wire   [2:0] comp_0;
  wire   [2:0] comp_1;
  wire wire0, wire1, wire2, wire3, wire4, wire5, wire6, wire7, wire8, wire9, wire10, wire11;

  DFF_X1 z_tilde_1_0_0_reg ( .D(N2), .CK(clk), .Q(z_tilde_1_0_0), .QN() );
  DFF_X1 z_tilde_0_1_0_reg ( .D(N1), .CK(clk), .Q(z_tilde_0_1_0), .QN() );
  DFF_X1 z_tilde_0_0_1_reg ( .D(N4), .CK(clk), .Q(z_tilde_0_0_1), .QN() );
  DFF_X1 z_tilde_1_0_2_reg ( .D(N10), .CK(clk), .Q(z_tilde_1_0_2), .QN() );
  DFF_X1 z_tilde_1_1_0_reg ( .D(N3), .CK(clk), .Q(z_tilde_1_1_0), .QN() );
  DFF_X1 result_1_reg_0_ ( .D(comp_1[0]), .CK(clk), .Q(port_c_1[0]), .QN() );
  DFF_X1 z_tilde_0_1_1_reg ( .D(N5), .CK(clk), .Q(z_tilde_0_1_1), .QN() );
  DFF_X1 result_0_reg_1_ ( .D(comp_0[1]), .CK(clk), .Q(port_c_0[1]), .QN() );
  DFF_X1 z_tilde_1_1_2_reg ( .D(N11), .CK(clk), .Q(z_tilde_1_1_2), .QN() );
  DFF_X1 result_1_reg_2_ ( .D(comp_1[2]), .CK(clk), .Q(port_c_1[2]), .QN() );
  DFF_X1 z_tilde_0_1_2_reg ( .D(N9), .CK(clk), .Q(z_tilde_0_1_2), .QN() );
  DFF_X1 z_tilde_0_0_2_reg ( .D(N8), .CK(clk), .Q(z_tilde_0_0_2), .QN() );
  DFF_X1 result_0_reg_2_ ( .D(comp_0[2]), .CK(clk), .Q(port_c_0[2]), .QN() );
  DFF_X1 z_tilde_1_0_1_reg ( .D(N6), .CK(clk), .Q(z_tilde_1_0_1), .QN() );
  DFF_X1 z_tilde_1_1_1_reg ( .D(N7), .CK(clk), .Q(z_tilde_1_1_1), .QN() );
  DFF_X1 result_1_reg_1_ ( .D(comp_1[1]), .CK(clk), .Q(port_c_1[1]), .QN() );
  DFF_X1 z_tilde_0_0_0_reg ( .D(N0), .CK(clk), .Q(z_tilde_0_0_0), .QN() );
  DFF_X1 result_0_reg_0_ ( .D(comp_0[0]), .CK(clk), .Q(port_c_0[0]), .QN() );
  XOR2_X1 U27 ( .A(z_tilde_0_1_0), .B(z_tilde_0_0_0), .Z(comp_0[0]) );
  XOR2_X1 U28 ( .A(z_tilde_1_1_1), .B(z_tilde_1_0_1), .Z(comp_1[1]) );
  XOR2_X1 U29 ( .A(z_tilde_0_1_2), .B(z_tilde_0_0_2), .Z(comp_0[2]) );
  XOR2_X1 U30 ( .A(z_tilde_1_1_2), .B(z_tilde_1_0_2), .Z(comp_1[2]) );
  XOR2_X1 U31 ( .A(z_tilde_0_1_1), .B(z_tilde_0_0_1), .Z(comp_0[1]) );
  XOR2_X1 U32 ( .A(z_tilde_1_1_0), .B(z_tilde_1_0_0), .Z(comp_1[0]) );
  XOR2_X1 U33_0 ( .A(port_r[0]), .B(n2), .Z(wire0) ); 
  INV_X1 U33_1 (.A(wire0), .ZN(N6)); 
  AND2_X1 U34_2 ( .A1(port_b_0[1]), .A2(port_a_1[1]), .ZN(wire1) ); 
  INV_X1 U34_3 (.A(wire1), .ZN(n2)); 
  XOR2_X1 U35_4 ( .A(port_r[0]), .B(n1), .Z(wire2) ); 
  INV_X1 U35_5 (.A(wire2), .ZN(N9)); 
  AND2_X1 U36_6 ( .A1(port_b_1[2]), .A2(port_a_0[2]), .ZN(wire3) ); 
  INV_X1 U36_7 (.A(wire3), .ZN(n1)); 
  XOR2_X1 U37_8 ( .A(port_r[0]), .B(n3), .Z(wire4) ); 
  INV_X1 U37_9 (.A(wire4), .ZN(N5)); 
  AND2_X1 U38_10 ( .A1(port_a_0[1]), .A2(port_b_1[1]), .ZN(wire5) ); 
  INV_X1 U38_11 (.A(wire5), .ZN(n3)); 
  XOR2_X1 U39_12 ( .A(port_r[0]), .B(n5), .Z(wire6) ); 
  INV_X1 U39_13 (.A(wire6), .ZN(N10)); 
  AND2_X1 U40_14 ( .A1(port_a_1[2]), .A2(port_b_0[2]), .ZN(wire7) ); 
  INV_X1 U40_15 (.A(wire7), .ZN(n5)); 
  XOR2_X1 U41_16 ( .A(port_r[0]), .B(n6), .Z(wire8) ); 
  INV_X1 U41_17 (.A(wire8), .ZN(N1)); 
  AND2_X1 U42_18 ( .A1(port_a_0[0]), .A2(port_b_1[0]), .ZN(wire9) ); 
  INV_X1 U42_19 (.A(wire9), .ZN(n6)); 
  XOR2_X1 U43_20 ( .A(port_r[0]), .B(n4), .Z(wire10) ); 
  INV_X1 U43_21 (.A(wire10), .ZN(N2)); 
  AND2_X1 U44_22 ( .A1(port_b_0[0]), .A2(port_a_1[0]), .ZN(wire11) ); 
  INV_X1 U44_23 (.A(wire11), .ZN(n4)); 
  AND2_X1 U45 ( .A1(port_b_0[0]), .A2(port_a_0[0]), .ZN(N0) );
  AND2_X1 U46 ( .A1(port_a_1[1]), .A2(port_b_1[1]), .ZN(N7) );
  AND2_X1 U47 ( .A1(port_a_0[2]), .A2(port_b_0[2]), .ZN(N8) );
  AND2_X1 U48 ( .A1(port_b_1[2]), .A2(port_a_1[2]), .ZN(N11) );
  AND2_X1 U49 ( .A1(port_a_1[0]), .A2(port_b_1[0]), .ZN(N3) );
  AND2_X1 U50 ( .A1(port_b_0[1]), .A2(port_a_0[1]), .ZN(N4) );
  endmodule

