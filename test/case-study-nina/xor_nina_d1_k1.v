
module xorNINA ( port_a_0, port_a_1, port_b_0, port_b_1, port_c_0, port_c_1 );
  input [1:0] port_a_0;
  input [1:0] port_a_1;
  input [1:0] port_b_0;
  input [1:0] port_b_1;
  output [1:0] port_c_0;
  output [1:0] port_c_1;


  XOR2_X1 U9 ( .A(port_a_0[0]), .B(port_b_0[0]), .Z(port_c_0[0]) );
  XOR2_X1 U10 ( .A(port_a_0[1]), .B(port_b_0[1]), .Z(port_c_0[1]) );
  XOR2_X1 U11 ( .A(port_a_1[0]), .B(port_b_1[0]), .Z(port_c_1[0]) );
  XOR2_X1 U12 ( .A(port_a_1[1]), .B(port_b_1[1]), .Z(port_c_1[1]) );
endmodule

