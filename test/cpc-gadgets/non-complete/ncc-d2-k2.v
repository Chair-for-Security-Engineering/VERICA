/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Wed Apr 19 18:29:20 2023
/////////////////////////////////////////////////////////////


module NCC_AND_3SHARE ( clk, a0, a1, a2, b0, b1, b2, r0, r1, r2, r3, r4, r5, 
        r6, c0, c1, c2 );
  input [4:0] a0;
  input [4:0] a1;
  input [4:0] a2;
  input [4:0] b0;
  input [4:0] b1;
  input [4:0] b2;
  output [4:0] c0;
  output [4:0] c1;
  output [4:0] c2;
  input clk, r0, r1, r2, r3, r4, r5, r6;
  wire   n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         BMaj0_0_abc_abd_abe_acd_ace_ade_bcd_bce, BMaj0_0_ace_ade_bcd_bce,
         BMaj0_0_abc_abd_abe_acd, BMaj0_0_bde_cde, BMaj0_0_bcd_bce,
         BMaj0_0_ace_ade, BMaj0_0_abe_acd, BMaj0_0_abc_abd, BMaj0_0_cde,
         BMaj0_0_cd, BMaj0_0_bde, BMaj0_0_bd, BMaj0_0_bce, BMaj0_0_bcd,
         BMaj0_0_bc, BMaj0_0_ade, BMaj0_0_ad, BMaj0_0_ace, BMaj0_0_acd,
         BMaj0_0_ac, BMaj0_0_abe, BMaj0_0_abd, BMaj0_0_abc, BMaj0_0_ab,
         BMaj1_0_abc_abd_abe_acd_ace_ade_bcd_bce, BMaj1_0_ace_ade_bcd_bce,
         BMaj1_0_abc_abd_abe_acd, BMaj1_0_bde_cde, BMaj1_0_bcd_bce,
         BMaj1_0_ace_ade, BMaj1_0_abe_acd, BMaj1_0_abc_abd, BMaj1_0_cde,
         BMaj1_0_cd, BMaj1_0_bde, BMaj1_0_bd, BMaj1_0_bce, BMaj1_0_bcd,
         BMaj1_0_bc, BMaj1_0_ade, BMaj1_0_ad, BMaj1_0_ace, BMaj1_0_acd,
         BMaj1_0_ac, BMaj1_0_abe, BMaj1_0_abd, BMaj1_0_abc, BMaj1_0_ab,
         BMaj2_0_abc_abd_abe_acd_ace_ade_bcd_bce, BMaj2_0_ace_ade_bcd_bce,
         BMaj2_0_abc_abd_abe_acd, BMaj2_0_bde_cde, BMaj2_0_bcd_bce,
         BMaj2_0_ace_ade, BMaj2_0_abe_acd, BMaj2_0_abc_abd, BMaj2_0_cde,
         BMaj2_0_cd, BMaj2_0_bde, BMaj2_0_bd, BMaj2_0_bce, BMaj2_0_bcd,
         BMaj2_0_bc, BMaj2_0_ade, BMaj2_0_ad, BMaj2_0_ace, BMaj2_0_acd,
         BMaj2_0_ac, BMaj2_0_abe, BMaj2_0_abd, BMaj2_0_abc, BMaj2_0_ab,
         CMaj0_0_abc_abd_abe_acd_ace_ade_bcd_bce, CMaj0_0_ace_ade_bcd_bce,
         CMaj0_0_abc_abd_abe_acd, CMaj0_0_bde_cde, CMaj0_0_bcd_bce,
         CMaj0_0_ace_ade, CMaj0_0_abe_acd, CMaj0_0_abc_abd, CMaj0_0_cde,
         CMaj0_0_cd, CMaj0_0_bde, CMaj0_0_bd, CMaj0_0_bce, CMaj0_0_bcd,
         CMaj0_0_bc, CMaj0_0_ade, CMaj0_0_ad, CMaj0_0_ace, CMaj0_0_acd,
         CMaj0_0_ac, CMaj0_0_abe, CMaj0_0_abd, CMaj0_0_abc, CMaj0_0_ab,
         CMaj1_0_abc_abd_abe_acd_ace_ade_bcd_bce, CMaj1_0_ace_ade_bcd_bce,
         CMaj1_0_abc_abd_abe_acd, CMaj1_0_bde_cde, CMaj1_0_bcd_bce,
         CMaj1_0_ace_ade, CMaj1_0_abe_acd, CMaj1_0_abc_abd, CMaj1_0_cde,
         CMaj1_0_cd, CMaj1_0_bde, CMaj1_0_bd, CMaj1_0_bce, CMaj1_0_bcd,
         CMaj1_0_bc, CMaj1_0_ade, CMaj1_0_ad, CMaj1_0_ace, CMaj1_0_acd,
         CMaj1_0_ac, CMaj1_0_abe, CMaj1_0_abd, CMaj1_0_abc, CMaj1_0_ab,
         CMaj2_0_abc_abd_abe_acd_ace_ade_bcd_bce, CMaj2_0_ace_ade_bcd_bce,
         CMaj2_0_abc_abd_abe_acd, CMaj2_0_bde_cde, CMaj2_0_bcd_bce,
         CMaj2_0_ace_ade, CMaj2_0_abe_acd, CMaj2_0_abc_abd, CMaj2_0_cde,
         CMaj2_0_cd, CMaj2_0_bde, CMaj2_0_bd, CMaj2_0_bce, CMaj2_0_bcd,
         CMaj2_0_bc, CMaj2_0_ade, CMaj2_0_ad, CMaj2_0_ace, CMaj2_0_acd,
         CMaj2_0_ac, CMaj2_0_abe, CMaj2_0_abd, CMaj2_0_abc, CMaj2_0_ab,
         BMaj0_1_abc_abd_abe_acd_ace_ade_bcd_bce, BMaj0_1_ace_ade_bcd_bce,
         BMaj0_1_abc_abd_abe_acd, BMaj0_1_bde_cde, BMaj0_1_bcd_bce,
         BMaj0_1_ace_ade, BMaj0_1_abe_acd, BMaj0_1_abc_abd, BMaj0_1_cde,
         BMaj0_1_cd, BMaj0_1_bde, BMaj0_1_bd, BMaj0_1_bce, BMaj0_1_bcd,
         BMaj0_1_bc, BMaj0_1_ade, BMaj0_1_ad, BMaj0_1_ace, BMaj0_1_acd,
         BMaj0_1_ac, BMaj0_1_abe, BMaj0_1_abd, BMaj0_1_abc, BMaj0_1_ab,
         BMaj1_1_abc_abd_abe_acd_ace_ade_bcd_bce, BMaj1_1_ace_ade_bcd_bce,
         BMaj1_1_abc_abd_abe_acd, BMaj1_1_bde_cde, BMaj1_1_bcd_bce,
         BMaj1_1_ace_ade, BMaj1_1_abe_acd, BMaj1_1_abc_abd, BMaj1_1_cde,
         BMaj1_1_cd, BMaj1_1_bde, BMaj1_1_bd, BMaj1_1_bce, BMaj1_1_bcd,
         BMaj1_1_bc, BMaj1_1_ade, BMaj1_1_ad, BMaj1_1_ace, BMaj1_1_acd,
         BMaj1_1_ac, BMaj1_1_abe, BMaj1_1_abd, BMaj1_1_abc, BMaj1_1_ab,
         BMaj2_1_abc_abd_abe_acd_ace_ade_bcd_bce, BMaj2_1_ace_ade_bcd_bce,
         BMaj2_1_abc_abd_abe_acd, BMaj2_1_bde_cde, BMaj2_1_bcd_bce,
         BMaj2_1_ace_ade, BMaj2_1_abe_acd, BMaj2_1_abc_abd, BMaj2_1_cde,
         BMaj2_1_cd, BMaj2_1_bde, BMaj2_1_bd, BMaj2_1_bce, BMaj2_1_bcd,
         BMaj2_1_bc, BMaj2_1_ade, BMaj2_1_ad, BMaj2_1_ace, BMaj2_1_acd,
         BMaj2_1_ac, BMaj2_1_abe, BMaj2_1_abd, BMaj2_1_abc, BMaj2_1_ab,
         CMaj0_1_abc_abd_abe_acd_ace_ade_bcd_bce, CMaj0_1_ace_ade_bcd_bce,
         CMaj0_1_abc_abd_abe_acd, CMaj0_1_bde_cde, CMaj0_1_bcd_bce,
         CMaj0_1_ace_ade, CMaj0_1_abe_acd, CMaj0_1_abc_abd, CMaj0_1_cde,
         CMaj0_1_cd, CMaj0_1_bde, CMaj0_1_bd, CMaj0_1_bce, CMaj0_1_bcd,
         CMaj0_1_bc, CMaj0_1_ade, CMaj0_1_ad, CMaj0_1_ace, CMaj0_1_acd,
         CMaj0_1_ac, CMaj0_1_abe, CMaj0_1_abd, CMaj0_1_abc, CMaj0_1_ab,
         CMaj1_1_abc_abd_abe_acd_ace_ade_bcd_bce, CMaj1_1_ace_ade_bcd_bce,
         CMaj1_1_abc_abd_abe_acd, CMaj1_1_bde_cde, CMaj1_1_bcd_bce,
         CMaj1_1_ace_ade, CMaj1_1_abe_acd, CMaj1_1_abc_abd, CMaj1_1_cde,
         CMaj1_1_cd, CMaj1_1_bde, CMaj1_1_bd, CMaj1_1_bce, CMaj1_1_bcd,
         CMaj1_1_bc, CMaj1_1_ade, CMaj1_1_ad, CMaj1_1_ace, CMaj1_1_acd,
         CMaj1_1_ac, CMaj1_1_abe, CMaj1_1_abd, CMaj1_1_abc, CMaj1_1_ab,
         CMaj2_1_abc_abd_abe_acd_ace_ade_bcd_bce, CMaj2_1_ace_ade_bcd_bce,
         CMaj2_1_abc_abd_abe_acd, CMaj2_1_bde_cde, CMaj2_1_bcd_bce,
         CMaj2_1_ace_ade, CMaj2_1_abe_acd, CMaj2_1_abc_abd, CMaj2_1_cde,
         CMaj2_1_cd, CMaj2_1_bde, CMaj2_1_bd, CMaj2_1_bce, CMaj2_1_bcd,
         CMaj2_1_bc, CMaj2_1_ade, CMaj2_1_ad, CMaj2_1_ace, CMaj2_1_acd,
         CMaj2_1_ac, CMaj2_1_abe, CMaj2_1_abd, CMaj2_1_abc, CMaj2_1_ab,
         BMaj0_2_abc_abd_abe_acd_ace_ade_bcd_bce, BMaj0_2_ace_ade_bcd_bce,
         BMaj0_2_abc_abd_abe_acd, BMaj0_2_bde_cde, BMaj0_2_bcd_bce,
         BMaj0_2_ace_ade, BMaj0_2_abe_acd, BMaj0_2_abc_abd, BMaj0_2_cde,
         BMaj0_2_cd, BMaj0_2_bde, BMaj0_2_bd, BMaj0_2_bce, BMaj0_2_bcd,
         BMaj0_2_bc, BMaj0_2_ade, BMaj0_2_ad, BMaj0_2_ace, BMaj0_2_acd,
         BMaj0_2_ac, BMaj0_2_abe, BMaj0_2_abd, BMaj0_2_abc, BMaj0_2_ab,
         BMaj1_2_abc_abd_abe_acd_ace_ade_bcd_bce, BMaj1_2_ace_ade_bcd_bce,
         BMaj1_2_abc_abd_abe_acd, BMaj1_2_bde_cde, BMaj1_2_bcd_bce,
         BMaj1_2_ace_ade, BMaj1_2_abe_acd, BMaj1_2_abc_abd, BMaj1_2_cde,
         BMaj1_2_cd, BMaj1_2_bde, BMaj1_2_bd, BMaj1_2_bce, BMaj1_2_bcd,
         BMaj1_2_bc, BMaj1_2_ade, BMaj1_2_ad, BMaj1_2_ace, BMaj1_2_acd,
         BMaj1_2_ac, BMaj1_2_abe, BMaj1_2_abd, BMaj1_2_abc, BMaj1_2_ab,
         BMaj2_2_abc_abd_abe_acd_ace_ade_bcd_bce, BMaj2_2_ace_ade_bcd_bce,
         BMaj2_2_abc_abd_abe_acd, BMaj2_2_bde_cde, BMaj2_2_bcd_bce,
         BMaj2_2_ace_ade, BMaj2_2_abe_acd, BMaj2_2_abc_abd, BMaj2_2_cde,
         BMaj2_2_cd, BMaj2_2_bde, BMaj2_2_bd, BMaj2_2_bce, BMaj2_2_bcd,
         BMaj2_2_bc, BMaj2_2_ade, BMaj2_2_ad, BMaj2_2_ace, BMaj2_2_acd,
         BMaj2_2_ac, BMaj2_2_abe, BMaj2_2_abd, BMaj2_2_abc, BMaj2_2_ab,
         CMaj0_2_abc_abd_abe_acd_ace_ade_bcd_bce, CMaj0_2_ace_ade_bcd_bce,
         CMaj0_2_abc_abd_abe_acd, CMaj0_2_bde_cde, CMaj0_2_bcd_bce,
         CMaj0_2_ace_ade, CMaj0_2_abe_acd, CMaj0_2_abc_abd, CMaj0_2_cde,
         CMaj0_2_cd, CMaj0_2_bde, CMaj0_2_bd, CMaj0_2_bce, CMaj0_2_bcd,
         CMaj0_2_bc, CMaj0_2_ade, CMaj0_2_ad, CMaj0_2_ace, CMaj0_2_acd,
         CMaj0_2_ac, CMaj0_2_abe, CMaj0_2_abd, CMaj0_2_abc, CMaj0_2_ab,
         CMaj1_2_abc_abd_abe_acd_ace_ade_bcd_bce, CMaj1_2_ace_ade_bcd_bce,
         CMaj1_2_abc_abd_abe_acd, CMaj1_2_bde_cde, CMaj1_2_bcd_bce,
         CMaj1_2_ace_ade, CMaj1_2_abe_acd, CMaj1_2_abc_abd, CMaj1_2_cde,
         CMaj1_2_cd, CMaj1_2_bde, CMaj1_2_bd, CMaj1_2_bce, CMaj1_2_bcd,
         CMaj1_2_bc, CMaj1_2_ade, CMaj1_2_ad, CMaj1_2_ace, CMaj1_2_acd,
         CMaj1_2_ac, CMaj1_2_abe, CMaj1_2_abd, CMaj1_2_abc, CMaj1_2_ab,
         CMaj2_2_abc_abd_abe_acd_ace_ade_bcd_bce, CMaj2_2_ace_ade_bcd_bce,
         CMaj2_2_abc_abd_abe_acd, CMaj2_2_bde_cde, CMaj2_2_bcd_bce,
         CMaj2_2_ace_ade, CMaj2_2_abe_acd, CMaj2_2_abc_abd, CMaj2_2_cde,
         CMaj2_2_cd, CMaj2_2_bde, CMaj2_2_bd, CMaj2_2_bce, CMaj2_2_bcd,
         CMaj2_2_bc, CMaj2_2_ade, CMaj2_2_ad, CMaj2_2_ace, CMaj2_2_acd,
         CMaj2_2_ac, CMaj2_2_abe, CMaj2_2_abd, CMaj2_2_abc, CMaj2_2_ab,
         BMaj0_3_abc_abd_abe_acd_ace_ade_bcd_bce, BMaj0_3_ace_ade_bcd_bce,
         BMaj0_3_abc_abd_abe_acd, BMaj0_3_bde_cde, BMaj0_3_bcd_bce,
         BMaj0_3_ace_ade, BMaj0_3_abe_acd, BMaj0_3_abc_abd, BMaj0_3_cde,
         BMaj0_3_cd, BMaj0_3_bde, BMaj0_3_bd, BMaj0_3_bce, BMaj0_3_bcd,
         BMaj0_3_bc, BMaj0_3_ade, BMaj0_3_ad, BMaj0_3_ace, BMaj0_3_acd,
         BMaj0_3_ac, BMaj0_3_abe, BMaj0_3_abd, BMaj0_3_abc, BMaj0_3_ab,
         BMaj1_3_abc_abd_abe_acd_ace_ade_bcd_bce, BMaj1_3_ace_ade_bcd_bce,
         BMaj1_3_abc_abd_abe_acd, BMaj1_3_bde_cde, BMaj1_3_bcd_bce,
         BMaj1_3_ace_ade, BMaj1_3_abe_acd, BMaj1_3_abc_abd, BMaj1_3_cde,
         BMaj1_3_cd, BMaj1_3_bde, BMaj1_3_bd, BMaj1_3_bce, BMaj1_3_bcd,
         BMaj1_3_bc, BMaj1_3_ade, BMaj1_3_ad, BMaj1_3_ace, BMaj1_3_acd,
         BMaj1_3_ac, BMaj1_3_abe, BMaj1_3_abd, BMaj1_3_abc, BMaj1_3_ab,
         BMaj2_3_abc_abd_abe_acd_ace_ade_bcd_bce, BMaj2_3_ace_ade_bcd_bce,
         BMaj2_3_abc_abd_abe_acd, BMaj2_3_bde_cde, BMaj2_3_bcd_bce,
         BMaj2_3_ace_ade, BMaj2_3_abe_acd, BMaj2_3_abc_abd, BMaj2_3_cde,
         BMaj2_3_cd, BMaj2_3_bde, BMaj2_3_bd, BMaj2_3_bce, BMaj2_3_bcd,
         BMaj2_3_bc, BMaj2_3_ade, BMaj2_3_ad, BMaj2_3_ace, BMaj2_3_acd,
         BMaj2_3_ac, BMaj2_3_abe, BMaj2_3_abd, BMaj2_3_abc, BMaj2_3_ab,
         CMaj0_3_abc_abd_abe_acd_ace_ade_bcd_bce, CMaj0_3_ace_ade_bcd_bce,
         CMaj0_3_abc_abd_abe_acd, CMaj0_3_bde_cde, CMaj0_3_bcd_bce,
         CMaj0_3_ace_ade, CMaj0_3_abe_acd, CMaj0_3_abc_abd, CMaj0_3_cde,
         CMaj0_3_cd, CMaj0_3_bde, CMaj0_3_bd, CMaj0_3_bce, CMaj0_3_bcd,
         CMaj0_3_bc, CMaj0_3_ade, CMaj0_3_ad, CMaj0_3_ace, CMaj0_3_acd,
         CMaj0_3_ac, CMaj0_3_abe, CMaj0_3_abd, CMaj0_3_abc, CMaj0_3_ab,
         CMaj1_3_abc_abd_abe_acd_ace_ade_bcd_bce, CMaj1_3_ace_ade_bcd_bce,
         CMaj1_3_abc_abd_abe_acd, CMaj1_3_bde_cde, CMaj1_3_bcd_bce,
         CMaj1_3_ace_ade, CMaj1_3_abe_acd, CMaj1_3_abc_abd, CMaj1_3_cde,
         CMaj1_3_cd, CMaj1_3_bde, CMaj1_3_bd, CMaj1_3_bce, CMaj1_3_bcd,
         CMaj1_3_bc, CMaj1_3_ade, CMaj1_3_ad, CMaj1_3_ace, CMaj1_3_acd,
         CMaj1_3_ac, CMaj1_3_abe, CMaj1_3_abd, CMaj1_3_abc, CMaj1_3_ab,
         CMaj2_3_abc_abd_abe_acd_ace_ade_bcd_bce, CMaj2_3_ace_ade_bcd_bce,
         CMaj2_3_abc_abd_abe_acd, CMaj2_3_bde_cde, CMaj2_3_bcd_bce,
         CMaj2_3_ace_ade, CMaj2_3_abe_acd, CMaj2_3_abc_abd, CMaj2_3_cde,
         CMaj2_3_cd, CMaj2_3_bde, CMaj2_3_bd, CMaj2_3_bce, CMaj2_3_bcd,
         CMaj2_3_bc, CMaj2_3_ade, CMaj2_3_ad, CMaj2_3_ace, CMaj2_3_acd,
         CMaj2_3_ac, CMaj2_3_abe, CMaj2_3_abd, CMaj2_3_abc, CMaj2_3_ab,
         BMaj0_4_abc_abd_abe_acd_ace_ade_bcd_bce, BMaj0_4_ace_ade_bcd_bce,
         BMaj0_4_abc_abd_abe_acd, BMaj0_4_bde_cde, BMaj0_4_bcd_bce,
         BMaj0_4_ace_ade, BMaj0_4_abe_acd, BMaj0_4_abc_abd, BMaj0_4_cde,
         BMaj0_4_cd, BMaj0_4_bde, BMaj0_4_bd, BMaj0_4_bce, BMaj0_4_bcd,
         BMaj0_4_bc, BMaj0_4_ade, BMaj0_4_ad, BMaj0_4_ace, BMaj0_4_acd,
         BMaj0_4_ac, BMaj0_4_abe, BMaj0_4_abd, BMaj0_4_abc, BMaj0_4_ab,
         BMaj1_4_abc_abd_abe_acd_ace_ade_bcd_bce, BMaj1_4_ace_ade_bcd_bce,
         BMaj1_4_abc_abd_abe_acd, BMaj1_4_bde_cde, BMaj1_4_bcd_bce,
         BMaj1_4_ace_ade, BMaj1_4_abe_acd, BMaj1_4_abc_abd, BMaj1_4_cde,
         BMaj1_4_cd, BMaj1_4_bde, BMaj1_4_bd, BMaj1_4_bce, BMaj1_4_bcd,
         BMaj1_4_bc, BMaj1_4_ade, BMaj1_4_ad, BMaj1_4_ace, BMaj1_4_acd,
         BMaj1_4_ac, BMaj1_4_abe, BMaj1_4_abd, BMaj1_4_abc, BMaj1_4_ab,
         BMaj2_4_abc_abd_abe_acd_ace_ade_bcd_bce, BMaj2_4_ace_ade_bcd_bce,
         BMaj2_4_abc_abd_abe_acd, BMaj2_4_bde_cde, BMaj2_4_bcd_bce,
         BMaj2_4_ace_ade, BMaj2_4_abe_acd, BMaj2_4_abc_abd, BMaj2_4_cde,
         BMaj2_4_cd, BMaj2_4_bde, BMaj2_4_bd, BMaj2_4_bce, BMaj2_4_bcd,
         BMaj2_4_bc, BMaj2_4_ade, BMaj2_4_ad, BMaj2_4_ace, BMaj2_4_acd,
         BMaj2_4_ac, BMaj2_4_abe, BMaj2_4_abd, BMaj2_4_abc, BMaj2_4_ab,
         CMaj0_4_abc_abd_abe_acd_ace_ade_bcd_bce, CMaj0_4_ace_ade_bcd_bce,
         CMaj0_4_abc_abd_abe_acd, CMaj0_4_bde_cde, CMaj0_4_bcd_bce,
         CMaj0_4_ace_ade, CMaj0_4_abe_acd, CMaj0_4_abc_abd, CMaj0_4_cde,
         CMaj0_4_cd, CMaj0_4_bde, CMaj0_4_bd, CMaj0_4_bce, CMaj0_4_bcd,
         CMaj0_4_bc, CMaj0_4_ade, CMaj0_4_ad, CMaj0_4_ace, CMaj0_4_acd,
         CMaj0_4_ac, CMaj0_4_abe, CMaj0_4_abd, CMaj0_4_abc, CMaj0_4_ab,
         CMaj1_4_abc_abd_abe_acd_ace_ade_bcd_bce, CMaj1_4_ace_ade_bcd_bce,
         CMaj1_4_abc_abd_abe_acd, CMaj1_4_bde_cde, CMaj1_4_bcd_bce,
         CMaj1_4_ace_ade, CMaj1_4_abe_acd, CMaj1_4_abc_abd, CMaj1_4_cde,
         CMaj1_4_cd, CMaj1_4_bde, CMaj1_4_bd, CMaj1_4_bce, CMaj1_4_bcd,
         CMaj1_4_bc, CMaj1_4_ade, CMaj1_4_ad, CMaj1_4_ace, CMaj1_4_acd,
         CMaj1_4_ac, CMaj1_4_abe, CMaj1_4_abd, CMaj1_4_abc, CMaj1_4_ab,
         CMaj2_4_abc_abd_abe_acd_ace_ade_bcd_bce, CMaj2_4_ace_ade_bcd_bce,
         CMaj2_4_abc_abd_abe_acd, CMaj2_4_bde_cde, CMaj2_4_bcd_bce,
         CMaj2_4_ace_ade, CMaj2_4_abe_acd, CMaj2_4_abc_abd, CMaj2_4_cde,
         CMaj2_4_cd, CMaj2_4_bde, CMaj2_4_bd, CMaj2_4_bce, CMaj2_4_bcd,
         CMaj2_4_bc, CMaj2_4_ade, CMaj2_4_ad, CMaj2_4_ace, CMaj2_4_acd,
         CMaj2_4_ac, CMaj2_4_abe, CMaj2_4_abd, CMaj2_4_abc, CMaj2_4_ab;
  wire   [4:0] r01;
  wire   [4:0] r46;
  wire   [4:0] r01_r;
  wire   [2:0] b0_r;
  wire   [2:0] b1_r;
  wire   [2:0] b2_r;
  wire   [4:0] mb0;
  wire   [4:0] mb1;
  wire   [4:0] mb2;
  wire   [4:0] mb0_r;
  wire   [4:0] mb1_r;
  wire   [4:0] mb2_r;
  wire   [4:0] a1b1;
  wire   [4:0] a1b2;
  wire   [4:0] a2b1;
  wire   [4:0] a2b2;
  wire   [4:0] a0b2;
  wire   [4:0] a2b0;
  wire   [4:0] a0b0;
  wire   [4:0] a0b1;
  wire   [4:0] a1b0;
  wire   [4:0] a1b1_r;
  wire   [4:0] a1b2_r;
  wire   [4:0] a2b1_r;
  wire   [4:0] a2b2_r;
  wire   [4:0] a0b2_r;
  wire   [4:0] a2b0_r;
  wire   [4:0] a0b0_r;
  wire   [4:0] a0b1_r;
  wire   [4:0] a1b0_r;
  wire   [2:0] c0_r;
  wire   [2:0] c1_r;
  wire   [2:0] c2_r;
  wire   [4:0] mc0;
  wire   [4:0] mc1;
  wire   [4:0] mc2;

  XNOR2_X2 U136 ( .A(n72), .B(a0b1_r[2]), .ZN(c2_r[2]) );
  XNOR2_X2 U137 ( .A(n77), .B(a0b2_r[2]), .ZN(c1_r[2]) );
  XNOR2_X2 U138 ( .A(n67), .B(a1b2_r[2]), .ZN(c0_r[2]) );
  XOR2_X2 U139 ( .A(r01_r[2]), .B(b2[2]), .Z(b2_r[2]) );
  XOR2_X2 U140 ( .A(r1), .B(b1[2]), .Z(b1_r[2]) );
  XOR2_X2 U141 ( .A(r0), .B(b0[2]), .Z(b0_r[2]) );
  XOR2_X1 U142 ( .A(r1), .B(b1[0]), .Z(b1_r[0]) );
  XOR2_X1 U143 ( .A(r1), .B(b1[1]), .Z(b1_r[1]) );
  XNOR2_X1 U144 ( .A(r1), .B(b1[3]), .ZN(n61) );
  INV_X1 U145 ( .A(n61), .ZN(n141) );
  XNOR2_X1 U146 ( .A(r1), .B(b1[4]), .ZN(n62) );
  INV_X1 U147 ( .A(n62), .ZN(n142) );
  XOR2_X1 U148 ( .A(r0), .B(b0[0]), .Z(b0_r[0]) );
  XOR2_X1 U149 ( .A(r0), .B(b0[1]), .Z(b0_r[1]) );
  XNOR2_X1 U150 ( .A(r0), .B(b0[3]), .ZN(n63) );
  INV_X1 U151 ( .A(n63), .ZN(n143) );
  XNOR2_X1 U152 ( .A(r0), .B(b0[4]), .ZN(n64) );
  INV_X1 U153 ( .A(n64), .ZN(n144) );
  XOR2_X1 U154 ( .A(r01_r[0]), .B(b2[0]), .Z(b2_r[0]) );
  XOR2_X1 U155 ( .A(r01_r[1]), .B(b2[1]), .Z(b2_r[1]) );
  XNOR2_X1 U156 ( .A(r01_r[3]), .B(b2[3]), .ZN(n65) );
  INV_X1 U157 ( .A(n65), .ZN(n139) );
  XNOR2_X1 U158 ( .A(r01_r[4]), .B(b2[4]), .ZN(n66) );
  INV_X1 U159 ( .A(n66), .ZN(n140) );
  XNOR2_X1 U160 ( .A(a1b1_r[2]), .B(a2b1_r[2]), .ZN(n67) );
  XNOR2_X1 U161 ( .A(a1b1_r[3]), .B(a2b1_r[3]), .ZN(n68) );
  XOR2_X1 U162 ( .A(n68), .B(a1b2_r[3]), .Z(n69) );
  INV_X1 U163 ( .A(n69), .ZN(n137) );
  XNOR2_X1 U164 ( .A(a1b1_r[4]), .B(a2b1_r[4]), .ZN(n70) );
  XOR2_X1 U165 ( .A(n70), .B(a1b2_r[4]), .Z(n71) );
  INV_X1 U166 ( .A(n71), .ZN(n138) );
  XNOR2_X1 U167 ( .A(a0b0_r[2]), .B(a1b0_r[2]), .ZN(n72) );
  XNOR2_X1 U168 ( .A(a0b0_r[3]), .B(a1b0_r[3]), .ZN(n73) );
  XOR2_X1 U169 ( .A(n73), .B(a0b1_r[3]), .Z(n74) );
  INV_X1 U170 ( .A(n74), .ZN(n133) );
  XNOR2_X1 U171 ( .A(a0b0_r[4]), .B(a1b0_r[4]), .ZN(n75) );
  XOR2_X1 U172 ( .A(n75), .B(a0b1_r[4]), .Z(n76) );
  INV_X1 U173 ( .A(n76), .ZN(n134) );
  XNOR2_X1 U174 ( .A(a2b2_r[2]), .B(a2b0_r[2]), .ZN(n77) );
  XNOR2_X1 U175 ( .A(a2b2_r[3]), .B(a2b0_r[3]), .ZN(n78) );
  XOR2_X1 U176 ( .A(n78), .B(a0b2_r[3]), .Z(n79) );
  INV_X1 U177 ( .A(n79), .ZN(n135) );
  XNOR2_X1 U178 ( .A(a2b2_r[4]), .B(a2b0_r[4]), .ZN(n80) );
  XOR2_X1 U179 ( .A(n80), .B(a0b2_r[4]), .Z(n81) );
  INV_X1 U180 ( .A(n81), .ZN(n136) );
  NAND2_X1 U181 ( .A1(mb1_r[0]), .A2(a1[0]), .ZN(n82) );
  XNOR2_X1 U182 ( .A(n82), .B(r2), .ZN(a1b1[0]) );
  NAND2_X1 U183 ( .A1(mb2_r[0]), .A2(a1[0]), .ZN(n83) );
  XNOR2_X1 U184 ( .A(n83), .B(r3), .ZN(a1b2[0]) );
  NAND2_X1 U185 ( .A1(a2[0]), .A2(mb1_r[0]), .ZN(n84) );
  XNOR2_X1 U186 ( .A(n84), .B(r4), .ZN(a2b1[0]) );
  NAND2_X1 U187 ( .A1(a2[0]), .A2(mb2_r[0]), .ZN(n85) );
  XNOR2_X1 U188 ( .A(n85), .B(r2), .ZN(a2b2[0]) );
  NAND2_X1 U189 ( .A1(a0[0]), .A2(mb2_r[0]), .ZN(n86) );
  XNOR2_X1 U190 ( .A(n86), .B(r5), .ZN(a0b2[0]) );
  NAND2_X1 U191 ( .A1(mb0_r[0]), .A2(a2[0]), .ZN(n87) );
  XNOR2_X1 U192 ( .A(n87), .B(r6), .ZN(a2b0[0]) );
  NAND2_X1 U193 ( .A1(mb0_r[0]), .A2(a0[0]), .ZN(n88) );
  XNOR2_X1 U194 ( .A(n88), .B(r3), .ZN(a0b0[0]) );
  NAND2_X1 U195 ( .A1(a0[0]), .A2(mb1_r[0]), .ZN(n89) );
  XNOR2_X1 U196 ( .A(n89), .B(r5), .ZN(a0b1[0]) );
  NAND2_X1 U197 ( .A1(mb0_r[0]), .A2(a1[0]), .ZN(n90) );
  XNOR2_X1 U198 ( .A(n90), .B(r46[0]), .ZN(a1b0[0]) );
  XNOR2_X1 U199 ( .A(a1b1_r[0]), .B(a2b1_r[0]), .ZN(n91) );
  XNOR2_X1 U200 ( .A(n91), .B(a1b2_r[0]), .ZN(c0_r[0]) );
  XNOR2_X1 U201 ( .A(a2b2_r[0]), .B(a2b0_r[0]), .ZN(n92) );
  XNOR2_X1 U202 ( .A(n92), .B(a0b2_r[0]), .ZN(c1_r[0]) );
  XNOR2_X1 U203 ( .A(a0b0_r[0]), .B(a1b0_r[0]), .ZN(n93) );
  XNOR2_X1 U204 ( .A(n93), .B(a0b1_r[0]), .ZN(c2_r[0]) );
  NAND2_X1 U205 ( .A1(mb1_r[1]), .A2(a1[1]), .ZN(n94) );
  XNOR2_X1 U206 ( .A(n94), .B(r2), .ZN(a1b1[1]) );
  NAND2_X1 U207 ( .A1(mb2_r[1]), .A2(a1[1]), .ZN(n95) );
  XNOR2_X1 U208 ( .A(n95), .B(r3), .ZN(a1b2[1]) );
  NAND2_X1 U209 ( .A1(a2[1]), .A2(mb1_r[1]), .ZN(n96) );
  XNOR2_X1 U210 ( .A(n96), .B(r4), .ZN(a2b1[1]) );
  NAND2_X1 U211 ( .A1(a2[1]), .A2(mb2_r[1]), .ZN(n97) );
  XNOR2_X1 U212 ( .A(n97), .B(r2), .ZN(a2b2[1]) );
  NAND2_X1 U213 ( .A1(a0[1]), .A2(mb2_r[1]), .ZN(n98) );
  XNOR2_X1 U214 ( .A(n98), .B(r5), .ZN(a0b2[1]) );
  NAND2_X1 U215 ( .A1(mb0_r[1]), .A2(a2[1]), .ZN(n99) );
  XNOR2_X1 U216 ( .A(n99), .B(r6), .ZN(a2b0[1]) );
  NAND2_X1 U217 ( .A1(mb0_r[1]), .A2(a0[1]), .ZN(n100) );
  XNOR2_X1 U218 ( .A(n100), .B(r3), .ZN(a0b0[1]) );
  NAND2_X1 U219 ( .A1(a0[1]), .A2(mb1_r[1]), .ZN(n101) );
  XNOR2_X1 U220 ( .A(n101), .B(r5), .ZN(a0b1[1]) );
  NAND2_X1 U221 ( .A1(mb0_r[1]), .A2(a1[1]), .ZN(n102) );
  XNOR2_X1 U222 ( .A(n102), .B(r46[1]), .ZN(a1b0[1]) );
  XNOR2_X1 U223 ( .A(a1b1_r[1]), .B(a2b1_r[1]), .ZN(n103) );
  XNOR2_X1 U224 ( .A(n103), .B(a1b2_r[1]), .ZN(c0_r[1]) );
  XNOR2_X1 U225 ( .A(a2b2_r[1]), .B(a2b0_r[1]), .ZN(n104) );
  XNOR2_X1 U226 ( .A(n104), .B(a0b2_r[1]), .ZN(c1_r[1]) );
  XNOR2_X1 U227 ( .A(a0b0_r[1]), .B(a1b0_r[1]), .ZN(n105) );
  XNOR2_X1 U228 ( .A(n105), .B(a0b1_r[1]), .ZN(c2_r[1]) );
  NAND2_X1 U229 ( .A1(mb1_r[2]), .A2(a1[2]), .ZN(n106) );
  XNOR2_X1 U230 ( .A(n106), .B(r2), .ZN(a1b1[2]) );
  NAND2_X1 U231 ( .A1(mb2_r[2]), .A2(a1[2]), .ZN(n107) );
  XNOR2_X1 U232 ( .A(n107), .B(r3), .ZN(a1b2[2]) );
  NAND2_X1 U233 ( .A1(a2[2]), .A2(mb1_r[2]), .ZN(n108) );
  XNOR2_X1 U234 ( .A(n108), .B(r4), .ZN(a2b1[2]) );
  NAND2_X1 U235 ( .A1(a2[2]), .A2(mb2_r[2]), .ZN(n109) );
  XNOR2_X1 U236 ( .A(n109), .B(r2), .ZN(a2b2[2]) );
  NAND2_X1 U237 ( .A1(a0[2]), .A2(mb2_r[2]), .ZN(n110) );
  XNOR2_X1 U238 ( .A(n110), .B(r5), .ZN(a0b2[2]) );
  NAND2_X1 U239 ( .A1(mb0_r[2]), .A2(a2[2]), .ZN(n111) );
  XNOR2_X1 U240 ( .A(n111), .B(r6), .ZN(a2b0[2]) );
  NAND2_X1 U241 ( .A1(mb0_r[2]), .A2(a0[2]), .ZN(n112) );
  XNOR2_X1 U242 ( .A(n112), .B(r3), .ZN(a0b0[2]) );
  NAND2_X1 U243 ( .A1(a0[2]), .A2(mb1_r[2]), .ZN(n113) );
  XNOR2_X1 U244 ( .A(n113), .B(r5), .ZN(a0b1[2]) );
  NAND2_X1 U245 ( .A1(mb0_r[2]), .A2(a1[2]), .ZN(n114) );
  XNOR2_X1 U246 ( .A(n114), .B(r46[2]), .ZN(a1b0[2]) );
  NAND2_X1 U247 ( .A1(mb1_r[3]), .A2(a1[3]), .ZN(n115) );
  XNOR2_X1 U248 ( .A(n115), .B(r2), .ZN(a1b1[3]) );
  NAND2_X1 U249 ( .A1(mb2_r[3]), .A2(a1[3]), .ZN(n116) );
  XNOR2_X1 U250 ( .A(n116), .B(r3), .ZN(a1b2[3]) );
  NAND2_X1 U251 ( .A1(a2[3]), .A2(mb1_r[3]), .ZN(n117) );
  XNOR2_X1 U252 ( .A(n117), .B(r4), .ZN(a2b1[3]) );
  NAND2_X1 U253 ( .A1(a2[3]), .A2(mb2_r[3]), .ZN(n118) );
  XNOR2_X1 U254 ( .A(n118), .B(r2), .ZN(a2b2[3]) );
  NAND2_X1 U255 ( .A1(a0[3]), .A2(mb2_r[3]), .ZN(n119) );
  XNOR2_X1 U256 ( .A(n119), .B(r5), .ZN(a0b2[3]) );
  NAND2_X1 U257 ( .A1(mb0_r[3]), .A2(a2[3]), .ZN(n120) );
  XNOR2_X1 U258 ( .A(n120), .B(r6), .ZN(a2b0[3]) );
  NAND2_X1 U259 ( .A1(mb0_r[3]), .A2(a0[3]), .ZN(n121) );
  XNOR2_X1 U260 ( .A(n121), .B(r3), .ZN(a0b0[3]) );
  NAND2_X1 U261 ( .A1(a0[3]), .A2(mb1_r[3]), .ZN(n122) );
  XNOR2_X1 U262 ( .A(n122), .B(r5), .ZN(a0b1[3]) );
  NAND2_X1 U263 ( .A1(mb0_r[3]), .A2(a1[3]), .ZN(n123) );
  XNOR2_X1 U264 ( .A(n123), .B(r46[3]), .ZN(a1b0[3]) );
  NAND2_X1 U265 ( .A1(mb1_r[4]), .A2(a1[4]), .ZN(n124) );
  XNOR2_X1 U266 ( .A(n124), .B(r2), .ZN(a1b1[4]) );
  NAND2_X1 U267 ( .A1(mb2_r[4]), .A2(a1[4]), .ZN(n125) );
  XNOR2_X1 U268 ( .A(n125), .B(r3), .ZN(a1b2[4]) );
  NAND2_X1 U269 ( .A1(a2[4]), .A2(mb1_r[4]), .ZN(n126) );
  XNOR2_X1 U270 ( .A(n126), .B(r4), .ZN(a2b1[4]) );
  NAND2_X1 U271 ( .A1(a2[4]), .A2(mb2_r[4]), .ZN(n127) );
  XNOR2_X1 U272 ( .A(n127), .B(r2), .ZN(a2b2[4]) );
  NAND2_X1 U273 ( .A1(a0[4]), .A2(mb2_r[4]), .ZN(n128) );
  XNOR2_X1 U274 ( .A(n128), .B(r5), .ZN(a0b2[4]) );
  NAND2_X1 U275 ( .A1(mb0_r[4]), .A2(a2[4]), .ZN(n129) );
  XNOR2_X1 U276 ( .A(n129), .B(r6), .ZN(a2b0[4]) );
  NAND2_X1 U277 ( .A1(mb0_r[4]), .A2(a0[4]), .ZN(n130) );
  XNOR2_X1 U278 ( .A(n130), .B(r3), .ZN(a0b0[4]) );
  NAND2_X1 U279 ( .A1(a0[4]), .A2(mb1_r[4]), .ZN(n131) );
  XNOR2_X1 U280 ( .A(n131), .B(r5), .ZN(a0b1[4]) );
  NAND2_X1 U281 ( .A1(mb0_r[4]), .A2(a1[4]), .ZN(n132) );
  XNOR2_X1 U282 ( .A(n132), .B(r46[4]), .ZN(a1b0[4]) );
  XOR2_X1 RXOR01_0_U1 ( .A(r1), .B(r0), .Z(r01[0]) );
  XOR2_X1 RXOR46_0_U1 ( .A(r6), .B(r4), .Z(r46[0]) );
  DFF_X1 RFF01_0_Q_reg ( .D(r01[0]), .CK(clk), .Q(r01_r[0]) );
  AND2_X1 BMaj0_0_A1_U1 ( .A1(b0_r[1]), .A2(b0_r[0]), .ZN(BMaj0_0_ab) );
  AND2_X1 BMaj0_0_A2_U1 ( .A1(b0_r[2]), .A2(BMaj0_0_ab), .ZN(BMaj0_0_abc) );
  AND2_X1 BMaj0_0_A3_U1 ( .A1(n143), .A2(BMaj0_0_ab), .ZN(BMaj0_0_abd) );
  AND2_X1 BMaj0_0_A4_U1 ( .A1(n144), .A2(BMaj0_0_ab), .ZN(BMaj0_0_abe) );
  AND2_X1 BMaj0_0_A5_U1 ( .A1(b0_r[2]), .A2(b0_r[0]), .ZN(BMaj0_0_ac) );
  AND2_X1 BMaj0_0_A6_U1 ( .A1(n143), .A2(BMaj0_0_ac), .ZN(BMaj0_0_acd) );
  AND2_X1 BMaj0_0_A7_U1 ( .A1(n144), .A2(BMaj0_0_ac), .ZN(BMaj0_0_ace) );
  AND2_X1 BMaj0_0_A8_U1 ( .A1(n143), .A2(b0_r[0]), .ZN(BMaj0_0_ad) );
  AND2_X1 BMaj0_0_A9_U1 ( .A1(n144), .A2(BMaj0_0_ad), .ZN(BMaj0_0_ade) );
  AND2_X1 BMaj0_0_A10_U1 ( .A1(b0_r[2]), .A2(b0_r[1]), .ZN(BMaj0_0_bc) );
  AND2_X1 BMaj0_0_A11_U1 ( .A1(n143), .A2(BMaj0_0_bc), .ZN(BMaj0_0_bcd) );
  AND2_X1 BMaj0_0_A12_U1 ( .A1(n144), .A2(BMaj0_0_bc), .ZN(BMaj0_0_bce) );
  AND2_X1 BMaj0_0_A13_U1 ( .A1(n143), .A2(b0_r[1]), .ZN(BMaj0_0_bd) );
  AND2_X1 BMaj0_0_A14_U1 ( .A1(n144), .A2(BMaj0_0_bd), .ZN(BMaj0_0_bde) );
  AND2_X1 BMaj0_0_A15_U1 ( .A1(n143), .A2(b0_r[2]), .ZN(BMaj0_0_cd) );
  AND2_X1 BMaj0_0_A16_U1 ( .A1(n144), .A2(BMaj0_0_cd), .ZN(BMaj0_0_cde) );
  XOR2_X1 BMaj0_0_X1_U1 ( .A(BMaj0_0_abd), .B(BMaj0_0_abc), .Z(BMaj0_0_abc_abd) );
  XOR2_X1 BMaj0_0_X2_U1 ( .A(BMaj0_0_acd), .B(BMaj0_0_abe), .Z(BMaj0_0_abe_acd) );
  XOR2_X1 BMaj0_0_X3_U1 ( .A(BMaj0_0_ade), .B(BMaj0_0_ace), .Z(BMaj0_0_ace_ade) );
  XOR2_X1 BMaj0_0_X4_U1 ( .A(BMaj0_0_bce), .B(BMaj0_0_bcd), .Z(BMaj0_0_bcd_bce) );
  XOR2_X1 BMaj0_0_X5_U1 ( .A(BMaj0_0_cde), .B(BMaj0_0_bde), .Z(BMaj0_0_bde_cde) );
  XOR2_X1 BMaj0_0_X6_U1 ( .A(BMaj0_0_abe_acd), .B(BMaj0_0_abc_abd), .Z(
        BMaj0_0_abc_abd_abe_acd) );
  XOR2_X1 BMaj0_0_X7_U1 ( .A(BMaj0_0_bcd_bce), .B(BMaj0_0_ace_ade), .Z(
        BMaj0_0_ace_ade_bcd_bce) );
  XOR2_X1 BMaj0_0_X8_U1 ( .A(BMaj0_0_ace_ade_bcd_bce), .B(
        BMaj0_0_abc_abd_abe_acd), .Z(BMaj0_0_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 BMaj0_0_X9_U1 ( .A(BMaj0_0_bde_cde), .B(
        BMaj0_0_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mb0[0]) );
  AND2_X1 BMaj1_0_A1_U1 ( .A1(b1_r[1]), .A2(b1_r[0]), .ZN(BMaj1_0_ab) );
  AND2_X1 BMaj1_0_A2_U1 ( .A1(b1_r[2]), .A2(BMaj1_0_ab), .ZN(BMaj1_0_abc) );
  AND2_X1 BMaj1_0_A3_U1 ( .A1(n141), .A2(BMaj1_0_ab), .ZN(BMaj1_0_abd) );
  AND2_X1 BMaj1_0_A4_U1 ( .A1(n142), .A2(BMaj1_0_ab), .ZN(BMaj1_0_abe) );
  AND2_X1 BMaj1_0_A5_U1 ( .A1(b1_r[2]), .A2(b1_r[0]), .ZN(BMaj1_0_ac) );
  AND2_X1 BMaj1_0_A6_U1 ( .A1(n141), .A2(BMaj1_0_ac), .ZN(BMaj1_0_acd) );
  AND2_X1 BMaj1_0_A7_U1 ( .A1(n142), .A2(BMaj1_0_ac), .ZN(BMaj1_0_ace) );
  AND2_X1 BMaj1_0_A8_U1 ( .A1(n141), .A2(b1_r[0]), .ZN(BMaj1_0_ad) );
  AND2_X1 BMaj1_0_A9_U1 ( .A1(n142), .A2(BMaj1_0_ad), .ZN(BMaj1_0_ade) );
  AND2_X1 BMaj1_0_A10_U1 ( .A1(b1_r[2]), .A2(b1_r[1]), .ZN(BMaj1_0_bc) );
  AND2_X1 BMaj1_0_A11_U1 ( .A1(n141), .A2(BMaj1_0_bc), .ZN(BMaj1_0_bcd) );
  AND2_X1 BMaj1_0_A12_U1 ( .A1(n142), .A2(BMaj1_0_bc), .ZN(BMaj1_0_bce) );
  AND2_X1 BMaj1_0_A13_U1 ( .A1(n141), .A2(b1_r[1]), .ZN(BMaj1_0_bd) );
  AND2_X1 BMaj1_0_A14_U1 ( .A1(n142), .A2(BMaj1_0_bd), .ZN(BMaj1_0_bde) );
  AND2_X1 BMaj1_0_A15_U1 ( .A1(n141), .A2(b1_r[2]), .ZN(BMaj1_0_cd) );
  AND2_X1 BMaj1_0_A16_U1 ( .A1(n142), .A2(BMaj1_0_cd), .ZN(BMaj1_0_cde) );
  XOR2_X1 BMaj1_0_X1_U1 ( .A(BMaj1_0_abd), .B(BMaj1_0_abc), .Z(BMaj1_0_abc_abd) );
  XOR2_X1 BMaj1_0_X2_U1 ( .A(BMaj1_0_acd), .B(BMaj1_0_abe), .Z(BMaj1_0_abe_acd) );
  XOR2_X1 BMaj1_0_X3_U1 ( .A(BMaj1_0_ade), .B(BMaj1_0_ace), .Z(BMaj1_0_ace_ade) );
  XOR2_X1 BMaj1_0_X4_U1 ( .A(BMaj1_0_bce), .B(BMaj1_0_bcd), .Z(BMaj1_0_bcd_bce) );
  XOR2_X1 BMaj1_0_X5_U1 ( .A(BMaj1_0_cde), .B(BMaj1_0_bde), .Z(BMaj1_0_bde_cde) );
  XOR2_X1 BMaj1_0_X6_U1 ( .A(BMaj1_0_abe_acd), .B(BMaj1_0_abc_abd), .Z(
        BMaj1_0_abc_abd_abe_acd) );
  XOR2_X1 BMaj1_0_X7_U1 ( .A(BMaj1_0_bcd_bce), .B(BMaj1_0_ace_ade), .Z(
        BMaj1_0_ace_ade_bcd_bce) );
  XOR2_X1 BMaj1_0_X8_U1 ( .A(BMaj1_0_ace_ade_bcd_bce), .B(
        BMaj1_0_abc_abd_abe_acd), .Z(BMaj1_0_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 BMaj1_0_X9_U1 ( .A(BMaj1_0_bde_cde), .B(
        BMaj1_0_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mb1[0]) );
  AND2_X1 BMaj2_0_A1_U1 ( .A1(b2_r[1]), .A2(b2_r[0]), .ZN(BMaj2_0_ab) );
  AND2_X1 BMaj2_0_A2_U1 ( .A1(b2_r[2]), .A2(BMaj2_0_ab), .ZN(BMaj2_0_abc) );
  AND2_X1 BMaj2_0_A3_U1 ( .A1(n139), .A2(BMaj2_0_ab), .ZN(BMaj2_0_abd) );
  AND2_X1 BMaj2_0_A4_U1 ( .A1(n140), .A2(BMaj2_0_ab), .ZN(BMaj2_0_abe) );
  AND2_X1 BMaj2_0_A5_U1 ( .A1(b2_r[2]), .A2(b2_r[0]), .ZN(BMaj2_0_ac) );
  AND2_X1 BMaj2_0_A6_U1 ( .A1(n139), .A2(BMaj2_0_ac), .ZN(BMaj2_0_acd) );
  AND2_X1 BMaj2_0_A7_U1 ( .A1(n140), .A2(BMaj2_0_ac), .ZN(BMaj2_0_ace) );
  AND2_X1 BMaj2_0_A8_U1 ( .A1(n139), .A2(b2_r[0]), .ZN(BMaj2_0_ad) );
  AND2_X1 BMaj2_0_A9_U1 ( .A1(n140), .A2(BMaj2_0_ad), .ZN(BMaj2_0_ade) );
  AND2_X1 BMaj2_0_A10_U1 ( .A1(b2_r[2]), .A2(b2_r[1]), .ZN(BMaj2_0_bc) );
  AND2_X1 BMaj2_0_A11_U1 ( .A1(n139), .A2(BMaj2_0_bc), .ZN(BMaj2_0_bcd) );
  AND2_X1 BMaj2_0_A12_U1 ( .A1(n140), .A2(BMaj2_0_bc), .ZN(BMaj2_0_bce) );
  AND2_X1 BMaj2_0_A13_U1 ( .A1(n139), .A2(b2_r[1]), .ZN(BMaj2_0_bd) );
  AND2_X1 BMaj2_0_A14_U1 ( .A1(n140), .A2(BMaj2_0_bd), .ZN(BMaj2_0_bde) );
  AND2_X1 BMaj2_0_A15_U1 ( .A1(n139), .A2(b2_r[2]), .ZN(BMaj2_0_cd) );
  AND2_X1 BMaj2_0_A16_U1 ( .A1(n140), .A2(BMaj2_0_cd), .ZN(BMaj2_0_cde) );
  XOR2_X1 BMaj2_0_X1_U1 ( .A(BMaj2_0_abd), .B(BMaj2_0_abc), .Z(BMaj2_0_abc_abd) );
  XOR2_X1 BMaj2_0_X2_U1 ( .A(BMaj2_0_acd), .B(BMaj2_0_abe), .Z(BMaj2_0_abe_acd) );
  XOR2_X1 BMaj2_0_X3_U1 ( .A(BMaj2_0_ade), .B(BMaj2_0_ace), .Z(BMaj2_0_ace_ade) );
  XOR2_X1 BMaj2_0_X4_U1 ( .A(BMaj2_0_bce), .B(BMaj2_0_bcd), .Z(BMaj2_0_bcd_bce) );
  XOR2_X1 BMaj2_0_X5_U1 ( .A(BMaj2_0_cde), .B(BMaj2_0_bde), .Z(BMaj2_0_bde_cde) );
  XOR2_X1 BMaj2_0_X6_U1 ( .A(BMaj2_0_abe_acd), .B(BMaj2_0_abc_abd), .Z(
        BMaj2_0_abc_abd_abe_acd) );
  XOR2_X1 BMaj2_0_X7_U1 ( .A(BMaj2_0_bcd_bce), .B(BMaj2_0_ace_ade), .Z(
        BMaj2_0_ace_ade_bcd_bce) );
  XOR2_X1 BMaj2_0_X8_U1 ( .A(BMaj2_0_ace_ade_bcd_bce), .B(
        BMaj2_0_abc_abd_abe_acd), .Z(BMaj2_0_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 BMaj2_0_X9_U1 ( .A(BMaj2_0_bde_cde), .B(
        BMaj2_0_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mb2[0]) );
  DFF_X1 BFF0_0_Q_reg ( .D(mb0[0]), .CK(clk), .Q(mb0_r[0]) );
  DFF_X1 BFF1_0_Q_reg ( .D(mb1[0]), .CK(clk), .Q(mb1_r[0]) );
  DFF_X1 BFF2_0_Q_reg ( .D(mb2[0]), .CK(clk), .Q(mb2_r[0]) );
  DFF_X1 ABFF11_0_Q_reg ( .D(a1b1[0]), .CK(clk), .Q(a1b1_r[0]) );
  DFF_X1 ABFF12_0_Q_reg ( .D(a1b2[0]), .CK(clk), .Q(a1b2_r[0]) );
  DFF_X1 ABFF21_0_Q_reg ( .D(a2b1[0]), .CK(clk), .Q(a2b1_r[0]) );
  DFF_X1 ABFF22_0_Q_reg ( .D(a2b2[0]), .CK(clk), .Q(a2b2_r[0]) );
  DFF_X1 ABFF02_0_Q_reg ( .D(a0b2[0]), .CK(clk), .Q(a0b2_r[0]) );
  DFF_X1 ABFF20_0_Q_reg ( .D(a2b0[0]), .CK(clk), .Q(a2b0_r[0]) );
  DFF_X1 ABFF00_0_Q_reg ( .D(a0b0[0]), .CK(clk), .Q(a0b0_r[0]) );
  DFF_X1 ABFF01_0_Q_reg ( .D(a0b1[0]), .CK(clk), .Q(a0b1_r[0]) );
  DFF_X1 ABFF10_0_Q_reg ( .D(a1b0[0]), .CK(clk), .Q(a1b0_r[0]) );
  AND2_X1 CMaj0_0_A1_U1 ( .A1(c0_r[1]), .A2(c0_r[0]), .ZN(CMaj0_0_ab) );
  AND2_X1 CMaj0_0_A2_U1 ( .A1(c0_r[2]), .A2(CMaj0_0_ab), .ZN(CMaj0_0_abc) );
  AND2_X1 CMaj0_0_A3_U1 ( .A1(n137), .A2(CMaj0_0_ab), .ZN(CMaj0_0_abd) );
  AND2_X1 CMaj0_0_A4_U1 ( .A1(n138), .A2(CMaj0_0_ab), .ZN(CMaj0_0_abe) );
  AND2_X1 CMaj0_0_A5_U1 ( .A1(c0_r[2]), .A2(c0_r[0]), .ZN(CMaj0_0_ac) );
  AND2_X1 CMaj0_0_A6_U1 ( .A1(n137), .A2(CMaj0_0_ac), .ZN(CMaj0_0_acd) );
  AND2_X1 CMaj0_0_A7_U1 ( .A1(n138), .A2(CMaj0_0_ac), .ZN(CMaj0_0_ace) );
  AND2_X1 CMaj0_0_A8_U1 ( .A1(n137), .A2(c0_r[0]), .ZN(CMaj0_0_ad) );
  AND2_X1 CMaj0_0_A9_U1 ( .A1(n138), .A2(CMaj0_0_ad), .ZN(CMaj0_0_ade) );
  AND2_X1 CMaj0_0_A10_U1 ( .A1(c0_r[2]), .A2(c0_r[1]), .ZN(CMaj0_0_bc) );
  AND2_X1 CMaj0_0_A11_U1 ( .A1(n137), .A2(CMaj0_0_bc), .ZN(CMaj0_0_bcd) );
  AND2_X1 CMaj0_0_A12_U1 ( .A1(n138), .A2(CMaj0_0_bc), .ZN(CMaj0_0_bce) );
  AND2_X1 CMaj0_0_A13_U1 ( .A1(n137), .A2(c0_r[1]), .ZN(CMaj0_0_bd) );
  AND2_X1 CMaj0_0_A14_U1 ( .A1(n138), .A2(CMaj0_0_bd), .ZN(CMaj0_0_bde) );
  AND2_X1 CMaj0_0_A15_U1 ( .A1(n137), .A2(c0_r[2]), .ZN(CMaj0_0_cd) );
  AND2_X1 CMaj0_0_A16_U1 ( .A1(n138), .A2(CMaj0_0_cd), .ZN(CMaj0_0_cde) );
  XOR2_X1 CMaj0_0_X1_U1 ( .A(CMaj0_0_abd), .B(CMaj0_0_abc), .Z(CMaj0_0_abc_abd) );
  XOR2_X1 CMaj0_0_X2_U1 ( .A(CMaj0_0_acd), .B(CMaj0_0_abe), .Z(CMaj0_0_abe_acd) );
  XOR2_X1 CMaj0_0_X3_U1 ( .A(CMaj0_0_ade), .B(CMaj0_0_ace), .Z(CMaj0_0_ace_ade) );
  XOR2_X1 CMaj0_0_X4_U1 ( .A(CMaj0_0_bce), .B(CMaj0_0_bcd), .Z(CMaj0_0_bcd_bce) );
  XOR2_X1 CMaj0_0_X5_U1 ( .A(CMaj0_0_cde), .B(CMaj0_0_bde), .Z(CMaj0_0_bde_cde) );
  XOR2_X1 CMaj0_0_X6_U1 ( .A(CMaj0_0_abe_acd), .B(CMaj0_0_abc_abd), .Z(
        CMaj0_0_abc_abd_abe_acd) );
  XOR2_X1 CMaj0_0_X7_U1 ( .A(CMaj0_0_bcd_bce), .B(CMaj0_0_ace_ade), .Z(
        CMaj0_0_ace_ade_bcd_bce) );
  XOR2_X1 CMaj0_0_X8_U1 ( .A(CMaj0_0_ace_ade_bcd_bce), .B(
        CMaj0_0_abc_abd_abe_acd), .Z(CMaj0_0_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 CMaj0_0_X9_U1 ( .A(CMaj0_0_bde_cde), .B(
        CMaj0_0_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mc0[0]) );
  AND2_X1 CMaj1_0_A1_U1 ( .A1(c1_r[1]), .A2(c1_r[0]), .ZN(CMaj1_0_ab) );
  AND2_X1 CMaj1_0_A2_U1 ( .A1(c1_r[2]), .A2(CMaj1_0_ab), .ZN(CMaj1_0_abc) );
  AND2_X1 CMaj1_0_A3_U1 ( .A1(n135), .A2(CMaj1_0_ab), .ZN(CMaj1_0_abd) );
  AND2_X1 CMaj1_0_A4_U1 ( .A1(n136), .A2(CMaj1_0_ab), .ZN(CMaj1_0_abe) );
  AND2_X1 CMaj1_0_A5_U1 ( .A1(c1_r[2]), .A2(c1_r[0]), .ZN(CMaj1_0_ac) );
  AND2_X1 CMaj1_0_A6_U1 ( .A1(n135), .A2(CMaj1_0_ac), .ZN(CMaj1_0_acd) );
  AND2_X1 CMaj1_0_A7_U1 ( .A1(n136), .A2(CMaj1_0_ac), .ZN(CMaj1_0_ace) );
  AND2_X1 CMaj1_0_A8_U1 ( .A1(n135), .A2(c1_r[0]), .ZN(CMaj1_0_ad) );
  AND2_X1 CMaj1_0_A9_U1 ( .A1(n136), .A2(CMaj1_0_ad), .ZN(CMaj1_0_ade) );
  AND2_X1 CMaj1_0_A10_U1 ( .A1(c1_r[2]), .A2(c1_r[1]), .ZN(CMaj1_0_bc) );
  AND2_X1 CMaj1_0_A11_U1 ( .A1(n135), .A2(CMaj1_0_bc), .ZN(CMaj1_0_bcd) );
  AND2_X1 CMaj1_0_A12_U1 ( .A1(n136), .A2(CMaj1_0_bc), .ZN(CMaj1_0_bce) );
  AND2_X1 CMaj1_0_A13_U1 ( .A1(n135), .A2(c1_r[1]), .ZN(CMaj1_0_bd) );
  AND2_X1 CMaj1_0_A14_U1 ( .A1(n136), .A2(CMaj1_0_bd), .ZN(CMaj1_0_bde) );
  AND2_X1 CMaj1_0_A15_U1 ( .A1(n135), .A2(c1_r[2]), .ZN(CMaj1_0_cd) );
  AND2_X1 CMaj1_0_A16_U1 ( .A1(n136), .A2(CMaj1_0_cd), .ZN(CMaj1_0_cde) );
  XOR2_X1 CMaj1_0_X1_U1 ( .A(CMaj1_0_abd), .B(CMaj1_0_abc), .Z(CMaj1_0_abc_abd) );
  XOR2_X1 CMaj1_0_X2_U1 ( .A(CMaj1_0_acd), .B(CMaj1_0_abe), .Z(CMaj1_0_abe_acd) );
  XOR2_X1 CMaj1_0_X3_U1 ( .A(CMaj1_0_ade), .B(CMaj1_0_ace), .Z(CMaj1_0_ace_ade) );
  XOR2_X1 CMaj1_0_X4_U1 ( .A(CMaj1_0_bce), .B(CMaj1_0_bcd), .Z(CMaj1_0_bcd_bce) );
  XOR2_X1 CMaj1_0_X5_U1 ( .A(CMaj1_0_cde), .B(CMaj1_0_bde), .Z(CMaj1_0_bde_cde) );
  XOR2_X1 CMaj1_0_X6_U1 ( .A(CMaj1_0_abe_acd), .B(CMaj1_0_abc_abd), .Z(
        CMaj1_0_abc_abd_abe_acd) );
  XOR2_X1 CMaj1_0_X7_U1 ( .A(CMaj1_0_bcd_bce), .B(CMaj1_0_ace_ade), .Z(
        CMaj1_0_ace_ade_bcd_bce) );
  XOR2_X1 CMaj1_0_X8_U1 ( .A(CMaj1_0_ace_ade_bcd_bce), .B(
        CMaj1_0_abc_abd_abe_acd), .Z(CMaj1_0_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 CMaj1_0_X9_U1 ( .A(CMaj1_0_bde_cde), .B(
        CMaj1_0_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mc1[0]) );
  AND2_X1 CMaj2_0_A1_U1 ( .A1(c2_r[1]), .A2(c2_r[0]), .ZN(CMaj2_0_ab) );
  AND2_X1 CMaj2_0_A2_U1 ( .A1(c2_r[2]), .A2(CMaj2_0_ab), .ZN(CMaj2_0_abc) );
  AND2_X1 CMaj2_0_A3_U1 ( .A1(n133), .A2(CMaj2_0_ab), .ZN(CMaj2_0_abd) );
  AND2_X1 CMaj2_0_A4_U1 ( .A1(n134), .A2(CMaj2_0_ab), .ZN(CMaj2_0_abe) );
  AND2_X1 CMaj2_0_A5_U1 ( .A1(c2_r[2]), .A2(c2_r[0]), .ZN(CMaj2_0_ac) );
  AND2_X1 CMaj2_0_A6_U1 ( .A1(n133), .A2(CMaj2_0_ac), .ZN(CMaj2_0_acd) );
  AND2_X1 CMaj2_0_A7_U1 ( .A1(n134), .A2(CMaj2_0_ac), .ZN(CMaj2_0_ace) );
  AND2_X1 CMaj2_0_A8_U1 ( .A1(n133), .A2(c2_r[0]), .ZN(CMaj2_0_ad) );
  AND2_X1 CMaj2_0_A9_U1 ( .A1(n134), .A2(CMaj2_0_ad), .ZN(CMaj2_0_ade) );
  AND2_X1 CMaj2_0_A10_U1 ( .A1(c2_r[2]), .A2(c2_r[1]), .ZN(CMaj2_0_bc) );
  AND2_X1 CMaj2_0_A11_U1 ( .A1(n133), .A2(CMaj2_0_bc), .ZN(CMaj2_0_bcd) );
  AND2_X1 CMaj2_0_A12_U1 ( .A1(n134), .A2(CMaj2_0_bc), .ZN(CMaj2_0_bce) );
  AND2_X1 CMaj2_0_A13_U1 ( .A1(n133), .A2(c2_r[1]), .ZN(CMaj2_0_bd) );
  AND2_X1 CMaj2_0_A14_U1 ( .A1(n134), .A2(CMaj2_0_bd), .ZN(CMaj2_0_bde) );
  AND2_X1 CMaj2_0_A15_U1 ( .A1(n133), .A2(c2_r[2]), .ZN(CMaj2_0_cd) );
  AND2_X1 CMaj2_0_A16_U1 ( .A1(n134), .A2(CMaj2_0_cd), .ZN(CMaj2_0_cde) );
  XOR2_X1 CMaj2_0_X1_U1 ( .A(CMaj2_0_abd), .B(CMaj2_0_abc), .Z(CMaj2_0_abc_abd) );
  XOR2_X1 CMaj2_0_X2_U1 ( .A(CMaj2_0_acd), .B(CMaj2_0_abe), .Z(CMaj2_0_abe_acd) );
  XOR2_X1 CMaj2_0_X3_U1 ( .A(CMaj2_0_ade), .B(CMaj2_0_ace), .Z(CMaj2_0_ace_ade) );
  XOR2_X1 CMaj2_0_X4_U1 ( .A(CMaj2_0_bce), .B(CMaj2_0_bcd), .Z(CMaj2_0_bcd_bce) );
  XOR2_X1 CMaj2_0_X5_U1 ( .A(CMaj2_0_cde), .B(CMaj2_0_bde), .Z(CMaj2_0_bde_cde) );
  XOR2_X1 CMaj2_0_X6_U1 ( .A(CMaj2_0_abe_acd), .B(CMaj2_0_abc_abd), .Z(
        CMaj2_0_abc_abd_abe_acd) );
  XOR2_X1 CMaj2_0_X7_U1 ( .A(CMaj2_0_bcd_bce), .B(CMaj2_0_ace_ade), .Z(
        CMaj2_0_ace_ade_bcd_bce) );
  XOR2_X1 CMaj2_0_X8_U1 ( .A(CMaj2_0_ace_ade_bcd_bce), .B(
        CMaj2_0_abc_abd_abe_acd), .Z(CMaj2_0_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 CMaj2_0_X9_U1 ( .A(CMaj2_0_bde_cde), .B(
        CMaj2_0_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mc2[0]) );
  DFF_X1 CFF0_0_Q_reg ( .D(mc0[0]), .CK(clk), .Q(c0[0]) );
  DFF_X1 CFF1_0_Q_reg ( .D(mc1[0]), .CK(clk), .Q(c1[0]) );
  DFF_X1 CFF2_0_Q_reg ( .D(mc2[0]), .CK(clk), .Q(c2[0]) );
  XOR2_X1 RXOR01_1_U1 ( .A(r1), .B(r0), .Z(r01[1]) );
  XOR2_X1 RXOR46_1_U1 ( .A(r6), .B(r4), .Z(r46[1]) );
  DFF_X1 RFF01_1_Q_reg ( .D(r01[1]), .CK(clk), .Q(r01_r[1]) );
  AND2_X1 BMaj0_1_A1_U1 ( .A1(b0_r[1]), .A2(b0_r[0]), .ZN(BMaj0_1_ab) );
  AND2_X1 BMaj0_1_A2_U1 ( .A1(b0_r[2]), .A2(BMaj0_1_ab), .ZN(BMaj0_1_abc) );
  AND2_X1 BMaj0_1_A3_U1 ( .A1(n143), .A2(BMaj0_1_ab), .ZN(BMaj0_1_abd) );
  AND2_X1 BMaj0_1_A4_U1 ( .A1(n144), .A2(BMaj0_1_ab), .ZN(BMaj0_1_abe) );
  AND2_X1 BMaj0_1_A5_U1 ( .A1(b0_r[2]), .A2(b0_r[0]), .ZN(BMaj0_1_ac) );
  AND2_X1 BMaj0_1_A6_U1 ( .A1(n143), .A2(BMaj0_1_ac), .ZN(BMaj0_1_acd) );
  AND2_X1 BMaj0_1_A7_U1 ( .A1(n144), .A2(BMaj0_1_ac), .ZN(BMaj0_1_ace) );
  AND2_X1 BMaj0_1_A8_U1 ( .A1(n143), .A2(b0_r[0]), .ZN(BMaj0_1_ad) );
  AND2_X1 BMaj0_1_A9_U1 ( .A1(n144), .A2(BMaj0_1_ad), .ZN(BMaj0_1_ade) );
  AND2_X1 BMaj0_1_A10_U1 ( .A1(b0_r[2]), .A2(b0_r[1]), .ZN(BMaj0_1_bc) );
  AND2_X1 BMaj0_1_A11_U1 ( .A1(n143), .A2(BMaj0_1_bc), .ZN(BMaj0_1_bcd) );
  AND2_X1 BMaj0_1_A12_U1 ( .A1(n144), .A2(BMaj0_1_bc), .ZN(BMaj0_1_bce) );
  AND2_X1 BMaj0_1_A13_U1 ( .A1(n143), .A2(b0_r[1]), .ZN(BMaj0_1_bd) );
  AND2_X1 BMaj0_1_A14_U1 ( .A1(n144), .A2(BMaj0_1_bd), .ZN(BMaj0_1_bde) );
  AND2_X1 BMaj0_1_A15_U1 ( .A1(n143), .A2(b0_r[2]), .ZN(BMaj0_1_cd) );
  AND2_X1 BMaj0_1_A16_U1 ( .A1(n144), .A2(BMaj0_1_cd), .ZN(BMaj0_1_cde) );
  XOR2_X1 BMaj0_1_X1_U1 ( .A(BMaj0_1_abd), .B(BMaj0_1_abc), .Z(BMaj0_1_abc_abd) );
  XOR2_X1 BMaj0_1_X2_U1 ( .A(BMaj0_1_acd), .B(BMaj0_1_abe), .Z(BMaj0_1_abe_acd) );
  XOR2_X1 BMaj0_1_X3_U1 ( .A(BMaj0_1_ade), .B(BMaj0_1_ace), .Z(BMaj0_1_ace_ade) );
  XOR2_X1 BMaj0_1_X4_U1 ( .A(BMaj0_1_bce), .B(BMaj0_1_bcd), .Z(BMaj0_1_bcd_bce) );
  XOR2_X1 BMaj0_1_X5_U1 ( .A(BMaj0_1_cde), .B(BMaj0_1_bde), .Z(BMaj0_1_bde_cde) );
  XOR2_X1 BMaj0_1_X6_U1 ( .A(BMaj0_1_abe_acd), .B(BMaj0_1_abc_abd), .Z(
        BMaj0_1_abc_abd_abe_acd) );
  XOR2_X1 BMaj0_1_X7_U1 ( .A(BMaj0_1_bcd_bce), .B(BMaj0_1_ace_ade), .Z(
        BMaj0_1_ace_ade_bcd_bce) );
  XOR2_X1 BMaj0_1_X8_U1 ( .A(BMaj0_1_ace_ade_bcd_bce), .B(
        BMaj0_1_abc_abd_abe_acd), .Z(BMaj0_1_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 BMaj0_1_X9_U1 ( .A(BMaj0_1_bde_cde), .B(
        BMaj0_1_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mb0[1]) );
  AND2_X1 BMaj1_1_A1_U1 ( .A1(b1_r[1]), .A2(b1_r[0]), .ZN(BMaj1_1_ab) );
  AND2_X1 BMaj1_1_A2_U1 ( .A1(b1_r[2]), .A2(BMaj1_1_ab), .ZN(BMaj1_1_abc) );
  AND2_X1 BMaj1_1_A3_U1 ( .A1(n141), .A2(BMaj1_1_ab), .ZN(BMaj1_1_abd) );
  AND2_X1 BMaj1_1_A4_U1 ( .A1(n142), .A2(BMaj1_1_ab), .ZN(BMaj1_1_abe) );
  AND2_X1 BMaj1_1_A5_U1 ( .A1(b1_r[2]), .A2(b1_r[0]), .ZN(BMaj1_1_ac) );
  AND2_X1 BMaj1_1_A6_U1 ( .A1(n141), .A2(BMaj1_1_ac), .ZN(BMaj1_1_acd) );
  AND2_X1 BMaj1_1_A7_U1 ( .A1(n142), .A2(BMaj1_1_ac), .ZN(BMaj1_1_ace) );
  AND2_X1 BMaj1_1_A8_U1 ( .A1(n141), .A2(b1_r[0]), .ZN(BMaj1_1_ad) );
  AND2_X1 BMaj1_1_A9_U1 ( .A1(n142), .A2(BMaj1_1_ad), .ZN(BMaj1_1_ade) );
  AND2_X1 BMaj1_1_A10_U1 ( .A1(b1_r[2]), .A2(b1_r[1]), .ZN(BMaj1_1_bc) );
  AND2_X1 BMaj1_1_A11_U1 ( .A1(n141), .A2(BMaj1_1_bc), .ZN(BMaj1_1_bcd) );
  AND2_X1 BMaj1_1_A12_U1 ( .A1(n142), .A2(BMaj1_1_bc), .ZN(BMaj1_1_bce) );
  AND2_X1 BMaj1_1_A13_U1 ( .A1(n141), .A2(b1_r[1]), .ZN(BMaj1_1_bd) );
  AND2_X1 BMaj1_1_A14_U1 ( .A1(n142), .A2(BMaj1_1_bd), .ZN(BMaj1_1_bde) );
  AND2_X1 BMaj1_1_A15_U1 ( .A1(n141), .A2(b1_r[2]), .ZN(BMaj1_1_cd) );
  AND2_X1 BMaj1_1_A16_U1 ( .A1(n142), .A2(BMaj1_1_cd), .ZN(BMaj1_1_cde) );
  XOR2_X1 BMaj1_1_X1_U1 ( .A(BMaj1_1_abd), .B(BMaj1_1_abc), .Z(BMaj1_1_abc_abd) );
  XOR2_X1 BMaj1_1_X2_U1 ( .A(BMaj1_1_acd), .B(BMaj1_1_abe), .Z(BMaj1_1_abe_acd) );
  XOR2_X1 BMaj1_1_X3_U1 ( .A(BMaj1_1_ade), .B(BMaj1_1_ace), .Z(BMaj1_1_ace_ade) );
  XOR2_X1 BMaj1_1_X4_U1 ( .A(BMaj1_1_bce), .B(BMaj1_1_bcd), .Z(BMaj1_1_bcd_bce) );
  XOR2_X1 BMaj1_1_X5_U1 ( .A(BMaj1_1_cde), .B(BMaj1_1_bde), .Z(BMaj1_1_bde_cde) );
  XOR2_X1 BMaj1_1_X6_U1 ( .A(BMaj1_1_abe_acd), .B(BMaj1_1_abc_abd), .Z(
        BMaj1_1_abc_abd_abe_acd) );
  XOR2_X1 BMaj1_1_X7_U1 ( .A(BMaj1_1_bcd_bce), .B(BMaj1_1_ace_ade), .Z(
        BMaj1_1_ace_ade_bcd_bce) );
  XOR2_X1 BMaj1_1_X8_U1 ( .A(BMaj1_1_ace_ade_bcd_bce), .B(
        BMaj1_1_abc_abd_abe_acd), .Z(BMaj1_1_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 BMaj1_1_X9_U1 ( .A(BMaj1_1_bde_cde), .B(
        BMaj1_1_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mb1[1]) );
  AND2_X1 BMaj2_1_A1_U1 ( .A1(b2_r[1]), .A2(b2_r[0]), .ZN(BMaj2_1_ab) );
  AND2_X1 BMaj2_1_A2_U1 ( .A1(b2_r[2]), .A2(BMaj2_1_ab), .ZN(BMaj2_1_abc) );
  AND2_X1 BMaj2_1_A3_U1 ( .A1(n139), .A2(BMaj2_1_ab), .ZN(BMaj2_1_abd) );
  AND2_X1 BMaj2_1_A4_U1 ( .A1(n140), .A2(BMaj2_1_ab), .ZN(BMaj2_1_abe) );
  AND2_X1 BMaj2_1_A5_U1 ( .A1(b2_r[2]), .A2(b2_r[0]), .ZN(BMaj2_1_ac) );
  AND2_X1 BMaj2_1_A6_U1 ( .A1(n139), .A2(BMaj2_1_ac), .ZN(BMaj2_1_acd) );
  AND2_X1 BMaj2_1_A7_U1 ( .A1(n140), .A2(BMaj2_1_ac), .ZN(BMaj2_1_ace) );
  AND2_X1 BMaj2_1_A8_U1 ( .A1(n139), .A2(b2_r[0]), .ZN(BMaj2_1_ad) );
  AND2_X1 BMaj2_1_A9_U1 ( .A1(n140), .A2(BMaj2_1_ad), .ZN(BMaj2_1_ade) );
  AND2_X1 BMaj2_1_A10_U1 ( .A1(b2_r[2]), .A2(b2_r[1]), .ZN(BMaj2_1_bc) );
  AND2_X1 BMaj2_1_A11_U1 ( .A1(n139), .A2(BMaj2_1_bc), .ZN(BMaj2_1_bcd) );
  AND2_X1 BMaj2_1_A12_U1 ( .A1(n140), .A2(BMaj2_1_bc), .ZN(BMaj2_1_bce) );
  AND2_X1 BMaj2_1_A13_U1 ( .A1(n139), .A2(b2_r[1]), .ZN(BMaj2_1_bd) );
  AND2_X1 BMaj2_1_A14_U1 ( .A1(n140), .A2(BMaj2_1_bd), .ZN(BMaj2_1_bde) );
  AND2_X1 BMaj2_1_A15_U1 ( .A1(n139), .A2(b2_r[2]), .ZN(BMaj2_1_cd) );
  AND2_X1 BMaj2_1_A16_U1 ( .A1(n140), .A2(BMaj2_1_cd), .ZN(BMaj2_1_cde) );
  XOR2_X1 BMaj2_1_X1_U1 ( .A(BMaj2_1_abd), .B(BMaj2_1_abc), .Z(BMaj2_1_abc_abd) );
  XOR2_X1 BMaj2_1_X2_U1 ( .A(BMaj2_1_acd), .B(BMaj2_1_abe), .Z(BMaj2_1_abe_acd) );
  XOR2_X1 BMaj2_1_X3_U1 ( .A(BMaj2_1_ade), .B(BMaj2_1_ace), .Z(BMaj2_1_ace_ade) );
  XOR2_X1 BMaj2_1_X4_U1 ( .A(BMaj2_1_bce), .B(BMaj2_1_bcd), .Z(BMaj2_1_bcd_bce) );
  XOR2_X1 BMaj2_1_X5_U1 ( .A(BMaj2_1_cde), .B(BMaj2_1_bde), .Z(BMaj2_1_bde_cde) );
  XOR2_X1 BMaj2_1_X6_U1 ( .A(BMaj2_1_abe_acd), .B(BMaj2_1_abc_abd), .Z(
        BMaj2_1_abc_abd_abe_acd) );
  XOR2_X1 BMaj2_1_X7_U1 ( .A(BMaj2_1_bcd_bce), .B(BMaj2_1_ace_ade), .Z(
        BMaj2_1_ace_ade_bcd_bce) );
  XOR2_X1 BMaj2_1_X8_U1 ( .A(BMaj2_1_ace_ade_bcd_bce), .B(
        BMaj2_1_abc_abd_abe_acd), .Z(BMaj2_1_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 BMaj2_1_X9_U1 ( .A(BMaj2_1_bde_cde), .B(
        BMaj2_1_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mb2[1]) );
  DFF_X1 BFF0_1_Q_reg ( .D(mb0[1]), .CK(clk), .Q(mb0_r[1]) );
  DFF_X1 BFF1_1_Q_reg ( .D(mb1[1]), .CK(clk), .Q(mb1_r[1]) );
  DFF_X1 BFF2_1_Q_reg ( .D(mb2[1]), .CK(clk), .Q(mb2_r[1]) );
  DFF_X1 ABFF11_1_Q_reg ( .D(a1b1[1]), .CK(clk), .Q(a1b1_r[1]) );
  DFF_X1 ABFF12_1_Q_reg ( .D(a1b2[1]), .CK(clk), .Q(a1b2_r[1]) );
  DFF_X1 ABFF21_1_Q_reg ( .D(a2b1[1]), .CK(clk), .Q(a2b1_r[1]) );
  DFF_X1 ABFF22_1_Q_reg ( .D(a2b2[1]), .CK(clk), .Q(a2b2_r[1]) );
  DFF_X1 ABFF02_1_Q_reg ( .D(a0b2[1]), .CK(clk), .Q(a0b2_r[1]) );
  DFF_X1 ABFF20_1_Q_reg ( .D(a2b0[1]), .CK(clk), .Q(a2b0_r[1]) );
  DFF_X1 ABFF00_1_Q_reg ( .D(a0b0[1]), .CK(clk), .Q(a0b0_r[1]) );
  DFF_X1 ABFF01_1_Q_reg ( .D(a0b1[1]), .CK(clk), .Q(a0b1_r[1]) );
  DFF_X1 ABFF10_1_Q_reg ( .D(a1b0[1]), .CK(clk), .Q(a1b0_r[1]) );
  AND2_X1 CMaj0_1_A1_U1 ( .A1(c0_r[1]), .A2(c0_r[0]), .ZN(CMaj0_1_ab) );
  AND2_X1 CMaj0_1_A2_U1 ( .A1(c0_r[2]), .A2(CMaj0_1_ab), .ZN(CMaj0_1_abc) );
  AND2_X1 CMaj0_1_A3_U1 ( .A1(n137), .A2(CMaj0_1_ab), .ZN(CMaj0_1_abd) );
  AND2_X1 CMaj0_1_A4_U1 ( .A1(n138), .A2(CMaj0_1_ab), .ZN(CMaj0_1_abe) );
  AND2_X1 CMaj0_1_A5_U1 ( .A1(c0_r[2]), .A2(c0_r[0]), .ZN(CMaj0_1_ac) );
  AND2_X1 CMaj0_1_A6_U1 ( .A1(n137), .A2(CMaj0_1_ac), .ZN(CMaj0_1_acd) );
  AND2_X1 CMaj0_1_A7_U1 ( .A1(n138), .A2(CMaj0_1_ac), .ZN(CMaj0_1_ace) );
  AND2_X1 CMaj0_1_A8_U1 ( .A1(n137), .A2(c0_r[0]), .ZN(CMaj0_1_ad) );
  AND2_X1 CMaj0_1_A9_U1 ( .A1(n138), .A2(CMaj0_1_ad), .ZN(CMaj0_1_ade) );
  AND2_X1 CMaj0_1_A10_U1 ( .A1(c0_r[2]), .A2(c0_r[1]), .ZN(CMaj0_1_bc) );
  AND2_X1 CMaj0_1_A11_U1 ( .A1(n137), .A2(CMaj0_1_bc), .ZN(CMaj0_1_bcd) );
  AND2_X1 CMaj0_1_A12_U1 ( .A1(n138), .A2(CMaj0_1_bc), .ZN(CMaj0_1_bce) );
  AND2_X1 CMaj0_1_A13_U1 ( .A1(n137), .A2(c0_r[1]), .ZN(CMaj0_1_bd) );
  AND2_X1 CMaj0_1_A14_U1 ( .A1(n138), .A2(CMaj0_1_bd), .ZN(CMaj0_1_bde) );
  AND2_X1 CMaj0_1_A15_U1 ( .A1(n137), .A2(c0_r[2]), .ZN(CMaj0_1_cd) );
  AND2_X1 CMaj0_1_A16_U1 ( .A1(n138), .A2(CMaj0_1_cd), .ZN(CMaj0_1_cde) );
  XOR2_X1 CMaj0_1_X1_U1 ( .A(CMaj0_1_abd), .B(CMaj0_1_abc), .Z(CMaj0_1_abc_abd) );
  XOR2_X1 CMaj0_1_X2_U1 ( .A(CMaj0_1_acd), .B(CMaj0_1_abe), .Z(CMaj0_1_abe_acd) );
  XOR2_X1 CMaj0_1_X3_U1 ( .A(CMaj0_1_ade), .B(CMaj0_1_ace), .Z(CMaj0_1_ace_ade) );
  XOR2_X1 CMaj0_1_X4_U1 ( .A(CMaj0_1_bce), .B(CMaj0_1_bcd), .Z(CMaj0_1_bcd_bce) );
  XOR2_X1 CMaj0_1_X5_U1 ( .A(CMaj0_1_cde), .B(CMaj0_1_bde), .Z(CMaj0_1_bde_cde) );
  XOR2_X1 CMaj0_1_X6_U1 ( .A(CMaj0_1_abe_acd), .B(CMaj0_1_abc_abd), .Z(
        CMaj0_1_abc_abd_abe_acd) );
  XOR2_X1 CMaj0_1_X7_U1 ( .A(CMaj0_1_bcd_bce), .B(CMaj0_1_ace_ade), .Z(
        CMaj0_1_ace_ade_bcd_bce) );
  XOR2_X1 CMaj0_1_X8_U1 ( .A(CMaj0_1_ace_ade_bcd_bce), .B(
        CMaj0_1_abc_abd_abe_acd), .Z(CMaj0_1_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 CMaj0_1_X9_U1 ( .A(CMaj0_1_bde_cde), .B(
        CMaj0_1_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mc0[1]) );
  AND2_X1 CMaj1_1_A1_U1 ( .A1(c1_r[1]), .A2(c1_r[0]), .ZN(CMaj1_1_ab) );
  AND2_X1 CMaj1_1_A2_U1 ( .A1(c1_r[2]), .A2(CMaj1_1_ab), .ZN(CMaj1_1_abc) );
  AND2_X1 CMaj1_1_A3_U1 ( .A1(n135), .A2(CMaj1_1_ab), .ZN(CMaj1_1_abd) );
  AND2_X1 CMaj1_1_A4_U1 ( .A1(n136), .A2(CMaj1_1_ab), .ZN(CMaj1_1_abe) );
  AND2_X1 CMaj1_1_A5_U1 ( .A1(c1_r[2]), .A2(c1_r[0]), .ZN(CMaj1_1_ac) );
  AND2_X1 CMaj1_1_A6_U1 ( .A1(n135), .A2(CMaj1_1_ac), .ZN(CMaj1_1_acd) );
  AND2_X1 CMaj1_1_A7_U1 ( .A1(n136), .A2(CMaj1_1_ac), .ZN(CMaj1_1_ace) );
  AND2_X1 CMaj1_1_A8_U1 ( .A1(n135), .A2(c1_r[0]), .ZN(CMaj1_1_ad) );
  AND2_X1 CMaj1_1_A9_U1 ( .A1(n136), .A2(CMaj1_1_ad), .ZN(CMaj1_1_ade) );
  AND2_X1 CMaj1_1_A10_U1 ( .A1(c1_r[2]), .A2(c1_r[1]), .ZN(CMaj1_1_bc) );
  AND2_X1 CMaj1_1_A11_U1 ( .A1(n135), .A2(CMaj1_1_bc), .ZN(CMaj1_1_bcd) );
  AND2_X1 CMaj1_1_A12_U1 ( .A1(n136), .A2(CMaj1_1_bc), .ZN(CMaj1_1_bce) );
  AND2_X1 CMaj1_1_A13_U1 ( .A1(n135), .A2(c1_r[1]), .ZN(CMaj1_1_bd) );
  AND2_X1 CMaj1_1_A14_U1 ( .A1(n136), .A2(CMaj1_1_bd), .ZN(CMaj1_1_bde) );
  AND2_X1 CMaj1_1_A15_U1 ( .A1(n135), .A2(c1_r[2]), .ZN(CMaj1_1_cd) );
  AND2_X1 CMaj1_1_A16_U1 ( .A1(n136), .A2(CMaj1_1_cd), .ZN(CMaj1_1_cde) );
  XOR2_X1 CMaj1_1_X1_U1 ( .A(CMaj1_1_abd), .B(CMaj1_1_abc), .Z(CMaj1_1_abc_abd) );
  XOR2_X1 CMaj1_1_X2_U1 ( .A(CMaj1_1_acd), .B(CMaj1_1_abe), .Z(CMaj1_1_abe_acd) );
  XOR2_X1 CMaj1_1_X3_U1 ( .A(CMaj1_1_ade), .B(CMaj1_1_ace), .Z(CMaj1_1_ace_ade) );
  XOR2_X1 CMaj1_1_X4_U1 ( .A(CMaj1_1_bce), .B(CMaj1_1_bcd), .Z(CMaj1_1_bcd_bce) );
  XOR2_X1 CMaj1_1_X5_U1 ( .A(CMaj1_1_cde), .B(CMaj1_1_bde), .Z(CMaj1_1_bde_cde) );
  XOR2_X1 CMaj1_1_X6_U1 ( .A(CMaj1_1_abe_acd), .B(CMaj1_1_abc_abd), .Z(
        CMaj1_1_abc_abd_abe_acd) );
  XOR2_X1 CMaj1_1_X7_U1 ( .A(CMaj1_1_bcd_bce), .B(CMaj1_1_ace_ade), .Z(
        CMaj1_1_ace_ade_bcd_bce) );
  XOR2_X1 CMaj1_1_X8_U1 ( .A(CMaj1_1_ace_ade_bcd_bce), .B(
        CMaj1_1_abc_abd_abe_acd), .Z(CMaj1_1_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 CMaj1_1_X9_U1 ( .A(CMaj1_1_bde_cde), .B(
        CMaj1_1_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mc1[1]) );
  AND2_X1 CMaj2_1_A1_U1 ( .A1(c2_r[1]), .A2(c2_r[0]), .ZN(CMaj2_1_ab) );
  AND2_X1 CMaj2_1_A2_U1 ( .A1(c2_r[2]), .A2(CMaj2_1_ab), .ZN(CMaj2_1_abc) );
  AND2_X1 CMaj2_1_A3_U1 ( .A1(n133), .A2(CMaj2_1_ab), .ZN(CMaj2_1_abd) );
  AND2_X1 CMaj2_1_A4_U1 ( .A1(n134), .A2(CMaj2_1_ab), .ZN(CMaj2_1_abe) );
  AND2_X1 CMaj2_1_A5_U1 ( .A1(c2_r[2]), .A2(c2_r[0]), .ZN(CMaj2_1_ac) );
  AND2_X1 CMaj2_1_A6_U1 ( .A1(n133), .A2(CMaj2_1_ac), .ZN(CMaj2_1_acd) );
  AND2_X1 CMaj2_1_A7_U1 ( .A1(n134), .A2(CMaj2_1_ac), .ZN(CMaj2_1_ace) );
  AND2_X1 CMaj2_1_A8_U1 ( .A1(n133), .A2(c2_r[0]), .ZN(CMaj2_1_ad) );
  AND2_X1 CMaj2_1_A9_U1 ( .A1(n134), .A2(CMaj2_1_ad), .ZN(CMaj2_1_ade) );
  AND2_X1 CMaj2_1_A10_U1 ( .A1(c2_r[2]), .A2(c2_r[1]), .ZN(CMaj2_1_bc) );
  AND2_X1 CMaj2_1_A11_U1 ( .A1(n133), .A2(CMaj2_1_bc), .ZN(CMaj2_1_bcd) );
  AND2_X1 CMaj2_1_A12_U1 ( .A1(n134), .A2(CMaj2_1_bc), .ZN(CMaj2_1_bce) );
  AND2_X1 CMaj2_1_A13_U1 ( .A1(n133), .A2(c2_r[1]), .ZN(CMaj2_1_bd) );
  AND2_X1 CMaj2_1_A14_U1 ( .A1(n134), .A2(CMaj2_1_bd), .ZN(CMaj2_1_bde) );
  AND2_X1 CMaj2_1_A15_U1 ( .A1(n133), .A2(c2_r[2]), .ZN(CMaj2_1_cd) );
  AND2_X1 CMaj2_1_A16_U1 ( .A1(n134), .A2(CMaj2_1_cd), .ZN(CMaj2_1_cde) );
  XOR2_X1 CMaj2_1_X1_U1 ( .A(CMaj2_1_abd), .B(CMaj2_1_abc), .Z(CMaj2_1_abc_abd) );
  XOR2_X1 CMaj2_1_X2_U1 ( .A(CMaj2_1_acd), .B(CMaj2_1_abe), .Z(CMaj2_1_abe_acd) );
  XOR2_X1 CMaj2_1_X3_U1 ( .A(CMaj2_1_ade), .B(CMaj2_1_ace), .Z(CMaj2_1_ace_ade) );
  XOR2_X1 CMaj2_1_X4_U1 ( .A(CMaj2_1_bce), .B(CMaj2_1_bcd), .Z(CMaj2_1_bcd_bce) );
  XOR2_X1 CMaj2_1_X5_U1 ( .A(CMaj2_1_cde), .B(CMaj2_1_bde), .Z(CMaj2_1_bde_cde) );
  XOR2_X1 CMaj2_1_X6_U1 ( .A(CMaj2_1_abe_acd), .B(CMaj2_1_abc_abd), .Z(
        CMaj2_1_abc_abd_abe_acd) );
  XOR2_X1 CMaj2_1_X7_U1 ( .A(CMaj2_1_bcd_bce), .B(CMaj2_1_ace_ade), .Z(
        CMaj2_1_ace_ade_bcd_bce) );
  XOR2_X1 CMaj2_1_X8_U1 ( .A(CMaj2_1_ace_ade_bcd_bce), .B(
        CMaj2_1_abc_abd_abe_acd), .Z(CMaj2_1_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 CMaj2_1_X9_U1 ( .A(CMaj2_1_bde_cde), .B(
        CMaj2_1_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mc2[1]) );
  DFF_X1 CFF0_1_Q_reg ( .D(mc0[1]), .CK(clk), .Q(c0[1]) );
  DFF_X1 CFF1_1_Q_reg ( .D(mc1[1]), .CK(clk), .Q(c1[1]) );
  DFF_X1 CFF2_1_Q_reg ( .D(mc2[1]), .CK(clk), .Q(c2[1]) );
  XOR2_X1 RXOR01_2_U1 ( .A(r1), .B(r0), .Z(r01[2]) );
  XOR2_X1 RXOR46_2_U1 ( .A(r6), .B(r4), .Z(r46[2]) );
  DFF_X1 RFF01_2_Q_reg ( .D(r01[2]), .CK(clk), .Q(r01_r[2]) );
  AND2_X1 BMaj0_2_A1_U1 ( .A1(b0_r[1]), .A2(b0_r[0]), .ZN(BMaj0_2_ab) );
  AND2_X1 BMaj0_2_A2_U1 ( .A1(b0_r[2]), .A2(BMaj0_2_ab), .ZN(BMaj0_2_abc) );
  AND2_X1 BMaj0_2_A3_U1 ( .A1(n143), .A2(BMaj0_2_ab), .ZN(BMaj0_2_abd) );
  AND2_X1 BMaj0_2_A4_U1 ( .A1(n144), .A2(BMaj0_2_ab), .ZN(BMaj0_2_abe) );
  AND2_X1 BMaj0_2_A5_U1 ( .A1(b0_r[2]), .A2(b0_r[0]), .ZN(BMaj0_2_ac) );
  AND2_X1 BMaj0_2_A6_U1 ( .A1(n143), .A2(BMaj0_2_ac), .ZN(BMaj0_2_acd) );
  AND2_X1 BMaj0_2_A7_U1 ( .A1(n144), .A2(BMaj0_2_ac), .ZN(BMaj0_2_ace) );
  AND2_X1 BMaj0_2_A8_U1 ( .A1(n143), .A2(b0_r[0]), .ZN(BMaj0_2_ad) );
  AND2_X1 BMaj0_2_A9_U1 ( .A1(n144), .A2(BMaj0_2_ad), .ZN(BMaj0_2_ade) );
  AND2_X1 BMaj0_2_A10_U1 ( .A1(b0_r[2]), .A2(b0_r[1]), .ZN(BMaj0_2_bc) );
  AND2_X1 BMaj0_2_A11_U1 ( .A1(n143), .A2(BMaj0_2_bc), .ZN(BMaj0_2_bcd) );
  AND2_X1 BMaj0_2_A12_U1 ( .A1(n144), .A2(BMaj0_2_bc), .ZN(BMaj0_2_bce) );
  AND2_X1 BMaj0_2_A13_U1 ( .A1(n143), .A2(b0_r[1]), .ZN(BMaj0_2_bd) );
  AND2_X1 BMaj0_2_A14_U1 ( .A1(n144), .A2(BMaj0_2_bd), .ZN(BMaj0_2_bde) );
  AND2_X1 BMaj0_2_A15_U1 ( .A1(n143), .A2(b0_r[2]), .ZN(BMaj0_2_cd) );
  AND2_X1 BMaj0_2_A16_U1 ( .A1(n144), .A2(BMaj0_2_cd), .ZN(BMaj0_2_cde) );
  XOR2_X1 BMaj0_2_X1_U1 ( .A(BMaj0_2_abd), .B(BMaj0_2_abc), .Z(BMaj0_2_abc_abd) );
  XOR2_X1 BMaj0_2_X2_U1 ( .A(BMaj0_2_acd), .B(BMaj0_2_abe), .Z(BMaj0_2_abe_acd) );
  XOR2_X1 BMaj0_2_X3_U1 ( .A(BMaj0_2_ade), .B(BMaj0_2_ace), .Z(BMaj0_2_ace_ade) );
  XOR2_X1 BMaj0_2_X4_U1 ( .A(BMaj0_2_bce), .B(BMaj0_2_bcd), .Z(BMaj0_2_bcd_bce) );
  XOR2_X1 BMaj0_2_X5_U1 ( .A(BMaj0_2_cde), .B(BMaj0_2_bde), .Z(BMaj0_2_bde_cde) );
  XOR2_X1 BMaj0_2_X6_U1 ( .A(BMaj0_2_abe_acd), .B(BMaj0_2_abc_abd), .Z(
        BMaj0_2_abc_abd_abe_acd) );
  XOR2_X1 BMaj0_2_X7_U1 ( .A(BMaj0_2_bcd_bce), .B(BMaj0_2_ace_ade), .Z(
        BMaj0_2_ace_ade_bcd_bce) );
  XOR2_X1 BMaj0_2_X8_U1 ( .A(BMaj0_2_ace_ade_bcd_bce), .B(
        BMaj0_2_abc_abd_abe_acd), .Z(BMaj0_2_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 BMaj0_2_X9_U1 ( .A(BMaj0_2_bde_cde), .B(
        BMaj0_2_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mb0[2]) );
  AND2_X1 BMaj1_2_A1_U1 ( .A1(b1_r[1]), .A2(b1_r[0]), .ZN(BMaj1_2_ab) );
  AND2_X1 BMaj1_2_A2_U1 ( .A1(b1_r[2]), .A2(BMaj1_2_ab), .ZN(BMaj1_2_abc) );
  AND2_X1 BMaj1_2_A3_U1 ( .A1(n141), .A2(BMaj1_2_ab), .ZN(BMaj1_2_abd) );
  AND2_X1 BMaj1_2_A4_U1 ( .A1(n142), .A2(BMaj1_2_ab), .ZN(BMaj1_2_abe) );
  AND2_X1 BMaj1_2_A5_U1 ( .A1(b1_r[2]), .A2(b1_r[0]), .ZN(BMaj1_2_ac) );
  AND2_X1 BMaj1_2_A6_U1 ( .A1(n141), .A2(BMaj1_2_ac), .ZN(BMaj1_2_acd) );
  AND2_X1 BMaj1_2_A7_U1 ( .A1(n142), .A2(BMaj1_2_ac), .ZN(BMaj1_2_ace) );
  AND2_X1 BMaj1_2_A8_U1 ( .A1(n141), .A2(b1_r[0]), .ZN(BMaj1_2_ad) );
  AND2_X1 BMaj1_2_A9_U1 ( .A1(n142), .A2(BMaj1_2_ad), .ZN(BMaj1_2_ade) );
  AND2_X1 BMaj1_2_A10_U1 ( .A1(b1_r[2]), .A2(b1_r[1]), .ZN(BMaj1_2_bc) );
  AND2_X1 BMaj1_2_A11_U1 ( .A1(n141), .A2(BMaj1_2_bc), .ZN(BMaj1_2_bcd) );
  AND2_X1 BMaj1_2_A12_U1 ( .A1(n142), .A2(BMaj1_2_bc), .ZN(BMaj1_2_bce) );
  AND2_X1 BMaj1_2_A13_U1 ( .A1(n141), .A2(b1_r[1]), .ZN(BMaj1_2_bd) );
  AND2_X1 BMaj1_2_A14_U1 ( .A1(n142), .A2(BMaj1_2_bd), .ZN(BMaj1_2_bde) );
  AND2_X1 BMaj1_2_A15_U1 ( .A1(n141), .A2(b1_r[2]), .ZN(BMaj1_2_cd) );
  AND2_X1 BMaj1_2_A16_U1 ( .A1(n142), .A2(BMaj1_2_cd), .ZN(BMaj1_2_cde) );
  XOR2_X1 BMaj1_2_X1_U1 ( .A(BMaj1_2_abd), .B(BMaj1_2_abc), .Z(BMaj1_2_abc_abd) );
  XOR2_X1 BMaj1_2_X2_U1 ( .A(BMaj1_2_acd), .B(BMaj1_2_abe), .Z(BMaj1_2_abe_acd) );
  XOR2_X1 BMaj1_2_X3_U1 ( .A(BMaj1_2_ade), .B(BMaj1_2_ace), .Z(BMaj1_2_ace_ade) );
  XOR2_X1 BMaj1_2_X4_U1 ( .A(BMaj1_2_bce), .B(BMaj1_2_bcd), .Z(BMaj1_2_bcd_bce) );
  XOR2_X1 BMaj1_2_X5_U1 ( .A(BMaj1_2_cde), .B(BMaj1_2_bde), .Z(BMaj1_2_bde_cde) );
  XOR2_X1 BMaj1_2_X6_U1 ( .A(BMaj1_2_abe_acd), .B(BMaj1_2_abc_abd), .Z(
        BMaj1_2_abc_abd_abe_acd) );
  XOR2_X1 BMaj1_2_X7_U1 ( .A(BMaj1_2_bcd_bce), .B(BMaj1_2_ace_ade), .Z(
        BMaj1_2_ace_ade_bcd_bce) );
  XOR2_X1 BMaj1_2_X8_U1 ( .A(BMaj1_2_ace_ade_bcd_bce), .B(
        BMaj1_2_abc_abd_abe_acd), .Z(BMaj1_2_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 BMaj1_2_X9_U1 ( .A(BMaj1_2_bde_cde), .B(
        BMaj1_2_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mb1[2]) );
  AND2_X1 BMaj2_2_A1_U1 ( .A1(b2_r[1]), .A2(b2_r[0]), .ZN(BMaj2_2_ab) );
  AND2_X1 BMaj2_2_A2_U1 ( .A1(b2_r[2]), .A2(BMaj2_2_ab), .ZN(BMaj2_2_abc) );
  AND2_X1 BMaj2_2_A3_U1 ( .A1(n139), .A2(BMaj2_2_ab), .ZN(BMaj2_2_abd) );
  AND2_X1 BMaj2_2_A4_U1 ( .A1(n140), .A2(BMaj2_2_ab), .ZN(BMaj2_2_abe) );
  AND2_X1 BMaj2_2_A5_U1 ( .A1(b2_r[2]), .A2(b2_r[0]), .ZN(BMaj2_2_ac) );
  AND2_X1 BMaj2_2_A6_U1 ( .A1(n139), .A2(BMaj2_2_ac), .ZN(BMaj2_2_acd) );
  AND2_X1 BMaj2_2_A7_U1 ( .A1(n140), .A2(BMaj2_2_ac), .ZN(BMaj2_2_ace) );
  AND2_X1 BMaj2_2_A8_U1 ( .A1(n139), .A2(b2_r[0]), .ZN(BMaj2_2_ad) );
  AND2_X1 BMaj2_2_A9_U1 ( .A1(n140), .A2(BMaj2_2_ad), .ZN(BMaj2_2_ade) );
  AND2_X1 BMaj2_2_A10_U1 ( .A1(b2_r[2]), .A2(b2_r[1]), .ZN(BMaj2_2_bc) );
  AND2_X1 BMaj2_2_A11_U1 ( .A1(n139), .A2(BMaj2_2_bc), .ZN(BMaj2_2_bcd) );
  AND2_X1 BMaj2_2_A12_U1 ( .A1(n140), .A2(BMaj2_2_bc), .ZN(BMaj2_2_bce) );
  AND2_X1 BMaj2_2_A13_U1 ( .A1(n139), .A2(b2_r[1]), .ZN(BMaj2_2_bd) );
  AND2_X1 BMaj2_2_A14_U1 ( .A1(n140), .A2(BMaj2_2_bd), .ZN(BMaj2_2_bde) );
  AND2_X1 BMaj2_2_A15_U1 ( .A1(n139), .A2(b2_r[2]), .ZN(BMaj2_2_cd) );
  AND2_X1 BMaj2_2_A16_U1 ( .A1(n140), .A2(BMaj2_2_cd), .ZN(BMaj2_2_cde) );
  XOR2_X1 BMaj2_2_X1_U1 ( .A(BMaj2_2_abd), .B(BMaj2_2_abc), .Z(BMaj2_2_abc_abd) );
  XOR2_X1 BMaj2_2_X2_U1 ( .A(BMaj2_2_acd), .B(BMaj2_2_abe), .Z(BMaj2_2_abe_acd) );
  XOR2_X1 BMaj2_2_X3_U1 ( .A(BMaj2_2_ade), .B(BMaj2_2_ace), .Z(BMaj2_2_ace_ade) );
  XOR2_X1 BMaj2_2_X4_U1 ( .A(BMaj2_2_bce), .B(BMaj2_2_bcd), .Z(BMaj2_2_bcd_bce) );
  XOR2_X1 BMaj2_2_X5_U1 ( .A(BMaj2_2_cde), .B(BMaj2_2_bde), .Z(BMaj2_2_bde_cde) );
  XOR2_X1 BMaj2_2_X6_U1 ( .A(BMaj2_2_abe_acd), .B(BMaj2_2_abc_abd), .Z(
        BMaj2_2_abc_abd_abe_acd) );
  XOR2_X1 BMaj2_2_X7_U1 ( .A(BMaj2_2_bcd_bce), .B(BMaj2_2_ace_ade), .Z(
        BMaj2_2_ace_ade_bcd_bce) );
  XOR2_X1 BMaj2_2_X8_U1 ( .A(BMaj2_2_ace_ade_bcd_bce), .B(
        BMaj2_2_abc_abd_abe_acd), .Z(BMaj2_2_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 BMaj2_2_X9_U1 ( .A(BMaj2_2_bde_cde), .B(
        BMaj2_2_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mb2[2]) );
  DFF_X1 BFF0_2_Q_reg ( .D(mb0[2]), .CK(clk), .Q(mb0_r[2]) );
  DFF_X1 BFF1_2_Q_reg ( .D(mb1[2]), .CK(clk), .Q(mb1_r[2]) );
  DFF_X1 BFF2_2_Q_reg ( .D(mb2[2]), .CK(clk), .Q(mb2_r[2]) );
  DFF_X1 ABFF11_2_Q_reg ( .D(a1b1[2]), .CK(clk), .Q(a1b1_r[2]) );
  DFF_X1 ABFF12_2_Q_reg ( .D(a1b2[2]), .CK(clk), .Q(a1b2_r[2]) );
  DFF_X1 ABFF21_2_Q_reg ( .D(a2b1[2]), .CK(clk), .Q(a2b1_r[2]) );
  DFF_X1 ABFF22_2_Q_reg ( .D(a2b2[2]), .CK(clk), .Q(a2b2_r[2]) );
  DFF_X1 ABFF02_2_Q_reg ( .D(a0b2[2]), .CK(clk), .Q(a0b2_r[2]) );
  DFF_X1 ABFF20_2_Q_reg ( .D(a2b0[2]), .CK(clk), .Q(a2b0_r[2]) );
  DFF_X1 ABFF00_2_Q_reg ( .D(a0b0[2]), .CK(clk), .Q(a0b0_r[2]) );
  DFF_X1 ABFF01_2_Q_reg ( .D(a0b1[2]), .CK(clk), .Q(a0b1_r[2]) );
  DFF_X1 ABFF10_2_Q_reg ( .D(a1b0[2]), .CK(clk), .Q(a1b0_r[2]) );
  AND2_X1 CMaj0_2_A1_U1 ( .A1(c0_r[1]), .A2(c0_r[0]), .ZN(CMaj0_2_ab) );
  AND2_X1 CMaj0_2_A2_U1 ( .A1(c0_r[2]), .A2(CMaj0_2_ab), .ZN(CMaj0_2_abc) );
  AND2_X1 CMaj0_2_A3_U1 ( .A1(n137), .A2(CMaj0_2_ab), .ZN(CMaj0_2_abd) );
  AND2_X1 CMaj0_2_A4_U1 ( .A1(n138), .A2(CMaj0_2_ab), .ZN(CMaj0_2_abe) );
  AND2_X1 CMaj0_2_A5_U1 ( .A1(c0_r[2]), .A2(c0_r[0]), .ZN(CMaj0_2_ac) );
  AND2_X1 CMaj0_2_A6_U1 ( .A1(n137), .A2(CMaj0_2_ac), .ZN(CMaj0_2_acd) );
  AND2_X1 CMaj0_2_A7_U1 ( .A1(n138), .A2(CMaj0_2_ac), .ZN(CMaj0_2_ace) );
  AND2_X1 CMaj0_2_A8_U1 ( .A1(n137), .A2(c0_r[0]), .ZN(CMaj0_2_ad) );
  AND2_X1 CMaj0_2_A9_U1 ( .A1(n138), .A2(CMaj0_2_ad), .ZN(CMaj0_2_ade) );
  AND2_X1 CMaj0_2_A10_U1 ( .A1(c0_r[2]), .A2(c0_r[1]), .ZN(CMaj0_2_bc) );
  AND2_X1 CMaj0_2_A11_U1 ( .A1(n137), .A2(CMaj0_2_bc), .ZN(CMaj0_2_bcd) );
  AND2_X1 CMaj0_2_A12_U1 ( .A1(n138), .A2(CMaj0_2_bc), .ZN(CMaj0_2_bce) );
  AND2_X1 CMaj0_2_A13_U1 ( .A1(n137), .A2(c0_r[1]), .ZN(CMaj0_2_bd) );
  AND2_X1 CMaj0_2_A14_U1 ( .A1(n138), .A2(CMaj0_2_bd), .ZN(CMaj0_2_bde) );
  AND2_X1 CMaj0_2_A15_U1 ( .A1(n137), .A2(c0_r[2]), .ZN(CMaj0_2_cd) );
  AND2_X1 CMaj0_2_A16_U1 ( .A1(n138), .A2(CMaj0_2_cd), .ZN(CMaj0_2_cde) );
  XOR2_X1 CMaj0_2_X1_U1 ( .A(CMaj0_2_abd), .B(CMaj0_2_abc), .Z(CMaj0_2_abc_abd) );
  XOR2_X1 CMaj0_2_X2_U1 ( .A(CMaj0_2_acd), .B(CMaj0_2_abe), .Z(CMaj0_2_abe_acd) );
  XOR2_X1 CMaj0_2_X3_U1 ( .A(CMaj0_2_ade), .B(CMaj0_2_ace), .Z(CMaj0_2_ace_ade) );
  XOR2_X1 CMaj0_2_X4_U1 ( .A(CMaj0_2_bce), .B(CMaj0_2_bcd), .Z(CMaj0_2_bcd_bce) );
  XOR2_X1 CMaj0_2_X5_U1 ( .A(CMaj0_2_cde), .B(CMaj0_2_bde), .Z(CMaj0_2_bde_cde) );
  XOR2_X1 CMaj0_2_X6_U1 ( .A(CMaj0_2_abe_acd), .B(CMaj0_2_abc_abd), .Z(
        CMaj0_2_abc_abd_abe_acd) );
  XOR2_X1 CMaj0_2_X7_U1 ( .A(CMaj0_2_bcd_bce), .B(CMaj0_2_ace_ade), .Z(
        CMaj0_2_ace_ade_bcd_bce) );
  XOR2_X1 CMaj0_2_X8_U1 ( .A(CMaj0_2_ace_ade_bcd_bce), .B(
        CMaj0_2_abc_abd_abe_acd), .Z(CMaj0_2_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 CMaj0_2_X9_U1 ( .A(CMaj0_2_bde_cde), .B(
        CMaj0_2_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mc0[2]) );
  AND2_X1 CMaj1_2_A1_U1 ( .A1(c1_r[1]), .A2(c1_r[0]), .ZN(CMaj1_2_ab) );
  AND2_X1 CMaj1_2_A2_U1 ( .A1(c1_r[2]), .A2(CMaj1_2_ab), .ZN(CMaj1_2_abc) );
  AND2_X1 CMaj1_2_A3_U1 ( .A1(n135), .A2(CMaj1_2_ab), .ZN(CMaj1_2_abd) );
  AND2_X1 CMaj1_2_A4_U1 ( .A1(n136), .A2(CMaj1_2_ab), .ZN(CMaj1_2_abe) );
  AND2_X1 CMaj1_2_A5_U1 ( .A1(c1_r[2]), .A2(c1_r[0]), .ZN(CMaj1_2_ac) );
  AND2_X1 CMaj1_2_A6_U1 ( .A1(n135), .A2(CMaj1_2_ac), .ZN(CMaj1_2_acd) );
  AND2_X1 CMaj1_2_A7_U1 ( .A1(n136), .A2(CMaj1_2_ac), .ZN(CMaj1_2_ace) );
  AND2_X1 CMaj1_2_A8_U1 ( .A1(n135), .A2(c1_r[0]), .ZN(CMaj1_2_ad) );
  AND2_X1 CMaj1_2_A9_U1 ( .A1(n136), .A2(CMaj1_2_ad), .ZN(CMaj1_2_ade) );
  AND2_X1 CMaj1_2_A10_U1 ( .A1(c1_r[2]), .A2(c1_r[1]), .ZN(CMaj1_2_bc) );
  AND2_X1 CMaj1_2_A11_U1 ( .A1(n135), .A2(CMaj1_2_bc), .ZN(CMaj1_2_bcd) );
  AND2_X1 CMaj1_2_A12_U1 ( .A1(n136), .A2(CMaj1_2_bc), .ZN(CMaj1_2_bce) );
  AND2_X1 CMaj1_2_A13_U1 ( .A1(n135), .A2(c1_r[1]), .ZN(CMaj1_2_bd) );
  AND2_X1 CMaj1_2_A14_U1 ( .A1(n136), .A2(CMaj1_2_bd), .ZN(CMaj1_2_bde) );
  AND2_X1 CMaj1_2_A15_U1 ( .A1(n135), .A2(c1_r[2]), .ZN(CMaj1_2_cd) );
  AND2_X1 CMaj1_2_A16_U1 ( .A1(n136), .A2(CMaj1_2_cd), .ZN(CMaj1_2_cde) );
  XOR2_X1 CMaj1_2_X1_U1 ( .A(CMaj1_2_abd), .B(CMaj1_2_abc), .Z(CMaj1_2_abc_abd) );
  XOR2_X1 CMaj1_2_X2_U1 ( .A(CMaj1_2_acd), .B(CMaj1_2_abe), .Z(CMaj1_2_abe_acd) );
  XOR2_X1 CMaj1_2_X3_U1 ( .A(CMaj1_2_ade), .B(CMaj1_2_ace), .Z(CMaj1_2_ace_ade) );
  XOR2_X1 CMaj1_2_X4_U1 ( .A(CMaj1_2_bce), .B(CMaj1_2_bcd), .Z(CMaj1_2_bcd_bce) );
  XOR2_X1 CMaj1_2_X5_U1 ( .A(CMaj1_2_cde), .B(CMaj1_2_bde), .Z(CMaj1_2_bde_cde) );
  XOR2_X1 CMaj1_2_X6_U1 ( .A(CMaj1_2_abe_acd), .B(CMaj1_2_abc_abd), .Z(
        CMaj1_2_abc_abd_abe_acd) );
  XOR2_X1 CMaj1_2_X7_U1 ( .A(CMaj1_2_bcd_bce), .B(CMaj1_2_ace_ade), .Z(
        CMaj1_2_ace_ade_bcd_bce) );
  XOR2_X1 CMaj1_2_X8_U1 ( .A(CMaj1_2_ace_ade_bcd_bce), .B(
        CMaj1_2_abc_abd_abe_acd), .Z(CMaj1_2_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 CMaj1_2_X9_U1 ( .A(CMaj1_2_bde_cde), .B(
        CMaj1_2_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mc1[2]) );
  AND2_X1 CMaj2_2_A1_U1 ( .A1(c2_r[1]), .A2(c2_r[0]), .ZN(CMaj2_2_ab) );
  AND2_X1 CMaj2_2_A2_U1 ( .A1(c2_r[2]), .A2(CMaj2_2_ab), .ZN(CMaj2_2_abc) );
  AND2_X1 CMaj2_2_A3_U1 ( .A1(n133), .A2(CMaj2_2_ab), .ZN(CMaj2_2_abd) );
  AND2_X1 CMaj2_2_A4_U1 ( .A1(n134), .A2(CMaj2_2_ab), .ZN(CMaj2_2_abe) );
  AND2_X1 CMaj2_2_A5_U1 ( .A1(c2_r[2]), .A2(c2_r[0]), .ZN(CMaj2_2_ac) );
  AND2_X1 CMaj2_2_A6_U1 ( .A1(n133), .A2(CMaj2_2_ac), .ZN(CMaj2_2_acd) );
  AND2_X1 CMaj2_2_A7_U1 ( .A1(n134), .A2(CMaj2_2_ac), .ZN(CMaj2_2_ace) );
  AND2_X1 CMaj2_2_A8_U1 ( .A1(n133), .A2(c2_r[0]), .ZN(CMaj2_2_ad) );
  AND2_X1 CMaj2_2_A9_U1 ( .A1(n134), .A2(CMaj2_2_ad), .ZN(CMaj2_2_ade) );
  AND2_X1 CMaj2_2_A10_U1 ( .A1(c2_r[2]), .A2(c2_r[1]), .ZN(CMaj2_2_bc) );
  AND2_X1 CMaj2_2_A11_U1 ( .A1(n133), .A2(CMaj2_2_bc), .ZN(CMaj2_2_bcd) );
  AND2_X1 CMaj2_2_A12_U1 ( .A1(n134), .A2(CMaj2_2_bc), .ZN(CMaj2_2_bce) );
  AND2_X1 CMaj2_2_A13_U1 ( .A1(n133), .A2(c2_r[1]), .ZN(CMaj2_2_bd) );
  AND2_X1 CMaj2_2_A14_U1 ( .A1(n134), .A2(CMaj2_2_bd), .ZN(CMaj2_2_bde) );
  AND2_X1 CMaj2_2_A15_U1 ( .A1(n133), .A2(c2_r[2]), .ZN(CMaj2_2_cd) );
  AND2_X1 CMaj2_2_A16_U1 ( .A1(n134), .A2(CMaj2_2_cd), .ZN(CMaj2_2_cde) );
  XOR2_X1 CMaj2_2_X1_U1 ( .A(CMaj2_2_abd), .B(CMaj2_2_abc), .Z(CMaj2_2_abc_abd) );
  XOR2_X1 CMaj2_2_X2_U1 ( .A(CMaj2_2_acd), .B(CMaj2_2_abe), .Z(CMaj2_2_abe_acd) );
  XOR2_X1 CMaj2_2_X3_U1 ( .A(CMaj2_2_ade), .B(CMaj2_2_ace), .Z(CMaj2_2_ace_ade) );
  XOR2_X1 CMaj2_2_X4_U1 ( .A(CMaj2_2_bce), .B(CMaj2_2_bcd), .Z(CMaj2_2_bcd_bce) );
  XOR2_X1 CMaj2_2_X5_U1 ( .A(CMaj2_2_cde), .B(CMaj2_2_bde), .Z(CMaj2_2_bde_cde) );
  XOR2_X1 CMaj2_2_X6_U1 ( .A(CMaj2_2_abe_acd), .B(CMaj2_2_abc_abd), .Z(
        CMaj2_2_abc_abd_abe_acd) );
  XOR2_X1 CMaj2_2_X7_U1 ( .A(CMaj2_2_bcd_bce), .B(CMaj2_2_ace_ade), .Z(
        CMaj2_2_ace_ade_bcd_bce) );
  XOR2_X1 CMaj2_2_X8_U1 ( .A(CMaj2_2_ace_ade_bcd_bce), .B(
        CMaj2_2_abc_abd_abe_acd), .Z(CMaj2_2_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 CMaj2_2_X9_U1 ( .A(CMaj2_2_bde_cde), .B(
        CMaj2_2_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mc2[2]) );
  DFF_X1 CFF0_2_Q_reg ( .D(mc0[2]), .CK(clk), .Q(c0[2]) );
  DFF_X1 CFF1_2_Q_reg ( .D(mc1[2]), .CK(clk), .Q(c1[2]) );
  DFF_X1 CFF2_2_Q_reg ( .D(mc2[2]), .CK(clk), .Q(c2[2]) );
  XOR2_X1 RXOR01_3_U1 ( .A(r1), .B(r0), .Z(r01[3]) );
  XOR2_X1 RXOR46_3_U1 ( .A(r6), .B(r4), .Z(r46[3]) );
  DFF_X1 RFF01_3_Q_reg ( .D(r01[3]), .CK(clk), .Q(r01_r[3]) );
  AND2_X1 BMaj0_3_A1_U1 ( .A1(b0_r[1]), .A2(b0_r[0]), .ZN(BMaj0_3_ab) );
  AND2_X1 BMaj0_3_A2_U1 ( .A1(b0_r[2]), .A2(BMaj0_3_ab), .ZN(BMaj0_3_abc) );
  AND2_X1 BMaj0_3_A3_U1 ( .A1(n143), .A2(BMaj0_3_ab), .ZN(BMaj0_3_abd) );
  AND2_X1 BMaj0_3_A4_U1 ( .A1(n144), .A2(BMaj0_3_ab), .ZN(BMaj0_3_abe) );
  AND2_X1 BMaj0_3_A5_U1 ( .A1(b0_r[2]), .A2(b0_r[0]), .ZN(BMaj0_3_ac) );
  AND2_X1 BMaj0_3_A6_U1 ( .A1(n143), .A2(BMaj0_3_ac), .ZN(BMaj0_3_acd) );
  AND2_X1 BMaj0_3_A7_U1 ( .A1(n144), .A2(BMaj0_3_ac), .ZN(BMaj0_3_ace) );
  AND2_X1 BMaj0_3_A8_U1 ( .A1(n143), .A2(b0_r[0]), .ZN(BMaj0_3_ad) );
  AND2_X1 BMaj0_3_A9_U1 ( .A1(n144), .A2(BMaj0_3_ad), .ZN(BMaj0_3_ade) );
  AND2_X1 BMaj0_3_A10_U1 ( .A1(b0_r[2]), .A2(b0_r[1]), .ZN(BMaj0_3_bc) );
  AND2_X1 BMaj0_3_A11_U1 ( .A1(n143), .A2(BMaj0_3_bc), .ZN(BMaj0_3_bcd) );
  AND2_X1 BMaj0_3_A12_U1 ( .A1(n144), .A2(BMaj0_3_bc), .ZN(BMaj0_3_bce) );
  AND2_X1 BMaj0_3_A13_U1 ( .A1(n143), .A2(b0_r[1]), .ZN(BMaj0_3_bd) );
  AND2_X1 BMaj0_3_A14_U1 ( .A1(n144), .A2(BMaj0_3_bd), .ZN(BMaj0_3_bde) );
  AND2_X1 BMaj0_3_A15_U1 ( .A1(n143), .A2(b0_r[2]), .ZN(BMaj0_3_cd) );
  AND2_X1 BMaj0_3_A16_U1 ( .A1(n144), .A2(BMaj0_3_cd), .ZN(BMaj0_3_cde) );
  XOR2_X1 BMaj0_3_X1_U1 ( .A(BMaj0_3_abd), .B(BMaj0_3_abc), .Z(BMaj0_3_abc_abd) );
  XOR2_X1 BMaj0_3_X2_U1 ( .A(BMaj0_3_acd), .B(BMaj0_3_abe), .Z(BMaj0_3_abe_acd) );
  XOR2_X1 BMaj0_3_X3_U1 ( .A(BMaj0_3_ade), .B(BMaj0_3_ace), .Z(BMaj0_3_ace_ade) );
  XOR2_X1 BMaj0_3_X4_U1 ( .A(BMaj0_3_bce), .B(BMaj0_3_bcd), .Z(BMaj0_3_bcd_bce) );
  XOR2_X1 BMaj0_3_X5_U1 ( .A(BMaj0_3_cde), .B(BMaj0_3_bde), .Z(BMaj0_3_bde_cde) );
  XOR2_X1 BMaj0_3_X6_U1 ( .A(BMaj0_3_abe_acd), .B(BMaj0_3_abc_abd), .Z(
        BMaj0_3_abc_abd_abe_acd) );
  XOR2_X1 BMaj0_3_X7_U1 ( .A(BMaj0_3_bcd_bce), .B(BMaj0_3_ace_ade), .Z(
        BMaj0_3_ace_ade_bcd_bce) );
  XOR2_X1 BMaj0_3_X8_U1 ( .A(BMaj0_3_ace_ade_bcd_bce), .B(
        BMaj0_3_abc_abd_abe_acd), .Z(BMaj0_3_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 BMaj0_3_X9_U1 ( .A(BMaj0_3_bde_cde), .B(
        BMaj0_3_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mb0[3]) );
  AND2_X1 BMaj1_3_A1_U1 ( .A1(b1_r[1]), .A2(b1_r[0]), .ZN(BMaj1_3_ab) );
  AND2_X1 BMaj1_3_A2_U1 ( .A1(b1_r[2]), .A2(BMaj1_3_ab), .ZN(BMaj1_3_abc) );
  AND2_X1 BMaj1_3_A3_U1 ( .A1(n141), .A2(BMaj1_3_ab), .ZN(BMaj1_3_abd) );
  AND2_X1 BMaj1_3_A4_U1 ( .A1(n142), .A2(BMaj1_3_ab), .ZN(BMaj1_3_abe) );
  AND2_X1 BMaj1_3_A5_U1 ( .A1(b1_r[2]), .A2(b1_r[0]), .ZN(BMaj1_3_ac) );
  AND2_X1 BMaj1_3_A6_U1 ( .A1(n141), .A2(BMaj1_3_ac), .ZN(BMaj1_3_acd) );
  AND2_X1 BMaj1_3_A7_U1 ( .A1(n142), .A2(BMaj1_3_ac), .ZN(BMaj1_3_ace) );
  AND2_X1 BMaj1_3_A8_U1 ( .A1(n141), .A2(b1_r[0]), .ZN(BMaj1_3_ad) );
  AND2_X1 BMaj1_3_A9_U1 ( .A1(n142), .A2(BMaj1_3_ad), .ZN(BMaj1_3_ade) );
  AND2_X1 BMaj1_3_A10_U1 ( .A1(b1_r[2]), .A2(b1_r[1]), .ZN(BMaj1_3_bc) );
  AND2_X1 BMaj1_3_A11_U1 ( .A1(n141), .A2(BMaj1_3_bc), .ZN(BMaj1_3_bcd) );
  AND2_X1 BMaj1_3_A12_U1 ( .A1(n142), .A2(BMaj1_3_bc), .ZN(BMaj1_3_bce) );
  AND2_X1 BMaj1_3_A13_U1 ( .A1(n141), .A2(b1_r[1]), .ZN(BMaj1_3_bd) );
  AND2_X1 BMaj1_3_A14_U1 ( .A1(n142), .A2(BMaj1_3_bd), .ZN(BMaj1_3_bde) );
  AND2_X1 BMaj1_3_A15_U1 ( .A1(n141), .A2(b1_r[2]), .ZN(BMaj1_3_cd) );
  AND2_X1 BMaj1_3_A16_U1 ( .A1(n142), .A2(BMaj1_3_cd), .ZN(BMaj1_3_cde) );
  XOR2_X1 BMaj1_3_X1_U1 ( .A(BMaj1_3_abd), .B(BMaj1_3_abc), .Z(BMaj1_3_abc_abd) );
  XOR2_X1 BMaj1_3_X2_U1 ( .A(BMaj1_3_acd), .B(BMaj1_3_abe), .Z(BMaj1_3_abe_acd) );
  XOR2_X1 BMaj1_3_X3_U1 ( .A(BMaj1_3_ade), .B(BMaj1_3_ace), .Z(BMaj1_3_ace_ade) );
  XOR2_X1 BMaj1_3_X4_U1 ( .A(BMaj1_3_bce), .B(BMaj1_3_bcd), .Z(BMaj1_3_bcd_bce) );
  XOR2_X1 BMaj1_3_X5_U1 ( .A(BMaj1_3_cde), .B(BMaj1_3_bde), .Z(BMaj1_3_bde_cde) );
  XOR2_X1 BMaj1_3_X6_U1 ( .A(BMaj1_3_abe_acd), .B(BMaj1_3_abc_abd), .Z(
        BMaj1_3_abc_abd_abe_acd) );
  XOR2_X1 BMaj1_3_X7_U1 ( .A(BMaj1_3_bcd_bce), .B(BMaj1_3_ace_ade), .Z(
        BMaj1_3_ace_ade_bcd_bce) );
  XOR2_X1 BMaj1_3_X8_U1 ( .A(BMaj1_3_ace_ade_bcd_bce), .B(
        BMaj1_3_abc_abd_abe_acd), .Z(BMaj1_3_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 BMaj1_3_X9_U1 ( .A(BMaj1_3_bde_cde), .B(
        BMaj1_3_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mb1[3]) );
  AND2_X1 BMaj2_3_A1_U1 ( .A1(b2_r[1]), .A2(b2_r[0]), .ZN(BMaj2_3_ab) );
  AND2_X1 BMaj2_3_A2_U1 ( .A1(b2_r[2]), .A2(BMaj2_3_ab), .ZN(BMaj2_3_abc) );
  AND2_X1 BMaj2_3_A3_U1 ( .A1(n139), .A2(BMaj2_3_ab), .ZN(BMaj2_3_abd) );
  AND2_X1 BMaj2_3_A4_U1 ( .A1(n140), .A2(BMaj2_3_ab), .ZN(BMaj2_3_abe) );
  AND2_X1 BMaj2_3_A5_U1 ( .A1(b2_r[2]), .A2(b2_r[0]), .ZN(BMaj2_3_ac) );
  AND2_X1 BMaj2_3_A6_U1 ( .A1(n139), .A2(BMaj2_3_ac), .ZN(BMaj2_3_acd) );
  AND2_X1 BMaj2_3_A7_U1 ( .A1(n140), .A2(BMaj2_3_ac), .ZN(BMaj2_3_ace) );
  AND2_X1 BMaj2_3_A8_U1 ( .A1(n139), .A2(b2_r[0]), .ZN(BMaj2_3_ad) );
  AND2_X1 BMaj2_3_A9_U1 ( .A1(n140), .A2(BMaj2_3_ad), .ZN(BMaj2_3_ade) );
  AND2_X1 BMaj2_3_A10_U1 ( .A1(b2_r[2]), .A2(b2_r[1]), .ZN(BMaj2_3_bc) );
  AND2_X1 BMaj2_3_A11_U1 ( .A1(n139), .A2(BMaj2_3_bc), .ZN(BMaj2_3_bcd) );
  AND2_X1 BMaj2_3_A12_U1 ( .A1(n140), .A2(BMaj2_3_bc), .ZN(BMaj2_3_bce) );
  AND2_X1 BMaj2_3_A13_U1 ( .A1(n139), .A2(b2_r[1]), .ZN(BMaj2_3_bd) );
  AND2_X1 BMaj2_3_A14_U1 ( .A1(n140), .A2(BMaj2_3_bd), .ZN(BMaj2_3_bde) );
  AND2_X1 BMaj2_3_A15_U1 ( .A1(n139), .A2(b2_r[2]), .ZN(BMaj2_3_cd) );
  AND2_X1 BMaj2_3_A16_U1 ( .A1(n140), .A2(BMaj2_3_cd), .ZN(BMaj2_3_cde) );
  XOR2_X1 BMaj2_3_X1_U1 ( .A(BMaj2_3_abd), .B(BMaj2_3_abc), .Z(BMaj2_3_abc_abd) );
  XOR2_X1 BMaj2_3_X2_U1 ( .A(BMaj2_3_acd), .B(BMaj2_3_abe), .Z(BMaj2_3_abe_acd) );
  XOR2_X1 BMaj2_3_X3_U1 ( .A(BMaj2_3_ade), .B(BMaj2_3_ace), .Z(BMaj2_3_ace_ade) );
  XOR2_X1 BMaj2_3_X4_U1 ( .A(BMaj2_3_bce), .B(BMaj2_3_bcd), .Z(BMaj2_3_bcd_bce) );
  XOR2_X1 BMaj2_3_X5_U1 ( .A(BMaj2_3_cde), .B(BMaj2_3_bde), .Z(BMaj2_3_bde_cde) );
  XOR2_X1 BMaj2_3_X6_U1 ( .A(BMaj2_3_abe_acd), .B(BMaj2_3_abc_abd), .Z(
        BMaj2_3_abc_abd_abe_acd) );
  XOR2_X1 BMaj2_3_X7_U1 ( .A(BMaj2_3_bcd_bce), .B(BMaj2_3_ace_ade), .Z(
        BMaj2_3_ace_ade_bcd_bce) );
  XOR2_X1 BMaj2_3_X8_U1 ( .A(BMaj2_3_ace_ade_bcd_bce), .B(
        BMaj2_3_abc_abd_abe_acd), .Z(BMaj2_3_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 BMaj2_3_X9_U1 ( .A(BMaj2_3_bde_cde), .B(
        BMaj2_3_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mb2[3]) );
  DFF_X1 BFF0_3_Q_reg ( .D(mb0[3]), .CK(clk), .Q(mb0_r[3]) );
  DFF_X1 BFF1_3_Q_reg ( .D(mb1[3]), .CK(clk), .Q(mb1_r[3]) );
  DFF_X1 BFF2_3_Q_reg ( .D(mb2[3]), .CK(clk), .Q(mb2_r[3]) );
  DFF_X1 ABFF11_3_Q_reg ( .D(a1b1[3]), .CK(clk), .Q(a1b1_r[3]) );
  DFF_X1 ABFF12_3_Q_reg ( .D(a1b2[3]), .CK(clk), .Q(a1b2_r[3]) );
  DFF_X1 ABFF21_3_Q_reg ( .D(a2b1[3]), .CK(clk), .Q(a2b1_r[3]) );
  DFF_X1 ABFF22_3_Q_reg ( .D(a2b2[3]), .CK(clk), .Q(a2b2_r[3]) );
  DFF_X1 ABFF02_3_Q_reg ( .D(a0b2[3]), .CK(clk), .Q(a0b2_r[3]) );
  DFF_X1 ABFF20_3_Q_reg ( .D(a2b0[3]), .CK(clk), .Q(a2b0_r[3]) );
  DFF_X1 ABFF00_3_Q_reg ( .D(a0b0[3]), .CK(clk), .Q(a0b0_r[3]) );
  DFF_X1 ABFF01_3_Q_reg ( .D(a0b1[3]), .CK(clk), .Q(a0b1_r[3]) );
  DFF_X1 ABFF10_3_Q_reg ( .D(a1b0[3]), .CK(clk), .Q(a1b0_r[3]) );
  AND2_X1 CMaj0_3_A1_U1 ( .A1(c0_r[1]), .A2(c0_r[0]), .ZN(CMaj0_3_ab) );
  AND2_X1 CMaj0_3_A2_U1 ( .A1(c0_r[2]), .A2(CMaj0_3_ab), .ZN(CMaj0_3_abc) );
  AND2_X1 CMaj0_3_A3_U1 ( .A1(n137), .A2(CMaj0_3_ab), .ZN(CMaj0_3_abd) );
  AND2_X1 CMaj0_3_A4_U1 ( .A1(n138), .A2(CMaj0_3_ab), .ZN(CMaj0_3_abe) );
  AND2_X1 CMaj0_3_A5_U1 ( .A1(c0_r[2]), .A2(c0_r[0]), .ZN(CMaj0_3_ac) );
  AND2_X1 CMaj0_3_A6_U1 ( .A1(n137), .A2(CMaj0_3_ac), .ZN(CMaj0_3_acd) );
  AND2_X1 CMaj0_3_A7_U1 ( .A1(n138), .A2(CMaj0_3_ac), .ZN(CMaj0_3_ace) );
  AND2_X1 CMaj0_3_A8_U1 ( .A1(n137), .A2(c0_r[0]), .ZN(CMaj0_3_ad) );
  AND2_X1 CMaj0_3_A9_U1 ( .A1(n138), .A2(CMaj0_3_ad), .ZN(CMaj0_3_ade) );
  AND2_X1 CMaj0_3_A10_U1 ( .A1(c0_r[2]), .A2(c0_r[1]), .ZN(CMaj0_3_bc) );
  AND2_X1 CMaj0_3_A11_U1 ( .A1(n137), .A2(CMaj0_3_bc), .ZN(CMaj0_3_bcd) );
  AND2_X1 CMaj0_3_A12_U1 ( .A1(n138), .A2(CMaj0_3_bc), .ZN(CMaj0_3_bce) );
  AND2_X1 CMaj0_3_A13_U1 ( .A1(n137), .A2(c0_r[1]), .ZN(CMaj0_3_bd) );
  AND2_X1 CMaj0_3_A14_U1 ( .A1(n138), .A2(CMaj0_3_bd), .ZN(CMaj0_3_bde) );
  AND2_X1 CMaj0_3_A15_U1 ( .A1(n137), .A2(c0_r[2]), .ZN(CMaj0_3_cd) );
  AND2_X1 CMaj0_3_A16_U1 ( .A1(n138), .A2(CMaj0_3_cd), .ZN(CMaj0_3_cde) );
  XOR2_X1 CMaj0_3_X1_U1 ( .A(CMaj0_3_abd), .B(CMaj0_3_abc), .Z(CMaj0_3_abc_abd) );
  XOR2_X1 CMaj0_3_X2_U1 ( .A(CMaj0_3_acd), .B(CMaj0_3_abe), .Z(CMaj0_3_abe_acd) );
  XOR2_X1 CMaj0_3_X3_U1 ( .A(CMaj0_3_ade), .B(CMaj0_3_ace), .Z(CMaj0_3_ace_ade) );
  XOR2_X1 CMaj0_3_X4_U1 ( .A(CMaj0_3_bce), .B(CMaj0_3_bcd), .Z(CMaj0_3_bcd_bce) );
  XOR2_X1 CMaj0_3_X5_U1 ( .A(CMaj0_3_cde), .B(CMaj0_3_bde), .Z(CMaj0_3_bde_cde) );
  XOR2_X1 CMaj0_3_X6_U1 ( .A(CMaj0_3_abe_acd), .B(CMaj0_3_abc_abd), .Z(
        CMaj0_3_abc_abd_abe_acd) );
  XOR2_X1 CMaj0_3_X7_U1 ( .A(CMaj0_3_bcd_bce), .B(CMaj0_3_ace_ade), .Z(
        CMaj0_3_ace_ade_bcd_bce) );
  XOR2_X1 CMaj0_3_X8_U1 ( .A(CMaj0_3_ace_ade_bcd_bce), .B(
        CMaj0_3_abc_abd_abe_acd), .Z(CMaj0_3_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 CMaj0_3_X9_U1 ( .A(CMaj0_3_bde_cde), .B(
        CMaj0_3_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mc0[3]) );
  AND2_X1 CMaj1_3_A1_U1 ( .A1(c1_r[1]), .A2(c1_r[0]), .ZN(CMaj1_3_ab) );
  AND2_X1 CMaj1_3_A2_U1 ( .A1(c1_r[2]), .A2(CMaj1_3_ab), .ZN(CMaj1_3_abc) );
  AND2_X1 CMaj1_3_A3_U1 ( .A1(n135), .A2(CMaj1_3_ab), .ZN(CMaj1_3_abd) );
  AND2_X1 CMaj1_3_A4_U1 ( .A1(n136), .A2(CMaj1_3_ab), .ZN(CMaj1_3_abe) );
  AND2_X1 CMaj1_3_A5_U1 ( .A1(c1_r[2]), .A2(c1_r[0]), .ZN(CMaj1_3_ac) );
  AND2_X1 CMaj1_3_A6_U1 ( .A1(n135), .A2(CMaj1_3_ac), .ZN(CMaj1_3_acd) );
  AND2_X1 CMaj1_3_A7_U1 ( .A1(n136), .A2(CMaj1_3_ac), .ZN(CMaj1_3_ace) );
  AND2_X1 CMaj1_3_A8_U1 ( .A1(n135), .A2(c1_r[0]), .ZN(CMaj1_3_ad) );
  AND2_X1 CMaj1_3_A9_U1 ( .A1(n136), .A2(CMaj1_3_ad), .ZN(CMaj1_3_ade) );
  AND2_X1 CMaj1_3_A10_U1 ( .A1(c1_r[2]), .A2(c1_r[1]), .ZN(CMaj1_3_bc) );
  AND2_X1 CMaj1_3_A11_U1 ( .A1(n135), .A2(CMaj1_3_bc), .ZN(CMaj1_3_bcd) );
  AND2_X1 CMaj1_3_A12_U1 ( .A1(n136), .A2(CMaj1_3_bc), .ZN(CMaj1_3_bce) );
  AND2_X1 CMaj1_3_A13_U1 ( .A1(n135), .A2(c1_r[1]), .ZN(CMaj1_3_bd) );
  AND2_X1 CMaj1_3_A14_U1 ( .A1(n136), .A2(CMaj1_3_bd), .ZN(CMaj1_3_bde) );
  AND2_X1 CMaj1_3_A15_U1 ( .A1(n135), .A2(c1_r[2]), .ZN(CMaj1_3_cd) );
  AND2_X1 CMaj1_3_A16_U1 ( .A1(n136), .A2(CMaj1_3_cd), .ZN(CMaj1_3_cde) );
  XOR2_X1 CMaj1_3_X1_U1 ( .A(CMaj1_3_abd), .B(CMaj1_3_abc), .Z(CMaj1_3_abc_abd) );
  XOR2_X1 CMaj1_3_X2_U1 ( .A(CMaj1_3_acd), .B(CMaj1_3_abe), .Z(CMaj1_3_abe_acd) );
  XOR2_X1 CMaj1_3_X3_U1 ( .A(CMaj1_3_ade), .B(CMaj1_3_ace), .Z(CMaj1_3_ace_ade) );
  XOR2_X1 CMaj1_3_X4_U1 ( .A(CMaj1_3_bce), .B(CMaj1_3_bcd), .Z(CMaj1_3_bcd_bce) );
  XOR2_X1 CMaj1_3_X5_U1 ( .A(CMaj1_3_cde), .B(CMaj1_3_bde), .Z(CMaj1_3_bde_cde) );
  XOR2_X1 CMaj1_3_X6_U1 ( .A(CMaj1_3_abe_acd), .B(CMaj1_3_abc_abd), .Z(
        CMaj1_3_abc_abd_abe_acd) );
  XOR2_X1 CMaj1_3_X7_U1 ( .A(CMaj1_3_bcd_bce), .B(CMaj1_3_ace_ade), .Z(
        CMaj1_3_ace_ade_bcd_bce) );
  XOR2_X1 CMaj1_3_X8_U1 ( .A(CMaj1_3_ace_ade_bcd_bce), .B(
        CMaj1_3_abc_abd_abe_acd), .Z(CMaj1_3_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 CMaj1_3_X9_U1 ( .A(CMaj1_3_bde_cde), .B(
        CMaj1_3_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mc1[3]) );
  AND2_X1 CMaj2_3_A1_U1 ( .A1(c2_r[1]), .A2(c2_r[0]), .ZN(CMaj2_3_ab) );
  AND2_X1 CMaj2_3_A2_U1 ( .A1(c2_r[2]), .A2(CMaj2_3_ab), .ZN(CMaj2_3_abc) );
  AND2_X1 CMaj2_3_A3_U1 ( .A1(n133), .A2(CMaj2_3_ab), .ZN(CMaj2_3_abd) );
  AND2_X1 CMaj2_3_A4_U1 ( .A1(n134), .A2(CMaj2_3_ab), .ZN(CMaj2_3_abe) );
  AND2_X1 CMaj2_3_A5_U1 ( .A1(c2_r[2]), .A2(c2_r[0]), .ZN(CMaj2_3_ac) );
  AND2_X1 CMaj2_3_A6_U1 ( .A1(n133), .A2(CMaj2_3_ac), .ZN(CMaj2_3_acd) );
  AND2_X1 CMaj2_3_A7_U1 ( .A1(n134), .A2(CMaj2_3_ac), .ZN(CMaj2_3_ace) );
  AND2_X1 CMaj2_3_A8_U1 ( .A1(n133), .A2(c2_r[0]), .ZN(CMaj2_3_ad) );
  AND2_X1 CMaj2_3_A9_U1 ( .A1(n134), .A2(CMaj2_3_ad), .ZN(CMaj2_3_ade) );
  AND2_X1 CMaj2_3_A10_U1 ( .A1(c2_r[2]), .A2(c2_r[1]), .ZN(CMaj2_3_bc) );
  AND2_X1 CMaj2_3_A11_U1 ( .A1(n133), .A2(CMaj2_3_bc), .ZN(CMaj2_3_bcd) );
  AND2_X1 CMaj2_3_A12_U1 ( .A1(n134), .A2(CMaj2_3_bc), .ZN(CMaj2_3_bce) );
  AND2_X1 CMaj2_3_A13_U1 ( .A1(n133), .A2(c2_r[1]), .ZN(CMaj2_3_bd) );
  AND2_X1 CMaj2_3_A14_U1 ( .A1(n134), .A2(CMaj2_3_bd), .ZN(CMaj2_3_bde) );
  AND2_X1 CMaj2_3_A15_U1 ( .A1(n133), .A2(c2_r[2]), .ZN(CMaj2_3_cd) );
  AND2_X1 CMaj2_3_A16_U1 ( .A1(n134), .A2(CMaj2_3_cd), .ZN(CMaj2_3_cde) );
  XOR2_X1 CMaj2_3_X1_U1 ( .A(CMaj2_3_abd), .B(CMaj2_3_abc), .Z(CMaj2_3_abc_abd) );
  XOR2_X1 CMaj2_3_X2_U1 ( .A(CMaj2_3_acd), .B(CMaj2_3_abe), .Z(CMaj2_3_abe_acd) );
  XOR2_X1 CMaj2_3_X3_U1 ( .A(CMaj2_3_ade), .B(CMaj2_3_ace), .Z(CMaj2_3_ace_ade) );
  XOR2_X1 CMaj2_3_X4_U1 ( .A(CMaj2_3_bce), .B(CMaj2_3_bcd), .Z(CMaj2_3_bcd_bce) );
  XOR2_X1 CMaj2_3_X5_U1 ( .A(CMaj2_3_cde), .B(CMaj2_3_bde), .Z(CMaj2_3_bde_cde) );
  XOR2_X1 CMaj2_3_X6_U1 ( .A(CMaj2_3_abe_acd), .B(CMaj2_3_abc_abd), .Z(
        CMaj2_3_abc_abd_abe_acd) );
  XOR2_X1 CMaj2_3_X7_U1 ( .A(CMaj2_3_bcd_bce), .B(CMaj2_3_ace_ade), .Z(
        CMaj2_3_ace_ade_bcd_bce) );
  XOR2_X1 CMaj2_3_X8_U1 ( .A(CMaj2_3_ace_ade_bcd_bce), .B(
        CMaj2_3_abc_abd_abe_acd), .Z(CMaj2_3_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 CMaj2_3_X9_U1 ( .A(CMaj2_3_bde_cde), .B(
        CMaj2_3_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mc2[3]) );
  DFF_X1 CFF0_3_Q_reg ( .D(mc0[3]), .CK(clk), .Q(c0[3]) );
  DFF_X1 CFF1_3_Q_reg ( .D(mc1[3]), .CK(clk), .Q(c1[3]) );
  DFF_X1 CFF2_3_Q_reg ( .D(mc2[3]), .CK(clk), .Q(c2[3]) );
  XOR2_X1 RXOR01_4_U1 ( .A(r1), .B(r0), .Z(r01[4]) );
  XOR2_X1 RXOR46_4_U1 ( .A(r6), .B(r4), .Z(r46[4]) );
  DFF_X1 RFF01_4_Q_reg ( .D(r01[4]), .CK(clk), .Q(r01_r[4]) );
  AND2_X1 BMaj0_4_A1_U1 ( .A1(b0_r[1]), .A2(b0_r[0]), .ZN(BMaj0_4_ab) );
  AND2_X1 BMaj0_4_A2_U1 ( .A1(b0_r[2]), .A2(BMaj0_4_ab), .ZN(BMaj0_4_abc) );
  AND2_X1 BMaj0_4_A3_U1 ( .A1(n143), .A2(BMaj0_4_ab), .ZN(BMaj0_4_abd) );
  AND2_X1 BMaj0_4_A4_U1 ( .A1(n144), .A2(BMaj0_4_ab), .ZN(BMaj0_4_abe) );
  AND2_X1 BMaj0_4_A5_U1 ( .A1(b0_r[2]), .A2(b0_r[0]), .ZN(BMaj0_4_ac) );
  AND2_X1 BMaj0_4_A6_U1 ( .A1(n143), .A2(BMaj0_4_ac), .ZN(BMaj0_4_acd) );
  AND2_X1 BMaj0_4_A7_U1 ( .A1(n144), .A2(BMaj0_4_ac), .ZN(BMaj0_4_ace) );
  AND2_X1 BMaj0_4_A8_U1 ( .A1(n143), .A2(b0_r[0]), .ZN(BMaj0_4_ad) );
  AND2_X1 BMaj0_4_A9_U1 ( .A1(n144), .A2(BMaj0_4_ad), .ZN(BMaj0_4_ade) );
  AND2_X1 BMaj0_4_A10_U1 ( .A1(b0_r[2]), .A2(b0_r[1]), .ZN(BMaj0_4_bc) );
  AND2_X1 BMaj0_4_A11_U1 ( .A1(n143), .A2(BMaj0_4_bc), .ZN(BMaj0_4_bcd) );
  AND2_X1 BMaj0_4_A12_U1 ( .A1(n144), .A2(BMaj0_4_bc), .ZN(BMaj0_4_bce) );
  AND2_X1 BMaj0_4_A13_U1 ( .A1(n143), .A2(b0_r[1]), .ZN(BMaj0_4_bd) );
  AND2_X1 BMaj0_4_A14_U1 ( .A1(n144), .A2(BMaj0_4_bd), .ZN(BMaj0_4_bde) );
  AND2_X1 BMaj0_4_A15_U1 ( .A1(n143), .A2(b0_r[2]), .ZN(BMaj0_4_cd) );
  AND2_X1 BMaj0_4_A16_U1 ( .A1(n144), .A2(BMaj0_4_cd), .ZN(BMaj0_4_cde) );
  XOR2_X1 BMaj0_4_X1_U1 ( .A(BMaj0_4_abd), .B(BMaj0_4_abc), .Z(BMaj0_4_abc_abd) );
  XOR2_X1 BMaj0_4_X2_U1 ( .A(BMaj0_4_acd), .B(BMaj0_4_abe), .Z(BMaj0_4_abe_acd) );
  XOR2_X1 BMaj0_4_X3_U1 ( .A(BMaj0_4_ade), .B(BMaj0_4_ace), .Z(BMaj0_4_ace_ade) );
  XOR2_X1 BMaj0_4_X4_U1 ( .A(BMaj0_4_bce), .B(BMaj0_4_bcd), .Z(BMaj0_4_bcd_bce) );
  XOR2_X1 BMaj0_4_X5_U1 ( .A(BMaj0_4_cde), .B(BMaj0_4_bde), .Z(BMaj0_4_bde_cde) );
  XOR2_X1 BMaj0_4_X6_U1 ( .A(BMaj0_4_abe_acd), .B(BMaj0_4_abc_abd), .Z(
        BMaj0_4_abc_abd_abe_acd) );
  XOR2_X1 BMaj0_4_X7_U1 ( .A(BMaj0_4_bcd_bce), .B(BMaj0_4_ace_ade), .Z(
        BMaj0_4_ace_ade_bcd_bce) );
  XOR2_X1 BMaj0_4_X8_U1 ( .A(BMaj0_4_ace_ade_bcd_bce), .B(
        BMaj0_4_abc_abd_abe_acd), .Z(BMaj0_4_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 BMaj0_4_X9_U1 ( .A(BMaj0_4_bde_cde), .B(
        BMaj0_4_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mb0[4]) );
  AND2_X1 BMaj1_4_A1_U1 ( .A1(b1_r[1]), .A2(b1_r[0]), .ZN(BMaj1_4_ab) );
  AND2_X1 BMaj1_4_A2_U1 ( .A1(b1_r[2]), .A2(BMaj1_4_ab), .ZN(BMaj1_4_abc) );
  AND2_X1 BMaj1_4_A3_U1 ( .A1(n141), .A2(BMaj1_4_ab), .ZN(BMaj1_4_abd) );
  AND2_X1 BMaj1_4_A4_U1 ( .A1(n142), .A2(BMaj1_4_ab), .ZN(BMaj1_4_abe) );
  AND2_X1 BMaj1_4_A5_U1 ( .A1(b1_r[2]), .A2(b1_r[0]), .ZN(BMaj1_4_ac) );
  AND2_X1 BMaj1_4_A6_U1 ( .A1(n141), .A2(BMaj1_4_ac), .ZN(BMaj1_4_acd) );
  AND2_X1 BMaj1_4_A7_U1 ( .A1(n142), .A2(BMaj1_4_ac), .ZN(BMaj1_4_ace) );
  AND2_X1 BMaj1_4_A8_U1 ( .A1(n141), .A2(b1_r[0]), .ZN(BMaj1_4_ad) );
  AND2_X1 BMaj1_4_A9_U1 ( .A1(n142), .A2(BMaj1_4_ad), .ZN(BMaj1_4_ade) );
  AND2_X1 BMaj1_4_A10_U1 ( .A1(b1_r[2]), .A2(b1_r[1]), .ZN(BMaj1_4_bc) );
  AND2_X1 BMaj1_4_A11_U1 ( .A1(n141), .A2(BMaj1_4_bc), .ZN(BMaj1_4_bcd) );
  AND2_X1 BMaj1_4_A12_U1 ( .A1(n142), .A2(BMaj1_4_bc), .ZN(BMaj1_4_bce) );
  AND2_X1 BMaj1_4_A13_U1 ( .A1(n141), .A2(b1_r[1]), .ZN(BMaj1_4_bd) );
  AND2_X1 BMaj1_4_A14_U1 ( .A1(n142), .A2(BMaj1_4_bd), .ZN(BMaj1_4_bde) );
  AND2_X1 BMaj1_4_A15_U1 ( .A1(n141), .A2(b1_r[2]), .ZN(BMaj1_4_cd) );
  AND2_X1 BMaj1_4_A16_U1 ( .A1(n142), .A2(BMaj1_4_cd), .ZN(BMaj1_4_cde) );
  XOR2_X1 BMaj1_4_X1_U1 ( .A(BMaj1_4_abd), .B(BMaj1_4_abc), .Z(BMaj1_4_abc_abd) );
  XOR2_X1 BMaj1_4_X2_U1 ( .A(BMaj1_4_acd), .B(BMaj1_4_abe), .Z(BMaj1_4_abe_acd) );
  XOR2_X1 BMaj1_4_X3_U1 ( .A(BMaj1_4_ade), .B(BMaj1_4_ace), .Z(BMaj1_4_ace_ade) );
  XOR2_X1 BMaj1_4_X4_U1 ( .A(BMaj1_4_bce), .B(BMaj1_4_bcd), .Z(BMaj1_4_bcd_bce) );
  XOR2_X1 BMaj1_4_X5_U1 ( .A(BMaj1_4_cde), .B(BMaj1_4_bde), .Z(BMaj1_4_bde_cde) );
  XOR2_X1 BMaj1_4_X6_U1 ( .A(BMaj1_4_abe_acd), .B(BMaj1_4_abc_abd), .Z(
        BMaj1_4_abc_abd_abe_acd) );
  XOR2_X1 BMaj1_4_X7_U1 ( .A(BMaj1_4_bcd_bce), .B(BMaj1_4_ace_ade), .Z(
        BMaj1_4_ace_ade_bcd_bce) );
  XOR2_X1 BMaj1_4_X8_U1 ( .A(BMaj1_4_ace_ade_bcd_bce), .B(
        BMaj1_4_abc_abd_abe_acd), .Z(BMaj1_4_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 BMaj1_4_X9_U1 ( .A(BMaj1_4_bde_cde), .B(
        BMaj1_4_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mb1[4]) );
  AND2_X1 BMaj2_4_A1_U1 ( .A1(b2_r[1]), .A2(b2_r[0]), .ZN(BMaj2_4_ab) );
  AND2_X1 BMaj2_4_A2_U1 ( .A1(b2_r[2]), .A2(BMaj2_4_ab), .ZN(BMaj2_4_abc) );
  AND2_X1 BMaj2_4_A3_U1 ( .A1(n139), .A2(BMaj2_4_ab), .ZN(BMaj2_4_abd) );
  AND2_X1 BMaj2_4_A4_U1 ( .A1(n140), .A2(BMaj2_4_ab), .ZN(BMaj2_4_abe) );
  AND2_X1 BMaj2_4_A5_U1 ( .A1(b2_r[2]), .A2(b2_r[0]), .ZN(BMaj2_4_ac) );
  AND2_X1 BMaj2_4_A6_U1 ( .A1(n139), .A2(BMaj2_4_ac), .ZN(BMaj2_4_acd) );
  AND2_X1 BMaj2_4_A7_U1 ( .A1(n140), .A2(BMaj2_4_ac), .ZN(BMaj2_4_ace) );
  AND2_X1 BMaj2_4_A8_U1 ( .A1(n139), .A2(b2_r[0]), .ZN(BMaj2_4_ad) );
  AND2_X1 BMaj2_4_A9_U1 ( .A1(n140), .A2(BMaj2_4_ad), .ZN(BMaj2_4_ade) );
  AND2_X1 BMaj2_4_A10_U1 ( .A1(b2_r[2]), .A2(b2_r[1]), .ZN(BMaj2_4_bc) );
  AND2_X1 BMaj2_4_A11_U1 ( .A1(n139), .A2(BMaj2_4_bc), .ZN(BMaj2_4_bcd) );
  AND2_X1 BMaj2_4_A12_U1 ( .A1(n140), .A2(BMaj2_4_bc), .ZN(BMaj2_4_bce) );
  AND2_X1 BMaj2_4_A13_U1 ( .A1(n139), .A2(b2_r[1]), .ZN(BMaj2_4_bd) );
  AND2_X1 BMaj2_4_A14_U1 ( .A1(n140), .A2(BMaj2_4_bd), .ZN(BMaj2_4_bde) );
  AND2_X1 BMaj2_4_A15_U1 ( .A1(n139), .A2(b2_r[2]), .ZN(BMaj2_4_cd) );
  AND2_X1 BMaj2_4_A16_U1 ( .A1(n140), .A2(BMaj2_4_cd), .ZN(BMaj2_4_cde) );
  XOR2_X1 BMaj2_4_X1_U1 ( .A(BMaj2_4_abd), .B(BMaj2_4_abc), .Z(BMaj2_4_abc_abd) );
  XOR2_X1 BMaj2_4_X2_U1 ( .A(BMaj2_4_acd), .B(BMaj2_4_abe), .Z(BMaj2_4_abe_acd) );
  XOR2_X1 BMaj2_4_X3_U1 ( .A(BMaj2_4_ade), .B(BMaj2_4_ace), .Z(BMaj2_4_ace_ade) );
  XOR2_X1 BMaj2_4_X4_U1 ( .A(BMaj2_4_bce), .B(BMaj2_4_bcd), .Z(BMaj2_4_bcd_bce) );
  XOR2_X1 BMaj2_4_X5_U1 ( .A(BMaj2_4_cde), .B(BMaj2_4_bde), .Z(BMaj2_4_bde_cde) );
  XOR2_X1 BMaj2_4_X6_U1 ( .A(BMaj2_4_abe_acd), .B(BMaj2_4_abc_abd), .Z(
        BMaj2_4_abc_abd_abe_acd) );
  XOR2_X1 BMaj2_4_X7_U1 ( .A(BMaj2_4_bcd_bce), .B(BMaj2_4_ace_ade), .Z(
        BMaj2_4_ace_ade_bcd_bce) );
  XOR2_X1 BMaj2_4_X8_U1 ( .A(BMaj2_4_ace_ade_bcd_bce), .B(
        BMaj2_4_abc_abd_abe_acd), .Z(BMaj2_4_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 BMaj2_4_X9_U1 ( .A(BMaj2_4_bde_cde), .B(
        BMaj2_4_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mb2[4]) );
  DFF_X1 BFF0_4_Q_reg ( .D(mb0[4]), .CK(clk), .Q(mb0_r[4]) );
  DFF_X1 BFF1_4_Q_reg ( .D(mb1[4]), .CK(clk), .Q(mb1_r[4]) );
  DFF_X1 BFF2_4_Q_reg ( .D(mb2[4]), .CK(clk), .Q(mb2_r[4]) );
  DFF_X1 ABFF11_4_Q_reg ( .D(a1b1[4]), .CK(clk), .Q(a1b1_r[4]) );
  DFF_X1 ABFF12_4_Q_reg ( .D(a1b2[4]), .CK(clk), .Q(a1b2_r[4]) );
  DFF_X1 ABFF21_4_Q_reg ( .D(a2b1[4]), .CK(clk), .Q(a2b1_r[4]) );
  DFF_X1 ABFF22_4_Q_reg ( .D(a2b2[4]), .CK(clk), .Q(a2b2_r[4]) );
  DFF_X1 ABFF02_4_Q_reg ( .D(a0b2[4]), .CK(clk), .Q(a0b2_r[4]) );
  DFF_X1 ABFF20_4_Q_reg ( .D(a2b0[4]), .CK(clk), .Q(a2b0_r[4]) );
  DFF_X1 ABFF00_4_Q_reg ( .D(a0b0[4]), .CK(clk), .Q(a0b0_r[4]) );
  DFF_X1 ABFF01_4_Q_reg ( .D(a0b1[4]), .CK(clk), .Q(a0b1_r[4]) );
  DFF_X1 ABFF10_4_Q_reg ( .D(a1b0[4]), .CK(clk), .Q(a1b0_r[4]) );
  AND2_X1 CMaj0_4_A1_U1 ( .A1(c0_r[1]), .A2(c0_r[0]), .ZN(CMaj0_4_ab) );
  AND2_X1 CMaj0_4_A2_U1 ( .A1(c0_r[2]), .A2(CMaj0_4_ab), .ZN(CMaj0_4_abc) );
  AND2_X1 CMaj0_4_A3_U1 ( .A1(n137), .A2(CMaj0_4_ab), .ZN(CMaj0_4_abd) );
  AND2_X1 CMaj0_4_A4_U1 ( .A1(n138), .A2(CMaj0_4_ab), .ZN(CMaj0_4_abe) );
  AND2_X1 CMaj0_4_A5_U1 ( .A1(c0_r[2]), .A2(c0_r[0]), .ZN(CMaj0_4_ac) );
  AND2_X1 CMaj0_4_A6_U1 ( .A1(n137), .A2(CMaj0_4_ac), .ZN(CMaj0_4_acd) );
  AND2_X1 CMaj0_4_A7_U1 ( .A1(n138), .A2(CMaj0_4_ac), .ZN(CMaj0_4_ace) );
  AND2_X1 CMaj0_4_A8_U1 ( .A1(n137), .A2(c0_r[0]), .ZN(CMaj0_4_ad) );
  AND2_X1 CMaj0_4_A9_U1 ( .A1(n138), .A2(CMaj0_4_ad), .ZN(CMaj0_4_ade) );
  AND2_X1 CMaj0_4_A10_U1 ( .A1(c0_r[2]), .A2(c0_r[1]), .ZN(CMaj0_4_bc) );
  AND2_X1 CMaj0_4_A11_U1 ( .A1(n137), .A2(CMaj0_4_bc), .ZN(CMaj0_4_bcd) );
  AND2_X1 CMaj0_4_A12_U1 ( .A1(n138), .A2(CMaj0_4_bc), .ZN(CMaj0_4_bce) );
  AND2_X1 CMaj0_4_A13_U1 ( .A1(n137), .A2(c0_r[1]), .ZN(CMaj0_4_bd) );
  AND2_X1 CMaj0_4_A14_U1 ( .A1(n138), .A2(CMaj0_4_bd), .ZN(CMaj0_4_bde) );
  AND2_X1 CMaj0_4_A15_U1 ( .A1(n137), .A2(c0_r[2]), .ZN(CMaj0_4_cd) );
  AND2_X1 CMaj0_4_A16_U1 ( .A1(n138), .A2(CMaj0_4_cd), .ZN(CMaj0_4_cde) );
  XOR2_X1 CMaj0_4_X1_U1 ( .A(CMaj0_4_abd), .B(CMaj0_4_abc), .Z(CMaj0_4_abc_abd) );
  XOR2_X1 CMaj0_4_X2_U1 ( .A(CMaj0_4_acd), .B(CMaj0_4_abe), .Z(CMaj0_4_abe_acd) );
  XOR2_X1 CMaj0_4_X3_U1 ( .A(CMaj0_4_ade), .B(CMaj0_4_ace), .Z(CMaj0_4_ace_ade) );
  XOR2_X1 CMaj0_4_X4_U1 ( .A(CMaj0_4_bce), .B(CMaj0_4_bcd), .Z(CMaj0_4_bcd_bce) );
  XOR2_X1 CMaj0_4_X5_U1 ( .A(CMaj0_4_cde), .B(CMaj0_4_bde), .Z(CMaj0_4_bde_cde) );
  XOR2_X1 CMaj0_4_X6_U1 ( .A(CMaj0_4_abe_acd), .B(CMaj0_4_abc_abd), .Z(
        CMaj0_4_abc_abd_abe_acd) );
  XOR2_X1 CMaj0_4_X7_U1 ( .A(CMaj0_4_bcd_bce), .B(CMaj0_4_ace_ade), .Z(
        CMaj0_4_ace_ade_bcd_bce) );
  XOR2_X1 CMaj0_4_X8_U1 ( .A(CMaj0_4_ace_ade_bcd_bce), .B(
        CMaj0_4_abc_abd_abe_acd), .Z(CMaj0_4_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 CMaj0_4_X9_U1 ( .A(CMaj0_4_bde_cde), .B(
        CMaj0_4_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mc0[4]) );
  AND2_X1 CMaj1_4_A1_U1 ( .A1(c1_r[1]), .A2(c1_r[0]), .ZN(CMaj1_4_ab) );
  AND2_X1 CMaj1_4_A2_U1 ( .A1(c1_r[2]), .A2(CMaj1_4_ab), .ZN(CMaj1_4_abc) );
  AND2_X1 CMaj1_4_A3_U1 ( .A1(n135), .A2(CMaj1_4_ab), .ZN(CMaj1_4_abd) );
  AND2_X1 CMaj1_4_A4_U1 ( .A1(n136), .A2(CMaj1_4_ab), .ZN(CMaj1_4_abe) );
  AND2_X1 CMaj1_4_A5_U1 ( .A1(c1_r[2]), .A2(c1_r[0]), .ZN(CMaj1_4_ac) );
  AND2_X1 CMaj1_4_A6_U1 ( .A1(n135), .A2(CMaj1_4_ac), .ZN(CMaj1_4_acd) );
  AND2_X1 CMaj1_4_A7_U1 ( .A1(n136), .A2(CMaj1_4_ac), .ZN(CMaj1_4_ace) );
  AND2_X1 CMaj1_4_A8_U1 ( .A1(n135), .A2(c1_r[0]), .ZN(CMaj1_4_ad) );
  AND2_X1 CMaj1_4_A9_U1 ( .A1(n136), .A2(CMaj1_4_ad), .ZN(CMaj1_4_ade) );
  AND2_X1 CMaj1_4_A10_U1 ( .A1(c1_r[2]), .A2(c1_r[1]), .ZN(CMaj1_4_bc) );
  AND2_X1 CMaj1_4_A11_U1 ( .A1(n135), .A2(CMaj1_4_bc), .ZN(CMaj1_4_bcd) );
  AND2_X1 CMaj1_4_A12_U1 ( .A1(n136), .A2(CMaj1_4_bc), .ZN(CMaj1_4_bce) );
  AND2_X1 CMaj1_4_A13_U1 ( .A1(n135), .A2(c1_r[1]), .ZN(CMaj1_4_bd) );
  AND2_X1 CMaj1_4_A14_U1 ( .A1(n136), .A2(CMaj1_4_bd), .ZN(CMaj1_4_bde) );
  AND2_X1 CMaj1_4_A15_U1 ( .A1(n135), .A2(c1_r[2]), .ZN(CMaj1_4_cd) );
  AND2_X1 CMaj1_4_A16_U1 ( .A1(n136), .A2(CMaj1_4_cd), .ZN(CMaj1_4_cde) );
  XOR2_X1 CMaj1_4_X1_U1 ( .A(CMaj1_4_abd), .B(CMaj1_4_abc), .Z(CMaj1_4_abc_abd) );
  XOR2_X1 CMaj1_4_X2_U1 ( .A(CMaj1_4_acd), .B(CMaj1_4_abe), .Z(CMaj1_4_abe_acd) );
  XOR2_X1 CMaj1_4_X3_U1 ( .A(CMaj1_4_ade), .B(CMaj1_4_ace), .Z(CMaj1_4_ace_ade) );
  XOR2_X1 CMaj1_4_X4_U1 ( .A(CMaj1_4_bce), .B(CMaj1_4_bcd), .Z(CMaj1_4_bcd_bce) );
  XOR2_X1 CMaj1_4_X5_U1 ( .A(CMaj1_4_cde), .B(CMaj1_4_bde), .Z(CMaj1_4_bde_cde) );
  XOR2_X1 CMaj1_4_X6_U1 ( .A(CMaj1_4_abe_acd), .B(CMaj1_4_abc_abd), .Z(
        CMaj1_4_abc_abd_abe_acd) );
  XOR2_X1 CMaj1_4_X7_U1 ( .A(CMaj1_4_bcd_bce), .B(CMaj1_4_ace_ade), .Z(
        CMaj1_4_ace_ade_bcd_bce) );
  XOR2_X1 CMaj1_4_X8_U1 ( .A(CMaj1_4_ace_ade_bcd_bce), .B(
        CMaj1_4_abc_abd_abe_acd), .Z(CMaj1_4_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 CMaj1_4_X9_U1 ( .A(CMaj1_4_bde_cde), .B(
        CMaj1_4_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mc1[4]) );
  AND2_X1 CMaj2_4_A1_U1 ( .A1(c2_r[1]), .A2(c2_r[0]), .ZN(CMaj2_4_ab) );
  AND2_X1 CMaj2_4_A2_U1 ( .A1(c2_r[2]), .A2(CMaj2_4_ab), .ZN(CMaj2_4_abc) );
  AND2_X1 CMaj2_4_A3_U1 ( .A1(n133), .A2(CMaj2_4_ab), .ZN(CMaj2_4_abd) );
  AND2_X1 CMaj2_4_A4_U1 ( .A1(n134), .A2(CMaj2_4_ab), .ZN(CMaj2_4_abe) );
  AND2_X1 CMaj2_4_A5_U1 ( .A1(c2_r[2]), .A2(c2_r[0]), .ZN(CMaj2_4_ac) );
  AND2_X1 CMaj2_4_A6_U1 ( .A1(n133), .A2(CMaj2_4_ac), .ZN(CMaj2_4_acd) );
  AND2_X1 CMaj2_4_A7_U1 ( .A1(n134), .A2(CMaj2_4_ac), .ZN(CMaj2_4_ace) );
  AND2_X1 CMaj2_4_A8_U1 ( .A1(n133), .A2(c2_r[0]), .ZN(CMaj2_4_ad) );
  AND2_X1 CMaj2_4_A9_U1 ( .A1(n134), .A2(CMaj2_4_ad), .ZN(CMaj2_4_ade) );
  AND2_X1 CMaj2_4_A10_U1 ( .A1(c2_r[2]), .A2(c2_r[1]), .ZN(CMaj2_4_bc) );
  AND2_X1 CMaj2_4_A11_U1 ( .A1(n133), .A2(CMaj2_4_bc), .ZN(CMaj2_4_bcd) );
  AND2_X1 CMaj2_4_A12_U1 ( .A1(n134), .A2(CMaj2_4_bc), .ZN(CMaj2_4_bce) );
  AND2_X1 CMaj2_4_A13_U1 ( .A1(n133), .A2(c2_r[1]), .ZN(CMaj2_4_bd) );
  AND2_X1 CMaj2_4_A14_U1 ( .A1(n134), .A2(CMaj2_4_bd), .ZN(CMaj2_4_bde) );
  AND2_X1 CMaj2_4_A15_U1 ( .A1(n133), .A2(c2_r[2]), .ZN(CMaj2_4_cd) );
  AND2_X1 CMaj2_4_A16_U1 ( .A1(n134), .A2(CMaj2_4_cd), .ZN(CMaj2_4_cde) );
  XOR2_X1 CMaj2_4_X1_U1 ( .A(CMaj2_4_abd), .B(CMaj2_4_abc), .Z(CMaj2_4_abc_abd) );
  XOR2_X1 CMaj2_4_X2_U1 ( .A(CMaj2_4_acd), .B(CMaj2_4_abe), .Z(CMaj2_4_abe_acd) );
  XOR2_X1 CMaj2_4_X3_U1 ( .A(CMaj2_4_ade), .B(CMaj2_4_ace), .Z(CMaj2_4_ace_ade) );
  XOR2_X1 CMaj2_4_X4_U1 ( .A(CMaj2_4_bce), .B(CMaj2_4_bcd), .Z(CMaj2_4_bcd_bce) );
  XOR2_X1 CMaj2_4_X5_U1 ( .A(CMaj2_4_cde), .B(CMaj2_4_bde), .Z(CMaj2_4_bde_cde) );
  XOR2_X1 CMaj2_4_X6_U1 ( .A(CMaj2_4_abe_acd), .B(CMaj2_4_abc_abd), .Z(
        CMaj2_4_abc_abd_abe_acd) );
  XOR2_X1 CMaj2_4_X7_U1 ( .A(CMaj2_4_bcd_bce), .B(CMaj2_4_ace_ade), .Z(
        CMaj2_4_ace_ade_bcd_bce) );
  XOR2_X1 CMaj2_4_X8_U1 ( .A(CMaj2_4_ace_ade_bcd_bce), .B(
        CMaj2_4_abc_abd_abe_acd), .Z(CMaj2_4_abc_abd_abe_acd_ace_ade_bcd_bce)
         );
  XOR2_X1 CMaj2_4_X9_U1 ( .A(CMaj2_4_bde_cde), .B(
        CMaj2_4_abc_abd_abe_acd_ace_ade_bcd_bce), .Z(mc2[4]) );
  DFF_X1 CFF0_4_Q_reg ( .D(mc0[4]), .CK(clk), .Q(c0[4]) );
  DFF_X1 CFF1_4_Q_reg ( .D(mc1[4]), .CK(clk), .Q(c1[4]) );
  DFF_X1 CFF2_4_Q_reg ( .D(mc2[4]), .CK(clk), .Q(c2[4]) );
endmodule

