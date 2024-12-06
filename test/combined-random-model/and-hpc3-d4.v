/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Nov 29 09:43:08 2022
/////////////////////////////////////////////////////////////


module and_HPC3 ( a, b, r, clk, c );
  input [4:0] a;
  input [4:0] b;
  input [19:0] r;
  output [4:0] c;
  input clk;
  wire   s_in_4__3_, s_in_4__2_, s_in_4__1_, s_in_4__0_, s_in_3__4_,
         s_in_3__2_, s_in_3__1_, s_in_3__0_, s_in_2__4_, s_in_2__3_,
         s_in_2__1_, s_in_2__0_, s_in_1__4_, s_in_1__3_, s_in_1__2_,
         s_in_1__0_, s_in_0__4_, s_in_0__3_, s_in_0__2_, s_in_0__1_,
         p_0_in_4__3_, p_0_in_4__2_, p_0_in_4__1_, p_0_in_4__0_, p_0_in_3__4_,
         p_0_in_3__2_, p_0_in_3__1_, p_0_in_3__0_, p_0_in_2__4_, p_0_in_2__3_,
         p_0_in_2__1_, p_0_in_2__0_, p_0_in_1__4_, p_0_in_1__3_, p_0_in_1__2_,
         p_0_in_1__0_, p_0_in_0__4_, p_0_in_0__3_, p_0_in_0__2_, p_0_in_0__1_,
         s_out_4__3_, s_out_4__2_, s_out_4__1_, s_out_4__0_, s_out_3__4_,
         s_out_3__2_, s_out_3__1_, s_out_3__0_, s_out_2__4_, s_out_2__3_,
         s_out_2__1_, s_out_2__0_, s_out_1__4_, s_out_1__3_, s_out_1__2_,
         s_out_1__0_, s_out_0__4_, s_out_0__3_, s_out_0__2_, s_out_0__1_,
         p_0_out_4__3_, p_0_out_4__2_, p_0_out_4__1_, p_0_out_4__0_,
         p_0_out_3__4_, p_0_out_3__2_, p_0_out_3__1_, p_0_out_3__0_,
         p_0_out_2__4_, p_0_out_2__3_, p_0_out_2__1_, p_0_out_2__0_,
         p_0_out_1__4_, p_0_out_1__3_, p_0_out_1__2_, p_0_out_1__0_,
         p_0_out_0__4_, p_0_out_0__3_, p_0_out_0__2_, p_0_out_0__1_, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80;
  wire   [4:0] mul;
  wire   [4:0] z;
  wire   [4:0] a_reg;

  XOR2_X1 U132 ( .A(n74), .B(n75), .Z(n73) );
  NAND2_X1 U133 ( .A1(s_out_0__1_), .A2(a_reg[0]), .ZN(n74) );
  NAND2_X1 U134 ( .A1(s_out_0__2_), .A2(a_reg[0]), .ZN(n75) );
  XOR2_X1 U135 ( .A(z[0]), .B(p_0_out_0__3_), .Z(n80) );
  XOR2_X1 U136 ( .A(n63), .B(n64), .Z(n62) );
  NAND2_X1 U137 ( .A1(s_out_1__0_), .A2(a_reg[1]), .ZN(n63) );
  NAND2_X1 U138 ( .A1(s_out_1__2_), .A2(a_reg[1]), .ZN(n64) );
  XOR2_X1 U139 ( .A(z[1]), .B(p_0_out_1__3_), .Z(n69) );
  XOR2_X1 U140 ( .A(n52), .B(n53), .Z(n51) );
  NAND2_X1 U141 ( .A1(s_out_2__0_), .A2(a_reg[2]), .ZN(n52) );
  NAND2_X1 U142 ( .A1(s_out_2__1_), .A2(a_reg[2]), .ZN(n53) );
  XOR2_X1 U143 ( .A(z[2]), .B(p_0_out_2__3_), .Z(n58) );
  XOR2_X1 U144 ( .A(n41), .B(n42), .Z(n40) );
  NAND2_X1 U145 ( .A1(s_out_3__0_), .A2(a_reg[3]), .ZN(n41) );
  NAND2_X1 U146 ( .A1(s_out_3__1_), .A2(a_reg[3]), .ZN(n42) );
  XOR2_X1 U147 ( .A(z[3]), .B(p_0_out_3__2_), .Z(n47) );
  XOR2_X1 U148 ( .A(n76), .B(n77), .Z(n72) );
  NAND2_X1 U149 ( .A1(s_out_0__3_), .A2(a_reg[0]), .ZN(n76) );
  XNOR2_X1 U150 ( .A(p_0_out_0__4_), .B(n78), .ZN(n77) );
  NAND2_X1 U151 ( .A1(s_out_0__4_), .A2(a_reg[0]), .ZN(n78) );
  XOR2_X1 U152 ( .A(n65), .B(n66), .Z(n61) );
  NAND2_X1 U153 ( .A1(s_out_1__3_), .A2(a_reg[1]), .ZN(n65) );
  XNOR2_X1 U154 ( .A(p_0_out_1__4_), .B(n67), .ZN(n66) );
  NAND2_X1 U155 ( .A1(s_out_1__4_), .A2(a_reg[1]), .ZN(n67) );
  XOR2_X1 U156 ( .A(n54), .B(n55), .Z(n50) );
  NAND2_X1 U157 ( .A1(s_out_2__3_), .A2(a_reg[2]), .ZN(n54) );
  XNOR2_X1 U158 ( .A(p_0_out_2__4_), .B(n56), .ZN(n55) );
  NAND2_X1 U159 ( .A1(s_out_2__4_), .A2(a_reg[2]), .ZN(n56) );
  XOR2_X1 U160 ( .A(n43), .B(n44), .Z(n39) );
  NAND2_X1 U161 ( .A1(s_out_3__2_), .A2(a_reg[3]), .ZN(n43) );
  XNOR2_X1 U162 ( .A(p_0_out_3__4_), .B(n45), .ZN(n44) );
  NAND2_X1 U163 ( .A1(s_out_3__4_), .A2(a_reg[3]), .ZN(n45) );
  XNOR2_X1 U164 ( .A(n31), .B(n32), .ZN(n30) );
  NAND2_X1 U165 ( .A1(s_out_4__3_), .A2(a_reg[4]), .ZN(n31) );
  NAND2_X1 U166 ( .A1(s_out_4__2_), .A2(a_reg[4]), .ZN(n32) );
  XNOR2_X1 U167 ( .A(p_0_out_4__1_), .B(p_0_out_4__0_), .ZN(n36) );
  INV_X1 U168 ( .A(a[0]), .ZN(n5) );
  INV_X1 U169 ( .A(a[1]), .ZN(n4) );
  INV_X1 U170 ( .A(a[2]), .ZN(n3) );
  INV_X1 U171 ( .A(a[3]), .ZN(n2) );
  INV_X1 U172 ( .A(a[4]), .ZN(n1) );
  XNOR2_X1 U173 ( .A(n33), .B(n34), .ZN(n29) );
  NAND2_X1 U174 ( .A1(s_out_4__1_), .A2(a_reg[4]), .ZN(n33) );
  NAND2_X1 U175 ( .A1(s_out_4__0_), .A2(a_reg[4]), .ZN(n34) );
  XNOR2_X1 U176 ( .A(p_0_out_4__3_), .B(p_0_out_4__2_), .ZN(n35) );
  XOR2_X1 U177 ( .A(r[10]), .B(b[1]), .Z(s_in_0__1_) );
  XOR2_X1 U178 ( .A(r[11]), .B(b[2]), .Z(s_in_0__2_) );
  XOR2_X1 U179 ( .A(r[12]), .B(b[3]), .Z(s_in_0__3_) );
  XOR2_X1 U180 ( .A(r[13]), .B(b[4]), .Z(s_in_0__4_) );
  XOR2_X1 U181 ( .A(r[10]), .B(b[0]), .Z(s_in_1__0_) );
  XOR2_X1 U182 ( .A(r[14]), .B(b[2]), .Z(s_in_1__2_) );
  XOR2_X1 U183 ( .A(r[15]), .B(b[3]), .Z(s_in_1__3_) );
  XOR2_X1 U184 ( .A(r[16]), .B(b[4]), .Z(s_in_1__4_) );
  XOR2_X1 U185 ( .A(r[11]), .B(b[0]), .Z(s_in_2__0_) );
  XOR2_X1 U186 ( .A(r[14]), .B(b[1]), .Z(s_in_2__1_) );
  XOR2_X1 U187 ( .A(r[17]), .B(b[3]), .Z(s_in_2__3_) );
  XOR2_X1 U188 ( .A(r[18]), .B(b[4]), .Z(s_in_2__4_) );
  XOR2_X1 U189 ( .A(r[12]), .B(b[0]), .Z(s_in_3__0_) );
  XOR2_X1 U190 ( .A(r[15]), .B(b[1]), .Z(s_in_3__1_) );
  XOR2_X1 U191 ( .A(r[17]), .B(b[2]), .Z(s_in_3__2_) );
  XOR2_X1 U192 ( .A(r[19]), .B(b[4]), .Z(s_in_3__4_) );
  XOR2_X1 U193 ( .A(r[13]), .B(b[0]), .Z(s_in_4__0_) );
  XOR2_X1 U194 ( .A(r[16]), .B(b[1]), .Z(s_in_4__1_) );
  XOR2_X1 U195 ( .A(r[18]), .B(b[2]), .Z(s_in_4__2_) );
  XOR2_X1 U196 ( .A(r[19]), .B(b[3]), .Z(s_in_4__3_) );
  XOR2_X1 U197 ( .A(z[4]), .B(n26), .Z(c[4]) );
  XOR2_X1 U198 ( .A(n27), .B(n28), .Z(n26) );
  XOR2_X1 U199 ( .A(n35), .B(n36), .Z(n27) );
  XOR2_X1 U200 ( .A(n29), .B(n30), .Z(n28) );
  XOR2_X1 U201 ( .A(n70), .B(n71), .Z(c[0]) );
  XOR2_X1 U202 ( .A(n79), .B(n80), .Z(n70) );
  XOR2_X1 U203 ( .A(n72), .B(n73), .Z(n71) );
  XNOR2_X1 U204 ( .A(p_0_out_0__2_), .B(p_0_out_0__1_), .ZN(n79) );
  XOR2_X1 U205 ( .A(n59), .B(n60), .Z(c[1]) );
  XOR2_X1 U206 ( .A(n68), .B(n69), .Z(n59) );
  XOR2_X1 U207 ( .A(n61), .B(n62), .Z(n60) );
  XNOR2_X1 U208 ( .A(p_0_out_1__2_), .B(p_0_out_1__0_), .ZN(n68) );
  XOR2_X1 U209 ( .A(n48), .B(n49), .Z(c[2]) );
  XOR2_X1 U210 ( .A(n57), .B(n58), .Z(n48) );
  XOR2_X1 U211 ( .A(n50), .B(n51), .Z(n49) );
  XNOR2_X1 U212 ( .A(p_0_out_2__1_), .B(p_0_out_2__0_), .ZN(n57) );
  XOR2_X1 U213 ( .A(n37), .B(n38), .Z(c[3]) );
  XOR2_X1 U214 ( .A(n46), .B(n47), .Z(n37) );
  XOR2_X1 U215 ( .A(n39), .B(n40), .Z(n38) );
  XNOR2_X1 U216 ( .A(p_0_out_3__1_), .B(p_0_out_3__0_), .ZN(n46) );
  XNOR2_X1 U217 ( .A(r[0]), .B(n25), .ZN(p_0_in_0__1_) );
  NAND2_X1 U218 ( .A1(r[10]), .A2(n5), .ZN(n25) );
  XNOR2_X1 U219 ( .A(r[1]), .B(n24), .ZN(p_0_in_0__2_) );
  NAND2_X1 U220 ( .A1(r[11]), .A2(n5), .ZN(n24) );
  XNOR2_X1 U221 ( .A(r[2]), .B(n23), .ZN(p_0_in_0__3_) );
  NAND2_X1 U222 ( .A1(r[12]), .A2(n5), .ZN(n23) );
  XNOR2_X1 U223 ( .A(r[3]), .B(n22), .ZN(p_0_in_0__4_) );
  NAND2_X1 U224 ( .A1(r[13]), .A2(n5), .ZN(n22) );
  XNOR2_X1 U225 ( .A(r[0]), .B(n21), .ZN(p_0_in_1__0_) );
  NAND2_X1 U226 ( .A1(r[10]), .A2(n4), .ZN(n21) );
  XNOR2_X1 U227 ( .A(r[4]), .B(n20), .ZN(p_0_in_1__2_) );
  NAND2_X1 U228 ( .A1(r[14]), .A2(n4), .ZN(n20) );
  XNOR2_X1 U229 ( .A(r[5]), .B(n19), .ZN(p_0_in_1__3_) );
  NAND2_X1 U230 ( .A1(r[15]), .A2(n4), .ZN(n19) );
  XNOR2_X1 U231 ( .A(r[6]), .B(n18), .ZN(p_0_in_1__4_) );
  NAND2_X1 U232 ( .A1(r[16]), .A2(n4), .ZN(n18) );
  XNOR2_X1 U233 ( .A(r[1]), .B(n17), .ZN(p_0_in_2__0_) );
  NAND2_X1 U234 ( .A1(r[11]), .A2(n3), .ZN(n17) );
  XNOR2_X1 U235 ( .A(r[4]), .B(n16), .ZN(p_0_in_2__1_) );
  NAND2_X1 U236 ( .A1(r[14]), .A2(n3), .ZN(n16) );
  XNOR2_X1 U237 ( .A(r[7]), .B(n15), .ZN(p_0_in_2__3_) );
  NAND2_X1 U238 ( .A1(r[17]), .A2(n3), .ZN(n15) );
  XNOR2_X1 U239 ( .A(r[8]), .B(n14), .ZN(p_0_in_2__4_) );
  NAND2_X1 U240 ( .A1(r[18]), .A2(n3), .ZN(n14) );
  XNOR2_X1 U241 ( .A(r[2]), .B(n13), .ZN(p_0_in_3__0_) );
  NAND2_X1 U242 ( .A1(r[12]), .A2(n2), .ZN(n13) );
  XNOR2_X1 U243 ( .A(r[5]), .B(n12), .ZN(p_0_in_3__1_) );
  NAND2_X1 U244 ( .A1(r[15]), .A2(n2), .ZN(n12) );
  XNOR2_X1 U245 ( .A(r[7]), .B(n11), .ZN(p_0_in_3__2_) );
  NAND2_X1 U246 ( .A1(r[17]), .A2(n2), .ZN(n11) );
  XNOR2_X1 U247 ( .A(r[9]), .B(n10), .ZN(p_0_in_3__4_) );
  NAND2_X1 U248 ( .A1(r[19]), .A2(n2), .ZN(n10) );
  XNOR2_X1 U249 ( .A(r[3]), .B(n9), .ZN(p_0_in_4__0_) );
  NAND2_X1 U250 ( .A1(r[13]), .A2(n1), .ZN(n9) );
  XNOR2_X1 U251 ( .A(r[6]), .B(n8), .ZN(p_0_in_4__1_) );
  NAND2_X1 U252 ( .A1(r[16]), .A2(n1), .ZN(n8) );
  XNOR2_X1 U253 ( .A(r[8]), .B(n7), .ZN(p_0_in_4__2_) );
  NAND2_X1 U254 ( .A1(r[18]), .A2(n1), .ZN(n7) );
  XNOR2_X1 U255 ( .A(r[9]), .B(n6), .ZN(p_0_in_4__3_) );
  NAND2_X1 U256 ( .A1(r[19]), .A2(n1), .ZN(n6) );
  AND2_X1 U257 ( .A1(b[1]), .A2(a[1]), .ZN(mul[1]) );
  AND2_X1 U258 ( .A1(b[2]), .A2(a[2]), .ZN(mul[2]) );
  AND2_X1 U259 ( .A1(b[3]), .A2(a[3]), .ZN(mul[3]) );
  AND2_X1 U260 ( .A1(b[4]), .A2(a[4]), .ZN(mul[4]) );
  AND2_X1 U261 ( .A1(b[0]), .A2(a[0]), .ZN(mul[0]) );
  DFF_X1 mul_pipe_s1_0_s_current_state_reg ( .D(mul[0]), .CK(clk), .Q(z[0]), 
        .QN() );
  DFF_X1 a_i_0_s_current_state_reg ( .D(a[0]), .CK(clk), .Q(a_reg[0]), .QN()
         );
  DFF_X1 s_reg_0_1_s_current_state_reg ( .D(s_in_0__1_), .CK(clk), .Q(
        s_out_0__1_), .QN() );
  DFF_X1 p_0_reg_0_1_s_current_state_reg ( .D(p_0_in_0__1_), .CK(clk), .Q(
        p_0_out_0__1_), .QN() );
  DFF_X1 s_reg_0_2_s_current_state_reg ( .D(s_in_0__2_), .CK(clk), .Q(
        s_out_0__2_), .QN() );
  DFF_X1 p_0_reg_0_2_s_current_state_reg ( .D(p_0_in_0__2_), .CK(clk), .Q(
        p_0_out_0__2_), .QN() );
  DFF_X1 s_reg_0_3_s_current_state_reg ( .D(s_in_0__3_), .CK(clk), .Q(
        s_out_0__3_), .QN() );
  DFF_X1 p_0_reg_0_3_s_current_state_reg ( .D(p_0_in_0__3_), .CK(clk), .Q(
        p_0_out_0__3_), .QN() );
  DFF_X1 s_reg_0_4_s_current_state_reg ( .D(s_in_0__4_), .CK(clk), .Q(
        s_out_0__4_), .QN() );
  DFF_X1 p_0_reg_0_4_s_current_state_reg ( .D(p_0_in_0__4_), .CK(clk), .Q(
        p_0_out_0__4_), .QN() );
  DFF_X1 mul_pipe_s1_1_s_current_state_reg ( .D(mul[1]), .CK(clk), .Q(z[1]), 
        .QN() );
  DFF_X1 a_i_1_s_current_state_reg ( .D(a[1]), .CK(clk), .Q(a_reg[1]), .QN()
         );
  DFF_X1 s_reg_1_0_s_current_state_reg ( .D(s_in_1__0_), .CK(clk), .Q(
        s_out_1__0_), .QN() );
  DFF_X1 p_0_reg_1_0_s_current_state_reg ( .D(p_0_in_1__0_), .CK(clk), .Q(
        p_0_out_1__0_), .QN() );
  DFF_X1 s_reg_1_2_s_current_state_reg ( .D(s_in_1__2_), .CK(clk), .Q(
        s_out_1__2_), .QN() );
  DFF_X1 p_0_reg_1_2_s_current_state_reg ( .D(p_0_in_1__2_), .CK(clk), .Q(
        p_0_out_1__2_), .QN() );
  DFF_X1 s_reg_1_3_s_current_state_reg ( .D(s_in_1__3_), .CK(clk), .Q(
        s_out_1__3_), .QN() );
  DFF_X1 p_0_reg_1_3_s_current_state_reg ( .D(p_0_in_1__3_), .CK(clk), .Q(
        p_0_out_1__3_), .QN() );
  DFF_X1 s_reg_1_4_s_current_state_reg ( .D(s_in_1__4_), .CK(clk), .Q(
        s_out_1__4_), .QN() );
  DFF_X1 p_0_reg_1_4_s_current_state_reg ( .D(p_0_in_1__4_), .CK(clk), .Q(
        p_0_out_1__4_), .QN() );
  DFF_X1 mul_pipe_s1_2_s_current_state_reg ( .D(mul[2]), .CK(clk), .Q(z[2]), 
        .QN() );
  DFF_X1 a_i_2_s_current_state_reg ( .D(a[2]), .CK(clk), .Q(a_reg[2]), .QN()
         );
  DFF_X1 s_reg_2_0_s_current_state_reg ( .D(s_in_2__0_), .CK(clk), .Q(
        s_out_2__0_), .QN() );
  DFF_X1 p_0_reg_2_0_s_current_state_reg ( .D(p_0_in_2__0_), .CK(clk), .Q(
        p_0_out_2__0_), .QN() );
  DFF_X1 s_reg_2_1_s_current_state_reg ( .D(s_in_2__1_), .CK(clk), .Q(
        s_out_2__1_), .QN() );
  DFF_X1 p_0_reg_2_1_s_current_state_reg ( .D(p_0_in_2__1_), .CK(clk), .Q(
        p_0_out_2__1_), .QN() );
  DFF_X1 s_reg_2_3_s_current_state_reg ( .D(s_in_2__3_), .CK(clk), .Q(
        s_out_2__3_), .QN() );
  DFF_X1 p_0_reg_2_3_s_current_state_reg ( .D(p_0_in_2__3_), .CK(clk), .Q(
        p_0_out_2__3_), .QN() );
  DFF_X1 s_reg_2_4_s_current_state_reg ( .D(s_in_2__4_), .CK(clk), .Q(
        s_out_2__4_), .QN() );
  DFF_X1 p_0_reg_2_4_s_current_state_reg ( .D(p_0_in_2__4_), .CK(clk), .Q(
        p_0_out_2__4_), .QN() );
  DFF_X1 mul_pipe_s1_3_s_current_state_reg ( .D(mul[3]), .CK(clk), .Q(z[3]), 
        .QN() );
  DFF_X1 a_i_3_s_current_state_reg ( .D(a[3]), .CK(clk), .Q(a_reg[3]), .QN()
         );
  DFF_X1 s_reg_3_0_s_current_state_reg ( .D(s_in_3__0_), .CK(clk), .Q(
        s_out_3__0_), .QN() );
  DFF_X1 p_0_reg_3_0_s_current_state_reg ( .D(p_0_in_3__0_), .CK(clk), .Q(
        p_0_out_3__0_), .QN() );
  DFF_X1 s_reg_3_1_s_current_state_reg ( .D(s_in_3__1_), .CK(clk), .Q(
        s_out_3__1_), .QN() );
  DFF_X1 p_0_reg_3_1_s_current_state_reg ( .D(p_0_in_3__1_), .CK(clk), .Q(
        p_0_out_3__1_), .QN() );
  DFF_X1 s_reg_3_2_s_current_state_reg ( .D(s_in_3__2_), .CK(clk), .Q(
        s_out_3__2_), .QN() );
  DFF_X1 p_0_reg_3_2_s_current_state_reg ( .D(p_0_in_3__2_), .CK(clk), .Q(
        p_0_out_3__2_), .QN() );
  DFF_X1 s_reg_3_4_s_current_state_reg ( .D(s_in_3__4_), .CK(clk), .Q(
        s_out_3__4_), .QN() );
  DFF_X1 p_0_reg_3_4_s_current_state_reg ( .D(p_0_in_3__4_), .CK(clk), .Q(
        p_0_out_3__4_), .QN() );
  DFF_X1 mul_pipe_s1_4_s_current_state_reg ( .D(mul[4]), .CK(clk), .Q(z[4]), 
        .QN() );
  DFF_X1 a_i_4_s_current_state_reg ( .D(a[4]), .CK(clk), .Q(a_reg[4]), .QN()
         );
  DFF_X1 s_reg_4_0_s_current_state_reg ( .D(s_in_4__0_), .CK(clk), .Q(
        s_out_4__0_), .QN() );
  DFF_X1 p_0_reg_4_0_s_current_state_reg ( .D(p_0_in_4__0_), .CK(clk), .Q(
        p_0_out_4__0_), .QN() );
  DFF_X1 s_reg_4_1_s_current_state_reg ( .D(s_in_4__1_), .CK(clk), .Q(
        s_out_4__1_), .QN() );
  DFF_X1 p_0_reg_4_1_s_current_state_reg ( .D(p_0_in_4__1_), .CK(clk), .Q(
        p_0_out_4__1_), .QN() );
  DFF_X1 s_reg_4_2_s_current_state_reg ( .D(s_in_4__2_), .CK(clk), .Q(
        s_out_4__2_), .QN() );
  DFF_X1 p_0_reg_4_2_s_current_state_reg ( .D(p_0_in_4__2_), .CK(clk), .Q(
        p_0_out_4__2_), .QN() );
  DFF_X1 s_reg_4_3_s_current_state_reg ( .D(s_in_4__3_), .CK(clk), .Q(
        s_out_4__3_), .QN() );
  DFF_X1 p_0_reg_4_3_s_current_state_reg ( .D(p_0_in_4__3_), .CK(clk), .Q(
        p_0_out_4__3_), .QN() );
endmodule

