
module xorNINA ( port_a_0, port_a_1, port_a_2, port_b_0, port_b_1, port_b_2, 
        port_c_0, port_c_1, port_c_2 );
  input [1:0] port_a_0;
  input [1:0] port_a_1;
  input [1:0] port_a_2;
  input [1:0] port_b_0;
  input [1:0] port_b_1;
  input [1:0] port_b_2;
  output [1:0] port_c_0;
  output [1:0] port_c_1;
  output [1:0] port_c_2;


  XOR2_X1 U13 ( .A(port_a_0[0]), .B(port_b_0[0]), .Z(port_c_0[0]) );
  XOR2_X1 U14 ( .A(port_a_0[1]), .B(port_b_0[1]), .Z(port_c_0[1]) );
  XOR2_X1 U15 ( .A(port_a_1[0]), .B(port_b_1[0]), .Z(port_c_1[0]) );
  XOR2_X1 U16 ( .A(port_a_1[1]), .B(port_b_1[1]), .Z(port_c_1[1]) );
  XOR2_X1 U17 ( .A(port_a_2[0]), .B(port_b_2[0]), .Z(port_c_2[0]) );
  XOR2_X1 U18 ( .A(port_a_2[1]), .B(port_b_2[1]), .Z(port_c_2[1]) );
endmodule

