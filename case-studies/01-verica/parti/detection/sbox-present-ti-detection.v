
module sbox_wrapper ( clk, data_in, data_out, error_flags );
  input [11:0] data_in;
  output [11:0] data_out;
  output [2:0] error_flags;
  input clk;
  wire   enc_0_e0_n1, enc_0_e1_n1, enc_0_e2_n1, enc_0_e3_n1, enc_1_e0_n2,
         enc_1_e1_n2, enc_1_e2_n2, enc_1_e3_n2, enc_2_e0_n2, enc_2_e1_n2,
         enc_2_e2_n2, enc_2_e3_n2, sbox_N2, sbox_N1, sbox_N0,
         sbox_s_g_red_out_reg_0_, sbox_s_g_red_out_reg_1_,
         sbox_s_g_red_out_reg_2_, sbox_s_g_red_out_reg_3_,
         sbox_s_g_red_out_reg_4_, sbox_s_g_red_out_reg_5_,
         sbox_s_g_red_out_reg_6_, sbox_s_g_red_out_reg_7_,
         sbox_s_g_red_out_reg_8_, sbox_s_g_red_out_reg_9_,
         sbox_s_g_red_out_reg_10_, sbox_s_g_red_out_reg_11_,
         sbox_s_g_out_reg_1_, sbox_s_g_out_reg_2_, sbox_s_g_out_reg_3_,
         sbox_s_g_out_reg_5_, sbox_s_g_out_reg_6_, sbox_s_g_out_reg_7_,
         sbox_s_g_out_reg_9_, sbox_s_g_out_reg_10_, sbox_s_g_out_reg_11_,
         sbox_input_red_reg_0_, sbox_input_red_reg_1_, sbox_input_red_reg_2_,
         sbox_input_red_reg_3_, sbox_input_red_reg_4_, sbox_input_red_reg_5_,
         sbox_input_red_reg_6_, sbox_input_red_reg_7_, sbox_input_red_reg_8_,
         sbox_input_red_reg_9_, sbox_input_red_reg_10_, sbox_input_red_reg_11_,
         sbox_input_data_reg_1_, sbox_input_data_reg_2_,
         sbox_input_data_reg_3_, sbox_input_data_reg_5_,
         sbox_input_data_reg_6_, sbox_input_data_reg_7_,
         sbox_input_data_reg_9_, sbox_input_data_reg_10_,
         sbox_input_data_reg_11_, sbox_det0_n18, sbox_det0_n17, sbox_det0_n16,
         sbox_det0_n15, sbox_det0_n14, sbox_det0_n13, sbox_det0_n12,
         sbox_det0_n11, sbox_det0_n10, sbox_det0_n9, sbox_det0_n8,
         sbox_det0_n7, sbox_det0_n6, sbox_det0_n5, sbox_det0_n4, sbox_det0_n3,
         sbox_det0_n2, sbox_det0_n1, sbox_det0_corr_0_e0_n2,
         sbox_det0_corr_0_e1_n2, sbox_det0_corr_0_e2_n2,
         sbox_det0_corr_0_e3_n2, sbox_det0_corr_1_e0_n2,
         sbox_det0_corr_1_e1_n2, sbox_det0_corr_1_e2_n2,
         sbox_det0_corr_1_e3_n2, sbox_det0_corr_2_e0_n2,
         sbox_det0_corr_2_e1_n2, sbox_det0_corr_2_e2_n2,
         sbox_det0_corr_2_e3_n2, sbox_g1_g0_n9, sbox_g1_g0_n8, sbox_g1_g0_n7,
         sbox_g1_g0_n6, sbox_g1_g0_n5, sbox_g1_g0_n4, sbox_g1_g0_n3,
         sbox_g1_g0_n2, sbox_g1_g0_n1, sbox_g1_g2_n6, sbox_g1_g2_n5,
         sbox_g1_g2_n4, sbox_g1_g2_n3, sbox_g1_g2_n2, sbox_g1_g2_n1,
         sbox_g1_g3_n16, sbox_g1_g3_n15, sbox_g1_g3_n14, sbox_g1_g3_n13,
         sbox_g1_g3_n12, sbox_g1_g3_n11, sbox_g1_g3_n10, sbox_g1_g3_n9,
         sbox_g1_g3_n8, sbox_g1_g3_n7, sbox_g1_g3_n6, sbox_g1_g3_n5,
         sbox_g1_g3_n4, sbox_g1_g3_n3, sbox_g1_g3_n2, sbox_g1_g3_n1,
         sbox_g2_g0_n18, sbox_g2_g0_n17, sbox_g2_g0_n16, sbox_g2_g0_n15,
         sbox_g2_g0_n14, sbox_g2_g0_n13, sbox_g2_g0_n12, sbox_g2_g0_n11,
         sbox_g2_g0_n10, sbox_g2_g2_n12, sbox_g2_g2_n11, sbox_g2_g2_n10,
         sbox_g2_g2_n9, sbox_g2_g2_n8, sbox_g2_g2_n7, sbox_g2_g3_n32,
         sbox_g2_g3_n31, sbox_g2_g3_n30, sbox_g2_g3_n29, sbox_g2_g3_n28,
         sbox_g2_g3_n27, sbox_g2_g3_n26, sbox_g2_g3_n25, sbox_g2_g3_n24,
         sbox_g2_g3_n23, sbox_g2_g3_n22, sbox_g2_g3_n21, sbox_g2_g3_n20,
         sbox_g2_g3_n19, sbox_g2_g3_n18, sbox_g2_g3_n17, sbox_g3_g0_n18,
         sbox_g3_g0_n17, sbox_g3_g0_n16, sbox_g3_g0_n15, sbox_g3_g0_n14,
         sbox_g3_g0_n13, sbox_g3_g0_n12, sbox_g3_g0_n11, sbox_g3_g0_n10,
         sbox_g3_g2_n12, sbox_g3_g2_n11, sbox_g3_g2_n10, sbox_g3_g2_n9,
         sbox_g3_g2_n8, sbox_g3_g2_n7, sbox_g3_g3_n32, sbox_g3_g3_n31,
         sbox_g3_g3_n30, sbox_g3_g3_n29, sbox_g3_g3_n28, sbox_g3_g3_n27,
         sbox_g3_g3_n26, sbox_g3_g3_n25, sbox_g3_g3_n24, sbox_g3_g3_n23,
         sbox_g3_g3_n22, sbox_g3_g3_n21, sbox_g3_g3_n20, sbox_g3_g3_n19,
         sbox_g3_g3_n18, sbox_g3_g3_n17, sbox_g1_red_g1_n21,
         sbox_g1_red_g1_n20, sbox_g1_red_g1_n19, sbox_g1_red_g1_n18,
         sbox_g1_red_g1_n17, sbox_g1_red_g1_n16, sbox_g1_red_g1_n15,
         sbox_g1_red_g1_n14, sbox_g1_red_g1_n13, sbox_g1_red_g1_n12,
         sbox_g1_red_g1_n11, sbox_g1_red_g1_n10, sbox_g1_red_g1_n9,
         sbox_g1_red_g1_n8, sbox_g1_red_g1_n7, sbox_g1_red_g1_n6,
         sbox_g1_red_g1_n5, sbox_g1_red_g1_n4, sbox_g1_red_g1_n3,
         sbox_g1_red_g1_n2, sbox_g1_red_g1_n1, sbox_g1_red_g2_n19,
         sbox_g1_red_g2_n18, sbox_g1_red_g2_n17, sbox_g1_red_g2_n16,
         sbox_g1_red_g2_n15, sbox_g1_red_g2_n14, sbox_g1_red_g2_n13,
         sbox_g1_red_g2_n12, sbox_g1_red_g2_n11, sbox_g1_red_g2_n10,
         sbox_g1_red_g2_n9, sbox_g1_red_g2_n8, sbox_g1_red_g2_n7,
         sbox_g1_red_g2_n6, sbox_g1_red_g2_n5, sbox_g1_red_g2_n4,
         sbox_g1_red_g2_n3, sbox_g1_red_g2_n2, sbox_g1_red_g2_n1,
         sbox_g1_red_g3_n19, sbox_g1_red_g3_n18, sbox_g1_red_g3_n17,
         sbox_g1_red_g3_n16, sbox_g1_red_g3_n15, sbox_g1_red_g3_n14,
         sbox_g1_red_g3_n13, sbox_g1_red_g3_n12, sbox_g1_red_g3_n11,
         sbox_g1_red_g3_n10, sbox_g1_red_g3_n9, sbox_g1_red_g3_n8,
         sbox_g1_red_g3_n7, sbox_g1_red_g3_n6, sbox_g1_red_g3_n5,
         sbox_g1_red_g3_n4, sbox_g1_red_g3_n3, sbox_g1_red_g3_n2,
         sbox_g1_red_g3_n1, sbox_g2_red_g1_n42, sbox_g2_red_g1_n41,
         sbox_g2_red_g1_n40, sbox_g2_red_g1_n39, sbox_g2_red_g1_n38,
         sbox_g2_red_g1_n37, sbox_g2_red_g1_n36, sbox_g2_red_g1_n35,
         sbox_g2_red_g1_n34, sbox_g2_red_g1_n33, sbox_g2_red_g1_n32,
         sbox_g2_red_g1_n31, sbox_g2_red_g1_n30, sbox_g2_red_g1_n29,
         sbox_g2_red_g1_n28, sbox_g2_red_g1_n27, sbox_g2_red_g1_n26,
         sbox_g2_red_g1_n25, sbox_g2_red_g1_n24, sbox_g2_red_g1_n23,
         sbox_g2_red_g1_n22, sbox_g2_red_g2_n38, sbox_g2_red_g2_n37,
         sbox_g2_red_g2_n36, sbox_g2_red_g2_n35, sbox_g2_red_g2_n34,
         sbox_g2_red_g2_n33, sbox_g2_red_g2_n32, sbox_g2_red_g2_n31,
         sbox_g2_red_g2_n30, sbox_g2_red_g2_n29, sbox_g2_red_g2_n28,
         sbox_g2_red_g2_n27, sbox_g2_red_g2_n26, sbox_g2_red_g2_n25,
         sbox_g2_red_g2_n24, sbox_g2_red_g2_n23, sbox_g2_red_g2_n22,
         sbox_g2_red_g2_n21, sbox_g2_red_g2_n20, sbox_g2_red_g3_n38,
         sbox_g2_red_g3_n37, sbox_g2_red_g3_n36, sbox_g2_red_g3_n35,
         sbox_g2_red_g3_n34, sbox_g2_red_g3_n33, sbox_g2_red_g3_n32,
         sbox_g2_red_g3_n31, sbox_g2_red_g3_n30, sbox_g2_red_g3_n29,
         sbox_g2_red_g3_n28, sbox_g2_red_g3_n27, sbox_g2_red_g3_n26,
         sbox_g2_red_g3_n25, sbox_g2_red_g3_n24, sbox_g2_red_g3_n23,
         sbox_g2_red_g3_n22, sbox_g2_red_g3_n21, sbox_g2_red_g3_n20,
         sbox_g3_red_g1_n42, sbox_g3_red_g1_n41, sbox_g3_red_g1_n40,
         sbox_g3_red_g1_n39, sbox_g3_red_g1_n38, sbox_g3_red_g1_n37,
         sbox_g3_red_g1_n36, sbox_g3_red_g1_n35, sbox_g3_red_g1_n34,
         sbox_g3_red_g1_n33, sbox_g3_red_g1_n32, sbox_g3_red_g1_n31,
         sbox_g3_red_g1_n30, sbox_g3_red_g1_n29, sbox_g3_red_g1_n28,
         sbox_g3_red_g1_n27, sbox_g3_red_g1_n26, sbox_g3_red_g1_n25,
         sbox_g3_red_g1_n24, sbox_g3_red_g1_n23, sbox_g3_red_g1_n22,
         sbox_g3_red_g2_n38, sbox_g3_red_g2_n37, sbox_g3_red_g2_n36,
         sbox_g3_red_g2_n35, sbox_g3_red_g2_n34, sbox_g3_red_g2_n33,
         sbox_g3_red_g2_n32, sbox_g3_red_g2_n31, sbox_g3_red_g2_n30,
         sbox_g3_red_g2_n29, sbox_g3_red_g2_n28, sbox_g3_red_g2_n27,
         sbox_g3_red_g2_n26, sbox_g3_red_g2_n25, sbox_g3_red_g2_n24,
         sbox_g3_red_g2_n23, sbox_g3_red_g2_n22, sbox_g3_red_g2_n21,
         sbox_g3_red_g2_n20, sbox_g3_red_g3_n38, sbox_g3_red_g3_n37,
         sbox_g3_red_g3_n36, sbox_g3_red_g3_n35, sbox_g3_red_g3_n34,
         sbox_g3_red_g3_n33, sbox_g3_red_g3_n32, sbox_g3_red_g3_n31,
         sbox_g3_red_g3_n30, sbox_g3_red_g3_n29, sbox_g3_red_g3_n28,
         sbox_g3_red_g3_n27, sbox_g3_red_g3_n26, sbox_g3_red_g3_n25,
         sbox_g3_red_g3_n24, sbox_g3_red_g3_n23, sbox_g3_red_g3_n22,
         sbox_g3_red_g3_n21, sbox_g3_red_g3_n20, sbox_det1_n36, sbox_det1_n35,
         sbox_det1_n34, sbox_det1_n33, sbox_det1_n32, sbox_det1_n31,
         sbox_det1_n30, sbox_det1_n29, sbox_det1_n28, sbox_det1_n27,
         sbox_det1_n26, sbox_det1_n25, sbox_det1_n24, sbox_det1_n23,
         sbox_det1_n22, sbox_det1_n21, sbox_det1_n20, sbox_det1_n19,
         sbox_det1_corr_0_e0_n2, sbox_det1_corr_0_e1_n2,
         sbox_det1_corr_0_e2_n2, sbox_det1_corr_0_e3_n2,
         sbox_det1_corr_1_e0_n2, sbox_det1_corr_1_e1_n2,
         sbox_det1_corr_1_e2_n2, sbox_det1_corr_1_e3_n2,
         sbox_det1_corr_2_e0_n2, sbox_det1_corr_2_e1_n2,
         sbox_det1_corr_2_e2_n2, sbox_det1_corr_2_e3_n2, sbox_f1_f1_n6,
         sbox_f1_f1_n5, sbox_f1_f1_n4, sbox_f1_f1_n3, sbox_f1_f1_n2,
         sbox_f1_f1_n1, sbox_f1_f2_n7, sbox_f1_f2_n6, sbox_f1_f2_n5,
         sbox_f1_f2_n4, sbox_f1_f2_n3, sbox_f1_f2_n2, sbox_f1_f2_n1,
         sbox_f1_f3_n5, sbox_f1_f3_n4, sbox_f1_f3_n3, sbox_f1_f3_n2,
         sbox_f1_f3_n1, sbox_f2_f1_n12, sbox_f2_f1_n11, sbox_f2_f1_n10,
         sbox_f2_f1_n9, sbox_f2_f1_n8, sbox_f2_f1_n7, sbox_f2_f2_n14,
         sbox_f2_f2_n13, sbox_f2_f2_n12, sbox_f2_f2_n11, sbox_f2_f2_n10,
         sbox_f2_f2_n9, sbox_f2_f2_n8, sbox_f2_f3_n10, sbox_f2_f3_n9,
         sbox_f2_f3_n8, sbox_f2_f3_n7, sbox_f2_f3_n6, sbox_f3_f1_n12,
         sbox_f3_f1_n11, sbox_f3_f1_n10, sbox_f3_f1_n9, sbox_f3_f1_n8,
         sbox_f3_f1_n7, sbox_f3_f2_n14, sbox_f3_f2_n13, sbox_f3_f2_n12,
         sbox_f3_f2_n11, sbox_f3_f2_n10, sbox_f3_f2_n9, sbox_f3_f2_n8,
         sbox_f3_f3_n10, sbox_f3_f3_n9, sbox_f3_f3_n8, sbox_f3_f3_n7,
         sbox_f3_f3_n6, sbox_f1_red_f0_n10, sbox_f1_red_f0_n9,
         sbox_f1_red_f0_n8, sbox_f1_red_f0_n7, sbox_f1_red_f0_n6,
         sbox_f1_red_f0_n5, sbox_f1_red_f0_n4, sbox_f1_red_f0_n3,
         sbox_f1_red_f0_n2, sbox_f1_red_f0_n1, sbox_f1_red_f2_n11,
         sbox_f1_red_f2_n10, sbox_f1_red_f2_n9, sbox_f1_red_f2_n8,
         sbox_f1_red_f2_n7, sbox_f1_red_f2_n6, sbox_f1_red_f2_n5,
         sbox_f1_red_f2_n4, sbox_f1_red_f2_n3, sbox_f1_red_f2_n2,
         sbox_f1_red_f2_n1, sbox_f1_red_f3_n28, sbox_f1_red_f3_n27,
         sbox_f1_red_f3_n26, sbox_f1_red_f3_n25, sbox_f1_red_f3_n24,
         sbox_f1_red_f3_n23, sbox_f1_red_f3_n22, sbox_f1_red_f3_n21,
         sbox_f1_red_f3_n20, sbox_f1_red_f3_n19, sbox_f1_red_f3_n18,
         sbox_f1_red_f3_n17, sbox_f1_red_f3_n16, sbox_f1_red_f3_n15,
         sbox_f1_red_f3_n14, sbox_f1_red_f3_n13, sbox_f1_red_f3_n12,
         sbox_f1_red_f3_n11, sbox_f1_red_f3_n10, sbox_f1_red_f3_n9,
         sbox_f1_red_f3_n8, sbox_f1_red_f3_n7, sbox_f1_red_f3_n6,
         sbox_f1_red_f3_n5, sbox_f1_red_f3_n4, sbox_f1_red_f3_n3,
         sbox_f1_red_f3_n2, sbox_f1_red_f3_n1, sbox_f2_red_f0_n20,
         sbox_f2_red_f0_n19, sbox_f2_red_f0_n18, sbox_f2_red_f0_n17,
         sbox_f2_red_f0_n16, sbox_f2_red_f0_n15, sbox_f2_red_f0_n14,
         sbox_f2_red_f0_n13, sbox_f2_red_f0_n12, sbox_f2_red_f0_n11,
         sbox_f2_red_f2_n22, sbox_f2_red_f2_n21, sbox_f2_red_f2_n20,
         sbox_f2_red_f2_n19, sbox_f2_red_f2_n18, sbox_f2_red_f2_n17,
         sbox_f2_red_f2_n16, sbox_f2_red_f2_n15, sbox_f2_red_f2_n14,
         sbox_f2_red_f2_n13, sbox_f2_red_f2_n12, sbox_f2_red_f3_n56,
         sbox_f2_red_f3_n55, sbox_f2_red_f3_n54, sbox_f2_red_f3_n53,
         sbox_f2_red_f3_n52, sbox_f2_red_f3_n51, sbox_f2_red_f3_n50,
         sbox_f2_red_f3_n49, sbox_f2_red_f3_n48, sbox_f2_red_f3_n47,
         sbox_f2_red_f3_n46, sbox_f2_red_f3_n45, sbox_f2_red_f3_n44,
         sbox_f2_red_f3_n43, sbox_f2_red_f3_n42, sbox_f2_red_f3_n41,
         sbox_f2_red_f3_n40, sbox_f2_red_f3_n39, sbox_f2_red_f3_n38,
         sbox_f2_red_f3_n37, sbox_f2_red_f3_n36, sbox_f2_red_f3_n35,
         sbox_f2_red_f3_n34, sbox_f2_red_f3_n33, sbox_f2_red_f3_n32,
         sbox_f2_red_f3_n31, sbox_f2_red_f3_n30, sbox_f2_red_f3_n29,
         sbox_f3_red_f0_n20, sbox_f3_red_f0_n19, sbox_f3_red_f0_n18,
         sbox_f3_red_f0_n17, sbox_f3_red_f0_n16, sbox_f3_red_f0_n15,
         sbox_f3_red_f0_n14, sbox_f3_red_f0_n13, sbox_f3_red_f0_n12,
         sbox_f3_red_f0_n11, sbox_f3_red_f2_n22, sbox_f3_red_f2_n21,
         sbox_f3_red_f2_n20, sbox_f3_red_f2_n19, sbox_f3_red_f2_n18,
         sbox_f3_red_f2_n17, sbox_f3_red_f2_n16, sbox_f3_red_f2_n15,
         sbox_f3_red_f2_n14, sbox_f3_red_f2_n13, sbox_f3_red_f2_n12,
         sbox_f3_red_f3_n56, sbox_f3_red_f3_n55, sbox_f3_red_f3_n54,
         sbox_f3_red_f3_n53, sbox_f3_red_f3_n52, sbox_f3_red_f3_n51,
         sbox_f3_red_f3_n50, sbox_f3_red_f3_n49, sbox_f3_red_f3_n48,
         sbox_f3_red_f3_n47, sbox_f3_red_f3_n46, sbox_f3_red_f3_n45,
         sbox_f3_red_f3_n44, sbox_f3_red_f3_n43, sbox_f3_red_f3_n42,
         sbox_f3_red_f3_n41, sbox_f3_red_f3_n40, sbox_f3_red_f3_n39,
         sbox_f3_red_f3_n38, sbox_f3_red_f3_n37, sbox_f3_red_f3_n36,
         sbox_f3_red_f3_n35, sbox_f3_red_f3_n34, sbox_f3_red_f3_n33,
         sbox_f3_red_f3_n32, sbox_f3_red_f3_n31, sbox_f3_red_f3_n30,
         sbox_f3_red_f3_n29, sbox_det2_n36, sbox_det2_n35, sbox_det2_n34,
         sbox_det2_n33, sbox_det2_n32, sbox_det2_n31, sbox_det2_n30,
         sbox_det2_n29, sbox_det2_n28, sbox_det2_n27, sbox_det2_n26,
         sbox_det2_n25, sbox_det2_n24, sbox_det2_n23, sbox_det2_n22,
         sbox_det2_n21, sbox_det2_n20, sbox_det2_n19, sbox_det2_corr_0_e0_n2,
         sbox_det2_corr_0_e1_n2, sbox_det2_corr_0_e2_n2,
         sbox_det2_corr_0_e3_n2, sbox_det2_corr_1_e0_n2,
         sbox_det2_corr_1_e1_n2, sbox_det2_corr_1_e2_n2,
         sbox_det2_corr_1_e3_n2, sbox_det2_corr_2_e0_n2,
         sbox_det2_corr_2_e1_n2, sbox_det2_corr_2_e2_n2,
         sbox_det2_corr_2_e3_n2;
  wire   [11:0] redundancy_in;
  wire   [2:0] sbox_error_flags2;
  wire   [2:0] sbox_error_flags1_reg;
  wire   [11:0] sbox_s_f_red_out_reg;
  wire   [11:0] sbox_s_f_red_out;
  wire   [11:0] sbox_s_f_out;
  wire   [2:0] sbox_error_flags1;
  wire   [2:0] sbox_error_flags0_reg;
  wire   [11:0] sbox_s_g_red_out;
  wire   [11:0] sbox_s_g_out;
  wire   [2:0] sbox_error_flags0;
  wire   [11:0] sbox_det0_data_in_encoded;
  wire   [11:0] sbox_det1_data_in_encoded;
  wire   [11:0] sbox_det2_data_in_encoded;

  XOR2_X1 enc_0_e0_U2 ( .A(data_in[2]), .B(data_in[1]), .Z(enc_0_e0_n1) );
  XOR2_X1 enc_0_e0_U1 ( .A(data_in[0]), .B(enc_0_e0_n1), .Z(redundancy_in[0])
         );
  XOR2_X1 enc_0_e1_U2 ( .A(data_in[3]), .B(data_in[1]), .Z(enc_0_e1_n1) );
  XOR2_X1 enc_0_e1_U1 ( .A(data_in[0]), .B(enc_0_e1_n1), .Z(redundancy_in[1])
         );
  XOR2_X1 enc_0_e2_U2 ( .A(data_in[0]), .B(data_in[3]), .Z(enc_0_e2_n1) );
  XOR2_X1 enc_0_e2_U1 ( .A(data_in[2]), .B(enc_0_e2_n1), .Z(redundancy_in[2])
         );
  XOR2_X1 enc_0_e3_U2 ( .A(data_in[3]), .B(data_in[2]), .Z(enc_0_e3_n1) );
  XOR2_X1 enc_0_e3_U1 ( .A(data_in[1]), .B(enc_0_e3_n1), .Z(redundancy_in[3])
         );
  XOR2_X1 enc_1_e0_U2 ( .A(data_in[6]), .B(data_in[5]), .Z(enc_1_e0_n2) );
  XOR2_X1 enc_1_e0_U1 ( .A(data_in[4]), .B(enc_1_e0_n2), .Z(redundancy_in[4])
         );
  XOR2_X1 enc_1_e1_U2 ( .A(data_in[7]), .B(data_in[5]), .Z(enc_1_e1_n2) );
  XOR2_X1 enc_1_e1_U1 ( .A(data_in[4]), .B(enc_1_e1_n2), .Z(redundancy_in[5])
         );
  XOR2_X1 enc_1_e2_U2 ( .A(data_in[4]), .B(data_in[7]), .Z(enc_1_e2_n2) );
  XOR2_X1 enc_1_e2_U1 ( .A(data_in[6]), .B(enc_1_e2_n2), .Z(redundancy_in[6])
         );
  XOR2_X1 enc_1_e3_U2 ( .A(data_in[7]), .B(data_in[6]), .Z(enc_1_e3_n2) );
  XOR2_X1 enc_1_e3_U1 ( .A(data_in[5]), .B(enc_1_e3_n2), .Z(redundancy_in[7])
         );
  XOR2_X1 enc_2_e0_U2 ( .A(data_in[10]), .B(data_in[9]), .Z(enc_2_e0_n2) );
  XOR2_X1 enc_2_e0_U1 ( .A(data_in[8]), .B(enc_2_e0_n2), .Z(redundancy_in[8])
         );
  XOR2_X1 enc_2_e1_U2 ( .A(data_in[11]), .B(data_in[9]), .Z(enc_2_e1_n2) );
  XOR2_X1 enc_2_e1_U1 ( .A(data_in[8]), .B(enc_2_e1_n2), .Z(redundancy_in[9])
         );
  XOR2_X1 enc_2_e2_U2 ( .A(data_in[8]), .B(data_in[11]), .Z(enc_2_e2_n2) );
  XOR2_X1 enc_2_e2_U1 ( .A(data_in[10]), .B(enc_2_e2_n2), .Z(redundancy_in[10]) );
  XOR2_X1 enc_2_e3_U2 ( .A(data_in[11]), .B(data_in[10]), .Z(enc_2_e3_n2) );
  XOR2_X1 enc_2_e3_U1 ( .A(data_in[9]), .B(enc_2_e3_n2), .Z(redundancy_in[11])
         );
  AND2_X1 sbox_U8 ( .A1(sbox_error_flags2[2]), .A2(sbox_error_flags1_reg[2]), 
        .ZN(error_flags[2]) );
  AND2_X1 sbox_U7 ( .A1(sbox_error_flags2[1]), .A2(sbox_error_flags1_reg[1]), 
        .ZN(error_flags[1]) );
  AND2_X1 sbox_U6 ( .A1(sbox_error_flags2[0]), .A2(sbox_error_flags1_reg[0]), 
        .ZN(error_flags[0]) );
  AND2_X1 sbox_U5 ( .A1(sbox_error_flags1[2]), .A2(sbox_error_flags0_reg[2]), 
        .ZN(sbox_N0) );
  AND2_X1 sbox_U4 ( .A1(sbox_error_flags1[1]), .A2(sbox_error_flags0_reg[1]), 
        .ZN(sbox_N1) );
  AND2_X1 sbox_U3 ( .A1(sbox_error_flags1[0]), .A2(sbox_error_flags0_reg[0]), 
        .ZN(sbox_N2) );
  DFF_X1 sbox_error_flags1_reg_reg_0_ ( .D(sbox_N2), .CK(clk), .Q(
        sbox_error_flags1_reg[0]), .QN() );
  DFF_X1 sbox_error_flags1_reg_reg_1_ ( .D(sbox_N1), .CK(clk), .Q(
        sbox_error_flags1_reg[1]), .QN() );
  DFF_X1 sbox_error_flags1_reg_reg_2_ ( .D(sbox_N0), .CK(clk), .Q(
        sbox_error_flags1_reg[2]), .QN() );
  DFF_X1 sbox_s_f_red_out_reg_reg_0_ ( .D(sbox_s_f_red_out[0]), .CK(clk), .Q(
        sbox_s_f_red_out_reg[0]), .QN() );
  DFF_X1 sbox_s_f_red_out_reg_reg_1_ ( .D(sbox_s_f_red_out[1]), .CK(clk), .Q(
        sbox_s_f_red_out_reg[1]), .QN() );
  DFF_X1 sbox_s_f_red_out_reg_reg_2_ ( .D(sbox_s_f_red_out[2]), .CK(clk), .Q(
        sbox_s_f_red_out_reg[2]), .QN() );
  DFF_X1 sbox_s_f_red_out_reg_reg_3_ ( .D(sbox_s_f_red_out[3]), .CK(clk), .Q(
        sbox_s_f_red_out_reg[3]), .QN() );
  DFF_X1 sbox_s_f_red_out_reg_reg_4_ ( .D(sbox_s_f_red_out[4]), .CK(clk), .Q(
        sbox_s_f_red_out_reg[4]), .QN() );
  DFF_X1 sbox_s_f_red_out_reg_reg_5_ ( .D(sbox_s_f_red_out[5]), .CK(clk), .Q(
        sbox_s_f_red_out_reg[5]), .QN() );
  DFF_X1 sbox_s_f_red_out_reg_reg_6_ ( .D(sbox_s_f_red_out[6]), .CK(clk), .Q(
        sbox_s_f_red_out_reg[6]), .QN() );
  DFF_X1 sbox_s_f_red_out_reg_reg_7_ ( .D(sbox_s_f_red_out[7]), .CK(clk), .Q(
        sbox_s_f_red_out_reg[7]), .QN() );
  DFF_X1 sbox_s_f_red_out_reg_reg_8_ ( .D(sbox_s_f_red_out[8]), .CK(clk), .Q(
        sbox_s_f_red_out_reg[8]), .QN() );
  DFF_X1 sbox_s_f_red_out_reg_reg_9_ ( .D(sbox_s_f_red_out[9]), .CK(clk), .Q(
        sbox_s_f_red_out_reg[9]), .QN() );
  DFF_X1 sbox_s_f_red_out_reg_reg_10_ ( .D(sbox_s_f_red_out[10]), .CK(clk), 
        .Q(sbox_s_f_red_out_reg[10]), .QN() );
  DFF_X1 sbox_s_f_red_out_reg_reg_11_ ( .D(sbox_s_f_red_out[11]), .CK(clk), 
        .Q(sbox_s_f_red_out_reg[11]), .QN() );
  DFF_X1 sbox_s_f_out_reg_reg_0_ ( .D(sbox_s_f_out[0]), .CK(clk), .Q(
        data_out[0]), .QN() );
  DFF_X1 sbox_s_f_out_reg_reg_1_ ( .D(sbox_s_f_out[1]), .CK(clk), .Q(
        data_out[1]), .QN() );
  DFF_X1 sbox_s_f_out_reg_reg_2_ ( .D(sbox_s_f_out[2]), .CK(clk), .Q(
        data_out[2]), .QN() );
  DFF_X1 sbox_s_f_out_reg_reg_3_ ( .D(sbox_s_f_out[3]), .CK(clk), .Q(
        data_out[3]), .QN() );
  DFF_X1 sbox_s_f_out_reg_reg_4_ ( .D(sbox_s_f_out[4]), .CK(clk), .Q(
        data_out[4]), .QN() );
  DFF_X1 sbox_s_f_out_reg_reg_5_ ( .D(sbox_s_f_out[5]), .CK(clk), .Q(
        data_out[5]), .QN() );
  DFF_X1 sbox_s_f_out_reg_reg_6_ ( .D(sbox_s_f_out[6]), .CK(clk), .Q(
        data_out[6]), .QN() );
  DFF_X1 sbox_s_f_out_reg_reg_7_ ( .D(sbox_s_f_out[7]), .CK(clk), .Q(
        data_out[7]), .QN() );
  DFF_X1 sbox_s_f_out_reg_reg_8_ ( .D(sbox_s_f_out[8]), .CK(clk), .Q(
        data_out[8]), .QN() );
  DFF_X1 sbox_s_f_out_reg_reg_9_ ( .D(sbox_s_f_out[9]), .CK(clk), .Q(
        data_out[9]), .QN() );
  DFF_X1 sbox_s_f_out_reg_reg_10_ ( .D(sbox_s_f_out[10]), .CK(clk), .Q(
        data_out[10]), .QN() );
  DFF_X1 sbox_s_f_out_reg_reg_11_ ( .D(sbox_s_f_out[11]), .CK(clk), .Q(
        data_out[11]), .QN() );
  DFF_X1 sbox_error_flags0_reg_reg_0_ ( .D(sbox_error_flags0[0]), .CK(clk), 
        .Q(sbox_error_flags0_reg[0]), .QN() );
  DFF_X1 sbox_error_flags0_reg_reg_1_ ( .D(sbox_error_flags0[1]), .CK(clk), 
        .Q(sbox_error_flags0_reg[1]), .QN() );
  DFF_X1 sbox_error_flags0_reg_reg_2_ ( .D(sbox_error_flags0[2]), .CK(clk), 
        .Q(sbox_error_flags0_reg[2]), .QN() );
  DFF_X1 sbox_s_g_red_out_reg_reg_0_ ( .D(sbox_s_g_red_out[0]), .CK(clk), .Q(
        sbox_s_g_red_out_reg_0_), .QN() );
  DFF_X1 sbox_s_g_red_out_reg_reg_1_ ( .D(sbox_s_g_red_out[1]), .CK(clk), .Q(
        sbox_s_g_red_out_reg_1_), .QN() );
  DFF_X1 sbox_s_g_red_out_reg_reg_2_ ( .D(sbox_s_g_red_out[2]), .CK(clk), .Q(
        sbox_s_g_red_out_reg_2_), .QN() );
  DFF_X1 sbox_s_g_red_out_reg_reg_3_ ( .D(sbox_s_g_red_out[3]), .CK(clk), .Q(
        sbox_s_g_red_out_reg_3_), .QN() );
  DFF_X1 sbox_s_g_red_out_reg_reg_4_ ( .D(sbox_s_g_red_out[4]), .CK(clk), .Q(
        sbox_s_g_red_out_reg_4_), .QN() );
  DFF_X1 sbox_s_g_red_out_reg_reg_5_ ( .D(sbox_s_g_red_out[5]), .CK(clk), .Q(
        sbox_s_g_red_out_reg_5_), .QN() );
  DFF_X1 sbox_s_g_red_out_reg_reg_6_ ( .D(sbox_s_g_red_out[6]), .CK(clk), .Q(
        sbox_s_g_red_out_reg_6_), .QN() );
  DFF_X1 sbox_s_g_red_out_reg_reg_7_ ( .D(sbox_s_g_red_out[7]), .CK(clk), .Q(
        sbox_s_g_red_out_reg_7_), .QN() );
  DFF_X1 sbox_s_g_red_out_reg_reg_8_ ( .D(sbox_s_g_red_out[8]), .CK(clk), .Q(
        sbox_s_g_red_out_reg_8_), .QN() );
  DFF_X1 sbox_s_g_red_out_reg_reg_9_ ( .D(sbox_s_g_red_out[9]), .CK(clk), .Q(
        sbox_s_g_red_out_reg_9_), .QN() );
  DFF_X1 sbox_s_g_red_out_reg_reg_10_ ( .D(sbox_s_g_red_out[10]), .CK(clk), 
        .Q(sbox_s_g_red_out_reg_10_), .QN() );
  DFF_X1 sbox_s_g_red_out_reg_reg_11_ ( .D(sbox_s_g_red_out[11]), .CK(clk), 
        .Q(sbox_s_g_red_out_reg_11_), .QN() );
  DFF_X1 sbox_s_g_out_reg_reg_0_ ( .D(sbox_s_g_out[0]), .CK(clk), .Q(
        sbox_s_f_out[8]), .QN() );
  DFF_X1 sbox_s_g_out_reg_reg_1_ ( .D(sbox_s_g_out[1]), .CK(clk), .Q(
        sbox_s_g_out_reg_1_), .QN() );
  DFF_X1 sbox_s_g_out_reg_reg_2_ ( .D(sbox_s_g_out[2]), .CK(clk), .Q(
        sbox_s_g_out_reg_2_), .QN() );
  DFF_X1 sbox_s_g_out_reg_reg_3_ ( .D(sbox_s_g_out[3]), .CK(clk), .Q(
        sbox_s_g_out_reg_3_), .QN() );
  DFF_X1 sbox_s_g_out_reg_reg_4_ ( .D(sbox_s_g_out[4]), .CK(clk), .Q(
        sbox_s_f_out[0]), .QN() );
  DFF_X1 sbox_s_g_out_reg_reg_5_ ( .D(sbox_s_g_out[5]), .CK(clk), .Q(
        sbox_s_g_out_reg_5_), .QN() );
  DFF_X1 sbox_s_g_out_reg_reg_6_ ( .D(sbox_s_g_out[6]), .CK(clk), .Q(
        sbox_s_g_out_reg_6_), .QN() );
  DFF_X1 sbox_s_g_out_reg_reg_7_ ( .D(sbox_s_g_out[7]), .CK(clk), .Q(
        sbox_s_g_out_reg_7_), .QN() );
  DFF_X1 sbox_s_g_out_reg_reg_8_ ( .D(sbox_s_g_out[8]), .CK(clk), .Q(
        sbox_s_f_out[4]), .QN() );
  DFF_X1 sbox_s_g_out_reg_reg_9_ ( .D(sbox_s_g_out[9]), .CK(clk), .Q(
        sbox_s_g_out_reg_9_), .QN() );
  DFF_X1 sbox_s_g_out_reg_reg_10_ ( .D(sbox_s_g_out[10]), .CK(clk), .Q(
        sbox_s_g_out_reg_10_), .QN() );
  DFF_X1 sbox_s_g_out_reg_reg_11_ ( .D(sbox_s_g_out[11]), .CK(clk), .Q(
        sbox_s_g_out_reg_11_), .QN() );
  DFF_X1 sbox_input_red_reg_reg_0_ ( .D(redundancy_in[0]), .CK(clk), .Q(
        sbox_input_red_reg_0_), .QN() );
  DFF_X1 sbox_input_red_reg_reg_1_ ( .D(redundancy_in[1]), .CK(clk), .Q(
        sbox_input_red_reg_1_), .QN() );
  DFF_X1 sbox_input_red_reg_reg_2_ ( .D(redundancy_in[2]), .CK(clk), .Q(
        sbox_input_red_reg_2_), .QN() );
  DFF_X1 sbox_input_red_reg_reg_3_ ( .D(redundancy_in[3]), .CK(clk), .Q(
        sbox_input_red_reg_3_), .QN() );
  DFF_X1 sbox_input_red_reg_reg_4_ ( .D(redundancy_in[4]), .CK(clk), .Q(
        sbox_input_red_reg_4_), .QN() );
  DFF_X1 sbox_input_red_reg_reg_5_ ( .D(redundancy_in[5]), .CK(clk), .Q(
        sbox_input_red_reg_5_), .QN() );
  DFF_X1 sbox_input_red_reg_reg_6_ ( .D(redundancy_in[6]), .CK(clk), .Q(
        sbox_input_red_reg_6_), .QN() );
  DFF_X1 sbox_input_red_reg_reg_7_ ( .D(redundancy_in[7]), .CK(clk), .Q(
        sbox_input_red_reg_7_), .QN() );
  DFF_X1 sbox_input_red_reg_reg_8_ ( .D(redundancy_in[8]), .CK(clk), .Q(
        sbox_input_red_reg_8_), .QN() );
  DFF_X1 sbox_input_red_reg_reg_9_ ( .D(redundancy_in[9]), .CK(clk), .Q(
        sbox_input_red_reg_9_), .QN() );
  DFF_X1 sbox_input_red_reg_reg_10_ ( .D(redundancy_in[10]), .CK(clk), .Q(
        sbox_input_red_reg_10_), .QN() );
  DFF_X1 sbox_input_red_reg_reg_11_ ( .D(redundancy_in[11]), .CK(clk), .Q(
        sbox_input_red_reg_11_), .QN() );
  DFF_X1 sbox_input_data_reg_reg_0_ ( .D(data_in[0]), .CK(clk), .Q(
        sbox_s_g_out[9]), .QN() );
  DFF_X1 sbox_input_data_reg_reg_1_ ( .D(data_in[1]), .CK(clk), .Q(
        sbox_input_data_reg_1_), .QN() );
  DFF_X1 sbox_input_data_reg_reg_2_ ( .D(data_in[2]), .CK(clk), .Q(
        sbox_input_data_reg_2_), .QN() );
  DFF_X1 sbox_input_data_reg_reg_3_ ( .D(data_in[3]), .CK(clk), .Q(
        sbox_input_data_reg_3_), .QN() );
  DFF_X1 sbox_input_data_reg_reg_4_ ( .D(data_in[4]), .CK(clk), .Q(
        sbox_s_g_out[1]), .QN() );
  DFF_X1 sbox_input_data_reg_reg_5_ ( .D(data_in[5]), .CK(clk), .Q(
        sbox_input_data_reg_5_), .QN() );
  DFF_X1 sbox_input_data_reg_reg_6_ ( .D(data_in[6]), .CK(clk), .Q(
        sbox_input_data_reg_6_), .QN() );
  DFF_X1 sbox_input_data_reg_reg_7_ ( .D(data_in[7]), .CK(clk), .Q(
        sbox_input_data_reg_7_), .QN() );
  DFF_X1 sbox_input_data_reg_reg_8_ ( .D(data_in[8]), .CK(clk), .Q(
        sbox_s_g_out[5]), .QN() );
  DFF_X1 sbox_input_data_reg_reg_9_ ( .D(data_in[9]), .CK(clk), .Q(
        sbox_input_data_reg_9_), .QN() );
  DFF_X1 sbox_input_data_reg_reg_10_ ( .D(data_in[10]), .CK(clk), .Q(
        sbox_input_data_reg_10_), .QN() );
  DFF_X1 sbox_input_data_reg_reg_11_ ( .D(data_in[11]), .CK(clk), .Q(
        sbox_input_data_reg_11_), .QN() );
  XNOR2_X1 sbox_det0_U21 ( .A(sbox_input_red_reg_11_), .B(
        sbox_det0_data_in_encoded[11]), .ZN(sbox_det0_n6) );
  NAND2_X1 sbox_det0_U20 ( .A1(sbox_det0_n3), .A2(sbox_det0_n4), .ZN(
        sbox_det0_n2) );
  NAND2_X1 sbox_det0_U19 ( .A1(sbox_det0_n5), .A2(sbox_det0_n6), .ZN(
        sbox_det0_n1) );
  NOR2_X1 sbox_det0_U18 ( .A1(sbox_det0_n1), .A2(sbox_det0_n2), .ZN(
        sbox_error_flags0[2]) );
  XNOR2_X1 sbox_det0_U17 ( .A(sbox_input_red_reg_7_), .B(
        sbox_det0_data_in_encoded[7]), .ZN(sbox_det0_n12) );
  NAND2_X1 sbox_det0_U16 ( .A1(sbox_det0_n9), .A2(sbox_det0_n10), .ZN(
        sbox_det0_n8) );
  NAND2_X1 sbox_det0_U15 ( .A1(sbox_det0_n11), .A2(sbox_det0_n12), .ZN(
        sbox_det0_n7) );
  NOR2_X1 sbox_det0_U14 ( .A1(sbox_det0_n7), .A2(sbox_det0_n8), .ZN(
        sbox_error_flags0[1]) );
  XNOR2_X1 sbox_det0_U13 ( .A(sbox_input_red_reg_3_), .B(
        sbox_det0_data_in_encoded[3]), .ZN(sbox_det0_n18) );
  NAND2_X1 sbox_det0_U12 ( .A1(sbox_det0_n15), .A2(sbox_det0_n16), .ZN(
        sbox_det0_n14) );
  NAND2_X1 sbox_det0_U11 ( .A1(sbox_det0_n17), .A2(sbox_det0_n18), .ZN(
        sbox_det0_n13) );
  NOR2_X1 sbox_det0_U10 ( .A1(sbox_det0_n13), .A2(sbox_det0_n14), .ZN(
        sbox_error_flags0[0]) );
  XNOR2_X1 sbox_det0_U9 ( .A(sbox_input_red_reg_8_), .B(
        sbox_det0_data_in_encoded[8]), .ZN(sbox_det0_n5) );
  XNOR2_X1 sbox_det0_U8 ( .A(sbox_input_red_reg_4_), .B(
        sbox_det0_data_in_encoded[4]), .ZN(sbox_det0_n11) );
  XNOR2_X1 sbox_det0_U7 ( .A(sbox_input_red_reg_0_), .B(
        sbox_det0_data_in_encoded[0]), .ZN(sbox_det0_n17) );
  XNOR2_X1 sbox_det0_U6 ( .A(sbox_input_red_reg_9_), .B(
        sbox_det0_data_in_encoded[9]), .ZN(sbox_det0_n4) );
  XNOR2_X1 sbox_det0_U5 ( .A(sbox_input_red_reg_5_), .B(
        sbox_det0_data_in_encoded[5]), .ZN(sbox_det0_n10) );
  XNOR2_X1 sbox_det0_U4 ( .A(sbox_input_red_reg_1_), .B(
        sbox_det0_data_in_encoded[1]), .ZN(sbox_det0_n16) );
  XNOR2_X1 sbox_det0_U3 ( .A(sbox_input_red_reg_10_), .B(
        sbox_det0_data_in_encoded[10]), .ZN(sbox_det0_n3) );
  XNOR2_X1 sbox_det0_U2 ( .A(sbox_input_red_reg_6_), .B(
        sbox_det0_data_in_encoded[6]), .ZN(sbox_det0_n9) );
  XNOR2_X1 sbox_det0_U1 ( .A(sbox_input_red_reg_2_), .B(
        sbox_det0_data_in_encoded[2]), .ZN(sbox_det0_n15) );
  XOR2_X1 sbox_det0_corr_0_e0_U2 ( .A(sbox_input_data_reg_2_), .B(
        sbox_input_data_reg_1_), .Z(sbox_det0_corr_0_e0_n2) );
  XOR2_X1 sbox_det0_corr_0_e0_U1 ( .A(sbox_s_g_out[9]), .B(
        sbox_det0_corr_0_e0_n2), .Z(sbox_det0_data_in_encoded[0]) );
  XOR2_X1 sbox_det0_corr_0_e1_U2 ( .A(sbox_input_data_reg_3_), .B(
        sbox_input_data_reg_1_), .Z(sbox_det0_corr_0_e1_n2) );
  XOR2_X1 sbox_det0_corr_0_e1_U1 ( .A(sbox_s_g_out[9]), .B(
        sbox_det0_corr_0_e1_n2), .Z(sbox_det0_data_in_encoded[1]) );
  XOR2_X1 sbox_det0_corr_0_e2_U2 ( .A(sbox_s_g_out[9]), .B(
        sbox_input_data_reg_3_), .Z(sbox_det0_corr_0_e2_n2) );
  XOR2_X1 sbox_det0_corr_0_e2_U1 ( .A(sbox_input_data_reg_2_), .B(
        sbox_det0_corr_0_e2_n2), .Z(sbox_det0_data_in_encoded[2]) );
  XOR2_X1 sbox_det0_corr_0_e3_U2 ( .A(sbox_input_data_reg_3_), .B(
        sbox_input_data_reg_2_), .Z(sbox_det0_corr_0_e3_n2) );
  XOR2_X1 sbox_det0_corr_0_e3_U1 ( .A(sbox_input_data_reg_1_), .B(
        sbox_det0_corr_0_e3_n2), .Z(sbox_det0_data_in_encoded[3]) );
  XOR2_X1 sbox_det0_corr_1_e0_U2 ( .A(sbox_input_data_reg_6_), .B(
        sbox_input_data_reg_5_), .Z(sbox_det0_corr_1_e0_n2) );
  XOR2_X1 sbox_det0_corr_1_e0_U1 ( .A(sbox_s_g_out[1]), .B(
        sbox_det0_corr_1_e0_n2), .Z(sbox_det0_data_in_encoded[4]) );
  XOR2_X1 sbox_det0_corr_1_e1_U2 ( .A(sbox_input_data_reg_7_), .B(
        sbox_input_data_reg_5_), .Z(sbox_det0_corr_1_e1_n2) );
  XOR2_X1 sbox_det0_corr_1_e1_U1 ( .A(sbox_s_g_out[1]), .B(
        sbox_det0_corr_1_e1_n2), .Z(sbox_det0_data_in_encoded[5]) );
  XOR2_X1 sbox_det0_corr_1_e2_U2 ( .A(sbox_s_g_out[1]), .B(
        sbox_input_data_reg_7_), .Z(sbox_det0_corr_1_e2_n2) );
  XOR2_X1 sbox_det0_corr_1_e2_U1 ( .A(sbox_input_data_reg_6_), .B(
        sbox_det0_corr_1_e2_n2), .Z(sbox_det0_data_in_encoded[6]) );
  XOR2_X1 sbox_det0_corr_1_e3_U2 ( .A(sbox_input_data_reg_7_), .B(
        sbox_input_data_reg_6_), .Z(sbox_det0_corr_1_e3_n2) );
  XOR2_X1 sbox_det0_corr_1_e3_U1 ( .A(sbox_input_data_reg_5_), .B(
        sbox_det0_corr_1_e3_n2), .Z(sbox_det0_data_in_encoded[7]) );
  XOR2_X1 sbox_det0_corr_2_e0_U2 ( .A(sbox_input_data_reg_10_), .B(
        sbox_input_data_reg_9_), .Z(sbox_det0_corr_2_e0_n2) );
  XOR2_X1 sbox_det0_corr_2_e0_U1 ( .A(sbox_s_g_out[5]), .B(
        sbox_det0_corr_2_e0_n2), .Z(sbox_det0_data_in_encoded[8]) );
  XOR2_X1 sbox_det0_corr_2_e1_U2 ( .A(sbox_input_data_reg_11_), .B(
        sbox_input_data_reg_9_), .Z(sbox_det0_corr_2_e1_n2) );
  XOR2_X1 sbox_det0_corr_2_e1_U1 ( .A(sbox_s_g_out[5]), .B(
        sbox_det0_corr_2_e1_n2), .Z(sbox_det0_data_in_encoded[9]) );
  XOR2_X1 sbox_det0_corr_2_e2_U2 ( .A(sbox_s_g_out[5]), .B(
        sbox_input_data_reg_11_), .Z(sbox_det0_corr_2_e2_n2) );
  XOR2_X1 sbox_det0_corr_2_e2_U1 ( .A(sbox_input_data_reg_10_), .B(
        sbox_det0_corr_2_e2_n2), .Z(sbox_det0_data_in_encoded[10]) );
  XOR2_X1 sbox_det0_corr_2_e3_U2 ( .A(sbox_input_data_reg_11_), .B(
        sbox_input_data_reg_10_), .Z(sbox_det0_corr_2_e3_n2) );
  XOR2_X1 sbox_det0_corr_2_e3_U1 ( .A(sbox_input_data_reg_9_), .B(
        sbox_det0_corr_2_e3_n2), .Z(sbox_det0_data_in_encoded[11]) );
  XNOR2_X1 sbox_g1_g0_U10 ( .A(sbox_input_data_reg_5_), .B(
        sbox_input_data_reg_6_), .ZN(sbox_g1_g0_n8) );
  XOR2_X1 sbox_g1_g0_U9 ( .A(sbox_g1_g0_n3), .B(sbox_g1_g0_n4), .Z(
        sbox_g1_g0_n2) );
  XOR2_X1 sbox_g1_g0_U8 ( .A(sbox_g1_g0_n8), .B(sbox_g1_g0_n9), .Z(
        sbox_g1_g0_n1) );
  XOR2_X1 sbox_g1_g0_U7 ( .A(sbox_g1_g0_n1), .B(sbox_g1_g0_n2), .Z(
        sbox_s_g_out[0]) );
  NAND2_X1 sbox_g1_g0_U6 ( .A1(sbox_input_data_reg_10_), .A2(
        sbox_input_data_reg_5_), .ZN(sbox_g1_g0_n6) );
  NAND2_X1 sbox_g1_g0_U5 ( .A1(sbox_input_data_reg_6_), .A2(
        sbox_input_data_reg_9_), .ZN(sbox_g1_g0_n5) );
  XOR2_X1 sbox_g1_g0_U4 ( .A(sbox_g1_g0_n5), .B(sbox_g1_g0_n6), .Z(
        sbox_g1_g0_n4) );
  NAND2_X1 sbox_g1_g0_U3 ( .A1(sbox_input_data_reg_10_), .A2(
        sbox_input_data_reg_9_), .ZN(sbox_g1_g0_n7) );
  XOR2_X1 sbox_g1_g0_U2 ( .A(sbox_g1_g0_n7), .B(sbox_s_g_out[1]), .Z(
        sbox_g1_g0_n3) );
  XOR2_X1 sbox_g1_g0_U1 ( .A(sbox_input_data_reg_9_), .B(
        sbox_input_data_reg_7_), .Z(sbox_g1_g0_n9) );
  XNOR2_X1 sbox_g1_g2_U7 ( .A(sbox_input_data_reg_9_), .B(
        sbox_input_data_reg_7_), .ZN(sbox_g1_g2_n6) );
  XOR2_X1 sbox_g1_g2_U6 ( .A(sbox_g1_g2_n3), .B(sbox_g1_g2_n4), .Z(
        sbox_g1_g2_n2) );
  XOR2_X1 sbox_g1_g2_U5 ( .A(sbox_g1_g2_n6), .B(sbox_s_g_out[1]), .Z(
        sbox_g1_g2_n1) );
  XOR2_X1 sbox_g1_g2_U4 ( .A(sbox_g1_g2_n1), .B(sbox_g1_g2_n2), .Z(
        sbox_s_g_out[2]) );
  XOR2_X1 sbox_g1_g2_U3 ( .A(sbox_input_data_reg_10_), .B(
        sbox_input_data_reg_6_), .Z(sbox_g1_g2_n5) );
  NAND2_X1 sbox_g1_g2_U2 ( .A1(sbox_input_data_reg_9_), .A2(sbox_g1_g2_n5), 
        .ZN(sbox_g1_g2_n3) );
  NAND2_X1 sbox_g1_g2_U1 ( .A1(sbox_input_data_reg_5_), .A2(
        sbox_input_data_reg_10_), .ZN(sbox_g1_g2_n4) );
  XOR2_X1 sbox_g1_g3_U17 ( .A(sbox_g1_g3_n4), .B(sbox_g1_g3_n5), .Z(
        sbox_g1_g3_n3) );
  XOR2_X1 sbox_g1_g3_U16 ( .A(sbox_g1_g3_n3), .B(sbox_input_data_reg_9_), .Z(
        sbox_g1_g3_n1) );
  XOR2_X1 sbox_g1_g3_U15 ( .A(sbox_input_data_reg_5_), .B(sbox_s_g_out[1]), 
        .Z(sbox_g1_g3_n2) );
  XOR2_X1 sbox_g1_g3_U14 ( .A(sbox_g1_g3_n1), .B(sbox_g1_g3_n2), .Z(
        sbox_s_g_out[3]) );
  NAND2_X1 sbox_g1_g3_U13 ( .A1(sbox_input_data_reg_7_), .A2(
        sbox_input_data_reg_10_), .ZN(sbox_g1_g3_n9) );
  XOR2_X1 sbox_g1_g3_U12 ( .A(sbox_g1_g3_n8), .B(sbox_g1_g3_n9), .Z(
        sbox_g1_g3_n7) );
  AND2_X1 sbox_g1_g3_U11 ( .A1(sbox_input_data_reg_11_), .A2(
        sbox_input_data_reg_6_), .ZN(sbox_g1_g3_n6) );
  XOR2_X1 sbox_g1_g3_U10 ( .A(sbox_g1_g3_n6), .B(sbox_g1_g3_n7), .Z(
        sbox_g1_g3_n5) );
  XOR2_X1 sbox_g1_g3_U9 ( .A(sbox_input_data_reg_5_), .B(
        sbox_input_data_reg_11_), .Z(sbox_g1_g3_n16) );
  XOR2_X1 sbox_g1_g3_U8 ( .A(sbox_g1_g3_n12), .B(sbox_g1_g3_n13), .Z(
        sbox_g1_g3_n11) );
  NAND2_X1 sbox_g1_g3_U7 ( .A1(sbox_input_data_reg_10_), .A2(sbox_g1_g3_n16), 
        .ZN(sbox_g1_g3_n10) );
  XOR2_X1 sbox_g1_g3_U6 ( .A(sbox_g1_g3_n10), .B(sbox_g1_g3_n11), .Z(
        sbox_g1_g3_n4) );
  NAND2_X1 sbox_g1_g3_U5 ( .A1(sbox_input_data_reg_11_), .A2(
        sbox_input_data_reg_5_), .ZN(sbox_g1_g3_n8) );
  XOR2_X1 sbox_g1_g3_U4 ( .A(sbox_input_data_reg_11_), .B(
        sbox_input_data_reg_10_), .Z(sbox_g1_g3_n15) );
  NAND2_X1 sbox_g1_g3_U3 ( .A1(sbox_input_data_reg_9_), .A2(sbox_g1_g3_n15), 
        .ZN(sbox_g1_g3_n12) );
  XOR2_X1 sbox_g1_g3_U2 ( .A(sbox_input_data_reg_7_), .B(
        sbox_input_data_reg_6_), .Z(sbox_g1_g3_n14) );
  NAND2_X1 sbox_g1_g3_U1 ( .A1(sbox_input_data_reg_9_), .A2(sbox_g1_g3_n14), 
        .ZN(sbox_g1_g3_n13) );
  XNOR2_X1 sbox_g2_g0_U10 ( .A(sbox_input_data_reg_9_), .B(
        sbox_input_data_reg_10_), .ZN(sbox_g2_g0_n11) );
  XOR2_X1 sbox_g2_g0_U9 ( .A(sbox_g2_g0_n16), .B(sbox_g2_g0_n15), .Z(
        sbox_g2_g0_n17) );
  XOR2_X1 sbox_g2_g0_U8 ( .A(sbox_g2_g0_n11), .B(sbox_g2_g0_n10), .Z(
        sbox_g2_g0_n18) );
  XOR2_X1 sbox_g2_g0_U7 ( .A(sbox_g2_g0_n18), .B(sbox_g2_g0_n17), .Z(
        sbox_s_g_out[4]) );
  NAND2_X1 sbox_g2_g0_U6 ( .A1(sbox_input_data_reg_2_), .A2(
        sbox_input_data_reg_9_), .ZN(sbox_g2_g0_n13) );
  NAND2_X1 sbox_g2_g0_U5 ( .A1(sbox_input_data_reg_10_), .A2(
        sbox_input_data_reg_1_), .ZN(sbox_g2_g0_n14) );
  XOR2_X1 sbox_g2_g0_U4 ( .A(sbox_g2_g0_n14), .B(sbox_g2_g0_n13), .Z(
        sbox_g2_g0_n15) );
  NAND2_X1 sbox_g2_g0_U3 ( .A1(sbox_input_data_reg_2_), .A2(
        sbox_input_data_reg_1_), .ZN(sbox_g2_g0_n12) );
  XOR2_X1 sbox_g2_g0_U2 ( .A(sbox_g2_g0_n12), .B(sbox_s_g_out[5]), .Z(
        sbox_g2_g0_n16) );
  XOR2_X1 sbox_g2_g0_U1 ( .A(sbox_input_data_reg_1_), .B(
        sbox_input_data_reg_11_), .Z(sbox_g2_g0_n10) );
  XNOR2_X1 sbox_g2_g2_U7 ( .A(sbox_input_data_reg_1_), .B(
        sbox_input_data_reg_11_), .ZN(sbox_g2_g2_n7) );
  XOR2_X1 sbox_g2_g2_U6 ( .A(sbox_g2_g2_n10), .B(sbox_g2_g2_n9), .Z(
        sbox_g2_g2_n11) );
  XOR2_X1 sbox_g2_g2_U5 ( .A(sbox_g2_g2_n7), .B(sbox_s_g_out[5]), .Z(
        sbox_g2_g2_n12) );
  XOR2_X1 sbox_g2_g2_U4 ( .A(sbox_g2_g2_n12), .B(sbox_g2_g2_n11), .Z(
        sbox_s_g_out[6]) );
  XOR2_X1 sbox_g2_g2_U3 ( .A(sbox_input_data_reg_2_), .B(
        sbox_input_data_reg_10_), .Z(sbox_g2_g2_n8) );
  NAND2_X1 sbox_g2_g2_U2 ( .A1(sbox_input_data_reg_1_), .A2(sbox_g2_g2_n8), 
        .ZN(sbox_g2_g2_n10) );
  NAND2_X1 sbox_g2_g2_U1 ( .A1(sbox_input_data_reg_9_), .A2(
        sbox_input_data_reg_2_), .ZN(sbox_g2_g2_n9) );
  XOR2_X1 sbox_g2_g3_U17 ( .A(sbox_g2_g3_n29), .B(sbox_g2_g3_n28), .Z(
        sbox_g2_g3_n30) );
  XOR2_X1 sbox_g2_g3_U16 ( .A(sbox_g2_g3_n30), .B(sbox_input_data_reg_1_), .Z(
        sbox_g2_g3_n32) );
  XOR2_X1 sbox_g2_g3_U15 ( .A(sbox_input_data_reg_9_), .B(sbox_s_g_out[5]), 
        .Z(sbox_g2_g3_n31) );
  XOR2_X1 sbox_g2_g3_U14 ( .A(sbox_g2_g3_n32), .B(sbox_g2_g3_n31), .Z(
        sbox_s_g_out[7]) );
  NAND2_X1 sbox_g2_g3_U13 ( .A1(sbox_input_data_reg_11_), .A2(
        sbox_input_data_reg_2_), .ZN(sbox_g2_g3_n24) );
  XOR2_X1 sbox_g2_g3_U12 ( .A(sbox_g2_g3_n25), .B(sbox_g2_g3_n24), .Z(
        sbox_g2_g3_n26) );
  AND2_X1 sbox_g2_g3_U11 ( .A1(sbox_input_data_reg_3_), .A2(
        sbox_input_data_reg_10_), .ZN(sbox_g2_g3_n27) );
  XOR2_X1 sbox_g2_g3_U10 ( .A(sbox_g2_g3_n27), .B(sbox_g2_g3_n26), .Z(
        sbox_g2_g3_n28) );
  XOR2_X1 sbox_g2_g3_U9 ( .A(sbox_input_data_reg_9_), .B(
        sbox_input_data_reg_3_), .Z(sbox_g2_g3_n17) );
  XOR2_X1 sbox_g2_g3_U8 ( .A(sbox_g2_g3_n21), .B(sbox_g2_g3_n20), .Z(
        sbox_g2_g3_n22) );
  NAND2_X1 sbox_g2_g3_U7 ( .A1(sbox_input_data_reg_2_), .A2(sbox_g2_g3_n17), 
        .ZN(sbox_g2_g3_n23) );
  XOR2_X1 sbox_g2_g3_U6 ( .A(sbox_g2_g3_n23), .B(sbox_g2_g3_n22), .Z(
        sbox_g2_g3_n29) );
  NAND2_X1 sbox_g2_g3_U5 ( .A1(sbox_input_data_reg_3_), .A2(
        sbox_input_data_reg_9_), .ZN(sbox_g2_g3_n25) );
  XOR2_X1 sbox_g2_g3_U4 ( .A(sbox_input_data_reg_3_), .B(
        sbox_input_data_reg_2_), .Z(sbox_g2_g3_n18) );
  NAND2_X1 sbox_g2_g3_U3 ( .A1(sbox_input_data_reg_1_), .A2(sbox_g2_g3_n18), 
        .ZN(sbox_g2_g3_n21) );
  XOR2_X1 sbox_g2_g3_U2 ( .A(sbox_input_data_reg_11_), .B(
        sbox_input_data_reg_10_), .Z(sbox_g2_g3_n19) );
  NAND2_X1 sbox_g2_g3_U1 ( .A1(sbox_input_data_reg_1_), .A2(sbox_g2_g3_n19), 
        .ZN(sbox_g2_g3_n20) );
  XNOR2_X1 sbox_g3_g0_U10 ( .A(sbox_input_data_reg_1_), .B(
        sbox_input_data_reg_2_), .ZN(sbox_g3_g0_n11) );
  XOR2_X1 sbox_g3_g0_U9 ( .A(sbox_g3_g0_n16), .B(sbox_g3_g0_n15), .Z(
        sbox_g3_g0_n17) );
  XOR2_X1 sbox_g3_g0_U8 ( .A(sbox_g3_g0_n11), .B(sbox_g3_g0_n10), .Z(
        sbox_g3_g0_n18) );
  XOR2_X1 sbox_g3_g0_U7 ( .A(sbox_g3_g0_n18), .B(sbox_g3_g0_n17), .Z(
        sbox_s_g_out[8]) );
  NAND2_X1 sbox_g3_g0_U6 ( .A1(sbox_input_data_reg_6_), .A2(
        sbox_input_data_reg_1_), .ZN(sbox_g3_g0_n13) );
  NAND2_X1 sbox_g3_g0_U5 ( .A1(sbox_input_data_reg_2_), .A2(
        sbox_input_data_reg_5_), .ZN(sbox_g3_g0_n14) );
  XOR2_X1 sbox_g3_g0_U4 ( .A(sbox_g3_g0_n14), .B(sbox_g3_g0_n13), .Z(
        sbox_g3_g0_n15) );
  NAND2_X1 sbox_g3_g0_U3 ( .A1(sbox_input_data_reg_6_), .A2(
        sbox_input_data_reg_5_), .ZN(sbox_g3_g0_n12) );
  XOR2_X1 sbox_g3_g0_U2 ( .A(sbox_g3_g0_n12), .B(sbox_s_g_out[9]), .Z(
        sbox_g3_g0_n16) );
  XOR2_X1 sbox_g3_g0_U1 ( .A(sbox_input_data_reg_5_), .B(
        sbox_input_data_reg_3_), .Z(sbox_g3_g0_n10) );
  XNOR2_X1 sbox_g3_g2_U7 ( .A(sbox_input_data_reg_5_), .B(
        sbox_input_data_reg_3_), .ZN(sbox_g3_g2_n7) );
  XOR2_X1 sbox_g3_g2_U6 ( .A(sbox_g3_g2_n10), .B(sbox_g3_g2_n9), .Z(
        sbox_g3_g2_n11) );
  XOR2_X1 sbox_g3_g2_U5 ( .A(sbox_g3_g2_n7), .B(sbox_s_g_out[9]), .Z(
        sbox_g3_g2_n12) );
  XOR2_X1 sbox_g3_g2_U4 ( .A(sbox_g3_g2_n12), .B(sbox_g3_g2_n11), .Z(
        sbox_s_g_out[10]) );
  XOR2_X1 sbox_g3_g2_U3 ( .A(sbox_input_data_reg_6_), .B(
        sbox_input_data_reg_2_), .Z(sbox_g3_g2_n8) );
  NAND2_X1 sbox_g3_g2_U2 ( .A1(sbox_input_data_reg_5_), .A2(sbox_g3_g2_n8), 
        .ZN(sbox_g3_g2_n10) );
  NAND2_X1 sbox_g3_g2_U1 ( .A1(sbox_input_data_reg_1_), .A2(
        sbox_input_data_reg_6_), .ZN(sbox_g3_g2_n9) );
  XOR2_X1 sbox_g3_g3_U17 ( .A(sbox_g3_g3_n29), .B(sbox_g3_g3_n28), .Z(
        sbox_g3_g3_n30) );
  XOR2_X1 sbox_g3_g3_U16 ( .A(sbox_g3_g3_n30), .B(sbox_input_data_reg_5_), .Z(
        sbox_g3_g3_n32) );
  XOR2_X1 sbox_g3_g3_U15 ( .A(sbox_input_data_reg_1_), .B(sbox_s_g_out[9]), 
        .Z(sbox_g3_g3_n31) );
  XOR2_X1 sbox_g3_g3_U14 ( .A(sbox_g3_g3_n32), .B(sbox_g3_g3_n31), .Z(
        sbox_s_g_out[11]) );
  NAND2_X1 sbox_g3_g3_U13 ( .A1(sbox_input_data_reg_3_), .A2(
        sbox_input_data_reg_6_), .ZN(sbox_g3_g3_n24) );
  XOR2_X1 sbox_g3_g3_U12 ( .A(sbox_g3_g3_n25), .B(sbox_g3_g3_n24), .Z(
        sbox_g3_g3_n26) );
  AND2_X1 sbox_g3_g3_U11 ( .A1(sbox_input_data_reg_7_), .A2(
        sbox_input_data_reg_2_), .ZN(sbox_g3_g3_n27) );
  XOR2_X1 sbox_g3_g3_U10 ( .A(sbox_g3_g3_n27), .B(sbox_g3_g3_n26), .Z(
        sbox_g3_g3_n28) );
  XOR2_X1 sbox_g3_g3_U9 ( .A(sbox_input_data_reg_1_), .B(
        sbox_input_data_reg_7_), .Z(sbox_g3_g3_n17) );
  XOR2_X1 sbox_g3_g3_U8 ( .A(sbox_g3_g3_n21), .B(sbox_g3_g3_n20), .Z(
        sbox_g3_g3_n22) );
  NAND2_X1 sbox_g3_g3_U7 ( .A1(sbox_input_data_reg_6_), .A2(sbox_g3_g3_n17), 
        .ZN(sbox_g3_g3_n23) );
  XOR2_X1 sbox_g3_g3_U6 ( .A(sbox_g3_g3_n23), .B(sbox_g3_g3_n22), .Z(
        sbox_g3_g3_n29) );
  NAND2_X1 sbox_g3_g3_U5 ( .A1(sbox_input_data_reg_7_), .A2(
        sbox_input_data_reg_1_), .ZN(sbox_g3_g3_n25) );
  XOR2_X1 sbox_g3_g3_U4 ( .A(sbox_input_data_reg_7_), .B(
        sbox_input_data_reg_6_), .Z(sbox_g3_g3_n18) );
  NAND2_X1 sbox_g3_g3_U3 ( .A1(sbox_input_data_reg_5_), .A2(sbox_g3_g3_n18), 
        .ZN(sbox_g3_g3_n21) );
  XOR2_X1 sbox_g3_g3_U2 ( .A(sbox_input_data_reg_3_), .B(
        sbox_input_data_reg_2_), .Z(sbox_g3_g3_n19) );
  NAND2_X1 sbox_g3_g3_U1 ( .A1(sbox_input_data_reg_5_), .A2(sbox_g3_g3_n19), 
        .ZN(sbox_g3_g3_n20) );
  INV_X1 sbox_g1_red_g0_U1 ( .A(sbox_input_red_reg_4_), .ZN(
        sbox_s_g_red_out[0]) );
  NOR2_X1 sbox_g1_red_g1_U22 ( .A1(sbox_g1_red_g1_n3), .A2(sbox_g1_red_g1_n17), 
        .ZN(sbox_g1_red_g1_n15) );
  NOR2_X1 sbox_g1_red_g1_U21 ( .A1(sbox_input_red_reg_7_), .A2(
        sbox_input_red_reg_5_), .ZN(sbox_g1_red_g1_n16) );
  NOR2_X1 sbox_g1_red_g1_U20 ( .A1(sbox_g1_red_g1_n15), .A2(sbox_g1_red_g1_n16), .ZN(sbox_g1_red_g1_n14) );
  NOR2_X1 sbox_g1_red_g1_U19 ( .A1(sbox_g1_red_g1_n14), .A2(sbox_g1_red_g1_n4), 
        .ZN(sbox_g1_red_g1_n13) );
  NOR2_X1 sbox_g1_red_g1_U18 ( .A1(sbox_g1_red_g1_n2), .A2(sbox_g1_red_g1_n21), 
        .ZN(sbox_g1_red_g1_n19) );
  NOR2_X1 sbox_g1_red_g1_U17 ( .A1(sbox_input_red_reg_6_), .A2(
        sbox_g1_red_g1_n1), .ZN(sbox_g1_red_g1_n20) );
  NOR2_X1 sbox_g1_red_g1_U16 ( .A1(sbox_g1_red_g1_n19), .A2(sbox_g1_red_g1_n20), .ZN(sbox_g1_red_g1_n18) );
  NOR2_X1 sbox_g1_red_g1_U15 ( .A1(sbox_input_red_reg_11_), .A2(
        sbox_g1_red_g1_n18), .ZN(sbox_g1_red_g1_n12) );
  NAND2_X1 sbox_g1_red_g1_U14 ( .A1(sbox_input_red_reg_7_), .A2(
        sbox_g1_red_g1_n5), .ZN(sbox_g1_red_g1_n17) );
  NAND2_X1 sbox_g1_red_g1_U13 ( .A1(sbox_input_red_reg_11_), .A2(
        sbox_g1_red_g1_n3), .ZN(sbox_g1_red_g1_n11) );
  INV_X1 sbox_g1_red_g1_U12 ( .A(sbox_input_red_reg_11_), .ZN(
        sbox_g1_red_g1_n4) );
  INV_X1 sbox_g1_red_g1_U11 ( .A(sbox_input_red_reg_7_), .ZN(sbox_g1_red_g1_n1) );
  INV_X1 sbox_g1_red_g1_U10 ( .A(sbox_input_red_reg_5_), .ZN(sbox_g1_red_g1_n3) );
  INV_X1 sbox_g1_red_g1_U9 ( .A(sbox_input_red_reg_6_), .ZN(sbox_g1_red_g1_n2)
         );
  XNOR2_X1 sbox_g1_red_g1_U8 ( .A(sbox_input_red_reg_10_), .B(
        sbox_input_red_reg_9_), .ZN(sbox_g1_red_g1_n8) );
  NAND2_X1 sbox_g1_red_g1_U7 ( .A1(sbox_g1_red_g1_n10), .A2(sbox_g1_red_g1_n11), .ZN(sbox_g1_red_g1_n9) );
  NOR2_X1 sbox_g1_red_g1_U6 ( .A1(sbox_g1_red_g1_n12), .A2(sbox_g1_red_g1_n13), 
        .ZN(sbox_g1_red_g1_n6) );
  NAND2_X1 sbox_g1_red_g1_U5 ( .A1(sbox_g1_red_g1_n8), .A2(sbox_g1_red_g1_n9), 
        .ZN(sbox_g1_red_g1_n7) );
  NAND2_X1 sbox_g1_red_g1_U4 ( .A1(sbox_g1_red_g1_n6), .A2(sbox_g1_red_g1_n7), 
        .ZN(sbox_s_g_red_out[1]) );
  NAND2_X1 sbox_g1_red_g1_U3 ( .A1(sbox_g1_red_g1_n5), .A2(sbox_g1_red_g1_n1), 
        .ZN(sbox_g1_red_g1_n21) );
  NAND2_X1 sbox_g1_red_g1_U2 ( .A1(sbox_g1_red_g1_n2), .A2(sbox_g1_red_g1_n4), 
        .ZN(sbox_g1_red_g1_n10) );
  INV_X1 sbox_g1_red_g1_U1 ( .A(sbox_g1_red_g1_n8), .ZN(sbox_g1_red_g1_n5) );
  AND2_X1 sbox_g1_red_g2_U20 ( .A1(sbox_input_red_reg_10_), .A2(
        sbox_input_red_reg_5_), .ZN(sbox_g1_red_g2_n4) );
  NAND2_X1 sbox_g1_red_g2_U19 ( .A1(sbox_input_red_reg_10_), .A2(
        sbox_input_red_reg_4_), .ZN(sbox_g1_red_g2_n16) );
  XOR2_X1 sbox_g1_red_g2_U18 ( .A(sbox_g1_red_g2_n3), .B(sbox_g1_red_g2_n4), 
        .Z(sbox_g1_red_g2_n2) );
  XOR2_X1 sbox_g1_red_g2_U17 ( .A(sbox_g1_red_g2_n16), .B(sbox_g1_red_g2_n17), 
        .Z(sbox_g1_red_g2_n1) );
  XOR2_X1 sbox_g1_red_g2_U16 ( .A(sbox_g1_red_g2_n1), .B(sbox_g1_red_g2_n2), 
        .Z(sbox_s_g_red_out[2]) );
  XOR2_X1 sbox_g1_red_g2_U15 ( .A(sbox_input_red_reg_10_), .B(
        sbox_input_red_reg_7_), .Z(sbox_g1_red_g2_n14) );
  XOR2_X1 sbox_g1_red_g2_U14 ( .A(sbox_g1_red_g2_n7), .B(sbox_g1_red_g2_n8), 
        .Z(sbox_g1_red_g2_n6) );
  XOR2_X1 sbox_g1_red_g2_U13 ( .A(sbox_g1_red_g2_n13), .B(sbox_g1_red_g2_n14), 
        .Z(sbox_g1_red_g2_n5) );
  XOR2_X1 sbox_g1_red_g2_U12 ( .A(sbox_g1_red_g2_n5), .B(sbox_g1_red_g2_n6), 
        .Z(sbox_g1_red_g2_n3) );
  NAND2_X1 sbox_g1_red_g2_U11 ( .A1(sbox_input_red_reg_9_), .A2(
        sbox_input_red_reg_10_), .ZN(sbox_g1_red_g2_n10) );
  NAND2_X1 sbox_g1_red_g2_U10 ( .A1(sbox_input_red_reg_8_), .A2(
        sbox_input_red_reg_6_), .ZN(sbox_g1_red_g2_n9) );
  XOR2_X1 sbox_g1_red_g2_U9 ( .A(sbox_g1_red_g2_n9), .B(sbox_g1_red_g2_n10), 
        .Z(sbox_g1_red_g2_n8) );
  NAND2_X1 sbox_g1_red_g2_U8 ( .A1(sbox_input_red_reg_6_), .A2(
        sbox_input_red_reg_9_), .ZN(sbox_g1_red_g2_n19) );
  NAND2_X1 sbox_g1_red_g2_U7 ( .A1(sbox_input_red_reg_9_), .A2(
        sbox_input_red_reg_4_), .ZN(sbox_g1_red_g2_n18) );
  XOR2_X1 sbox_g1_red_g2_U6 ( .A(sbox_g1_red_g2_n18), .B(sbox_g1_red_g2_n19), 
        .Z(sbox_g1_red_g2_n17) );
  NAND2_X1 sbox_g1_red_g2_U5 ( .A1(sbox_input_red_reg_8_), .A2(
        sbox_input_red_reg_10_), .ZN(sbox_g1_red_g2_n11) );
  NAND2_X1 sbox_g1_red_g2_U4 ( .A1(sbox_input_red_reg_8_), .A2(
        sbox_input_red_reg_5_), .ZN(sbox_g1_red_g2_n12) );
  XOR2_X1 sbox_g1_red_g2_U3 ( .A(sbox_g1_red_g2_n11), .B(sbox_g1_red_g2_n12), 
        .Z(sbox_g1_red_g2_n7) );
  NAND2_X1 sbox_g1_red_g2_U2 ( .A1(sbox_input_red_reg_8_), .A2(
        sbox_input_red_reg_9_), .ZN(sbox_g1_red_g2_n15) );
  XOR2_X1 sbox_g1_red_g2_U1 ( .A(sbox_g1_red_g2_n15), .B(sbox_input_red_reg_5_), .Z(sbox_g1_red_g2_n13) );
  OR2_X1 sbox_g1_red_g3_U20 ( .A1(sbox_g1_red_g3_n6), .A2(
        sbox_input_red_reg_6_), .ZN(sbox_g1_red_g3_n15) );
  NOR2_X1 sbox_g1_red_g3_U19 ( .A1(sbox_g1_red_g3_n6), .A2(sbox_g1_red_g3_n19), 
        .ZN(sbox_g1_red_g3_n17) );
  NOR2_X1 sbox_g1_red_g3_U18 ( .A1(sbox_g1_red_g3_n2), .A2(sbox_g1_red_g3_n1), 
        .ZN(sbox_g1_red_g3_n18) );
  NOR2_X1 sbox_g1_red_g3_U17 ( .A1(sbox_g1_red_g3_n17), .A2(sbox_g1_red_g3_n18), .ZN(sbox_g1_red_g3_n16) );
  NOR2_X1 sbox_g1_red_g3_U16 ( .A1(sbox_input_red_reg_11_), .A2(
        sbox_g1_red_g3_n16), .ZN(sbox_g1_red_g3_n10) );
  NOR2_X1 sbox_g1_red_g3_U15 ( .A1(sbox_g1_red_g3_n1), .A2(sbox_g1_red_g3_n15), 
        .ZN(sbox_g1_red_g3_n13) );
  AND2_X1 sbox_g1_red_g3_U14 ( .A1(sbox_g1_red_g3_n1), .A2(
        sbox_input_red_reg_6_), .ZN(sbox_g1_red_g3_n14) );
  NOR2_X1 sbox_g1_red_g3_U13 ( .A1(sbox_g1_red_g3_n13), .A2(sbox_g1_red_g3_n14), .ZN(sbox_g1_red_g3_n12) );
  NOR2_X1 sbox_g1_red_g3_U12 ( .A1(sbox_g1_red_g3_n12), .A2(sbox_g1_red_g3_n3), 
        .ZN(sbox_g1_red_g3_n11) );
  NAND2_X1 sbox_g1_red_g3_U11 ( .A1(sbox_input_red_reg_11_), .A2(
        sbox_input_red_reg_6_), .ZN(sbox_g1_red_g3_n8) );
  INV_X1 sbox_g1_red_g3_U10 ( .A(sbox_input_red_reg_11_), .ZN(
        sbox_g1_red_g3_n3) );
  INV_X1 sbox_g1_red_g3_U9 ( .A(sbox_input_red_reg_5_), .ZN(sbox_g1_red_g3_n2)
         );
  NAND2_X1 sbox_g1_red_g3_U8 ( .A1(sbox_input_red_reg_5_), .A2(
        sbox_g1_red_g3_n3), .ZN(sbox_g1_red_g3_n9) );
  INV_X1 sbox_g1_red_g3_U7 ( .A(sbox_input_red_reg_7_), .ZN(sbox_g1_red_g3_n1)
         );
  XNOR2_X1 sbox_g1_red_g3_U6 ( .A(sbox_input_red_reg_10_), .B(
        sbox_input_red_reg_9_), .ZN(sbox_g1_red_g3_n6) );
  NAND2_X1 sbox_g1_red_g3_U5 ( .A1(sbox_g1_red_g3_n8), .A2(sbox_g1_red_g3_n9), 
        .ZN(sbox_g1_red_g3_n7) );
  NOR2_X1 sbox_g1_red_g3_U4 ( .A1(sbox_g1_red_g3_n10), .A2(sbox_g1_red_g3_n11), 
        .ZN(sbox_g1_red_g3_n4) );
  NAND2_X1 sbox_g1_red_g3_U3 ( .A1(sbox_g1_red_g3_n6), .A2(sbox_g1_red_g3_n7), 
        .ZN(sbox_g1_red_g3_n5) );
  NAND2_X1 sbox_g1_red_g3_U2 ( .A1(sbox_g1_red_g3_n4), .A2(sbox_g1_red_g3_n5), 
        .ZN(sbox_s_g_red_out[3]) );
  NAND2_X1 sbox_g1_red_g3_U1 ( .A1(sbox_g1_red_g3_n2), .A2(sbox_g1_red_g3_n1), 
        .ZN(sbox_g1_red_g3_n19) );
  INV_X1 sbox_g2_red_g0_U1 ( .A(sbox_input_red_reg_8_), .ZN(
        sbox_s_g_red_out[4]) );
  NOR2_X1 sbox_g2_red_g1_U22 ( .A1(sbox_g2_red_g1_n40), .A2(sbox_g2_red_g1_n26), .ZN(sbox_g2_red_g1_n28) );
  NOR2_X1 sbox_g2_red_g1_U21 ( .A1(sbox_input_red_reg_11_), .A2(
        sbox_input_red_reg_9_), .ZN(sbox_g2_red_g1_n27) );
  NOR2_X1 sbox_g2_red_g1_U20 ( .A1(sbox_g2_red_g1_n28), .A2(sbox_g2_red_g1_n27), .ZN(sbox_g2_red_g1_n29) );
  NOR2_X1 sbox_g2_red_g1_U19 ( .A1(sbox_g2_red_g1_n29), .A2(sbox_g2_red_g1_n39), .ZN(sbox_g2_red_g1_n30) );
  NOR2_X1 sbox_g2_red_g1_U18 ( .A1(sbox_g2_red_g1_n41), .A2(sbox_g2_red_g1_n22), .ZN(sbox_g2_red_g1_n24) );
  NOR2_X1 sbox_g2_red_g1_U17 ( .A1(sbox_input_red_reg_10_), .A2(
        sbox_g2_red_g1_n42), .ZN(sbox_g2_red_g1_n23) );
  NOR2_X1 sbox_g2_red_g1_U16 ( .A1(sbox_g2_red_g1_n24), .A2(sbox_g2_red_g1_n23), .ZN(sbox_g2_red_g1_n25) );
  NOR2_X1 sbox_g2_red_g1_U15 ( .A1(sbox_input_red_reg_3_), .A2(
        sbox_g2_red_g1_n25), .ZN(sbox_g2_red_g1_n31) );
  NAND2_X1 sbox_g2_red_g1_U14 ( .A1(sbox_input_red_reg_11_), .A2(
        sbox_g2_red_g1_n38), .ZN(sbox_g2_red_g1_n26) );
  NAND2_X1 sbox_g2_red_g1_U13 ( .A1(sbox_input_red_reg_3_), .A2(
        sbox_g2_red_g1_n40), .ZN(sbox_g2_red_g1_n32) );
  INV_X1 sbox_g2_red_g1_U12 ( .A(sbox_input_red_reg_3_), .ZN(
        sbox_g2_red_g1_n39) );
  INV_X1 sbox_g2_red_g1_U11 ( .A(sbox_input_red_reg_11_), .ZN(
        sbox_g2_red_g1_n42) );
  INV_X1 sbox_g2_red_g1_U10 ( .A(sbox_input_red_reg_9_), .ZN(
        sbox_g2_red_g1_n40) );
  INV_X1 sbox_g2_red_g1_U9 ( .A(sbox_input_red_reg_10_), .ZN(
        sbox_g2_red_g1_n41) );
  XNOR2_X1 sbox_g2_red_g1_U8 ( .A(sbox_input_red_reg_2_), .B(
        sbox_input_red_reg_1_), .ZN(sbox_g2_red_g1_n35) );
  NAND2_X1 sbox_g2_red_g1_U7 ( .A1(sbox_g2_red_g1_n33), .A2(sbox_g2_red_g1_n32), .ZN(sbox_g2_red_g1_n34) );
  NOR2_X1 sbox_g2_red_g1_U6 ( .A1(sbox_g2_red_g1_n31), .A2(sbox_g2_red_g1_n30), 
        .ZN(sbox_g2_red_g1_n37) );
  NAND2_X1 sbox_g2_red_g1_U5 ( .A1(sbox_g2_red_g1_n35), .A2(sbox_g2_red_g1_n34), .ZN(sbox_g2_red_g1_n36) );
  NAND2_X1 sbox_g2_red_g1_U4 ( .A1(sbox_g2_red_g1_n37), .A2(sbox_g2_red_g1_n36), .ZN(sbox_s_g_red_out[5]) );
  NAND2_X1 sbox_g2_red_g1_U3 ( .A1(sbox_g2_red_g1_n38), .A2(sbox_g2_red_g1_n42), .ZN(sbox_g2_red_g1_n22) );
  NAND2_X1 sbox_g2_red_g1_U2 ( .A1(sbox_g2_red_g1_n41), .A2(sbox_g2_red_g1_n39), .ZN(sbox_g2_red_g1_n33) );
  INV_X1 sbox_g2_red_g1_U1 ( .A(sbox_g2_red_g1_n35), .ZN(sbox_g2_red_g1_n38)
         );
  AND2_X1 sbox_g2_red_g2_U20 ( .A1(sbox_input_red_reg_2_), .A2(
        sbox_input_red_reg_9_), .ZN(sbox_g2_red_g2_n35) );
  NAND2_X1 sbox_g2_red_g2_U19 ( .A1(sbox_input_red_reg_2_), .A2(
        sbox_input_red_reg_8_), .ZN(sbox_g2_red_g2_n23) );
  XOR2_X1 sbox_g2_red_g2_U18 ( .A(sbox_g2_red_g2_n36), .B(sbox_g2_red_g2_n35), 
        .Z(sbox_g2_red_g2_n37) );
  XOR2_X1 sbox_g2_red_g2_U17 ( .A(sbox_g2_red_g2_n23), .B(sbox_g2_red_g2_n22), 
        .Z(sbox_g2_red_g2_n38) );
  XOR2_X1 sbox_g2_red_g2_U16 ( .A(sbox_g2_red_g2_n38), .B(sbox_g2_red_g2_n37), 
        .Z(sbox_s_g_red_out[6]) );
  XOR2_X1 sbox_g2_red_g2_U15 ( .A(sbox_input_red_reg_2_), .B(
        sbox_input_red_reg_11_), .Z(sbox_g2_red_g2_n25) );
  XOR2_X1 sbox_g2_red_g2_U14 ( .A(sbox_g2_red_g2_n32), .B(sbox_g2_red_g2_n31), 
        .Z(sbox_g2_red_g2_n33) );
  XOR2_X1 sbox_g2_red_g2_U13 ( .A(sbox_g2_red_g2_n26), .B(sbox_g2_red_g2_n25), 
        .Z(sbox_g2_red_g2_n34) );
  XOR2_X1 sbox_g2_red_g2_U12 ( .A(sbox_g2_red_g2_n34), .B(sbox_g2_red_g2_n33), 
        .Z(sbox_g2_red_g2_n36) );
  NAND2_X1 sbox_g2_red_g2_U11 ( .A1(sbox_input_red_reg_1_), .A2(
        sbox_input_red_reg_2_), .ZN(sbox_g2_red_g2_n29) );
  NAND2_X1 sbox_g2_red_g2_U10 ( .A1(sbox_input_red_reg_0_), .A2(
        sbox_input_red_reg_10_), .ZN(sbox_g2_red_g2_n30) );
  XOR2_X1 sbox_g2_red_g2_U9 ( .A(sbox_g2_red_g2_n30), .B(sbox_g2_red_g2_n29), 
        .Z(sbox_g2_red_g2_n31) );
  NAND2_X1 sbox_g2_red_g2_U8 ( .A1(sbox_input_red_reg_10_), .A2(
        sbox_input_red_reg_1_), .ZN(sbox_g2_red_g2_n20) );
  NAND2_X1 sbox_g2_red_g2_U7 ( .A1(sbox_input_red_reg_1_), .A2(
        sbox_input_red_reg_8_), .ZN(sbox_g2_red_g2_n21) );
  XOR2_X1 sbox_g2_red_g2_U6 ( .A(sbox_g2_red_g2_n21), .B(sbox_g2_red_g2_n20), 
        .Z(sbox_g2_red_g2_n22) );
  NAND2_X1 sbox_g2_red_g2_U5 ( .A1(sbox_input_red_reg_0_), .A2(
        sbox_input_red_reg_2_), .ZN(sbox_g2_red_g2_n28) );
  NAND2_X1 sbox_g2_red_g2_U4 ( .A1(sbox_input_red_reg_0_), .A2(
        sbox_input_red_reg_9_), .ZN(sbox_g2_red_g2_n27) );
  XOR2_X1 sbox_g2_red_g2_U3 ( .A(sbox_g2_red_g2_n28), .B(sbox_g2_red_g2_n27), 
        .Z(sbox_g2_red_g2_n32) );
  NAND2_X1 sbox_g2_red_g2_U2 ( .A1(sbox_input_red_reg_0_), .A2(
        sbox_input_red_reg_1_), .ZN(sbox_g2_red_g2_n24) );
  XOR2_X1 sbox_g2_red_g2_U1 ( .A(sbox_g2_red_g2_n24), .B(sbox_input_red_reg_9_), .Z(sbox_g2_red_g2_n26) );
  OR2_X1 sbox_g2_red_g3_U20 ( .A1(sbox_g2_red_g3_n33), .A2(
        sbox_input_red_reg_10_), .ZN(sbox_g2_red_g3_n24) );
  NOR2_X1 sbox_g2_red_g3_U19 ( .A1(sbox_g2_red_g3_n33), .A2(sbox_g2_red_g3_n20), .ZN(sbox_g2_red_g3_n22) );
  NOR2_X1 sbox_g2_red_g3_U18 ( .A1(sbox_g2_red_g3_n37), .A2(sbox_g2_red_g3_n38), .ZN(sbox_g2_red_g3_n21) );
  NOR2_X1 sbox_g2_red_g3_U17 ( .A1(sbox_g2_red_g3_n22), .A2(sbox_g2_red_g3_n21), .ZN(sbox_g2_red_g3_n23) );
  NOR2_X1 sbox_g2_red_g3_U16 ( .A1(sbox_input_red_reg_3_), .A2(
        sbox_g2_red_g3_n23), .ZN(sbox_g2_red_g3_n29) );
  NOR2_X1 sbox_g2_red_g3_U15 ( .A1(sbox_g2_red_g3_n38), .A2(sbox_g2_red_g3_n24), .ZN(sbox_g2_red_g3_n26) );
  AND2_X1 sbox_g2_red_g3_U14 ( .A1(sbox_g2_red_g3_n38), .A2(
        sbox_input_red_reg_10_), .ZN(sbox_g2_red_g3_n25) );
  NOR2_X1 sbox_g2_red_g3_U13 ( .A1(sbox_g2_red_g3_n26), .A2(sbox_g2_red_g3_n25), .ZN(sbox_g2_red_g3_n27) );
  NOR2_X1 sbox_g2_red_g3_U12 ( .A1(sbox_g2_red_g3_n27), .A2(sbox_g2_red_g3_n36), .ZN(sbox_g2_red_g3_n28) );
  NAND2_X1 sbox_g2_red_g3_U11 ( .A1(sbox_input_red_reg_3_), .A2(
        sbox_input_red_reg_10_), .ZN(sbox_g2_red_g3_n31) );
  INV_X1 sbox_g2_red_g3_U10 ( .A(sbox_input_red_reg_3_), .ZN(
        sbox_g2_red_g3_n36) );
  INV_X1 sbox_g2_red_g3_U9 ( .A(sbox_input_red_reg_9_), .ZN(sbox_g2_red_g3_n37) );
  NAND2_X1 sbox_g2_red_g3_U8 ( .A1(sbox_input_red_reg_9_), .A2(
        sbox_g2_red_g3_n36), .ZN(sbox_g2_red_g3_n30) );
  INV_X1 sbox_g2_red_g3_U7 ( .A(sbox_input_red_reg_11_), .ZN(
        sbox_g2_red_g3_n38) );
  XNOR2_X1 sbox_g2_red_g3_U6 ( .A(sbox_input_red_reg_2_), .B(
        sbox_input_red_reg_1_), .ZN(sbox_g2_red_g3_n33) );
  NAND2_X1 sbox_g2_red_g3_U5 ( .A1(sbox_g2_red_g3_n31), .A2(sbox_g2_red_g3_n30), .ZN(sbox_g2_red_g3_n32) );
  NOR2_X1 sbox_g2_red_g3_U4 ( .A1(sbox_g2_red_g3_n29), .A2(sbox_g2_red_g3_n28), 
        .ZN(sbox_g2_red_g3_n35) );
  NAND2_X1 sbox_g2_red_g3_U3 ( .A1(sbox_g2_red_g3_n33), .A2(sbox_g2_red_g3_n32), .ZN(sbox_g2_red_g3_n34) );
  NAND2_X1 sbox_g2_red_g3_U2 ( .A1(sbox_g2_red_g3_n35), .A2(sbox_g2_red_g3_n34), .ZN(sbox_s_g_red_out[7]) );
  NAND2_X1 sbox_g2_red_g3_U1 ( .A1(sbox_g2_red_g3_n37), .A2(sbox_g2_red_g3_n38), .ZN(sbox_g2_red_g3_n20) );
  INV_X1 sbox_g3_red_g0_U1 ( .A(sbox_input_red_reg_0_), .ZN(
        sbox_s_g_red_out[8]) );
  NOR2_X1 sbox_g3_red_g1_U22 ( .A1(sbox_g3_red_g1_n40), .A2(sbox_g3_red_g1_n26), .ZN(sbox_g3_red_g1_n28) );
  NOR2_X1 sbox_g3_red_g1_U21 ( .A1(sbox_input_red_reg_3_), .A2(
        sbox_input_red_reg_1_), .ZN(sbox_g3_red_g1_n27) );
  NOR2_X1 sbox_g3_red_g1_U20 ( .A1(sbox_g3_red_g1_n28), .A2(sbox_g3_red_g1_n27), .ZN(sbox_g3_red_g1_n29) );
  NOR2_X1 sbox_g3_red_g1_U19 ( .A1(sbox_g3_red_g1_n29), .A2(sbox_g3_red_g1_n39), .ZN(sbox_g3_red_g1_n30) );
  NOR2_X1 sbox_g3_red_g1_U18 ( .A1(sbox_g3_red_g1_n41), .A2(sbox_g3_red_g1_n22), .ZN(sbox_g3_red_g1_n24) );
  NOR2_X1 sbox_g3_red_g1_U17 ( .A1(sbox_input_red_reg_2_), .A2(
        sbox_g3_red_g1_n42), .ZN(sbox_g3_red_g1_n23) );
  NOR2_X1 sbox_g3_red_g1_U16 ( .A1(sbox_g3_red_g1_n24), .A2(sbox_g3_red_g1_n23), .ZN(sbox_g3_red_g1_n25) );
  NOR2_X1 sbox_g3_red_g1_U15 ( .A1(sbox_input_red_reg_7_), .A2(
        sbox_g3_red_g1_n25), .ZN(sbox_g3_red_g1_n31) );
  NAND2_X1 sbox_g3_red_g1_U14 ( .A1(sbox_input_red_reg_3_), .A2(
        sbox_g3_red_g1_n38), .ZN(sbox_g3_red_g1_n26) );
  NAND2_X1 sbox_g3_red_g1_U13 ( .A1(sbox_input_red_reg_7_), .A2(
        sbox_g3_red_g1_n40), .ZN(sbox_g3_red_g1_n32) );
  INV_X1 sbox_g3_red_g1_U12 ( .A(sbox_input_red_reg_7_), .ZN(
        sbox_g3_red_g1_n39) );
  INV_X1 sbox_g3_red_g1_U11 ( .A(sbox_input_red_reg_3_), .ZN(
        sbox_g3_red_g1_n42) );
  INV_X1 sbox_g3_red_g1_U10 ( .A(sbox_input_red_reg_1_), .ZN(
        sbox_g3_red_g1_n40) );
  INV_X1 sbox_g3_red_g1_U9 ( .A(sbox_input_red_reg_2_), .ZN(sbox_g3_red_g1_n41) );
  XNOR2_X1 sbox_g3_red_g1_U8 ( .A(sbox_input_red_reg_6_), .B(
        sbox_input_red_reg_5_), .ZN(sbox_g3_red_g1_n35) );
  NAND2_X1 sbox_g3_red_g1_U7 ( .A1(sbox_g3_red_g1_n33), .A2(sbox_g3_red_g1_n32), .ZN(sbox_g3_red_g1_n34) );
  NOR2_X1 sbox_g3_red_g1_U6 ( .A1(sbox_g3_red_g1_n31), .A2(sbox_g3_red_g1_n30), 
        .ZN(sbox_g3_red_g1_n37) );
  NAND2_X1 sbox_g3_red_g1_U5 ( .A1(sbox_g3_red_g1_n35), .A2(sbox_g3_red_g1_n34), .ZN(sbox_g3_red_g1_n36) );
  NAND2_X1 sbox_g3_red_g1_U4 ( .A1(sbox_g3_red_g1_n37), .A2(sbox_g3_red_g1_n36), .ZN(sbox_s_g_red_out[9]) );
  NAND2_X1 sbox_g3_red_g1_U3 ( .A1(sbox_g3_red_g1_n38), .A2(sbox_g3_red_g1_n42), .ZN(sbox_g3_red_g1_n22) );
  NAND2_X1 sbox_g3_red_g1_U2 ( .A1(sbox_g3_red_g1_n41), .A2(sbox_g3_red_g1_n39), .ZN(sbox_g3_red_g1_n33) );
  INV_X1 sbox_g3_red_g1_U1 ( .A(sbox_g3_red_g1_n35), .ZN(sbox_g3_red_g1_n38)
         );
  AND2_X1 sbox_g3_red_g2_U20 ( .A1(sbox_input_red_reg_6_), .A2(
        sbox_input_red_reg_1_), .ZN(sbox_g3_red_g2_n35) );
  NAND2_X1 sbox_g3_red_g2_U19 ( .A1(sbox_input_red_reg_6_), .A2(
        sbox_input_red_reg_0_), .ZN(sbox_g3_red_g2_n23) );
  XOR2_X1 sbox_g3_red_g2_U18 ( .A(sbox_g3_red_g2_n36), .B(sbox_g3_red_g2_n35), 
        .Z(sbox_g3_red_g2_n37) );
  XOR2_X1 sbox_g3_red_g2_U17 ( .A(sbox_g3_red_g2_n23), .B(sbox_g3_red_g2_n22), 
        .Z(sbox_g3_red_g2_n38) );
  XOR2_X1 sbox_g3_red_g2_U16 ( .A(sbox_g3_red_g2_n38), .B(sbox_g3_red_g2_n37), 
        .Z(sbox_s_g_red_out[10]) );
  XOR2_X1 sbox_g3_red_g2_U15 ( .A(sbox_input_red_reg_6_), .B(
        sbox_input_red_reg_3_), .Z(sbox_g3_red_g2_n25) );
  XOR2_X1 sbox_g3_red_g2_U14 ( .A(sbox_g3_red_g2_n32), .B(sbox_g3_red_g2_n31), 
        .Z(sbox_g3_red_g2_n33) );
  XOR2_X1 sbox_g3_red_g2_U13 ( .A(sbox_g3_red_g2_n26), .B(sbox_g3_red_g2_n25), 
        .Z(sbox_g3_red_g2_n34) );
  XOR2_X1 sbox_g3_red_g2_U12 ( .A(sbox_g3_red_g2_n34), .B(sbox_g3_red_g2_n33), 
        .Z(sbox_g3_red_g2_n36) );
  NAND2_X1 sbox_g3_red_g2_U11 ( .A1(sbox_input_red_reg_5_), .A2(
        sbox_input_red_reg_6_), .ZN(sbox_g3_red_g2_n29) );
  NAND2_X1 sbox_g3_red_g2_U10 ( .A1(sbox_input_red_reg_4_), .A2(
        sbox_input_red_reg_2_), .ZN(sbox_g3_red_g2_n30) );
  XOR2_X1 sbox_g3_red_g2_U9 ( .A(sbox_g3_red_g2_n30), .B(sbox_g3_red_g2_n29), 
        .Z(sbox_g3_red_g2_n31) );
  NAND2_X1 sbox_g3_red_g2_U8 ( .A1(sbox_input_red_reg_2_), .A2(
        sbox_input_red_reg_5_), .ZN(sbox_g3_red_g2_n20) );
  NAND2_X1 sbox_g3_red_g2_U7 ( .A1(sbox_input_red_reg_5_), .A2(
        sbox_input_red_reg_0_), .ZN(sbox_g3_red_g2_n21) );
  XOR2_X1 sbox_g3_red_g2_U6 ( .A(sbox_g3_red_g2_n21), .B(sbox_g3_red_g2_n20), 
        .Z(sbox_g3_red_g2_n22) );
  NAND2_X1 sbox_g3_red_g2_U5 ( .A1(sbox_input_red_reg_4_), .A2(
        sbox_input_red_reg_6_), .ZN(sbox_g3_red_g2_n28) );
  NAND2_X1 sbox_g3_red_g2_U4 ( .A1(sbox_input_red_reg_4_), .A2(
        sbox_input_red_reg_1_), .ZN(sbox_g3_red_g2_n27) );
  XOR2_X1 sbox_g3_red_g2_U3 ( .A(sbox_g3_red_g2_n28), .B(sbox_g3_red_g2_n27), 
        .Z(sbox_g3_red_g2_n32) );
  NAND2_X1 sbox_g3_red_g2_U2 ( .A1(sbox_input_red_reg_4_), .A2(
        sbox_input_red_reg_5_), .ZN(sbox_g3_red_g2_n24) );
  XOR2_X1 sbox_g3_red_g2_U1 ( .A(sbox_g3_red_g2_n24), .B(sbox_input_red_reg_1_), .Z(sbox_g3_red_g2_n26) );
  OR2_X1 sbox_g3_red_g3_U20 ( .A1(sbox_g3_red_g3_n33), .A2(
        sbox_input_red_reg_2_), .ZN(sbox_g3_red_g3_n24) );
  NOR2_X1 sbox_g3_red_g3_U19 ( .A1(sbox_g3_red_g3_n33), .A2(sbox_g3_red_g3_n20), .ZN(sbox_g3_red_g3_n22) );
  NOR2_X1 sbox_g3_red_g3_U18 ( .A1(sbox_g3_red_g3_n37), .A2(sbox_g3_red_g3_n38), .ZN(sbox_g3_red_g3_n21) );
  NOR2_X1 sbox_g3_red_g3_U17 ( .A1(sbox_g3_red_g3_n22), .A2(sbox_g3_red_g3_n21), .ZN(sbox_g3_red_g3_n23) );
  NOR2_X1 sbox_g3_red_g3_U16 ( .A1(sbox_input_red_reg_7_), .A2(
        sbox_g3_red_g3_n23), .ZN(sbox_g3_red_g3_n29) );
  NOR2_X1 sbox_g3_red_g3_U15 ( .A1(sbox_g3_red_g3_n38), .A2(sbox_g3_red_g3_n24), .ZN(sbox_g3_red_g3_n26) );
  AND2_X1 sbox_g3_red_g3_U14 ( .A1(sbox_g3_red_g3_n38), .A2(
        sbox_input_red_reg_2_), .ZN(sbox_g3_red_g3_n25) );
  NOR2_X1 sbox_g3_red_g3_U13 ( .A1(sbox_g3_red_g3_n26), .A2(sbox_g3_red_g3_n25), .ZN(sbox_g3_red_g3_n27) );
  NOR2_X1 sbox_g3_red_g3_U12 ( .A1(sbox_g3_red_g3_n27), .A2(sbox_g3_red_g3_n36), .ZN(sbox_g3_red_g3_n28) );
  NAND2_X1 sbox_g3_red_g3_U11 ( .A1(sbox_input_red_reg_7_), .A2(
        sbox_input_red_reg_2_), .ZN(sbox_g3_red_g3_n31) );
  INV_X1 sbox_g3_red_g3_U10 ( .A(sbox_input_red_reg_7_), .ZN(
        sbox_g3_red_g3_n36) );
  INV_X1 sbox_g3_red_g3_U9 ( .A(sbox_input_red_reg_1_), .ZN(sbox_g3_red_g3_n37) );
  NAND2_X1 sbox_g3_red_g3_U8 ( .A1(sbox_input_red_reg_1_), .A2(
        sbox_g3_red_g3_n36), .ZN(sbox_g3_red_g3_n30) );
  INV_X1 sbox_g3_red_g3_U7 ( .A(sbox_input_red_reg_3_), .ZN(sbox_g3_red_g3_n38) );
  XNOR2_X1 sbox_g3_red_g3_U6 ( .A(sbox_input_red_reg_6_), .B(
        sbox_input_red_reg_5_), .ZN(sbox_g3_red_g3_n33) );
  NAND2_X1 sbox_g3_red_g3_U5 ( .A1(sbox_g3_red_g3_n31), .A2(sbox_g3_red_g3_n30), .ZN(sbox_g3_red_g3_n32) );
  NOR2_X1 sbox_g3_red_g3_U4 ( .A1(sbox_g3_red_g3_n29), .A2(sbox_g3_red_g3_n28), 
        .ZN(sbox_g3_red_g3_n35) );
  NAND2_X1 sbox_g3_red_g3_U3 ( .A1(sbox_g3_red_g3_n33), .A2(sbox_g3_red_g3_n32), .ZN(sbox_g3_red_g3_n34) );
  NAND2_X1 sbox_g3_red_g3_U2 ( .A1(sbox_g3_red_g3_n35), .A2(sbox_g3_red_g3_n34), .ZN(sbox_s_g_red_out[11]) );
  NAND2_X1 sbox_g3_red_g3_U1 ( .A1(sbox_g3_red_g3_n37), .A2(sbox_g3_red_g3_n38), .ZN(sbox_g3_red_g3_n20) );
  NAND2_X1 sbox_det1_U21 ( .A1(sbox_det1_n34), .A2(sbox_det1_n33), .ZN(
        sbox_det1_n35) );
  NAND2_X1 sbox_det1_U20 ( .A1(sbox_det1_n32), .A2(sbox_det1_n31), .ZN(
        sbox_det1_n36) );
  NOR2_X1 sbox_det1_U19 ( .A1(sbox_det1_n36), .A2(sbox_det1_n35), .ZN(
        sbox_error_flags1[2]) );
  NAND2_X1 sbox_det1_U18 ( .A1(sbox_det1_n28), .A2(sbox_det1_n27), .ZN(
        sbox_det1_n29) );
  NAND2_X1 sbox_det1_U17 ( .A1(sbox_det1_n26), .A2(sbox_det1_n25), .ZN(
        sbox_det1_n30) );
  NOR2_X1 sbox_det1_U16 ( .A1(sbox_det1_n30), .A2(sbox_det1_n29), .ZN(
        sbox_error_flags1[1]) );
  NAND2_X1 sbox_det1_U15 ( .A1(sbox_det1_n22), .A2(sbox_det1_n21), .ZN(
        sbox_det1_n23) );
  NAND2_X1 sbox_det1_U14 ( .A1(sbox_det1_n20), .A2(sbox_det1_n19), .ZN(
        sbox_det1_n24) );
  NOR2_X1 sbox_det1_U13 ( .A1(sbox_det1_n24), .A2(sbox_det1_n23), .ZN(
        sbox_error_flags1[0]) );
  XNOR2_X1 sbox_det1_U12 ( .A(sbox_s_g_red_out_reg_8_), .B(
        sbox_det1_data_in_encoded[8]), .ZN(sbox_det1_n32) );
  XNOR2_X1 sbox_det1_U11 ( .A(sbox_s_g_red_out_reg_4_), .B(
        sbox_det1_data_in_encoded[4]), .ZN(sbox_det1_n26) );
  XNOR2_X1 sbox_det1_U10 ( .A(sbox_s_g_red_out_reg_0_), .B(
        sbox_det1_data_in_encoded[0]), .ZN(sbox_det1_n20) );
  XNOR2_X1 sbox_det1_U9 ( .A(sbox_s_g_red_out_reg_9_), .B(
        sbox_det1_data_in_encoded[9]), .ZN(sbox_det1_n33) );
  XNOR2_X1 sbox_det1_U8 ( .A(sbox_s_g_red_out_reg_5_), .B(
        sbox_det1_data_in_encoded[5]), .ZN(sbox_det1_n27) );
  XNOR2_X1 sbox_det1_U7 ( .A(sbox_s_g_red_out_reg_1_), .B(
        sbox_det1_data_in_encoded[1]), .ZN(sbox_det1_n21) );
  XNOR2_X1 sbox_det1_U6 ( .A(sbox_s_g_red_out_reg_10_), .B(
        sbox_det1_data_in_encoded[10]), .ZN(sbox_det1_n34) );
  XNOR2_X1 sbox_det1_U5 ( .A(sbox_s_g_red_out_reg_6_), .B(
        sbox_det1_data_in_encoded[6]), .ZN(sbox_det1_n28) );
  XNOR2_X1 sbox_det1_U4 ( .A(sbox_s_g_red_out_reg_2_), .B(
        sbox_det1_data_in_encoded[2]), .ZN(sbox_det1_n22) );
  XNOR2_X1 sbox_det1_U3 ( .A(sbox_s_g_red_out_reg_11_), .B(
        sbox_det1_data_in_encoded[11]), .ZN(sbox_det1_n31) );
  XNOR2_X1 sbox_det1_U2 ( .A(sbox_s_g_red_out_reg_7_), .B(
        sbox_det1_data_in_encoded[7]), .ZN(sbox_det1_n25) );
  XNOR2_X1 sbox_det1_U1 ( .A(sbox_s_g_red_out_reg_3_), .B(
        sbox_det1_data_in_encoded[3]), .ZN(sbox_det1_n19) );
  XOR2_X1 sbox_det1_corr_0_e0_U2 ( .A(sbox_s_g_out_reg_2_), .B(
        sbox_s_g_out_reg_1_), .Z(sbox_det1_corr_0_e0_n2) );
  XOR2_X1 sbox_det1_corr_0_e0_U1 ( .A(sbox_s_f_out[8]), .B(
        sbox_det1_corr_0_e0_n2), .Z(sbox_det1_data_in_encoded[0]) );
  XOR2_X1 sbox_det1_corr_0_e1_U2 ( .A(sbox_s_g_out_reg_3_), .B(
        sbox_s_g_out_reg_1_), .Z(sbox_det1_corr_0_e1_n2) );
  XOR2_X1 sbox_det1_corr_0_e1_U1 ( .A(sbox_s_f_out[8]), .B(
        sbox_det1_corr_0_e1_n2), .Z(sbox_det1_data_in_encoded[1]) );
  XOR2_X1 sbox_det1_corr_0_e2_U2 ( .A(sbox_s_f_out[8]), .B(sbox_s_g_out_reg_3_), .Z(sbox_det1_corr_0_e2_n2) );
  XOR2_X1 sbox_det1_corr_0_e2_U1 ( .A(sbox_s_g_out_reg_2_), .B(
        sbox_det1_corr_0_e2_n2), .Z(sbox_det1_data_in_encoded[2]) );
  XOR2_X1 sbox_det1_corr_0_e3_U2 ( .A(sbox_s_g_out_reg_3_), .B(
        sbox_s_g_out_reg_2_), .Z(sbox_det1_corr_0_e3_n2) );
  XOR2_X1 sbox_det1_corr_0_e3_U1 ( .A(sbox_s_g_out_reg_1_), .B(
        sbox_det1_corr_0_e3_n2), .Z(sbox_det1_data_in_encoded[3]) );
  XOR2_X1 sbox_det1_corr_1_e0_U2 ( .A(sbox_s_g_out_reg_6_), .B(
        sbox_s_g_out_reg_5_), .Z(sbox_det1_corr_1_e0_n2) );
  XOR2_X1 sbox_det1_corr_1_e0_U1 ( .A(sbox_s_f_out[0]), .B(
        sbox_det1_corr_1_e0_n2), .Z(sbox_det1_data_in_encoded[4]) );
  XOR2_X1 sbox_det1_corr_1_e1_U2 ( .A(sbox_s_g_out_reg_7_), .B(
        sbox_s_g_out_reg_5_), .Z(sbox_det1_corr_1_e1_n2) );
  XOR2_X1 sbox_det1_corr_1_e1_U1 ( .A(sbox_s_f_out[0]), .B(
        sbox_det1_corr_1_e1_n2), .Z(sbox_det1_data_in_encoded[5]) );
  XOR2_X1 sbox_det1_corr_1_e2_U2 ( .A(sbox_s_f_out[0]), .B(sbox_s_g_out_reg_7_), .Z(sbox_det1_corr_1_e2_n2) );
  XOR2_X1 sbox_det1_corr_1_e2_U1 ( .A(sbox_s_g_out_reg_6_), .B(
        sbox_det1_corr_1_e2_n2), .Z(sbox_det1_data_in_encoded[6]) );
  XOR2_X1 sbox_det1_corr_1_e3_U2 ( .A(sbox_s_g_out_reg_7_), .B(
        sbox_s_g_out_reg_6_), .Z(sbox_det1_corr_1_e3_n2) );
  XOR2_X1 sbox_det1_corr_1_e3_U1 ( .A(sbox_s_g_out_reg_5_), .B(
        sbox_det1_corr_1_e3_n2), .Z(sbox_det1_data_in_encoded[7]) );
  XOR2_X1 sbox_det1_corr_2_e0_U2 ( .A(sbox_s_g_out_reg_10_), .B(
        sbox_s_g_out_reg_9_), .Z(sbox_det1_corr_2_e0_n2) );
  XOR2_X1 sbox_det1_corr_2_e0_U1 ( .A(sbox_s_f_out[4]), .B(
        sbox_det1_corr_2_e0_n2), .Z(sbox_det1_data_in_encoded[8]) );
  XOR2_X1 sbox_det1_corr_2_e1_U2 ( .A(sbox_s_g_out_reg_11_), .B(
        sbox_s_g_out_reg_9_), .Z(sbox_det1_corr_2_e1_n2) );
  XOR2_X1 sbox_det1_corr_2_e1_U1 ( .A(sbox_s_f_out[4]), .B(
        sbox_det1_corr_2_e1_n2), .Z(sbox_det1_data_in_encoded[9]) );
  XOR2_X1 sbox_det1_corr_2_e2_U2 ( .A(sbox_s_f_out[4]), .B(
        sbox_s_g_out_reg_11_), .Z(sbox_det1_corr_2_e2_n2) );
  XOR2_X1 sbox_det1_corr_2_e2_U1 ( .A(sbox_s_g_out_reg_10_), .B(
        sbox_det1_corr_2_e2_n2), .Z(sbox_det1_data_in_encoded[10]) );
  XOR2_X1 sbox_det1_corr_2_e3_U2 ( .A(sbox_s_g_out_reg_11_), .B(
        sbox_s_g_out_reg_10_), .Z(sbox_det1_corr_2_e3_n2) );
  XOR2_X1 sbox_det1_corr_2_e3_U1 ( .A(sbox_s_g_out_reg_9_), .B(
        sbox_det1_corr_2_e3_n2), .Z(sbox_det1_data_in_encoded[11]) );
  AND2_X1 sbox_f1_f1_U7 ( .A1(sbox_s_g_out_reg_9_), .A2(sbox_s_g_out_reg_11_), 
        .ZN(sbox_f1_f1_n4) );
  NAND2_X1 sbox_f1_f1_U6 ( .A1(sbox_s_g_out_reg_11_), .A2(sbox_s_g_out_reg_5_), 
        .ZN(sbox_f1_f1_n3) );
  XOR2_X1 sbox_f1_f1_U5 ( .A(sbox_f1_f1_n5), .B(sbox_f1_f1_n6), .Z(
        sbox_f1_f1_n1) );
  XOR2_X1 sbox_f1_f1_U4 ( .A(sbox_f1_f1_n3), .B(sbox_f1_f1_n4), .Z(
        sbox_f1_f1_n2) );
  XOR2_X1 sbox_f1_f1_U3 ( .A(sbox_f1_f1_n1), .B(sbox_f1_f1_n2), .Z(
        sbox_s_f_out[1]) );
  NAND2_X1 sbox_f1_f1_U2 ( .A1(sbox_s_g_out_reg_9_), .A2(sbox_s_g_out_reg_7_), 
        .ZN(sbox_f1_f1_n5) );
  XOR2_X1 sbox_f1_f1_U1 ( .A(sbox_s_g_out_reg_7_), .B(sbox_s_g_out_reg_6_), 
        .Z(sbox_f1_f1_n6) );
  XOR2_X1 sbox_f1_f2_U8 ( .A(sbox_s_g_out_reg_6_), .B(sbox_s_g_out_reg_5_), 
        .Z(sbox_f1_f2_n3) );
  XOR2_X1 sbox_f1_f2_U7 ( .A(sbox_f1_f2_n4), .B(sbox_f1_f2_n5), .Z(
        sbox_f1_f2_n1) );
  XOR2_X1 sbox_f1_f2_U6 ( .A(sbox_s_f_out[0]), .B(sbox_f1_f2_n3), .Z(
        sbox_f1_f2_n2) );
  XOR2_X1 sbox_f1_f2_U5 ( .A(sbox_f1_f2_n1), .B(sbox_f1_f2_n2), .Z(
        sbox_s_f_out[2]) );
  NAND2_X1 sbox_f1_f2_U4 ( .A1(sbox_s_g_out_reg_11_), .A2(sbox_s_g_out_reg_6_), 
        .ZN(sbox_f1_f2_n7) );
  NAND2_X1 sbox_f1_f2_U3 ( .A1(sbox_s_g_out_reg_7_), .A2(sbox_s_g_out_reg_10_), 
        .ZN(sbox_f1_f2_n6) );
  XOR2_X1 sbox_f1_f2_U2 ( .A(sbox_f1_f2_n6), .B(sbox_f1_f2_n7), .Z(
        sbox_f1_f2_n5) );
  NAND2_X1 sbox_f1_f2_U1 ( .A1(sbox_s_g_out_reg_11_), .A2(sbox_s_g_out_reg_10_), .ZN(sbox_f1_f2_n4) );
  NAND2_X1 sbox_f1_f3_U6 ( .A1(sbox_s_g_out_reg_9_), .A2(sbox_s_g_out_reg_7_), 
        .ZN(sbox_f1_f3_n5) );
  XOR2_X1 sbox_f1_f3_U5 ( .A(sbox_f1_f3_n3), .B(sbox_f1_f3_n4), .Z(
        sbox_f1_f3_n2) );
  XNOR2_X1 sbox_f1_f3_U4 ( .A(sbox_s_g_out_reg_6_), .B(sbox_f1_f3_n5), .ZN(
        sbox_f1_f3_n1) );
  XOR2_X1 sbox_f1_f3_U3 ( .A(sbox_f1_f3_n1), .B(sbox_f1_f3_n2), .Z(
        sbox_s_f_out[3]) );
  NAND2_X1 sbox_f1_f3_U2 ( .A1(sbox_s_g_out_reg_11_), .A2(sbox_s_g_out_reg_5_), 
        .ZN(sbox_f1_f3_n3) );
  NAND2_X1 sbox_f1_f3_U1 ( .A1(sbox_s_g_out_reg_11_), .A2(sbox_s_g_out_reg_9_), 
        .ZN(sbox_f1_f3_n4) );
  AND2_X1 sbox_f2_f1_U7 ( .A1(sbox_s_g_out_reg_1_), .A2(sbox_s_g_out_reg_3_), 
        .ZN(sbox_f2_f1_n9) );
  NAND2_X1 sbox_f2_f1_U6 ( .A1(sbox_s_g_out_reg_3_), .A2(sbox_s_g_out_reg_9_), 
        .ZN(sbox_f2_f1_n10) );
  XOR2_X1 sbox_f2_f1_U5 ( .A(sbox_f2_f1_n8), .B(sbox_f2_f1_n7), .Z(
        sbox_f2_f1_n12) );
  XOR2_X1 sbox_f2_f1_U4 ( .A(sbox_f2_f1_n10), .B(sbox_f2_f1_n9), .Z(
        sbox_f2_f1_n11) );
  XOR2_X1 sbox_f2_f1_U3 ( .A(sbox_f2_f1_n12), .B(sbox_f2_f1_n11), .Z(
        sbox_s_f_out[5]) );
  NAND2_X1 sbox_f2_f1_U2 ( .A1(sbox_s_g_out_reg_1_), .A2(sbox_s_g_out_reg_11_), 
        .ZN(sbox_f2_f1_n8) );
  XOR2_X1 sbox_f2_f1_U1 ( .A(sbox_s_g_out_reg_11_), .B(sbox_s_g_out_reg_10_), 
        .Z(sbox_f2_f1_n7) );
  XOR2_X1 sbox_f2_f2_U8 ( .A(sbox_s_g_out_reg_10_), .B(sbox_s_g_out_reg_9_), 
        .Z(sbox_f2_f2_n12) );
  XOR2_X1 sbox_f2_f2_U7 ( .A(sbox_f2_f2_n11), .B(sbox_f2_f2_n10), .Z(
        sbox_f2_f2_n14) );
  XOR2_X1 sbox_f2_f2_U6 ( .A(sbox_s_f_out[4]), .B(sbox_f2_f2_n12), .Z(
        sbox_f2_f2_n13) );
  XOR2_X1 sbox_f2_f2_U5 ( .A(sbox_f2_f2_n14), .B(sbox_f2_f2_n13), .Z(
        sbox_s_f_out[6]) );
  NAND2_X1 sbox_f2_f2_U4 ( .A1(sbox_s_g_out_reg_3_), .A2(sbox_s_g_out_reg_10_), 
        .ZN(sbox_f2_f2_n8) );
  NAND2_X1 sbox_f2_f2_U3 ( .A1(sbox_s_g_out_reg_11_), .A2(sbox_s_g_out_reg_2_), 
        .ZN(sbox_f2_f2_n9) );
  XOR2_X1 sbox_f2_f2_U2 ( .A(sbox_f2_f2_n9), .B(sbox_f2_f2_n8), .Z(
        sbox_f2_f2_n10) );
  NAND2_X1 sbox_f2_f2_U1 ( .A1(sbox_s_g_out_reg_3_), .A2(sbox_s_g_out_reg_2_), 
        .ZN(sbox_f2_f2_n11) );
  NAND2_X1 sbox_f2_f3_U6 ( .A1(sbox_s_g_out_reg_1_), .A2(sbox_s_g_out_reg_11_), 
        .ZN(sbox_f2_f3_n6) );
  XOR2_X1 sbox_f2_f3_U5 ( .A(sbox_f2_f3_n8), .B(sbox_f2_f3_n7), .Z(
        sbox_f2_f3_n9) );
  XNOR2_X1 sbox_f2_f3_U4 ( .A(sbox_s_g_out_reg_10_), .B(sbox_f2_f3_n6), .ZN(
        sbox_f2_f3_n10) );
  XOR2_X1 sbox_f2_f3_U3 ( .A(sbox_f2_f3_n10), .B(sbox_f2_f3_n9), .Z(
        sbox_s_f_out[7]) );
  NAND2_X1 sbox_f2_f3_U2 ( .A1(sbox_s_g_out_reg_3_), .A2(sbox_s_g_out_reg_9_), 
        .ZN(sbox_f2_f3_n8) );
  NAND2_X1 sbox_f2_f3_U1 ( .A1(sbox_s_g_out_reg_3_), .A2(sbox_s_g_out_reg_1_), 
        .ZN(sbox_f2_f3_n7) );
  AND2_X1 sbox_f3_f1_U7 ( .A1(sbox_s_g_out_reg_5_), .A2(sbox_s_g_out_reg_7_), 
        .ZN(sbox_f3_f1_n9) );
  NAND2_X1 sbox_f3_f1_U6 ( .A1(sbox_s_g_out_reg_7_), .A2(sbox_s_g_out_reg_1_), 
        .ZN(sbox_f3_f1_n10) );
  XOR2_X1 sbox_f3_f1_U5 ( .A(sbox_f3_f1_n8), .B(sbox_f3_f1_n7), .Z(
        sbox_f3_f1_n12) );
  XOR2_X1 sbox_f3_f1_U4 ( .A(sbox_f3_f1_n10), .B(sbox_f3_f1_n9), .Z(
        sbox_f3_f1_n11) );
  XOR2_X1 sbox_f3_f1_U3 ( .A(sbox_f3_f1_n12), .B(sbox_f3_f1_n11), .Z(
        sbox_s_f_out[9]) );
  NAND2_X1 sbox_f3_f1_U2 ( .A1(sbox_s_g_out_reg_5_), .A2(sbox_s_g_out_reg_3_), 
        .ZN(sbox_f3_f1_n8) );
  XOR2_X1 sbox_f3_f1_U1 ( .A(sbox_s_g_out_reg_3_), .B(sbox_s_g_out_reg_2_), 
        .Z(sbox_f3_f1_n7) );
  XOR2_X1 sbox_f3_f2_U8 ( .A(sbox_s_g_out_reg_2_), .B(sbox_s_g_out_reg_1_), 
        .Z(sbox_f3_f2_n12) );
  XOR2_X1 sbox_f3_f2_U7 ( .A(sbox_f3_f2_n11), .B(sbox_f3_f2_n10), .Z(
        sbox_f3_f2_n14) );
  XOR2_X1 sbox_f3_f2_U6 ( .A(sbox_s_f_out[8]), .B(sbox_f3_f2_n12), .Z(
        sbox_f3_f2_n13) );
  XOR2_X1 sbox_f3_f2_U5 ( .A(sbox_f3_f2_n14), .B(sbox_f3_f2_n13), .Z(
        sbox_s_f_out[10]) );
  NAND2_X1 sbox_f3_f2_U4 ( .A1(sbox_s_g_out_reg_7_), .A2(sbox_s_g_out_reg_2_), 
        .ZN(sbox_f3_f2_n8) );
  NAND2_X1 sbox_f3_f2_U3 ( .A1(sbox_s_g_out_reg_3_), .A2(sbox_s_g_out_reg_6_), 
        .ZN(sbox_f3_f2_n9) );
  XOR2_X1 sbox_f3_f2_U2 ( .A(sbox_f3_f2_n9), .B(sbox_f3_f2_n8), .Z(
        sbox_f3_f2_n10) );
  NAND2_X1 sbox_f3_f2_U1 ( .A1(sbox_s_g_out_reg_7_), .A2(sbox_s_g_out_reg_6_), 
        .ZN(sbox_f3_f2_n11) );
  NAND2_X1 sbox_f3_f3_U6 ( .A1(sbox_s_g_out_reg_5_), .A2(sbox_s_g_out_reg_3_), 
        .ZN(sbox_f3_f3_n6) );
  XOR2_X1 sbox_f3_f3_U5 ( .A(sbox_f3_f3_n8), .B(sbox_f3_f3_n7), .Z(
        sbox_f3_f3_n9) );
  XNOR2_X1 sbox_f3_f3_U4 ( .A(sbox_s_g_out_reg_2_), .B(sbox_f3_f3_n6), .ZN(
        sbox_f3_f3_n10) );
  XOR2_X1 sbox_f3_f3_U3 ( .A(sbox_f3_f3_n10), .B(sbox_f3_f3_n9), .Z(
        sbox_s_f_out[11]) );
  NAND2_X1 sbox_f3_f3_U2 ( .A1(sbox_s_g_out_reg_7_), .A2(sbox_s_g_out_reg_1_), 
        .ZN(sbox_f3_f3_n8) );
  NAND2_X1 sbox_f3_f3_U1 ( .A1(sbox_s_g_out_reg_7_), .A2(sbox_s_g_out_reg_5_), 
        .ZN(sbox_f3_f3_n7) );
  XOR2_X1 sbox_f1_red_f0_U11 ( .A(sbox_s_g_red_out_reg_6_), .B(
        sbox_s_g_red_out_reg_4_), .Z(sbox_f1_red_f0_n3) );
  XOR2_X1 sbox_f1_red_f0_U10 ( .A(sbox_f1_red_f0_n5), .B(sbox_f1_red_f0_n6), 
        .Z(sbox_f1_red_f0_n1) );
  XOR2_X1 sbox_f1_red_f0_U9 ( .A(sbox_f1_red_f0_n3), .B(sbox_f1_red_f0_n4), 
        .Z(sbox_f1_red_f0_n2) );
  XOR2_X1 sbox_f1_red_f0_U8 ( .A(sbox_f1_red_f0_n1), .B(sbox_f1_red_f0_n2), 
        .Z(sbox_s_f_red_out[0]) );
  XOR2_X1 sbox_f1_red_f0_U7 ( .A(sbox_s_g_red_out_reg_11_), .B(
        sbox_s_g_red_out_reg_7_), .Z(sbox_f1_red_f0_n9) );
  NAND2_X1 sbox_f1_red_f0_U6 ( .A1(sbox_s_g_red_out_reg_10_), .A2(
        sbox_f1_red_f0_n9), .ZN(sbox_f1_red_f0_n8) );
  NAND2_X1 sbox_f1_red_f0_U5 ( .A1(sbox_s_g_red_out_reg_9_), .A2(
        sbox_f1_red_f0_n9), .ZN(sbox_f1_red_f0_n7) );
  XOR2_X1 sbox_f1_red_f0_U4 ( .A(sbox_f1_red_f0_n7), .B(sbox_f1_red_f0_n8), 
        .Z(sbox_f1_red_f0_n6) );
  XOR2_X1 sbox_f1_red_f0_U3 ( .A(sbox_s_g_red_out_reg_6_), .B(
        sbox_s_g_red_out_reg_5_), .Z(sbox_f1_red_f0_n10) );
  NAND2_X1 sbox_f1_red_f0_U2 ( .A1(sbox_s_g_red_out_reg_11_), .A2(
        sbox_f1_red_f0_n10), .ZN(sbox_f1_red_f0_n5) );
  XOR2_X1 sbox_f1_red_f0_U1 ( .A(sbox_s_g_red_out_reg_10_), .B(
        sbox_s_g_red_out_reg_9_), .Z(sbox_f1_red_f0_n4) );
  XOR2_X1 sbox_f1_red_f1_U1 ( .A(sbox_s_g_red_out_reg_4_), .B(
        sbox_s_g_red_out_reg_7_), .Z(sbox_s_f_red_out[1]) );
  XOR2_X1 sbox_f1_red_f2_U12 ( .A(sbox_s_g_red_out_reg_4_), .B(
        sbox_s_g_red_out_reg_10_), .Z(sbox_f1_red_f2_n5) );
  XOR2_X1 sbox_f1_red_f2_U11 ( .A(sbox_f1_red_f2_n6), .B(sbox_f1_red_f2_n7), 
        .Z(sbox_f1_red_f2_n2) );
  XOR2_X1 sbox_f1_red_f2_U10 ( .A(sbox_f1_red_f2_n4), .B(sbox_f1_red_f2_n5), 
        .Z(sbox_f1_red_f2_n3) );
  XOR2_X1 sbox_f1_red_f2_U9 ( .A(sbox_f1_red_f2_n2), .B(sbox_f1_red_f2_n3), 
        .Z(sbox_s_f_red_out[2]) );
  INV_X1 sbox_f1_red_f2_U8 ( .A(sbox_f1_red_f2_n11), .ZN(sbox_f1_red_f2_n1) );
  NAND2_X1 sbox_f1_red_f2_U7 ( .A1(sbox_s_g_red_out_reg_9_), .A2(
        sbox_f1_red_f2_n1), .ZN(sbox_f1_red_f2_n6) );
  XOR2_X1 sbox_f1_red_f2_U6 ( .A(sbox_s_g_red_out_reg_6_), .B(
        sbox_s_g_red_out_reg_5_), .Z(sbox_f1_red_f2_n10) );
  NAND2_X1 sbox_f1_red_f2_U5 ( .A1(sbox_s_g_red_out_reg_10_), .A2(
        sbox_f1_red_f2_n11), .ZN(sbox_f1_red_f2_n8) );
  NAND2_X1 sbox_f1_red_f2_U4 ( .A1(sbox_s_g_red_out_reg_11_), .A2(
        sbox_f1_red_f2_n10), .ZN(sbox_f1_red_f2_n9) );
  XOR2_X1 sbox_f1_red_f2_U3 ( .A(sbox_f1_red_f2_n8), .B(sbox_f1_red_f2_n9), 
        .Z(sbox_f1_red_f2_n7) );
  XOR2_X1 sbox_f1_red_f2_U2 ( .A(sbox_s_g_red_out_reg_7_), .B(
        sbox_s_g_red_out_reg_5_), .Z(sbox_f1_red_f2_n4) );
  XOR2_X1 sbox_f1_red_f2_U1 ( .A(sbox_s_g_red_out_reg_11_), .B(
        sbox_s_g_red_out_reg_7_), .Z(sbox_f1_red_f2_n11) );
  XOR2_X1 sbox_f1_red_f3_U29 ( .A(sbox_f1_red_f3_n5), .B(sbox_f1_red_f3_n6), 
        .Z(sbox_f1_red_f3_n4) );
  XOR2_X1 sbox_f1_red_f3_U28 ( .A(sbox_f1_red_f3_n4), .B(
        sbox_s_g_red_out_reg_10_), .Z(sbox_f1_red_f3_n3) );
  XOR2_X1 sbox_f1_red_f3_U27 ( .A(sbox_s_g_red_out_reg_4_), .B(
        sbox_f1_red_f3_n1), .Z(sbox_f1_red_f3_n2) );
  XOR2_X1 sbox_f1_red_f3_U26 ( .A(sbox_f1_red_f3_n2), .B(sbox_f1_red_f3_n3), 
        .Z(sbox_s_f_red_out[3]) );
  NAND2_X1 sbox_f1_red_f3_U25 ( .A1(sbox_s_g_red_out_reg_8_), .A2(
        sbox_f1_red_f3_n28), .ZN(sbox_f1_red_f3_n25) );
  XOR2_X1 sbox_f1_red_f3_U24 ( .A(sbox_f1_red_f3_n25), .B(sbox_f1_red_f3_n26), 
        .Z(sbox_f1_red_f3_n24) );
  NAND2_X1 sbox_f1_red_f3_U23 ( .A1(sbox_s_g_red_out_reg_8_), .A2(
        sbox_f1_red_f3_n15), .ZN(sbox_f1_red_f3_n23) );
  XOR2_X1 sbox_f1_red_f3_U22 ( .A(sbox_f1_red_f3_n23), .B(sbox_f1_red_f3_n24), 
        .Z(sbox_f1_red_f3_n16) );
  AND2_X1 sbox_f1_red_f3_U21 ( .A1(sbox_s_g_red_out_reg_4_), .A2(
        sbox_s_g_red_out_reg_11_), .ZN(sbox_f1_red_f3_n14) );
  XOR2_X1 sbox_f1_red_f3_U20 ( .A(sbox_f1_red_f3_n16), .B(sbox_f1_red_f3_n17), 
        .Z(sbox_f1_red_f3_n12) );
  XOR2_X1 sbox_f1_red_f3_U19 ( .A(sbox_f1_red_f3_n14), .B(sbox_f1_red_f3_n15), 
        .Z(sbox_f1_red_f3_n13) );
  XOR2_X1 sbox_f1_red_f3_U18 ( .A(sbox_f1_red_f3_n12), .B(sbox_f1_red_f3_n13), 
        .Z(sbox_f1_red_f3_n5) );
  NAND2_X1 sbox_f1_red_f3_U17 ( .A1(sbox_s_g_red_out_reg_10_), .A2(
        sbox_s_g_red_out_reg_4_), .ZN(sbox_f1_red_f3_n10) );
  XOR2_X1 sbox_f1_red_f3_U16 ( .A(sbox_f1_red_f3_n9), .B(sbox_f1_red_f3_n10), 
        .Z(sbox_f1_red_f3_n8) );
  AND2_X1 sbox_f1_red_f3_U15 ( .A1(sbox_s_g_red_out_reg_7_), .A2(
        sbox_s_g_red_out_reg_9_), .ZN(sbox_f1_red_f3_n7) );
  XOR2_X1 sbox_f1_red_f3_U14 ( .A(sbox_f1_red_f3_n7), .B(sbox_f1_red_f3_n8), 
        .Z(sbox_f1_red_f3_n6) );
  NAND2_X1 sbox_f1_red_f3_U13 ( .A1(sbox_s_g_red_out_reg_10_), .A2(
        sbox_s_g_red_out_reg_5_), .ZN(sbox_f1_red_f3_n21) );
  NAND2_X1 sbox_f1_red_f3_U12 ( .A1(sbox_s_g_red_out_reg_9_), .A2(
        sbox_f1_red_f3_n22), .ZN(sbox_f1_red_f3_n18) );
  NAND2_X1 sbox_f1_red_f3_U11 ( .A1(sbox_f1_red_f3_n20), .A2(
        sbox_f1_red_f3_n21), .ZN(sbox_f1_red_f3_n19) );
  XOR2_X1 sbox_f1_red_f3_U10 ( .A(sbox_f1_red_f3_n18), .B(sbox_f1_red_f3_n19), 
        .Z(sbox_f1_red_f3_n17) );
  XOR2_X1 sbox_f1_red_f3_U9 ( .A(sbox_s_g_red_out_reg_5_), .B(
        sbox_s_g_red_out_reg_11_), .Z(sbox_f1_red_f3_n27) );
  NAND2_X1 sbox_f1_red_f3_U8 ( .A1(sbox_s_g_red_out_reg_8_), .A2(
        sbox_f1_red_f3_n27), .ZN(sbox_f1_red_f3_n26) );
  XOR2_X1 sbox_f1_red_f3_U7 ( .A(sbox_s_g_red_out_reg_6_), .B(
        sbox_s_g_red_out_reg_4_), .Z(sbox_f1_red_f3_n11) );
  NAND2_X1 sbox_f1_red_f3_U6 ( .A1(sbox_s_g_red_out_reg_9_), .A2(
        sbox_f1_red_f3_n11), .ZN(sbox_f1_red_f3_n9) );
  INV_X1 sbox_f1_red_f3_U5 ( .A(sbox_s_g_red_out_reg_5_), .ZN(
        sbox_f1_red_f3_n1) );
  NAND2_X1 sbox_f1_red_f3_U4 ( .A1(sbox_s_g_red_out_reg_11_), .A2(
        sbox_f1_red_f3_n1), .ZN(sbox_f1_red_f3_n20) );
  XOR2_X1 sbox_f1_red_f3_U3 ( .A(sbox_s_g_red_out_reg_11_), .B(
        sbox_s_g_red_out_reg_10_), .Z(sbox_f1_red_f3_n22) );
  XOR2_X1 sbox_f1_red_f3_U2 ( .A(sbox_s_g_red_out_reg_10_), .B(
        sbox_s_g_red_out_reg_9_), .Z(sbox_f1_red_f3_n28) );
  XOR2_X1 sbox_f1_red_f3_U1 ( .A(sbox_s_g_red_out_reg_6_), .B(
        sbox_s_g_red_out_reg_7_), .Z(sbox_f1_red_f3_n15) );
  XOR2_X1 sbox_f2_red_f0_U11 ( .A(sbox_s_g_red_out_reg_10_), .B(
        sbox_s_g_red_out_reg_8_), .Z(sbox_f2_red_f0_n18) );
  XOR2_X1 sbox_f2_red_f0_U10 ( .A(sbox_f2_red_f0_n16), .B(sbox_f2_red_f0_n15), 
        .Z(sbox_f2_red_f0_n20) );
  XOR2_X1 sbox_f2_red_f0_U9 ( .A(sbox_f2_red_f0_n18), .B(sbox_f2_red_f0_n17), 
        .Z(sbox_f2_red_f0_n19) );
  XOR2_X1 sbox_f2_red_f0_U8 ( .A(sbox_f2_red_f0_n20), .B(sbox_f2_red_f0_n19), 
        .Z(sbox_s_f_red_out[4]) );
  XOR2_X1 sbox_f2_red_f0_U7 ( .A(sbox_s_g_red_out_reg_3_), .B(
        sbox_s_g_red_out_reg_11_), .Z(sbox_f2_red_f0_n12) );
  NAND2_X1 sbox_f2_red_f0_U6 ( .A1(sbox_s_g_red_out_reg_2_), .A2(
        sbox_f2_red_f0_n12), .ZN(sbox_f2_red_f0_n13) );
  NAND2_X1 sbox_f2_red_f0_U5 ( .A1(sbox_s_g_red_out_reg_1_), .A2(
        sbox_f2_red_f0_n12), .ZN(sbox_f2_red_f0_n14) );
  XOR2_X1 sbox_f2_red_f0_U4 ( .A(sbox_f2_red_f0_n14), .B(sbox_f2_red_f0_n13), 
        .Z(sbox_f2_red_f0_n15) );
  XOR2_X1 sbox_f2_red_f0_U3 ( .A(sbox_s_g_red_out_reg_10_), .B(
        sbox_s_g_red_out_reg_9_), .Z(sbox_f2_red_f0_n11) );
  NAND2_X1 sbox_f2_red_f0_U2 ( .A1(sbox_s_g_red_out_reg_3_), .A2(
        sbox_f2_red_f0_n11), .ZN(sbox_f2_red_f0_n16) );
  XOR2_X1 sbox_f2_red_f0_U1 ( .A(sbox_s_g_red_out_reg_2_), .B(
        sbox_s_g_red_out_reg_1_), .Z(sbox_f2_red_f0_n17) );
  XOR2_X1 sbox_f2_red_f1_U1 ( .A(sbox_s_g_red_out_reg_8_), .B(
        sbox_s_g_red_out_reg_11_), .Z(sbox_s_f_red_out[5]) );
  XOR2_X1 sbox_f2_red_f2_U12 ( .A(sbox_s_g_red_out_reg_8_), .B(
        sbox_s_g_red_out_reg_2_), .Z(sbox_f2_red_f2_n18) );
  XOR2_X1 sbox_f2_red_f2_U11 ( .A(sbox_f2_red_f2_n17), .B(sbox_f2_red_f2_n16), 
        .Z(sbox_f2_red_f2_n21) );
  XOR2_X1 sbox_f2_red_f2_U10 ( .A(sbox_f2_red_f2_n19), .B(sbox_f2_red_f2_n18), 
        .Z(sbox_f2_red_f2_n20) );
  XOR2_X1 sbox_f2_red_f2_U9 ( .A(sbox_f2_red_f2_n21), .B(sbox_f2_red_f2_n20), 
        .Z(sbox_s_f_red_out[6]) );
  INV_X1 sbox_f2_red_f2_U8 ( .A(sbox_f2_red_f2_n12), .ZN(sbox_f2_red_f2_n22)
         );
  NAND2_X1 sbox_f2_red_f2_U7 ( .A1(sbox_s_g_red_out_reg_1_), .A2(
        sbox_f2_red_f2_n22), .ZN(sbox_f2_red_f2_n17) );
  XOR2_X1 sbox_f2_red_f2_U6 ( .A(sbox_s_g_red_out_reg_10_), .B(
        sbox_s_g_red_out_reg_9_), .Z(sbox_f2_red_f2_n13) );
  NAND2_X1 sbox_f2_red_f2_U5 ( .A1(sbox_s_g_red_out_reg_2_), .A2(
        sbox_f2_red_f2_n12), .ZN(sbox_f2_red_f2_n15) );
  NAND2_X1 sbox_f2_red_f2_U4 ( .A1(sbox_s_g_red_out_reg_3_), .A2(
        sbox_f2_red_f2_n13), .ZN(sbox_f2_red_f2_n14) );
  XOR2_X1 sbox_f2_red_f2_U3 ( .A(sbox_f2_red_f2_n15), .B(sbox_f2_red_f2_n14), 
        .Z(sbox_f2_red_f2_n16) );
  XOR2_X1 sbox_f2_red_f2_U2 ( .A(sbox_s_g_red_out_reg_11_), .B(
        sbox_s_g_red_out_reg_9_), .Z(sbox_f2_red_f2_n19) );
  XOR2_X1 sbox_f2_red_f2_U1 ( .A(sbox_s_g_red_out_reg_3_), .B(
        sbox_s_g_red_out_reg_11_), .Z(sbox_f2_red_f2_n12) );
  XOR2_X1 sbox_f2_red_f3_U29 ( .A(sbox_f2_red_f3_n52), .B(sbox_f2_red_f3_n51), 
        .Z(sbox_f2_red_f3_n53) );
  XOR2_X1 sbox_f2_red_f3_U28 ( .A(sbox_f2_red_f3_n53), .B(
        sbox_s_g_red_out_reg_2_), .Z(sbox_f2_red_f3_n54) );
  XOR2_X1 sbox_f2_red_f3_U27 ( .A(sbox_s_g_red_out_reg_8_), .B(
        sbox_f2_red_f3_n56), .Z(sbox_f2_red_f3_n55) );
  XOR2_X1 sbox_f2_red_f3_U26 ( .A(sbox_f2_red_f3_n55), .B(sbox_f2_red_f3_n54), 
        .Z(sbox_s_f_red_out[7]) );
  NAND2_X1 sbox_f2_red_f3_U25 ( .A1(sbox_s_g_red_out_reg_0_), .A2(
        sbox_f2_red_f3_n29), .ZN(sbox_f2_red_f3_n32) );
  XOR2_X1 sbox_f2_red_f3_U24 ( .A(sbox_f2_red_f3_n32), .B(sbox_f2_red_f3_n31), 
        .Z(sbox_f2_red_f3_n33) );
  NAND2_X1 sbox_f2_red_f3_U23 ( .A1(sbox_s_g_red_out_reg_0_), .A2(
        sbox_f2_red_f3_n42), .ZN(sbox_f2_red_f3_n34) );
  XOR2_X1 sbox_f2_red_f3_U22 ( .A(sbox_f2_red_f3_n34), .B(sbox_f2_red_f3_n33), 
        .Z(sbox_f2_red_f3_n41) );
  AND2_X1 sbox_f2_red_f3_U21 ( .A1(sbox_s_g_red_out_reg_8_), .A2(
        sbox_s_g_red_out_reg_3_), .ZN(sbox_f2_red_f3_n43) );
  XOR2_X1 sbox_f2_red_f3_U20 ( .A(sbox_f2_red_f3_n41), .B(sbox_f2_red_f3_n40), 
        .Z(sbox_f2_red_f3_n45) );
  XOR2_X1 sbox_f2_red_f3_U19 ( .A(sbox_f2_red_f3_n43), .B(sbox_f2_red_f3_n42), 
        .Z(sbox_f2_red_f3_n44) );
  XOR2_X1 sbox_f2_red_f3_U18 ( .A(sbox_f2_red_f3_n45), .B(sbox_f2_red_f3_n44), 
        .Z(sbox_f2_red_f3_n52) );
  NAND2_X1 sbox_f2_red_f3_U17 ( .A1(sbox_s_g_red_out_reg_2_), .A2(
        sbox_s_g_red_out_reg_8_), .ZN(sbox_f2_red_f3_n47) );
  XOR2_X1 sbox_f2_red_f3_U16 ( .A(sbox_f2_red_f3_n48), .B(sbox_f2_red_f3_n47), 
        .Z(sbox_f2_red_f3_n49) );
  AND2_X1 sbox_f2_red_f3_U15 ( .A1(sbox_s_g_red_out_reg_11_), .A2(
        sbox_s_g_red_out_reg_1_), .ZN(sbox_f2_red_f3_n50) );
  XOR2_X1 sbox_f2_red_f3_U14 ( .A(sbox_f2_red_f3_n50), .B(sbox_f2_red_f3_n49), 
        .Z(sbox_f2_red_f3_n51) );
  NAND2_X1 sbox_f2_red_f3_U13 ( .A1(sbox_s_g_red_out_reg_2_), .A2(
        sbox_s_g_red_out_reg_9_), .ZN(sbox_f2_red_f3_n36) );
  NAND2_X1 sbox_f2_red_f3_U12 ( .A1(sbox_s_g_red_out_reg_1_), .A2(
        sbox_f2_red_f3_n35), .ZN(sbox_f2_red_f3_n39) );
  NAND2_X1 sbox_f2_red_f3_U11 ( .A1(sbox_f2_red_f3_n37), .A2(
        sbox_f2_red_f3_n36), .ZN(sbox_f2_red_f3_n38) );
  XOR2_X1 sbox_f2_red_f3_U10 ( .A(sbox_f2_red_f3_n39), .B(sbox_f2_red_f3_n38), 
        .Z(sbox_f2_red_f3_n40) );
  XOR2_X1 sbox_f2_red_f3_U9 ( .A(sbox_s_g_red_out_reg_9_), .B(
        sbox_s_g_red_out_reg_3_), .Z(sbox_f2_red_f3_n30) );
  NAND2_X1 sbox_f2_red_f3_U8 ( .A1(sbox_s_g_red_out_reg_0_), .A2(
        sbox_f2_red_f3_n30), .ZN(sbox_f2_red_f3_n31) );
  XOR2_X1 sbox_f2_red_f3_U7 ( .A(sbox_s_g_red_out_reg_10_), .B(
        sbox_s_g_red_out_reg_8_), .Z(sbox_f2_red_f3_n46) );
  NAND2_X1 sbox_f2_red_f3_U6 ( .A1(sbox_s_g_red_out_reg_1_), .A2(
        sbox_f2_red_f3_n46), .ZN(sbox_f2_red_f3_n48) );
  INV_X1 sbox_f2_red_f3_U5 ( .A(sbox_s_g_red_out_reg_9_), .ZN(
        sbox_f2_red_f3_n56) );
  NAND2_X1 sbox_f2_red_f3_U4 ( .A1(sbox_s_g_red_out_reg_3_), .A2(
        sbox_f2_red_f3_n56), .ZN(sbox_f2_red_f3_n37) );
  XOR2_X1 sbox_f2_red_f3_U3 ( .A(sbox_s_g_red_out_reg_3_), .B(
        sbox_s_g_red_out_reg_2_), .Z(sbox_f2_red_f3_n35) );
  XOR2_X1 sbox_f2_red_f3_U2 ( .A(sbox_s_g_red_out_reg_2_), .B(
        sbox_s_g_red_out_reg_1_), .Z(sbox_f2_red_f3_n29) );
  XOR2_X1 sbox_f2_red_f3_U1 ( .A(sbox_s_g_red_out_reg_10_), .B(
        sbox_s_g_red_out_reg_11_), .Z(sbox_f2_red_f3_n42) );
  XOR2_X1 sbox_f3_red_f0_U11 ( .A(sbox_s_g_red_out_reg_2_), .B(
        sbox_s_g_red_out_reg_0_), .Z(sbox_f3_red_f0_n18) );
  XOR2_X1 sbox_f3_red_f0_U10 ( .A(sbox_f3_red_f0_n16), .B(sbox_f3_red_f0_n15), 
        .Z(sbox_f3_red_f0_n20) );
  XOR2_X1 sbox_f3_red_f0_U9 ( .A(sbox_f3_red_f0_n18), .B(sbox_f3_red_f0_n17), 
        .Z(sbox_f3_red_f0_n19) );
  XOR2_X1 sbox_f3_red_f0_U8 ( .A(sbox_f3_red_f0_n20), .B(sbox_f3_red_f0_n19), 
        .Z(sbox_s_f_red_out[8]) );
  XOR2_X1 sbox_f3_red_f0_U7 ( .A(sbox_s_g_red_out_reg_7_), .B(
        sbox_s_g_red_out_reg_3_), .Z(sbox_f3_red_f0_n12) );
  NAND2_X1 sbox_f3_red_f0_U6 ( .A1(sbox_s_g_red_out_reg_6_), .A2(
        sbox_f3_red_f0_n12), .ZN(sbox_f3_red_f0_n13) );
  NAND2_X1 sbox_f3_red_f0_U5 ( .A1(sbox_s_g_red_out_reg_5_), .A2(
        sbox_f3_red_f0_n12), .ZN(sbox_f3_red_f0_n14) );
  XOR2_X1 sbox_f3_red_f0_U4 ( .A(sbox_f3_red_f0_n14), .B(sbox_f3_red_f0_n13), 
        .Z(sbox_f3_red_f0_n15) );
  XOR2_X1 sbox_f3_red_f0_U3 ( .A(sbox_s_g_red_out_reg_2_), .B(
        sbox_s_g_red_out_reg_1_), .Z(sbox_f3_red_f0_n11) );
  NAND2_X1 sbox_f3_red_f0_U2 ( .A1(sbox_s_g_red_out_reg_7_), .A2(
        sbox_f3_red_f0_n11), .ZN(sbox_f3_red_f0_n16) );
  XOR2_X1 sbox_f3_red_f0_U1 ( .A(sbox_s_g_red_out_reg_6_), .B(
        sbox_s_g_red_out_reg_5_), .Z(sbox_f3_red_f0_n17) );
  XOR2_X1 sbox_f3_red_f1_U1 ( .A(sbox_s_g_red_out_reg_0_), .B(
        sbox_s_g_red_out_reg_3_), .Z(sbox_s_f_red_out[9]) );
  XOR2_X1 sbox_f3_red_f2_U12 ( .A(sbox_s_g_red_out_reg_0_), .B(
        sbox_s_g_red_out_reg_6_), .Z(sbox_f3_red_f2_n18) );
  XOR2_X1 sbox_f3_red_f2_U11 ( .A(sbox_f3_red_f2_n17), .B(sbox_f3_red_f2_n16), 
        .Z(sbox_f3_red_f2_n21) );
  XOR2_X1 sbox_f3_red_f2_U10 ( .A(sbox_f3_red_f2_n19), .B(sbox_f3_red_f2_n18), 
        .Z(sbox_f3_red_f2_n20) );
  XOR2_X1 sbox_f3_red_f2_U9 ( .A(sbox_f3_red_f2_n21), .B(sbox_f3_red_f2_n20), 
        .Z(sbox_s_f_red_out[10]) );
  INV_X1 sbox_f3_red_f2_U8 ( .A(sbox_f3_red_f2_n12), .ZN(sbox_f3_red_f2_n22)
         );
  NAND2_X1 sbox_f3_red_f2_U7 ( .A1(sbox_s_g_red_out_reg_5_), .A2(
        sbox_f3_red_f2_n22), .ZN(sbox_f3_red_f2_n17) );
  XOR2_X1 sbox_f3_red_f2_U6 ( .A(sbox_s_g_red_out_reg_2_), .B(
        sbox_s_g_red_out_reg_1_), .Z(sbox_f3_red_f2_n13) );
  NAND2_X1 sbox_f3_red_f2_U5 ( .A1(sbox_s_g_red_out_reg_6_), .A2(
        sbox_f3_red_f2_n12), .ZN(sbox_f3_red_f2_n15) );
  NAND2_X1 sbox_f3_red_f2_U4 ( .A1(sbox_s_g_red_out_reg_7_), .A2(
        sbox_f3_red_f2_n13), .ZN(sbox_f3_red_f2_n14) );
  XOR2_X1 sbox_f3_red_f2_U3 ( .A(sbox_f3_red_f2_n15), .B(sbox_f3_red_f2_n14), 
        .Z(sbox_f3_red_f2_n16) );
  XOR2_X1 sbox_f3_red_f2_U2 ( .A(sbox_s_g_red_out_reg_3_), .B(
        sbox_s_g_red_out_reg_1_), .Z(sbox_f3_red_f2_n19) );
  XOR2_X1 sbox_f3_red_f2_U1 ( .A(sbox_s_g_red_out_reg_7_), .B(
        sbox_s_g_red_out_reg_3_), .Z(sbox_f3_red_f2_n12) );
  XOR2_X1 sbox_f3_red_f3_U29 ( .A(sbox_f3_red_f3_n52), .B(sbox_f3_red_f3_n51), 
        .Z(sbox_f3_red_f3_n53) );
  XOR2_X1 sbox_f3_red_f3_U28 ( .A(sbox_f3_red_f3_n53), .B(
        sbox_s_g_red_out_reg_6_), .Z(sbox_f3_red_f3_n54) );
  XOR2_X1 sbox_f3_red_f3_U27 ( .A(sbox_s_g_red_out_reg_0_), .B(
        sbox_f3_red_f3_n56), .Z(sbox_f3_red_f3_n55) );
  XOR2_X1 sbox_f3_red_f3_U26 ( .A(sbox_f3_red_f3_n55), .B(sbox_f3_red_f3_n54), 
        .Z(sbox_s_f_red_out[11]) );
  NAND2_X1 sbox_f3_red_f3_U25 ( .A1(sbox_s_g_red_out_reg_4_), .A2(
        sbox_f3_red_f3_n29), .ZN(sbox_f3_red_f3_n32) );
  XOR2_X1 sbox_f3_red_f3_U24 ( .A(sbox_f3_red_f3_n32), .B(sbox_f3_red_f3_n31), 
        .Z(sbox_f3_red_f3_n33) );
  NAND2_X1 sbox_f3_red_f3_U23 ( .A1(sbox_s_g_red_out_reg_4_), .A2(
        sbox_f3_red_f3_n42), .ZN(sbox_f3_red_f3_n34) );
  XOR2_X1 sbox_f3_red_f3_U22 ( .A(sbox_f3_red_f3_n34), .B(sbox_f3_red_f3_n33), 
        .Z(sbox_f3_red_f3_n41) );
  AND2_X1 sbox_f3_red_f3_U21 ( .A1(sbox_s_g_red_out_reg_0_), .A2(
        sbox_s_g_red_out_reg_7_), .ZN(sbox_f3_red_f3_n43) );
  XOR2_X1 sbox_f3_red_f3_U20 ( .A(sbox_f3_red_f3_n41), .B(sbox_f3_red_f3_n40), 
        .Z(sbox_f3_red_f3_n45) );
  XOR2_X1 sbox_f3_red_f3_U19 ( .A(sbox_f3_red_f3_n43), .B(sbox_f3_red_f3_n42), 
        .Z(sbox_f3_red_f3_n44) );
  XOR2_X1 sbox_f3_red_f3_U18 ( .A(sbox_f3_red_f3_n45), .B(sbox_f3_red_f3_n44), 
        .Z(sbox_f3_red_f3_n52) );
  NAND2_X1 sbox_f3_red_f3_U17 ( .A1(sbox_s_g_red_out_reg_6_), .A2(
        sbox_s_g_red_out_reg_0_), .ZN(sbox_f3_red_f3_n47) );
  XOR2_X1 sbox_f3_red_f3_U16 ( .A(sbox_f3_red_f3_n48), .B(sbox_f3_red_f3_n47), 
        .Z(sbox_f3_red_f3_n49) );
  AND2_X1 sbox_f3_red_f3_U15 ( .A1(sbox_s_g_red_out_reg_3_), .A2(
        sbox_s_g_red_out_reg_5_), .ZN(sbox_f3_red_f3_n50) );
  XOR2_X1 sbox_f3_red_f3_U14 ( .A(sbox_f3_red_f3_n50), .B(sbox_f3_red_f3_n49), 
        .Z(sbox_f3_red_f3_n51) );
  NAND2_X1 sbox_f3_red_f3_U13 ( .A1(sbox_s_g_red_out_reg_6_), .A2(
        sbox_s_g_red_out_reg_1_), .ZN(sbox_f3_red_f3_n36) );
  NAND2_X1 sbox_f3_red_f3_U12 ( .A1(sbox_s_g_red_out_reg_5_), .A2(
        sbox_f3_red_f3_n35), .ZN(sbox_f3_red_f3_n39) );
  NAND2_X1 sbox_f3_red_f3_U11 ( .A1(sbox_f3_red_f3_n37), .A2(
        sbox_f3_red_f3_n36), .ZN(sbox_f3_red_f3_n38) );
  XOR2_X1 sbox_f3_red_f3_U10 ( .A(sbox_f3_red_f3_n39), .B(sbox_f3_red_f3_n38), 
        .Z(sbox_f3_red_f3_n40) );
  XOR2_X1 sbox_f3_red_f3_U9 ( .A(sbox_s_g_red_out_reg_1_), .B(
        sbox_s_g_red_out_reg_7_), .Z(sbox_f3_red_f3_n30) );
  NAND2_X1 sbox_f3_red_f3_U8 ( .A1(sbox_s_g_red_out_reg_4_), .A2(
        sbox_f3_red_f3_n30), .ZN(sbox_f3_red_f3_n31) );
  XOR2_X1 sbox_f3_red_f3_U7 ( .A(sbox_s_g_red_out_reg_2_), .B(
        sbox_s_g_red_out_reg_0_), .Z(sbox_f3_red_f3_n46) );
  NAND2_X1 sbox_f3_red_f3_U6 ( .A1(sbox_s_g_red_out_reg_5_), .A2(
        sbox_f3_red_f3_n46), .ZN(sbox_f3_red_f3_n48) );
  INV_X1 sbox_f3_red_f3_U5 ( .A(sbox_s_g_red_out_reg_1_), .ZN(
        sbox_f3_red_f3_n56) );
  NAND2_X1 sbox_f3_red_f3_U4 ( .A1(sbox_s_g_red_out_reg_7_), .A2(
        sbox_f3_red_f3_n56), .ZN(sbox_f3_red_f3_n37) );
  XOR2_X1 sbox_f3_red_f3_U3 ( .A(sbox_s_g_red_out_reg_7_), .B(
        sbox_s_g_red_out_reg_6_), .Z(sbox_f3_red_f3_n35) );
  XOR2_X1 sbox_f3_red_f3_U2 ( .A(sbox_s_g_red_out_reg_6_), .B(
        sbox_s_g_red_out_reg_5_), .Z(sbox_f3_red_f3_n29) );
  XOR2_X1 sbox_f3_red_f3_U1 ( .A(sbox_s_g_red_out_reg_2_), .B(
        sbox_s_g_red_out_reg_3_), .Z(sbox_f3_red_f3_n42) );
  NAND2_X1 sbox_det2_U21 ( .A1(sbox_det2_n34), .A2(sbox_det2_n33), .ZN(
        sbox_det2_n35) );
  NAND2_X1 sbox_det2_U20 ( .A1(sbox_det2_n32), .A2(sbox_det2_n31), .ZN(
        sbox_det2_n36) );
  NOR2_X1 sbox_det2_U19 ( .A1(sbox_det2_n36), .A2(sbox_det2_n35), .ZN(
        sbox_error_flags2[2]) );
  NAND2_X1 sbox_det2_U18 ( .A1(sbox_det2_n28), .A2(sbox_det2_n27), .ZN(
        sbox_det2_n29) );
  NAND2_X1 sbox_det2_U17 ( .A1(sbox_det2_n26), .A2(sbox_det2_n25), .ZN(
        sbox_det2_n30) );
  NOR2_X1 sbox_det2_U16 ( .A1(sbox_det2_n30), .A2(sbox_det2_n29), .ZN(
        sbox_error_flags2[1]) );
  NAND2_X1 sbox_det2_U15 ( .A1(sbox_det2_n22), .A2(sbox_det2_n21), .ZN(
        sbox_det2_n23) );
  NAND2_X1 sbox_det2_U14 ( .A1(sbox_det2_n20), .A2(sbox_det2_n19), .ZN(
        sbox_det2_n24) );
  NOR2_X1 sbox_det2_U13 ( .A1(sbox_det2_n24), .A2(sbox_det2_n23), .ZN(
        sbox_error_flags2[0]) );
  XNOR2_X1 sbox_det2_U12 ( .A(sbox_s_f_red_out_reg[8]), .B(
        sbox_det2_data_in_encoded[8]), .ZN(sbox_det2_n32) );
  XNOR2_X1 sbox_det2_U11 ( .A(sbox_s_f_red_out_reg[4]), .B(
        sbox_det2_data_in_encoded[4]), .ZN(sbox_det2_n26) );
  XNOR2_X1 sbox_det2_U10 ( .A(sbox_s_f_red_out_reg[0]), .B(
        sbox_det2_data_in_encoded[0]), .ZN(sbox_det2_n20) );
  XNOR2_X1 sbox_det2_U9 ( .A(sbox_s_f_red_out_reg[10]), .B(
        sbox_det2_data_in_encoded[10]), .ZN(sbox_det2_n34) );
  XNOR2_X1 sbox_det2_U8 ( .A(sbox_s_f_red_out_reg[6]), .B(
        sbox_det2_data_in_encoded[6]), .ZN(sbox_det2_n28) );
  XNOR2_X1 sbox_det2_U7 ( .A(sbox_s_f_red_out_reg[2]), .B(
        sbox_det2_data_in_encoded[2]), .ZN(sbox_det2_n22) );
  XNOR2_X1 sbox_det2_U6 ( .A(sbox_s_f_red_out_reg[9]), .B(
        sbox_det2_data_in_encoded[9]), .ZN(sbox_det2_n33) );
  XNOR2_X1 sbox_det2_U5 ( .A(sbox_s_f_red_out_reg[5]), .B(
        sbox_det2_data_in_encoded[5]), .ZN(sbox_det2_n27) );
  XNOR2_X1 sbox_det2_U4 ( .A(sbox_s_f_red_out_reg[1]), .B(
        sbox_det2_data_in_encoded[1]), .ZN(sbox_det2_n21) );
  XNOR2_X1 sbox_det2_U3 ( .A(sbox_s_f_red_out_reg[11]), .B(
        sbox_det2_data_in_encoded[11]), .ZN(sbox_det2_n31) );
  XNOR2_X1 sbox_det2_U2 ( .A(sbox_s_f_red_out_reg[7]), .B(
        sbox_det2_data_in_encoded[7]), .ZN(sbox_det2_n25) );
  XNOR2_X1 sbox_det2_U1 ( .A(sbox_s_f_red_out_reg[3]), .B(
        sbox_det2_data_in_encoded[3]), .ZN(sbox_det2_n19) );
  XOR2_X1 sbox_det2_corr_0_e0_U2 ( .A(data_out[2]), .B(data_out[1]), .Z(
        sbox_det2_corr_0_e0_n2) );
  XOR2_X1 sbox_det2_corr_0_e0_U1 ( .A(data_out[0]), .B(sbox_det2_corr_0_e0_n2), 
        .Z(sbox_det2_data_in_encoded[0]) );
  XOR2_X1 sbox_det2_corr_0_e1_U2 ( .A(data_out[3]), .B(data_out[1]), .Z(
        sbox_det2_corr_0_e1_n2) );
  XOR2_X1 sbox_det2_corr_0_e1_U1 ( .A(data_out[0]), .B(sbox_det2_corr_0_e1_n2), 
        .Z(sbox_det2_data_in_encoded[1]) );
  XOR2_X1 sbox_det2_corr_0_e2_U2 ( .A(data_out[0]), .B(data_out[3]), .Z(
        sbox_det2_corr_0_e2_n2) );
  XOR2_X1 sbox_det2_corr_0_e2_U1 ( .A(data_out[2]), .B(sbox_det2_corr_0_e2_n2), 
        .Z(sbox_det2_data_in_encoded[2]) );
  XOR2_X1 sbox_det2_corr_0_e3_U2 ( .A(data_out[3]), .B(data_out[2]), .Z(
        sbox_det2_corr_0_e3_n2) );
  XOR2_X1 sbox_det2_corr_0_e3_U1 ( .A(data_out[1]), .B(sbox_det2_corr_0_e3_n2), 
        .Z(sbox_det2_data_in_encoded[3]) );
  XOR2_X1 sbox_det2_corr_1_e0_U2 ( .A(data_out[6]), .B(data_out[5]), .Z(
        sbox_det2_corr_1_e0_n2) );
  XOR2_X1 sbox_det2_corr_1_e0_U1 ( .A(data_out[4]), .B(sbox_det2_corr_1_e0_n2), 
        .Z(sbox_det2_data_in_encoded[4]) );
  XOR2_X1 sbox_det2_corr_1_e1_U2 ( .A(data_out[7]), .B(data_out[5]), .Z(
        sbox_det2_corr_1_e1_n2) );
  XOR2_X1 sbox_det2_corr_1_e1_U1 ( .A(data_out[4]), .B(sbox_det2_corr_1_e1_n2), 
        .Z(sbox_det2_data_in_encoded[5]) );
  XOR2_X1 sbox_det2_corr_1_e2_U2 ( .A(data_out[4]), .B(data_out[7]), .Z(
        sbox_det2_corr_1_e2_n2) );
  XOR2_X1 sbox_det2_corr_1_e2_U1 ( .A(data_out[6]), .B(sbox_det2_corr_1_e2_n2), 
        .Z(sbox_det2_data_in_encoded[6]) );
  XOR2_X1 sbox_det2_corr_1_e3_U2 ( .A(data_out[7]), .B(data_out[6]), .Z(
        sbox_det2_corr_1_e3_n2) );
  XOR2_X1 sbox_det2_corr_1_e3_U1 ( .A(data_out[5]), .B(sbox_det2_corr_1_e3_n2), 
        .Z(sbox_det2_data_in_encoded[7]) );
  XOR2_X1 sbox_det2_corr_2_e0_U2 ( .A(data_out[10]), .B(data_out[9]), .Z(
        sbox_det2_corr_2_e0_n2) );
  XOR2_X1 sbox_det2_corr_2_e0_U1 ( .A(data_out[8]), .B(sbox_det2_corr_2_e0_n2), 
        .Z(sbox_det2_data_in_encoded[8]) );
  XOR2_X1 sbox_det2_corr_2_e1_U2 ( .A(data_out[11]), .B(data_out[9]), .Z(
        sbox_det2_corr_2_e1_n2) );
  XOR2_X1 sbox_det2_corr_2_e1_U1 ( .A(data_out[8]), .B(sbox_det2_corr_2_e1_n2), 
        .Z(sbox_det2_data_in_encoded[9]) );
  XOR2_X1 sbox_det2_corr_2_e2_U2 ( .A(data_out[8]), .B(data_out[11]), .Z(
        sbox_det2_corr_2_e2_n2) );
  XOR2_X1 sbox_det2_corr_2_e2_U1 ( .A(data_out[10]), .B(sbox_det2_corr_2_e2_n2), .Z(sbox_det2_data_in_encoded[10]) );
  XOR2_X1 sbox_det2_corr_2_e3_U2 ( .A(data_out[11]), .B(data_out[10]), .Z(
        sbox_det2_corr_2_e3_n2) );
  XOR2_X1 sbox_det2_corr_2_e3_U1 ( .A(data_out[9]), .B(sbox_det2_corr_2_e3_n2), 
        .Z(sbox_det2_data_in_encoded[11]) );
endmodule

