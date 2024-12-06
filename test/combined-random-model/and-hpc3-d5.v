/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Nov 29 09:43:29 2022
/////////////////////////////////////////////////////////////


module and_HPC3 ( a, b, r, clk, c );
  input [5:0] a;
  input [5:0] b;
  input [29:0] r;
  output [5:0] c;
  input clk;
  wire   s_in_5__4_, s_in_5__3_, s_in_5__2_, s_in_5__1_, s_in_5__0_,
         s_in_4__5_, s_in_4__3_, s_in_4__2_, s_in_4__1_, s_in_4__0_,
         s_in_3__5_, s_in_3__4_, s_in_3__2_, s_in_3__1_, s_in_3__0_,
         s_in_2__5_, s_in_2__4_, s_in_2__3_, s_in_2__1_, s_in_2__0_,
         s_in_1__5_, s_in_1__4_, s_in_1__3_, s_in_1__2_, s_in_1__0_,
         s_in_0__5_, s_in_0__4_, s_in_0__3_, s_in_0__2_, s_in_0__1_,
         p_0_in_5__4_, p_0_in_5__3_, p_0_in_5__2_, p_0_in_5__1_, p_0_in_5__0_,
         p_0_in_4__5_, p_0_in_4__3_, p_0_in_4__2_, p_0_in_4__1_, p_0_in_4__0_,
         p_0_in_3__5_, p_0_in_3__4_, p_0_in_3__2_, p_0_in_3__1_, p_0_in_3__0_,
         p_0_in_2__5_, p_0_in_2__4_, p_0_in_2__3_, p_0_in_2__1_, p_0_in_2__0_,
         p_0_in_1__5_, p_0_in_1__4_, p_0_in_1__3_, p_0_in_1__2_, p_0_in_1__0_,
         p_0_in_0__5_, p_0_in_0__4_, p_0_in_0__3_, p_0_in_0__2_, p_0_in_0__1_,
         s_out_5__4_, s_out_5__3_, s_out_5__2_, s_out_5__1_, s_out_5__0_,
         s_out_4__5_, s_out_4__3_, s_out_4__2_, s_out_4__1_, s_out_4__0_,
         s_out_3__5_, s_out_3__4_, s_out_3__2_, s_out_3__1_, s_out_3__0_,
         s_out_2__5_, s_out_2__4_, s_out_2__3_, s_out_2__1_, s_out_2__0_,
         s_out_1__5_, s_out_1__4_, s_out_1__3_, s_out_1__2_, s_out_1__0_,
         s_out_0__5_, s_out_0__4_, s_out_0__3_, s_out_0__2_, s_out_0__1_,
         p_0_out_5__4_, p_0_out_5__3_, p_0_out_5__2_, p_0_out_5__1_,
         p_0_out_5__0_, p_0_out_4__5_, p_0_out_4__3_, p_0_out_4__2_,
         p_0_out_4__1_, p_0_out_4__0_, p_0_out_3__5_, p_0_out_3__4_,
         p_0_out_3__2_, p_0_out_3__1_, p_0_out_3__0_, p_0_out_2__5_,
         p_0_out_2__4_, p_0_out_2__3_, p_0_out_2__1_, p_0_out_2__0_,
         p_0_out_1__5_, p_0_out_1__4_, p_0_out_1__3_, p_0_out_1__2_,
         p_0_out_1__0_, p_0_out_0__5_, p_0_out_0__4_, p_0_out_0__3_,
         p_0_out_0__2_, p_0_out_0__1_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129;
  wire   [5:0] mul;
  wire   [5:0] z;
  wire   [5:0] a_reg;

  XOR2_X1 U203 ( .A(z[0]), .B(p_0_out_0__3_), .Z(n129) );
  XOR2_X1 U204 ( .A(z[1]), .B(p_0_out_1__3_), .Z(n115) );
  XOR2_X1 U205 ( .A(z[2]), .B(p_0_out_2__3_), .Z(n101) );
  XOR2_X1 U206 ( .A(z[3]), .B(p_0_out_3__2_), .Z(n87) );
  XOR2_X1 U207 ( .A(p_0_out_4__3_), .B(p_0_out_4__2_), .Z(n73) );
  XOR2_X1 U208 ( .A(p_0_out_5__3_), .B(p_0_out_5__2_), .Z(n59) );
  XOR2_X1 U209 ( .A(n120), .B(n121), .Z(n119) );
  XOR2_X1 U210 ( .A(n128), .B(n129), .Z(n120) );
  XOR2_X1 U211 ( .A(n122), .B(n123), .Z(n121) );
  XNOR2_X1 U212 ( .A(p_0_out_0__2_), .B(p_0_out_0__1_), .ZN(n128) );
  XOR2_X1 U213 ( .A(n106), .B(n107), .Z(n105) );
  XOR2_X1 U214 ( .A(n114), .B(n115), .Z(n106) );
  XOR2_X1 U215 ( .A(n108), .B(n109), .Z(n107) );
  XNOR2_X1 U216 ( .A(p_0_out_1__2_), .B(p_0_out_1__0_), .ZN(n114) );
  XOR2_X1 U217 ( .A(n92), .B(n93), .Z(n91) );
  XOR2_X1 U218 ( .A(n100), .B(n101), .Z(n92) );
  XOR2_X1 U219 ( .A(n94), .B(n95), .Z(n93) );
  XNOR2_X1 U220 ( .A(p_0_out_2__1_), .B(p_0_out_2__0_), .ZN(n100) );
  XOR2_X1 U221 ( .A(n78), .B(n79), .Z(n77) );
  XOR2_X1 U222 ( .A(n86), .B(n87), .Z(n78) );
  XOR2_X1 U223 ( .A(n80), .B(n81), .Z(n79) );
  XNOR2_X1 U224 ( .A(p_0_out_3__1_), .B(p_0_out_3__0_), .ZN(n86) );
  XOR2_X1 U225 ( .A(n64), .B(n65), .Z(n63) );
  XOR2_X1 U226 ( .A(n72), .B(n73), .Z(n64) );
  XOR2_X1 U227 ( .A(n66), .B(n67), .Z(n65) );
  XNOR2_X1 U228 ( .A(p_0_out_4__1_), .B(p_0_out_4__0_), .ZN(n72) );
  XOR2_X1 U229 ( .A(n50), .B(n51), .Z(n49) );
  XOR2_X1 U230 ( .A(n58), .B(n59), .Z(n50) );
  XOR2_X1 U231 ( .A(n52), .B(n53), .Z(n51) );
  XNOR2_X1 U232 ( .A(p_0_out_5__1_), .B(p_0_out_5__0_), .ZN(n58) );
  INV_X1 U233 ( .A(r[15]), .ZN(n15) );
  INV_X1 U234 ( .A(r[16]), .ZN(n14) );
  INV_X1 U235 ( .A(r[17]), .ZN(n13) );
  INV_X1 U236 ( .A(r[18]), .ZN(n12) );
  INV_X1 U237 ( .A(r[19]), .ZN(n11) );
  INV_X1 U238 ( .A(r[20]), .ZN(n10) );
  INV_X1 U239 ( .A(r[21]), .ZN(n9) );
  INV_X1 U240 ( .A(r[22]), .ZN(n8) );
  INV_X1 U241 ( .A(r[23]), .ZN(n7) );
  INV_X1 U242 ( .A(r[24]), .ZN(n6) );
  INV_X1 U243 ( .A(r[25]), .ZN(n5) );
  INV_X1 U244 ( .A(r[26]), .ZN(n4) );
  INV_X1 U245 ( .A(r[27]), .ZN(n3) );
  INV_X1 U246 ( .A(r[28]), .ZN(n2) );
  INV_X1 U247 ( .A(r[29]), .ZN(n1) );
  XNOR2_X1 U248 ( .A(n124), .B(n125), .ZN(n123) );
  NAND2_X1 U249 ( .A1(s_out_0__5_), .A2(a_reg[0]), .ZN(n124) );
  NAND2_X1 U250 ( .A1(s_out_0__3_), .A2(a_reg[0]), .ZN(n125) );
  XNOR2_X1 U251 ( .A(n110), .B(n111), .ZN(n109) );
  NAND2_X1 U252 ( .A1(s_out_1__5_), .A2(a_reg[1]), .ZN(n110) );
  NAND2_X1 U253 ( .A1(s_out_1__3_), .A2(a_reg[1]), .ZN(n111) );
  XNOR2_X1 U254 ( .A(n96), .B(n97), .ZN(n95) );
  NAND2_X1 U255 ( .A1(s_out_2__5_), .A2(a_reg[2]), .ZN(n96) );
  NAND2_X1 U256 ( .A1(s_out_2__3_), .A2(a_reg[2]), .ZN(n97) );
  XNOR2_X1 U257 ( .A(n82), .B(n83), .ZN(n81) );
  NAND2_X1 U258 ( .A1(s_out_3__5_), .A2(a_reg[3]), .ZN(n82) );
  NAND2_X1 U259 ( .A1(s_out_3__2_), .A2(a_reg[3]), .ZN(n83) );
  XNOR2_X1 U260 ( .A(n68), .B(n69), .ZN(n67) );
  NAND2_X1 U261 ( .A1(s_out_4__3_), .A2(a_reg[4]), .ZN(n68) );
  NAND2_X1 U262 ( .A1(s_out_4__2_), .A2(a_reg[4]), .ZN(n69) );
  XNOR2_X1 U263 ( .A(n54), .B(n55), .ZN(n53) );
  NAND2_X1 U264 ( .A1(s_out_5__3_), .A2(a_reg[5]), .ZN(n54) );
  NAND2_X1 U265 ( .A1(s_out_5__2_), .A2(a_reg[5]), .ZN(n55) );
  XNOR2_X1 U266 ( .A(n126), .B(n127), .ZN(n122) );
  NAND2_X1 U267 ( .A1(s_out_0__2_), .A2(a_reg[0]), .ZN(n126) );
  NAND2_X1 U268 ( .A1(s_out_0__1_), .A2(a_reg[0]), .ZN(n127) );
  XNOR2_X1 U269 ( .A(n112), .B(n113), .ZN(n108) );
  NAND2_X1 U270 ( .A1(s_out_1__2_), .A2(a_reg[1]), .ZN(n112) );
  NAND2_X1 U271 ( .A1(s_out_1__0_), .A2(a_reg[1]), .ZN(n113) );
  XNOR2_X1 U272 ( .A(n98), .B(n99), .ZN(n94) );
  NAND2_X1 U273 ( .A1(s_out_2__1_), .A2(a_reg[2]), .ZN(n98) );
  NAND2_X1 U274 ( .A1(s_out_2__0_), .A2(a_reg[2]), .ZN(n99) );
  XNOR2_X1 U275 ( .A(n84), .B(n85), .ZN(n80) );
  NAND2_X1 U276 ( .A1(s_out_3__1_), .A2(a_reg[3]), .ZN(n84) );
  NAND2_X1 U277 ( .A1(s_out_3__0_), .A2(a_reg[3]), .ZN(n85) );
  XNOR2_X1 U278 ( .A(n70), .B(n71), .ZN(n66) );
  NAND2_X1 U279 ( .A1(s_out_4__1_), .A2(a_reg[4]), .ZN(n70) );
  NAND2_X1 U280 ( .A1(s_out_4__0_), .A2(a_reg[4]), .ZN(n71) );
  XNOR2_X1 U281 ( .A(n56), .B(n57), .ZN(n52) );
  NAND2_X1 U282 ( .A1(s_out_5__1_), .A2(a_reg[5]), .ZN(n56) );
  NAND2_X1 U283 ( .A1(s_out_5__0_), .A2(a_reg[5]), .ZN(n57) );
  XOR2_X1 U284 ( .A(r[0]), .B(n45), .Z(p_0_in_0__1_) );
  NOR2_X1 U285 ( .A1(a[0]), .A2(n15), .ZN(n45) );
  XOR2_X1 U286 ( .A(r[1]), .B(n44), .Z(p_0_in_0__2_) );
  NOR2_X1 U287 ( .A1(a[0]), .A2(n14), .ZN(n44) );
  XOR2_X1 U288 ( .A(r[2]), .B(n43), .Z(p_0_in_0__3_) );
  NOR2_X1 U289 ( .A1(a[0]), .A2(n13), .ZN(n43) );
  XOR2_X1 U290 ( .A(r[3]), .B(n42), .Z(p_0_in_0__4_) );
  NOR2_X1 U291 ( .A1(a[0]), .A2(n12), .ZN(n42) );
  XOR2_X1 U292 ( .A(r[4]), .B(n41), .Z(p_0_in_0__5_) );
  NOR2_X1 U293 ( .A1(a[0]), .A2(n11), .ZN(n41) );
  XOR2_X1 U294 ( .A(r[0]), .B(n40), .Z(p_0_in_1__0_) );
  NOR2_X1 U295 ( .A1(a[1]), .A2(n15), .ZN(n40) );
  XOR2_X1 U296 ( .A(r[5]), .B(n39), .Z(p_0_in_1__2_) );
  NOR2_X1 U297 ( .A1(a[1]), .A2(n10), .ZN(n39) );
  XOR2_X1 U298 ( .A(r[6]), .B(n38), .Z(p_0_in_1__3_) );
  NOR2_X1 U299 ( .A1(a[1]), .A2(n9), .ZN(n38) );
  XOR2_X1 U300 ( .A(r[7]), .B(n37), .Z(p_0_in_1__4_) );
  NOR2_X1 U301 ( .A1(a[1]), .A2(n8), .ZN(n37) );
  XOR2_X1 U302 ( .A(r[8]), .B(n36), .Z(p_0_in_1__5_) );
  NOR2_X1 U303 ( .A1(a[1]), .A2(n7), .ZN(n36) );
  XOR2_X1 U304 ( .A(r[1]), .B(n35), .Z(p_0_in_2__0_) );
  NOR2_X1 U305 ( .A1(a[2]), .A2(n14), .ZN(n35) );
  XOR2_X1 U306 ( .A(r[5]), .B(n34), .Z(p_0_in_2__1_) );
  NOR2_X1 U307 ( .A1(a[2]), .A2(n10), .ZN(n34) );
  XOR2_X1 U308 ( .A(r[9]), .B(n33), .Z(p_0_in_2__3_) );
  NOR2_X1 U309 ( .A1(a[2]), .A2(n6), .ZN(n33) );
  XOR2_X1 U310 ( .A(r[10]), .B(n32), .Z(p_0_in_2__4_) );
  NOR2_X1 U311 ( .A1(a[2]), .A2(n5), .ZN(n32) );
  XOR2_X1 U312 ( .A(r[11]), .B(n31), .Z(p_0_in_2__5_) );
  NOR2_X1 U313 ( .A1(a[2]), .A2(n4), .ZN(n31) );
  XOR2_X1 U314 ( .A(r[2]), .B(n30), .Z(p_0_in_3__0_) );
  NOR2_X1 U315 ( .A1(a[3]), .A2(n13), .ZN(n30) );
  XOR2_X1 U316 ( .A(r[6]), .B(n29), .Z(p_0_in_3__1_) );
  NOR2_X1 U317 ( .A1(a[3]), .A2(n9), .ZN(n29) );
  XOR2_X1 U318 ( .A(r[9]), .B(n28), .Z(p_0_in_3__2_) );
  NOR2_X1 U319 ( .A1(a[3]), .A2(n6), .ZN(n28) );
  XOR2_X1 U320 ( .A(r[12]), .B(n27), .Z(p_0_in_3__4_) );
  NOR2_X1 U321 ( .A1(a[3]), .A2(n3), .ZN(n27) );
  XOR2_X1 U322 ( .A(r[13]), .B(n26), .Z(p_0_in_3__5_) );
  NOR2_X1 U323 ( .A1(a[3]), .A2(n2), .ZN(n26) );
  XOR2_X1 U324 ( .A(r[3]), .B(n25), .Z(p_0_in_4__0_) );
  NOR2_X1 U325 ( .A1(a[4]), .A2(n12), .ZN(n25) );
  XOR2_X1 U326 ( .A(r[7]), .B(n24), .Z(p_0_in_4__1_) );
  NOR2_X1 U327 ( .A1(a[4]), .A2(n8), .ZN(n24) );
  XOR2_X1 U328 ( .A(r[10]), .B(n23), .Z(p_0_in_4__2_) );
  NOR2_X1 U329 ( .A1(a[4]), .A2(n5), .ZN(n23) );
  XOR2_X1 U330 ( .A(r[12]), .B(n22), .Z(p_0_in_4__3_) );
  NOR2_X1 U331 ( .A1(a[4]), .A2(n3), .ZN(n22) );
  XOR2_X1 U332 ( .A(r[14]), .B(n21), .Z(p_0_in_4__5_) );
  NOR2_X1 U333 ( .A1(a[4]), .A2(n1), .ZN(n21) );
  XOR2_X1 U334 ( .A(r[4]), .B(n20), .Z(p_0_in_5__0_) );
  NOR2_X1 U335 ( .A1(a[5]), .A2(n11), .ZN(n20) );
  XOR2_X1 U336 ( .A(r[8]), .B(n19), .Z(p_0_in_5__1_) );
  NOR2_X1 U337 ( .A1(a[5]), .A2(n7), .ZN(n19) );
  XOR2_X1 U338 ( .A(r[11]), .B(n18), .Z(p_0_in_5__2_) );
  NOR2_X1 U339 ( .A1(a[5]), .A2(n4), .ZN(n18) );
  XOR2_X1 U340 ( .A(r[13]), .B(n17), .Z(p_0_in_5__3_) );
  NOR2_X1 U341 ( .A1(a[5]), .A2(n2), .ZN(n17) );
  XOR2_X1 U342 ( .A(r[14]), .B(n16), .Z(p_0_in_5__4_) );
  NOR2_X1 U343 ( .A1(a[5]), .A2(n1), .ZN(n16) );
  XNOR2_X1 U344 ( .A(n15), .B(b[1]), .ZN(s_in_0__1_) );
  XNOR2_X1 U345 ( .A(n14), .B(b[2]), .ZN(s_in_0__2_) );
  XNOR2_X1 U346 ( .A(n13), .B(b[3]), .ZN(s_in_0__3_) );
  XNOR2_X1 U347 ( .A(n12), .B(b[4]), .ZN(s_in_0__4_) );
  XNOR2_X1 U348 ( .A(n11), .B(b[5]), .ZN(s_in_0__5_) );
  XNOR2_X1 U349 ( .A(n15), .B(b[0]), .ZN(s_in_1__0_) );
  XNOR2_X1 U350 ( .A(n10), .B(b[2]), .ZN(s_in_1__2_) );
  XNOR2_X1 U351 ( .A(n9), .B(b[3]), .ZN(s_in_1__3_) );
  XNOR2_X1 U352 ( .A(n8), .B(b[4]), .ZN(s_in_1__4_) );
  XNOR2_X1 U353 ( .A(n7), .B(b[5]), .ZN(s_in_1__5_) );
  XNOR2_X1 U354 ( .A(n14), .B(b[0]), .ZN(s_in_2__0_) );
  XNOR2_X1 U355 ( .A(n10), .B(b[1]), .ZN(s_in_2__1_) );
  XNOR2_X1 U356 ( .A(n6), .B(b[3]), .ZN(s_in_2__3_) );
  XNOR2_X1 U357 ( .A(n5), .B(b[4]), .ZN(s_in_2__4_) );
  XNOR2_X1 U358 ( .A(n4), .B(b[5]), .ZN(s_in_2__5_) );
  XNOR2_X1 U359 ( .A(n13), .B(b[0]), .ZN(s_in_3__0_) );
  XNOR2_X1 U360 ( .A(n9), .B(b[1]), .ZN(s_in_3__1_) );
  XNOR2_X1 U361 ( .A(n6), .B(b[2]), .ZN(s_in_3__2_) );
  XNOR2_X1 U362 ( .A(n3), .B(b[4]), .ZN(s_in_3__4_) );
  XNOR2_X1 U363 ( .A(n2), .B(b[5]), .ZN(s_in_3__5_) );
  XNOR2_X1 U364 ( .A(n12), .B(b[0]), .ZN(s_in_4__0_) );
  XNOR2_X1 U365 ( .A(n8), .B(b[1]), .ZN(s_in_4__1_) );
  XNOR2_X1 U366 ( .A(n5), .B(b[2]), .ZN(s_in_4__2_) );
  XNOR2_X1 U367 ( .A(n3), .B(b[3]), .ZN(s_in_4__3_) );
  XNOR2_X1 U368 ( .A(n1), .B(b[5]), .ZN(s_in_4__5_) );
  XNOR2_X1 U369 ( .A(n11), .B(b[0]), .ZN(s_in_5__0_) );
  XNOR2_X1 U370 ( .A(n7), .B(b[1]), .ZN(s_in_5__1_) );
  XNOR2_X1 U371 ( .A(n4), .B(b[2]), .ZN(s_in_5__2_) );
  XNOR2_X1 U372 ( .A(n2), .B(b[3]), .ZN(s_in_5__3_) );
  XNOR2_X1 U373 ( .A(n1), .B(b[4]), .ZN(s_in_5__4_) );
  XOR2_X1 U374 ( .A(n116), .B(n117), .Z(c[0]) );
  XOR2_X1 U375 ( .A(p_0_out_0__5_), .B(p_0_out_0__4_), .Z(n116) );
  XOR2_X1 U376 ( .A(n118), .B(n119), .Z(n117) );
  NAND2_X1 U377 ( .A1(s_out_0__4_), .A2(a_reg[0]), .ZN(n118) );
  XOR2_X1 U378 ( .A(n102), .B(n103), .Z(c[1]) );
  XOR2_X1 U379 ( .A(p_0_out_1__5_), .B(p_0_out_1__4_), .Z(n102) );
  XOR2_X1 U380 ( .A(n104), .B(n105), .Z(n103) );
  NAND2_X1 U381 ( .A1(s_out_1__4_), .A2(a_reg[1]), .ZN(n104) );
  XOR2_X1 U382 ( .A(n88), .B(n89), .Z(c[2]) );
  XOR2_X1 U383 ( .A(p_0_out_2__5_), .B(p_0_out_2__4_), .Z(n88) );
  XOR2_X1 U384 ( .A(n90), .B(n91), .Z(n89) );
  NAND2_X1 U385 ( .A1(s_out_2__4_), .A2(a_reg[2]), .ZN(n90) );
  XOR2_X1 U386 ( .A(n74), .B(n75), .Z(c[3]) );
  XOR2_X1 U387 ( .A(p_0_out_3__5_), .B(p_0_out_3__4_), .Z(n74) );
  XOR2_X1 U388 ( .A(n76), .B(n77), .Z(n75) );
  NAND2_X1 U389 ( .A1(s_out_3__4_), .A2(a_reg[3]), .ZN(n76) );
  XOR2_X1 U390 ( .A(n60), .B(n61), .Z(c[4]) );
  XOR2_X1 U391 ( .A(z[4]), .B(p_0_out_4__5_), .Z(n60) );
  XOR2_X1 U392 ( .A(n62), .B(n63), .Z(n61) );
  NAND2_X1 U393 ( .A1(s_out_4__5_), .A2(a_reg[4]), .ZN(n62) );
  XOR2_X1 U394 ( .A(n46), .B(n47), .Z(c[5]) );
  XOR2_X1 U395 ( .A(z[5]), .B(p_0_out_5__4_), .Z(n46) );
  XOR2_X1 U396 ( .A(n48), .B(n49), .Z(n47) );
  NAND2_X1 U397 ( .A1(s_out_5__4_), .A2(a_reg[5]), .ZN(n48) );
  AND2_X1 U398 ( .A1(b[1]), .A2(a[1]), .ZN(mul[1]) );
  AND2_X1 U399 ( .A1(b[2]), .A2(a[2]), .ZN(mul[2]) );
  AND2_X1 U400 ( .A1(b[3]), .A2(a[3]), .ZN(mul[3]) );
  AND2_X1 U401 ( .A1(b[4]), .A2(a[4]), .ZN(mul[4]) );
  AND2_X1 U402 ( .A1(b[5]), .A2(a[5]), .ZN(mul[5]) );
  AND2_X1 U403 ( .A1(b[0]), .A2(a[0]), .ZN(mul[0]) );
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
  DFF_X1 s_reg_0_5_s_current_state_reg ( .D(s_in_0__5_), .CK(clk), .Q(
        s_out_0__5_), .QN() );
  DFF_X1 p_0_reg_0_5_s_current_state_reg ( .D(p_0_in_0__5_), .CK(clk), .Q(
        p_0_out_0__5_), .QN() );
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
  DFF_X1 s_reg_1_5_s_current_state_reg ( .D(s_in_1__5_), .CK(clk), .Q(
        s_out_1__5_), .QN() );
  DFF_X1 p_0_reg_1_5_s_current_state_reg ( .D(p_0_in_1__5_), .CK(clk), .Q(
        p_0_out_1__5_), .QN() );
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
  DFF_X1 s_reg_2_5_s_current_state_reg ( .D(s_in_2__5_), .CK(clk), .Q(
        s_out_2__5_), .QN() );
  DFF_X1 p_0_reg_2_5_s_current_state_reg ( .D(p_0_in_2__5_), .CK(clk), .Q(
        p_0_out_2__5_), .QN() );
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
  DFF_X1 s_reg_3_5_s_current_state_reg ( .D(s_in_3__5_), .CK(clk), .Q(
        s_out_3__5_), .QN() );
  DFF_X1 p_0_reg_3_5_s_current_state_reg ( .D(p_0_in_3__5_), .CK(clk), .Q(
        p_0_out_3__5_), .QN() );
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
  DFF_X1 s_reg_4_5_s_current_state_reg ( .D(s_in_4__5_), .CK(clk), .Q(
        s_out_4__5_), .QN() );
  DFF_X1 p_0_reg_4_5_s_current_state_reg ( .D(p_0_in_4__5_), .CK(clk), .Q(
        p_0_out_4__5_), .QN() );
  DFF_X1 mul_pipe_s1_5_s_current_state_reg ( .D(mul[5]), .CK(clk), .Q(z[5]), 
        .QN() );
  DFF_X1 a_i_5_s_current_state_reg ( .D(a[5]), .CK(clk), .Q(a_reg[5]), .QN()
         );
  DFF_X1 s_reg_5_0_s_current_state_reg ( .D(s_in_5__0_), .CK(clk), .Q(
        s_out_5__0_), .QN() );
  DFF_X1 p_0_reg_5_0_s_current_state_reg ( .D(p_0_in_5__0_), .CK(clk), .Q(
        p_0_out_5__0_), .QN() );
  DFF_X1 s_reg_5_1_s_current_state_reg ( .D(s_in_5__1_), .CK(clk), .Q(
        s_out_5__1_), .QN() );
  DFF_X1 p_0_reg_5_1_s_current_state_reg ( .D(p_0_in_5__1_), .CK(clk), .Q(
        p_0_out_5__1_), .QN() );
  DFF_X1 s_reg_5_2_s_current_state_reg ( .D(s_in_5__2_), .CK(clk), .Q(
        s_out_5__2_), .QN() );
  DFF_X1 p_0_reg_5_2_s_current_state_reg ( .D(p_0_in_5__2_), .CK(clk), .Q(
        p_0_out_5__2_), .QN() );
  DFF_X1 s_reg_5_3_s_current_state_reg ( .D(s_in_5__3_), .CK(clk), .Q(
        s_out_5__3_), .QN() );
  DFF_X1 p_0_reg_5_3_s_current_state_reg ( .D(p_0_in_5__3_), .CK(clk), .Q(
        p_0_out_5__3_), .QN() );
  DFF_X1 s_reg_5_4_s_current_state_reg ( .D(s_in_5__4_), .CK(clk), .Q(
        s_out_5__4_), .QN() );
  DFF_X1 p_0_reg_5_4_s_current_state_reg ( .D(p_0_in_5__4_), .CK(clk), .Q(
        p_0_out_5__4_), .QN() );
endmodule

