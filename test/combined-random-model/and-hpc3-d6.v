/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP4
// Date      : Tue Nov 29 09:43:54 2022
/////////////////////////////////////////////////////////////


module and_HPC3 ( a, b, r, clk, c );
  input [6:0] a;
  input [6:0] b;
  input [41:0] r;
  output [6:0] c;
  input clk;
  wire   s_in_6__5_, s_in_6__4_, s_in_6__3_, s_in_6__2_, s_in_6__1_,
         s_in_6__0_, s_in_5__6_, s_in_5__4_, s_in_5__3_, s_in_5__2_,
         s_in_5__1_, s_in_5__0_, s_in_4__6_, s_in_4__5_, s_in_4__3_,
         s_in_4__2_, s_in_4__1_, s_in_4__0_, s_in_3__6_, s_in_3__5_,
         s_in_3__4_, s_in_3__2_, s_in_3__1_, s_in_3__0_, s_in_2__6_,
         s_in_2__5_, s_in_2__4_, s_in_2__3_, s_in_2__1_, s_in_2__0_,
         s_in_1__6_, s_in_1__5_, s_in_1__4_, s_in_1__3_, s_in_1__2_,
         s_in_1__0_, s_in_0__6_, s_in_0__5_, s_in_0__4_, s_in_0__3_,
         s_in_0__2_, s_in_0__1_, p_0_in_6__5_, p_0_in_6__4_, p_0_in_6__3_,
         p_0_in_6__2_, p_0_in_6__1_, p_0_in_6__0_, p_0_in_5__6_, p_0_in_5__4_,
         p_0_in_5__3_, p_0_in_5__2_, p_0_in_5__1_, p_0_in_5__0_, p_0_in_4__6_,
         p_0_in_4__5_, p_0_in_4__3_, p_0_in_4__2_, p_0_in_4__1_, p_0_in_4__0_,
         p_0_in_3__6_, p_0_in_3__5_, p_0_in_3__4_, p_0_in_3__2_, p_0_in_3__1_,
         p_0_in_3__0_, p_0_in_2__6_, p_0_in_2__5_, p_0_in_2__4_, p_0_in_2__3_,
         p_0_in_2__1_, p_0_in_2__0_, p_0_in_1__6_, p_0_in_1__5_, p_0_in_1__4_,
         p_0_in_1__3_, p_0_in_1__2_, p_0_in_1__0_, p_0_in_0__6_, p_0_in_0__5_,
         p_0_in_0__4_, p_0_in_0__3_, p_0_in_0__2_, p_0_in_0__1_, s_out_6__5_,
         s_out_6__4_, s_out_6__3_, s_out_6__2_, s_out_6__1_, s_out_6__0_,
         s_out_5__6_, s_out_5__4_, s_out_5__3_, s_out_5__2_, s_out_5__1_,
         s_out_5__0_, s_out_4__6_, s_out_4__5_, s_out_4__3_, s_out_4__2_,
         s_out_4__1_, s_out_4__0_, s_out_3__6_, s_out_3__5_, s_out_3__4_,
         s_out_3__2_, s_out_3__1_, s_out_3__0_, s_out_2__6_, s_out_2__5_,
         s_out_2__4_, s_out_2__3_, s_out_2__1_, s_out_2__0_, s_out_1__6_,
         s_out_1__5_, s_out_1__4_, s_out_1__3_, s_out_1__2_, s_out_1__0_,
         s_out_0__6_, s_out_0__5_, s_out_0__4_, s_out_0__3_, s_out_0__2_,
         s_out_0__1_, p_0_out_6__5_, p_0_out_6__4_, p_0_out_6__3_,
         p_0_out_6__2_, p_0_out_6__1_, p_0_out_6__0_, p_0_out_5__6_,
         p_0_out_5__4_, p_0_out_5__3_, p_0_out_5__2_, p_0_out_5__1_,
         p_0_out_5__0_, p_0_out_4__6_, p_0_out_4__5_, p_0_out_4__3_,
         p_0_out_4__2_, p_0_out_4__1_, p_0_out_4__0_, p_0_out_3__6_,
         p_0_out_3__5_, p_0_out_3__4_, p_0_out_3__2_, p_0_out_3__1_,
         p_0_out_3__0_, p_0_out_2__6_, p_0_out_2__5_, p_0_out_2__4_,
         p_0_out_2__3_, p_0_out_2__1_, p_0_out_2__0_, p_0_out_1__6_,
         p_0_out_1__5_, p_0_out_1__4_, p_0_out_1__3_, p_0_out_1__2_,
         p_0_out_1__0_, p_0_out_0__6_, p_0_out_0__5_, p_0_out_0__4_,
         p_0_out_0__3_, p_0_out_0__2_, p_0_out_0__1_, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182;
  wire   [6:0] mul;
  wire   [6:0] z;
  wire   [6:0] a_reg;

  XOR2_X1 U282 ( .A(n170), .B(n171), .Z(n169) );
  XOR2_X1 U283 ( .A(n174), .B(n175), .Z(n170) );
  XOR2_X1 U284 ( .A(n172), .B(n173), .Z(n171) );
  XNOR2_X1 U285 ( .A(n180), .B(n181), .ZN(n174) );
  XOR2_X1 U286 ( .A(n153), .B(n154), .Z(n152) );
  XOR2_X1 U287 ( .A(n157), .B(n158), .Z(n153) );
  XOR2_X1 U288 ( .A(n155), .B(n156), .Z(n154) );
  XNOR2_X1 U289 ( .A(n163), .B(n164), .ZN(n157) );
  XOR2_X1 U290 ( .A(n136), .B(n137), .Z(n135) );
  XOR2_X1 U291 ( .A(n140), .B(n141), .Z(n136) );
  XOR2_X1 U292 ( .A(n138), .B(n139), .Z(n137) );
  XNOR2_X1 U293 ( .A(n146), .B(n147), .ZN(n140) );
  XOR2_X1 U294 ( .A(n119), .B(n120), .Z(n118) );
  XOR2_X1 U295 ( .A(n123), .B(n124), .Z(n119) );
  XOR2_X1 U296 ( .A(n121), .B(n122), .Z(n120) );
  XNOR2_X1 U297 ( .A(n129), .B(n130), .ZN(n123) );
  XOR2_X1 U298 ( .A(n176), .B(n177), .Z(n175) );
  NAND2_X1 U299 ( .A1(s_out_0__3_), .A2(a_reg[0]), .ZN(n176) );
  XNOR2_X1 U300 ( .A(n178), .B(n179), .ZN(n177) );
  NAND2_X1 U301 ( .A1(s_out_0__6_), .A2(a_reg[0]), .ZN(n178) );
  XOR2_X1 U302 ( .A(n159), .B(n160), .Z(n158) );
  NAND2_X1 U303 ( .A1(s_out_1__3_), .A2(a_reg[1]), .ZN(n159) );
  XNOR2_X1 U304 ( .A(n161), .B(n162), .ZN(n160) );
  NAND2_X1 U305 ( .A1(s_out_1__6_), .A2(a_reg[1]), .ZN(n161) );
  XOR2_X1 U306 ( .A(n142), .B(n143), .Z(n141) );
  NAND2_X1 U307 ( .A1(s_out_2__3_), .A2(a_reg[2]), .ZN(n142) );
  XNOR2_X1 U308 ( .A(n144), .B(n145), .ZN(n143) );
  NAND2_X1 U309 ( .A1(s_out_2__6_), .A2(a_reg[2]), .ZN(n144) );
  XOR2_X1 U310 ( .A(n125), .B(n126), .Z(n124) );
  NAND2_X1 U311 ( .A1(s_out_3__2_), .A2(a_reg[3]), .ZN(n125) );
  XNOR2_X1 U312 ( .A(n127), .B(n128), .ZN(n126) );
  NAND2_X1 U313 ( .A1(s_out_3__6_), .A2(a_reg[3]), .ZN(n127) );
  XOR2_X1 U314 ( .A(p_0_out_4__3_), .B(p_0_out_4__2_), .Z(n113) );
  XOR2_X1 U315 ( .A(p_0_out_5__3_), .B(p_0_out_5__2_), .Z(n96) );
  XOR2_X1 U316 ( .A(p_0_out_6__3_), .B(p_0_out_6__2_), .Z(n79) );
  XOR2_X1 U317 ( .A(n104), .B(n105), .Z(n100) );
  XOR2_X1 U318 ( .A(n112), .B(n113), .Z(n104) );
  XOR2_X1 U319 ( .A(n106), .B(n107), .Z(n105) );
  XNOR2_X1 U320 ( .A(p_0_out_4__1_), .B(p_0_out_4__0_), .ZN(n112) );
  XOR2_X1 U321 ( .A(n87), .B(n88), .Z(n83) );
  XOR2_X1 U322 ( .A(n95), .B(n96), .Z(n87) );
  XOR2_X1 U323 ( .A(n89), .B(n90), .Z(n88) );
  XNOR2_X1 U324 ( .A(p_0_out_5__1_), .B(p_0_out_5__0_), .ZN(n95) );
  XOR2_X1 U325 ( .A(n70), .B(n71), .Z(n66) );
  XOR2_X1 U326 ( .A(n78), .B(n79), .Z(n70) );
  XOR2_X1 U327 ( .A(n72), .B(n73), .Z(n71) );
  XNOR2_X1 U328 ( .A(p_0_out_6__1_), .B(p_0_out_6__0_), .ZN(n78) );
  INV_X1 U329 ( .A(r[21]), .ZN(n21) );
  INV_X1 U330 ( .A(r[22]), .ZN(n20) );
  INV_X1 U331 ( .A(r[23]), .ZN(n19) );
  INV_X1 U332 ( .A(r[24]), .ZN(n18) );
  INV_X1 U333 ( .A(r[25]), .ZN(n17) );
  INV_X1 U334 ( .A(r[26]), .ZN(n16) );
  INV_X1 U335 ( .A(r[27]), .ZN(n15) );
  INV_X1 U336 ( .A(r[28]), .ZN(n14) );
  INV_X1 U337 ( .A(r[29]), .ZN(n13) );
  INV_X1 U338 ( .A(r[30]), .ZN(n12) );
  INV_X1 U339 ( .A(r[31]), .ZN(n11) );
  INV_X1 U340 ( .A(r[32]), .ZN(n10) );
  INV_X1 U341 ( .A(r[33]), .ZN(n9) );
  INV_X1 U342 ( .A(r[34]), .ZN(n8) );
  INV_X1 U343 ( .A(r[35]), .ZN(n7) );
  INV_X1 U344 ( .A(r[36]), .ZN(n6) );
  INV_X1 U345 ( .A(r[37]), .ZN(n5) );
  INV_X1 U346 ( .A(r[38]), .ZN(n4) );
  INV_X1 U347 ( .A(r[39]), .ZN(n3) );
  INV_X1 U348 ( .A(r[40]), .ZN(n2) );
  INV_X1 U349 ( .A(r[41]), .ZN(n1) );
  XNOR2_X1 U350 ( .A(n108), .B(n109), .ZN(n107) );
  NAND2_X1 U351 ( .A1(s_out_4__3_), .A2(a_reg[4]), .ZN(n108) );
  NAND2_X1 U352 ( .A1(s_out_4__2_), .A2(a_reg[4]), .ZN(n109) );
  XNOR2_X1 U353 ( .A(n91), .B(n92), .ZN(n90) );
  NAND2_X1 U354 ( .A1(s_out_5__3_), .A2(a_reg[5]), .ZN(n91) );
  NAND2_X1 U355 ( .A1(s_out_5__2_), .A2(a_reg[5]), .ZN(n92) );
  XNOR2_X1 U356 ( .A(n74), .B(n75), .ZN(n73) );
  NAND2_X1 U357 ( .A1(s_out_6__3_), .A2(a_reg[6]), .ZN(n74) );
  NAND2_X1 U358 ( .A1(s_out_6__2_), .A2(a_reg[6]), .ZN(n75) );
  XNOR2_X1 U359 ( .A(n102), .B(n103), .ZN(n101) );
  NAND2_X1 U360 ( .A1(s_out_4__6_), .A2(a_reg[4]), .ZN(n102) );
  NAND2_X1 U361 ( .A1(s_out_4__5_), .A2(a_reg[4]), .ZN(n103) );
  XNOR2_X1 U362 ( .A(n85), .B(n86), .ZN(n84) );
  NAND2_X1 U363 ( .A1(s_out_5__6_), .A2(a_reg[5]), .ZN(n85) );
  NAND2_X1 U364 ( .A1(s_out_5__4_), .A2(a_reg[5]), .ZN(n86) );
  XNOR2_X1 U365 ( .A(n68), .B(n69), .ZN(n67) );
  NAND2_X1 U366 ( .A1(s_out_6__5_), .A2(a_reg[6]), .ZN(n68) );
  NAND2_X1 U367 ( .A1(s_out_6__4_), .A2(a_reg[6]), .ZN(n69) );
  XNOR2_X1 U368 ( .A(p_0_out_0__2_), .B(p_0_out_0__1_), .ZN(n173) );
  XNOR2_X1 U369 ( .A(p_0_out_1__2_), .B(p_0_out_1__0_), .ZN(n156) );
  XNOR2_X1 U370 ( .A(p_0_out_2__1_), .B(p_0_out_2__0_), .ZN(n139) );
  XNOR2_X1 U371 ( .A(p_0_out_3__1_), .B(p_0_out_3__0_), .ZN(n122) );
  XNOR2_X1 U372 ( .A(n110), .B(n111), .ZN(n106) );
  NAND2_X1 U373 ( .A1(s_out_4__1_), .A2(a_reg[4]), .ZN(n110) );
  NAND2_X1 U374 ( .A1(s_out_4__0_), .A2(a_reg[4]), .ZN(n111) );
  XNOR2_X1 U375 ( .A(n93), .B(n94), .ZN(n89) );
  NAND2_X1 U376 ( .A1(s_out_5__1_), .A2(a_reg[5]), .ZN(n93) );
  NAND2_X1 U377 ( .A1(s_out_5__0_), .A2(a_reg[5]), .ZN(n94) );
  XNOR2_X1 U378 ( .A(n76), .B(n77), .ZN(n72) );
  NAND2_X1 U379 ( .A1(s_out_6__1_), .A2(a_reg[6]), .ZN(n76) );
  NAND2_X1 U380 ( .A1(s_out_6__0_), .A2(a_reg[6]), .ZN(n77) );
  XNOR2_X1 U381 ( .A(z[0]), .B(p_0_out_0__3_), .ZN(n172) );
  XNOR2_X1 U382 ( .A(z[1]), .B(p_0_out_1__3_), .ZN(n155) );
  XNOR2_X1 U383 ( .A(z[2]), .B(p_0_out_2__3_), .ZN(n138) );
  XNOR2_X1 U384 ( .A(z[3]), .B(p_0_out_3__2_), .ZN(n121) );
  NAND2_X1 U385 ( .A1(s_out_0__5_), .A2(a_reg[0]), .ZN(n179) );
  NAND2_X1 U386 ( .A1(s_out_1__5_), .A2(a_reg[1]), .ZN(n162) );
  NAND2_X1 U387 ( .A1(s_out_2__5_), .A2(a_reg[2]), .ZN(n145) );
  NAND2_X1 U388 ( .A1(s_out_3__5_), .A2(a_reg[3]), .ZN(n128) );
  NAND2_X1 U389 ( .A1(s_out_0__1_), .A2(a_reg[0]), .ZN(n181) );
  NAND2_X1 U390 ( .A1(s_out_1__0_), .A2(a_reg[1]), .ZN(n164) );
  NAND2_X1 U391 ( .A1(s_out_2__0_), .A2(a_reg[2]), .ZN(n147) );
  NAND2_X1 U392 ( .A1(s_out_3__0_), .A2(a_reg[3]), .ZN(n130) );
  NAND2_X1 U393 ( .A1(s_out_0__4_), .A2(a_reg[0]), .ZN(n168) );
  NAND2_X1 U394 ( .A1(s_out_1__4_), .A2(a_reg[1]), .ZN(n151) );
  NAND2_X1 U395 ( .A1(s_out_2__4_), .A2(a_reg[2]), .ZN(n134) );
  NAND2_X1 U396 ( .A1(s_out_3__4_), .A2(a_reg[3]), .ZN(n117) );
  NAND2_X1 U397 ( .A1(s_out_0__2_), .A2(a_reg[0]), .ZN(n180) );
  NAND2_X1 U398 ( .A1(s_out_1__2_), .A2(a_reg[1]), .ZN(n163) );
  NAND2_X1 U399 ( .A1(s_out_2__1_), .A2(a_reg[2]), .ZN(n146) );
  NAND2_X1 U400 ( .A1(s_out_3__1_), .A2(a_reg[3]), .ZN(n129) );
  XOR2_X1 U401 ( .A(r[0]), .B(n63), .Z(p_0_in_0__1_) );
  NOR2_X1 U402 ( .A1(a[0]), .A2(n21), .ZN(n63) );
  XOR2_X1 U403 ( .A(r[1]), .B(n62), .Z(p_0_in_0__2_) );
  NOR2_X1 U404 ( .A1(a[0]), .A2(n20), .ZN(n62) );
  XOR2_X1 U405 ( .A(r[2]), .B(n61), .Z(p_0_in_0__3_) );
  NOR2_X1 U406 ( .A1(a[0]), .A2(n19), .ZN(n61) );
  XOR2_X1 U407 ( .A(r[3]), .B(n60), .Z(p_0_in_0__4_) );
  NOR2_X1 U408 ( .A1(a[0]), .A2(n18), .ZN(n60) );
  XOR2_X1 U409 ( .A(r[4]), .B(n59), .Z(p_0_in_0__5_) );
  NOR2_X1 U410 ( .A1(a[0]), .A2(n17), .ZN(n59) );
  XOR2_X1 U411 ( .A(r[5]), .B(n58), .Z(p_0_in_0__6_) );
  NOR2_X1 U412 ( .A1(a[0]), .A2(n16), .ZN(n58) );
  XOR2_X1 U413 ( .A(r[0]), .B(n57), .Z(p_0_in_1__0_) );
  NOR2_X1 U414 ( .A1(a[1]), .A2(n21), .ZN(n57) );
  XOR2_X1 U415 ( .A(r[6]), .B(n56), .Z(p_0_in_1__2_) );
  NOR2_X1 U416 ( .A1(a[1]), .A2(n15), .ZN(n56) );
  XOR2_X1 U417 ( .A(r[7]), .B(n55), .Z(p_0_in_1__3_) );
  NOR2_X1 U418 ( .A1(a[1]), .A2(n14), .ZN(n55) );
  XOR2_X1 U419 ( .A(r[8]), .B(n54), .Z(p_0_in_1__4_) );
  NOR2_X1 U420 ( .A1(a[1]), .A2(n13), .ZN(n54) );
  XOR2_X1 U421 ( .A(r[9]), .B(n53), .Z(p_0_in_1__5_) );
  NOR2_X1 U422 ( .A1(a[1]), .A2(n12), .ZN(n53) );
  XOR2_X1 U423 ( .A(r[10]), .B(n52), .Z(p_0_in_1__6_) );
  NOR2_X1 U424 ( .A1(a[1]), .A2(n11), .ZN(n52) );
  XOR2_X1 U425 ( .A(r[1]), .B(n51), .Z(p_0_in_2__0_) );
  NOR2_X1 U426 ( .A1(a[2]), .A2(n20), .ZN(n51) );
  XOR2_X1 U427 ( .A(r[6]), .B(n50), .Z(p_0_in_2__1_) );
  NOR2_X1 U428 ( .A1(a[2]), .A2(n15), .ZN(n50) );
  XOR2_X1 U429 ( .A(r[11]), .B(n49), .Z(p_0_in_2__3_) );
  NOR2_X1 U430 ( .A1(a[2]), .A2(n10), .ZN(n49) );
  XOR2_X1 U431 ( .A(r[12]), .B(n48), .Z(p_0_in_2__4_) );
  NOR2_X1 U432 ( .A1(a[2]), .A2(n9), .ZN(n48) );
  XOR2_X1 U433 ( .A(r[13]), .B(n47), .Z(p_0_in_2__5_) );
  NOR2_X1 U434 ( .A1(a[2]), .A2(n8), .ZN(n47) );
  XOR2_X1 U435 ( .A(r[14]), .B(n46), .Z(p_0_in_2__6_) );
  NOR2_X1 U436 ( .A1(a[2]), .A2(n7), .ZN(n46) );
  XOR2_X1 U437 ( .A(r[2]), .B(n45), .Z(p_0_in_3__0_) );
  NOR2_X1 U438 ( .A1(a[3]), .A2(n19), .ZN(n45) );
  XOR2_X1 U439 ( .A(r[7]), .B(n44), .Z(p_0_in_3__1_) );
  NOR2_X1 U440 ( .A1(a[3]), .A2(n14), .ZN(n44) );
  XOR2_X1 U441 ( .A(r[11]), .B(n43), .Z(p_0_in_3__2_) );
  NOR2_X1 U442 ( .A1(a[3]), .A2(n10), .ZN(n43) );
  XOR2_X1 U443 ( .A(r[15]), .B(n42), .Z(p_0_in_3__4_) );
  NOR2_X1 U444 ( .A1(a[3]), .A2(n6), .ZN(n42) );
  XOR2_X1 U445 ( .A(r[16]), .B(n41), .Z(p_0_in_3__5_) );
  NOR2_X1 U446 ( .A1(a[3]), .A2(n5), .ZN(n41) );
  XOR2_X1 U447 ( .A(r[17]), .B(n40), .Z(p_0_in_3__6_) );
  NOR2_X1 U448 ( .A1(a[3]), .A2(n4), .ZN(n40) );
  XOR2_X1 U449 ( .A(r[3]), .B(n39), .Z(p_0_in_4__0_) );
  NOR2_X1 U450 ( .A1(a[4]), .A2(n18), .ZN(n39) );
  XOR2_X1 U451 ( .A(r[8]), .B(n38), .Z(p_0_in_4__1_) );
  NOR2_X1 U452 ( .A1(a[4]), .A2(n13), .ZN(n38) );
  XOR2_X1 U453 ( .A(r[12]), .B(n37), .Z(p_0_in_4__2_) );
  NOR2_X1 U454 ( .A1(a[4]), .A2(n9), .ZN(n37) );
  XOR2_X1 U455 ( .A(r[15]), .B(n36), .Z(p_0_in_4__3_) );
  NOR2_X1 U456 ( .A1(a[4]), .A2(n6), .ZN(n36) );
  XOR2_X1 U457 ( .A(r[18]), .B(n35), .Z(p_0_in_4__5_) );
  NOR2_X1 U458 ( .A1(a[4]), .A2(n3), .ZN(n35) );
  XOR2_X1 U459 ( .A(r[19]), .B(n34), .Z(p_0_in_4__6_) );
  NOR2_X1 U460 ( .A1(a[4]), .A2(n2), .ZN(n34) );
  XOR2_X1 U461 ( .A(r[4]), .B(n33), .Z(p_0_in_5__0_) );
  NOR2_X1 U462 ( .A1(a[5]), .A2(n17), .ZN(n33) );
  XOR2_X1 U463 ( .A(r[9]), .B(n32), .Z(p_0_in_5__1_) );
  NOR2_X1 U464 ( .A1(a[5]), .A2(n12), .ZN(n32) );
  XOR2_X1 U465 ( .A(r[13]), .B(n31), .Z(p_0_in_5__2_) );
  NOR2_X1 U466 ( .A1(a[5]), .A2(n8), .ZN(n31) );
  XOR2_X1 U467 ( .A(r[16]), .B(n30), .Z(p_0_in_5__3_) );
  NOR2_X1 U468 ( .A1(a[5]), .A2(n5), .ZN(n30) );
  XOR2_X1 U469 ( .A(r[18]), .B(n29), .Z(p_0_in_5__4_) );
  NOR2_X1 U470 ( .A1(a[5]), .A2(n3), .ZN(n29) );
  XOR2_X1 U471 ( .A(r[20]), .B(n28), .Z(p_0_in_5__6_) );
  NOR2_X1 U472 ( .A1(a[5]), .A2(n1), .ZN(n28) );
  XOR2_X1 U473 ( .A(r[5]), .B(n27), .Z(p_0_in_6__0_) );
  NOR2_X1 U474 ( .A1(a[6]), .A2(n16), .ZN(n27) );
  XOR2_X1 U475 ( .A(r[10]), .B(n26), .Z(p_0_in_6__1_) );
  NOR2_X1 U476 ( .A1(a[6]), .A2(n11), .ZN(n26) );
  XOR2_X1 U477 ( .A(r[14]), .B(n25), .Z(p_0_in_6__2_) );
  NOR2_X1 U478 ( .A1(a[6]), .A2(n7), .ZN(n25) );
  XOR2_X1 U479 ( .A(r[17]), .B(n24), .Z(p_0_in_6__3_) );
  NOR2_X1 U480 ( .A1(a[6]), .A2(n4), .ZN(n24) );
  XOR2_X1 U481 ( .A(r[19]), .B(n23), .Z(p_0_in_6__4_) );
  NOR2_X1 U482 ( .A1(a[6]), .A2(n2), .ZN(n23) );
  XOR2_X1 U483 ( .A(r[20]), .B(n22), .Z(p_0_in_6__5_) );
  NOR2_X1 U484 ( .A1(a[6]), .A2(n1), .ZN(n22) );
  XNOR2_X1 U485 ( .A(n21), .B(b[1]), .ZN(s_in_0__1_) );
  XNOR2_X1 U486 ( .A(n20), .B(b[2]), .ZN(s_in_0__2_) );
  XNOR2_X1 U487 ( .A(n19), .B(b[3]), .ZN(s_in_0__3_) );
  XNOR2_X1 U488 ( .A(n18), .B(b[4]), .ZN(s_in_0__4_) );
  XNOR2_X1 U489 ( .A(n17), .B(b[5]), .ZN(s_in_0__5_) );
  XNOR2_X1 U490 ( .A(n16), .B(b[6]), .ZN(s_in_0__6_) );
  XNOR2_X1 U491 ( .A(n21), .B(b[0]), .ZN(s_in_1__0_) );
  XNOR2_X1 U492 ( .A(n15), .B(b[2]), .ZN(s_in_1__2_) );
  XNOR2_X1 U493 ( .A(n14), .B(b[3]), .ZN(s_in_1__3_) );
  XNOR2_X1 U494 ( .A(n13), .B(b[4]), .ZN(s_in_1__4_) );
  XNOR2_X1 U495 ( .A(n12), .B(b[5]), .ZN(s_in_1__5_) );
  XNOR2_X1 U496 ( .A(n11), .B(b[6]), .ZN(s_in_1__6_) );
  XNOR2_X1 U497 ( .A(n20), .B(b[0]), .ZN(s_in_2__0_) );
  XNOR2_X1 U498 ( .A(n15), .B(b[1]), .ZN(s_in_2__1_) );
  XNOR2_X1 U499 ( .A(n10), .B(b[3]), .ZN(s_in_2__3_) );
  XNOR2_X1 U500 ( .A(n9), .B(b[4]), .ZN(s_in_2__4_) );
  XNOR2_X1 U501 ( .A(n8), .B(b[5]), .ZN(s_in_2__5_) );
  XNOR2_X1 U502 ( .A(n7), .B(b[6]), .ZN(s_in_2__6_) );
  XNOR2_X1 U503 ( .A(n19), .B(b[0]), .ZN(s_in_3__0_) );
  XNOR2_X1 U504 ( .A(n14), .B(b[1]), .ZN(s_in_3__1_) );
  XNOR2_X1 U505 ( .A(n10), .B(b[2]), .ZN(s_in_3__2_) );
  XNOR2_X1 U506 ( .A(n6), .B(b[4]), .ZN(s_in_3__4_) );
  XNOR2_X1 U507 ( .A(n5), .B(b[5]), .ZN(s_in_3__5_) );
  XNOR2_X1 U508 ( .A(n4), .B(b[6]), .ZN(s_in_3__6_) );
  XNOR2_X1 U509 ( .A(n18), .B(b[0]), .ZN(s_in_4__0_) );
  XNOR2_X1 U510 ( .A(n13), .B(b[1]), .ZN(s_in_4__1_) );
  XNOR2_X1 U511 ( .A(n9), .B(b[2]), .ZN(s_in_4__2_) );
  XNOR2_X1 U512 ( .A(n6), .B(b[3]), .ZN(s_in_4__3_) );
  XNOR2_X1 U513 ( .A(n3), .B(b[5]), .ZN(s_in_4__5_) );
  XNOR2_X1 U514 ( .A(n2), .B(b[6]), .ZN(s_in_4__6_) );
  XNOR2_X1 U515 ( .A(n17), .B(b[0]), .ZN(s_in_5__0_) );
  XNOR2_X1 U516 ( .A(n12), .B(b[1]), .ZN(s_in_5__1_) );
  XNOR2_X1 U517 ( .A(n8), .B(b[2]), .ZN(s_in_5__2_) );
  XNOR2_X1 U518 ( .A(n5), .B(b[3]), .ZN(s_in_5__3_) );
  XNOR2_X1 U519 ( .A(n3), .B(b[4]), .ZN(s_in_5__4_) );
  XNOR2_X1 U520 ( .A(n1), .B(b[6]), .ZN(s_in_5__6_) );
  XNOR2_X1 U521 ( .A(n16), .B(b[0]), .ZN(s_in_6__0_) );
  XNOR2_X1 U522 ( .A(n11), .B(b[1]), .ZN(s_in_6__1_) );
  XNOR2_X1 U523 ( .A(n7), .B(b[2]), .ZN(s_in_6__2_) );
  XNOR2_X1 U524 ( .A(n4), .B(b[3]), .ZN(s_in_6__3_) );
  XNOR2_X1 U525 ( .A(n2), .B(b[4]), .ZN(s_in_6__4_) );
  XNOR2_X1 U526 ( .A(n1), .B(b[5]), .ZN(s_in_6__5_) );
  XOR2_X1 U527 ( .A(n166), .B(n167), .Z(c[0]) );
  XOR2_X1 U528 ( .A(p_0_out_0__4_), .B(n182), .Z(n166) );
  XOR2_X1 U529 ( .A(n168), .B(n169), .Z(n167) );
  XOR2_X1 U530 ( .A(p_0_out_0__6_), .B(p_0_out_0__5_), .Z(n182) );
  XOR2_X1 U531 ( .A(n149), .B(n150), .Z(c[1]) );
  XOR2_X1 U532 ( .A(p_0_out_1__4_), .B(n165), .Z(n149) );
  XOR2_X1 U533 ( .A(n151), .B(n152), .Z(n150) );
  XOR2_X1 U534 ( .A(p_0_out_1__6_), .B(p_0_out_1__5_), .Z(n165) );
  XOR2_X1 U535 ( .A(n132), .B(n133), .Z(c[2]) );
  XOR2_X1 U536 ( .A(p_0_out_2__4_), .B(n148), .Z(n132) );
  XOR2_X1 U537 ( .A(n134), .B(n135), .Z(n133) );
  XOR2_X1 U538 ( .A(p_0_out_2__6_), .B(p_0_out_2__5_), .Z(n148) );
  XOR2_X1 U539 ( .A(n115), .B(n116), .Z(c[3]) );
  XOR2_X1 U540 ( .A(p_0_out_3__4_), .B(n131), .Z(n115) );
  XOR2_X1 U541 ( .A(n117), .B(n118), .Z(n116) );
  XOR2_X1 U542 ( .A(p_0_out_3__6_), .B(p_0_out_3__5_), .Z(n131) );
  XOR2_X1 U543 ( .A(n98), .B(n99), .Z(c[4]) );
  XOR2_X1 U544 ( .A(p_0_out_4__5_), .B(n114), .Z(n98) );
  XOR2_X1 U545 ( .A(n100), .B(n101), .Z(n99) );
  XOR2_X1 U546 ( .A(z[4]), .B(p_0_out_4__6_), .Z(n114) );
  XOR2_X1 U547 ( .A(n81), .B(n82), .Z(c[5]) );
  XOR2_X1 U548 ( .A(p_0_out_5__4_), .B(n97), .Z(n81) );
  XOR2_X1 U549 ( .A(n83), .B(n84), .Z(n82) );
  XOR2_X1 U550 ( .A(z[5]), .B(p_0_out_5__6_), .Z(n97) );
  XOR2_X1 U551 ( .A(n64), .B(n65), .Z(c[6]) );
  XOR2_X1 U552 ( .A(p_0_out_6__4_), .B(n80), .Z(n64) );
  XOR2_X1 U553 ( .A(n66), .B(n67), .Z(n65) );
  XOR2_X1 U554 ( .A(z[6]), .B(p_0_out_6__5_), .Z(n80) );
  AND2_X1 U555 ( .A1(b[1]), .A2(a[1]), .ZN(mul[1]) );
  AND2_X1 U556 ( .A1(b[2]), .A2(a[2]), .ZN(mul[2]) );
  AND2_X1 U557 ( .A1(b[3]), .A2(a[3]), .ZN(mul[3]) );
  AND2_X1 U558 ( .A1(b[4]), .A2(a[4]), .ZN(mul[4]) );
  AND2_X1 U559 ( .A1(b[5]), .A2(a[5]), .ZN(mul[5]) );
  AND2_X1 U560 ( .A1(b[6]), .A2(a[6]), .ZN(mul[6]) );
  AND2_X1 U561 ( .A1(b[0]), .A2(a[0]), .ZN(mul[0]) );
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
  DFF_X1 s_reg_0_6_s_current_state_reg ( .D(s_in_0__6_), .CK(clk), .Q(
        s_out_0__6_), .QN() );
  DFF_X1 p_0_reg_0_6_s_current_state_reg ( .D(p_0_in_0__6_), .CK(clk), .Q(
        p_0_out_0__6_), .QN() );
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
  DFF_X1 s_reg_1_6_s_current_state_reg ( .D(s_in_1__6_), .CK(clk), .Q(
        s_out_1__6_), .QN() );
  DFF_X1 p_0_reg_1_6_s_current_state_reg ( .D(p_0_in_1__6_), .CK(clk), .Q(
        p_0_out_1__6_), .QN() );
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
  DFF_X1 s_reg_2_6_s_current_state_reg ( .D(s_in_2__6_), .CK(clk), .Q(
        s_out_2__6_), .QN() );
  DFF_X1 p_0_reg_2_6_s_current_state_reg ( .D(p_0_in_2__6_), .CK(clk), .Q(
        p_0_out_2__6_), .QN() );
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
  DFF_X1 s_reg_3_6_s_current_state_reg ( .D(s_in_3__6_), .CK(clk), .Q(
        s_out_3__6_), .QN() );
  DFF_X1 p_0_reg_3_6_s_current_state_reg ( .D(p_0_in_3__6_), .CK(clk), .Q(
        p_0_out_3__6_), .QN() );
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
  DFF_X1 s_reg_4_6_s_current_state_reg ( .D(s_in_4__6_), .CK(clk), .Q(
        s_out_4__6_), .QN() );
  DFF_X1 p_0_reg_4_6_s_current_state_reg ( .D(p_0_in_4__6_), .CK(clk), .Q(
        p_0_out_4__6_), .QN() );
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
  DFF_X1 s_reg_5_6_s_current_state_reg ( .D(s_in_5__6_), .CK(clk), .Q(
        s_out_5__6_), .QN() );
  DFF_X1 p_0_reg_5_6_s_current_state_reg ( .D(p_0_in_5__6_), .CK(clk), .Q(
        p_0_out_5__6_), .QN() );
  DFF_X1 mul_pipe_s1_6_s_current_state_reg ( .D(mul[6]), .CK(clk), .Q(z[6]), 
        .QN() );
  DFF_X1 a_i_6_s_current_state_reg ( .D(a[6]), .CK(clk), .Q(a_reg[6]), .QN()
         );
  DFF_X1 s_reg_6_0_s_current_state_reg ( .D(s_in_6__0_), .CK(clk), .Q(
        s_out_6__0_), .QN() );
  DFF_X1 p_0_reg_6_0_s_current_state_reg ( .D(p_0_in_6__0_), .CK(clk), .Q(
        p_0_out_6__0_), .QN() );
  DFF_X1 s_reg_6_1_s_current_state_reg ( .D(s_in_6__1_), .CK(clk), .Q(
        s_out_6__1_), .QN() );
  DFF_X1 p_0_reg_6_1_s_current_state_reg ( .D(p_0_in_6__1_), .CK(clk), .Q(
        p_0_out_6__1_), .QN() );
  DFF_X1 s_reg_6_2_s_current_state_reg ( .D(s_in_6__2_), .CK(clk), .Q(
        s_out_6__2_), .QN() );
  DFF_X1 p_0_reg_6_2_s_current_state_reg ( .D(p_0_in_6__2_), .CK(clk), .Q(
        p_0_out_6__2_), .QN() );
  DFF_X1 s_reg_6_3_s_current_state_reg ( .D(s_in_6__3_), .CK(clk), .Q(
        s_out_6__3_), .QN() );
  DFF_X1 p_0_reg_6_3_s_current_state_reg ( .D(p_0_in_6__3_), .CK(clk), .Q(
        p_0_out_6__3_), .QN() );
  DFF_X1 s_reg_6_4_s_current_state_reg ( .D(s_in_6__4_), .CK(clk), .Q(
        s_out_6__4_), .QN() );
  DFF_X1 p_0_reg_6_4_s_current_state_reg ( .D(p_0_in_6__4_), .CK(clk), .Q(
        p_0_out_6__4_), .QN() );
  DFF_X1 s_reg_6_5_s_current_state_reg ( .D(s_in_6__5_), .CK(clk), .Q(
        s_out_6__5_), .QN() );
  DFF_X1 p_0_reg_6_5_s_current_state_reg ( .D(p_0_in_6__5_), .CK(clk), .Q(
        p_0_out_6__5_), .QN() );
endmodule

