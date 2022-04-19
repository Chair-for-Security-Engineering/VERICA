/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Tue Nov 16 13:40:36 2021
/////////////////////////////////////////////////////////////


module DOMmul ( port_a, port_b, port_u_0 );
  input [0:0] port_a;
  input [0:0] port_b;
  output [0:0] port_u_0;


  AND2_X1 U1 ( .A1(port_a[0]), .A2(port_b[0]), .ZN(port_u_0[0]) );
endmodule


module DOMref ( port_u_0, port_v_0, clk, reset );
  input [0:0] port_u_0;
  output [0:0] port_v_0;
  input clk, reset;


  DFF_X1 ff_0_reg_0_ ( .D(port_u_0[0]), .CK(clk), .Q(port_v_0[0]), .QN() );
endmodule


module DOMcmp ( port_v_0, port_c );
  input [0:0] port_v_0;
  output [0:0] port_c;

  assign port_c[0] = port_v_0[0];

endmodule


module DOM ( port_a, port_b, port_c, clk, reset );
  input [0:0] port_a;
  input [0:0] port_b;
  output [0:0] port_c;
  input clk, reset;
  wire   mul_port_u_0_0_, ref_1_port_v_0_0_;

  DOMmul mul ( .port_a(port_a[0]), .port_b(port_b[0]), .port_u_0(
        mul_port_u_0_0_) );
  DOMref ref_1 ( .port_u_0(mul_port_u_0_0_), .port_v_0(ref_1_port_v_0_0_), 
        .clk(clk), .reset(1'b0) );
  DOMcmp cmp ( .port_v_0(ref_1_port_v_0_0_), .port_c(port_c[0]) );
endmodule

