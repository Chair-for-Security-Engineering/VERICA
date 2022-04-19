
module xorNINA ( port_a_0, port_a_1, port_a_2, port_b_0, port_b_1, port_b_2, 
        port_c_0, port_c_1, port_c_2 );
  input [2:0] port_a_0;
  input [2:0] port_a_1;
  input [2:0] port_a_2;
  input [2:0] port_b_0;
  input [2:0] port_b_1;
  input [2:0] port_b_2;
  output [2:0] port_c_0;
  output [2:0] port_c_1;
  output [2:0] port_c_2;


  XOR2_X1 U19 ( .A(port_a_0[0]), .B(port_b_0[0]), .Z(port_c_0[0]) );
  XOR2_X1 U20 ( .A(port_a_0[1]), .B(port_b_0[1]), .Z(port_c_0[1]) );
  XOR2_X1 U21 ( .A(port_a_0[2]), .B(port_b_0[2]), .Z(port_c_0[2]) );
  XOR2_X1 U22 ( .A(port_a_1[0]), .B(port_b_1[0]), .Z(port_c_1[0]) );
  XOR2_X1 U23 ( .A(port_a_1[1]), .B(port_b_1[1]), .Z(port_c_1[1]) );
  XOR2_X1 U24 ( .A(port_a_1[2]), .B(port_b_1[2]), .Z(port_c_1[2]) );
  XOR2_X1 U25 ( .A(port_a_2[0]), .B(port_b_2[0]), .Z(port_c_2[0]) );
  XOR2_X1 U26 ( .A(port_a_2[1]), .B(port_b_2[1]), .Z(port_c_2[1]) );
  XOR2_X1 U27 ( .A(port_a_2[2]), .B(port_b_2[2]), .Z(port_c_2[2]) );
endmodule

