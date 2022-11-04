
module FINIandCorrection ( port_a, port_b, port_c );
  input [10:0] port_a;
  input [10:0] port_b;
  output [10:0] port_c;
  wire   cor_maj_11_n67, cor_maj_11_n66, cor_maj_11_n65, cor_maj_11_n64,
         cor_maj_11_n63, cor_maj_11_n62, cor_maj_11_n61, cor_maj_11_n60,
         cor_maj_11_n59, cor_maj_11_n58, cor_maj_11_n57, cor_maj_11_n56,
         cor_maj_11_n55, cor_maj_11_n54, cor_maj_11_n53, cor_maj_11_n52,
         cor_maj_11_n51, cor_maj_11_n50, cor_maj_11_n49, cor_maj_11_n48,
         cor_maj_11_n47, cor_maj_11_n46, cor_maj_11_n45, cor_maj_11_n44,
         cor_maj_11_n43, cor_maj_11_n42, cor_maj_11_n41, cor_maj_11_n40,
         cor_maj_11_n39, cor_maj_11_n38, cor_maj_11_n37, cor_maj_11_n36,
         cor_maj_11_n35, cor_maj_11_n34, cor_maj_11_n33, cor_maj_11_n32,
         cor_maj_11_n31, cor_maj_11_n30, cor_maj_11_n29, cor_maj_11_n28,
         cor_maj_11_n27, cor_maj_11_n26, cor_maj_11_n25, cor_maj_11_n24,
         cor_maj_11_n23, cor_maj_11_n22, cor_maj_11_n21, cor_maj_11_n20,
         cor_maj_11_n19, cor_maj_11_n18, cor_maj_11_n17, cor_maj_11_n16,
         cor_maj_11_n15, cor_maj_11_n14, cor_maj_11_n13, cor_maj_11_n12,
         cor_maj_11_n11, cor_maj_11_n10, cor_maj_11_n9, cor_maj_11_n8,
         cor_maj_11_n7, cor_maj_11_n6, cor_maj_11_n5, cor_maj_11_n4,
         cor_maj_11_n3, cor_maj_11_n2, cor_maj_11_n1, cor_maj_12_n67,
         cor_maj_12_n66, cor_maj_12_n65, cor_maj_12_n64, cor_maj_12_n63,
         cor_maj_12_n62, cor_maj_12_n61, cor_maj_12_n60, cor_maj_12_n59,
         cor_maj_12_n58, cor_maj_12_n57, cor_maj_12_n56, cor_maj_12_n55,
         cor_maj_12_n54, cor_maj_12_n53, cor_maj_12_n52, cor_maj_12_n51,
         cor_maj_12_n50, cor_maj_12_n49, cor_maj_12_n48, cor_maj_12_n47,
         cor_maj_12_n46, cor_maj_12_n45, cor_maj_12_n44, cor_maj_12_n43,
         cor_maj_12_n42, cor_maj_12_n41, cor_maj_12_n40, cor_maj_12_n39,
         cor_maj_12_n38, cor_maj_12_n37, cor_maj_12_n36, cor_maj_12_n35,
         cor_maj_12_n34, cor_maj_12_n33, cor_maj_12_n32, cor_maj_12_n31,
         cor_maj_12_n30, cor_maj_12_n29, cor_maj_12_n28, cor_maj_12_n27,
         cor_maj_12_n26, cor_maj_12_n25, cor_maj_12_n24, cor_maj_12_n23,
         cor_maj_12_n22, cor_maj_12_n21, cor_maj_12_n20, cor_maj_12_n19,
         cor_maj_12_n18, cor_maj_12_n17, cor_maj_12_n16, cor_maj_12_n15,
         cor_maj_12_n14, cor_maj_12_n13, cor_maj_12_n12, cor_maj_12_n11,
         cor_maj_12_n10, cor_maj_12_n9, cor_maj_12_n8, cor_maj_12_n7,
         cor_maj_12_n6, cor_maj_12_n5, cor_maj_12_n4, cor_maj_12_n3,
         cor_maj_12_n2, cor_maj_12_n1, cor_maj_13_n67, cor_maj_13_n66,
         cor_maj_13_n65, cor_maj_13_n64, cor_maj_13_n63, cor_maj_13_n62,
         cor_maj_13_n61, cor_maj_13_n60, cor_maj_13_n59, cor_maj_13_n58,
         cor_maj_13_n57, cor_maj_13_n56, cor_maj_13_n55, cor_maj_13_n54,
         cor_maj_13_n53, cor_maj_13_n52, cor_maj_13_n51, cor_maj_13_n50,
         cor_maj_13_n49, cor_maj_13_n48, cor_maj_13_n47, cor_maj_13_n46,
         cor_maj_13_n45, cor_maj_13_n44, cor_maj_13_n43, cor_maj_13_n42,
         cor_maj_13_n41, cor_maj_13_n40, cor_maj_13_n39, cor_maj_13_n38,
         cor_maj_13_n37, cor_maj_13_n36, cor_maj_13_n35, cor_maj_13_n34,
         cor_maj_13_n33, cor_maj_13_n32, cor_maj_13_n31, cor_maj_13_n30,
         cor_maj_13_n29, cor_maj_13_n28, cor_maj_13_n27, cor_maj_13_n26,
         cor_maj_13_n25, cor_maj_13_n24, cor_maj_13_n23, cor_maj_13_n22,
         cor_maj_13_n21, cor_maj_13_n20, cor_maj_13_n19, cor_maj_13_n18,
         cor_maj_13_n17, cor_maj_13_n16, cor_maj_13_n15, cor_maj_13_n14,
         cor_maj_13_n13, cor_maj_13_n12, cor_maj_13_n11, cor_maj_13_n10,
         cor_maj_13_n9, cor_maj_13_n8, cor_maj_13_n7, cor_maj_13_n6,
         cor_maj_13_n5, cor_maj_13_n4, cor_maj_13_n3, cor_maj_13_n2,
         cor_maj_13_n1, cor_maj_14_n67, cor_maj_14_n66, cor_maj_14_n65,
         cor_maj_14_n64, cor_maj_14_n63, cor_maj_14_n62, cor_maj_14_n61,
         cor_maj_14_n60, cor_maj_14_n59, cor_maj_14_n58, cor_maj_14_n57,
         cor_maj_14_n56, cor_maj_14_n55, cor_maj_14_n54, cor_maj_14_n53,
         cor_maj_14_n52, cor_maj_14_n51, cor_maj_14_n50, cor_maj_14_n49,
         cor_maj_14_n48, cor_maj_14_n47, cor_maj_14_n46, cor_maj_14_n45,
         cor_maj_14_n44, cor_maj_14_n43, cor_maj_14_n42, cor_maj_14_n41,
         cor_maj_14_n40, cor_maj_14_n39, cor_maj_14_n38, cor_maj_14_n37,
         cor_maj_14_n36, cor_maj_14_n35, cor_maj_14_n34, cor_maj_14_n33,
         cor_maj_14_n32, cor_maj_14_n31, cor_maj_14_n30, cor_maj_14_n29,
         cor_maj_14_n28, cor_maj_14_n27, cor_maj_14_n26, cor_maj_14_n25,
         cor_maj_14_n24, cor_maj_14_n23, cor_maj_14_n22, cor_maj_14_n21,
         cor_maj_14_n20, cor_maj_14_n19, cor_maj_14_n18, cor_maj_14_n17,
         cor_maj_14_n16, cor_maj_14_n15, cor_maj_14_n14, cor_maj_14_n13,
         cor_maj_14_n12, cor_maj_14_n11, cor_maj_14_n10, cor_maj_14_n9,
         cor_maj_14_n8, cor_maj_14_n7, cor_maj_14_n6, cor_maj_14_n5,
         cor_maj_14_n4, cor_maj_14_n3, cor_maj_14_n2, cor_maj_14_n1,
         cor_maj_15_n67, cor_maj_15_n66, cor_maj_15_n65, cor_maj_15_n64,
         cor_maj_15_n63, cor_maj_15_n62, cor_maj_15_n61, cor_maj_15_n60,
         cor_maj_15_n59, cor_maj_15_n58, cor_maj_15_n57, cor_maj_15_n56,
         cor_maj_15_n55, cor_maj_15_n54, cor_maj_15_n53, cor_maj_15_n52,
         cor_maj_15_n51, cor_maj_15_n50, cor_maj_15_n49, cor_maj_15_n48,
         cor_maj_15_n47, cor_maj_15_n46, cor_maj_15_n45, cor_maj_15_n44,
         cor_maj_15_n43, cor_maj_15_n42, cor_maj_15_n41, cor_maj_15_n40,
         cor_maj_15_n39, cor_maj_15_n38, cor_maj_15_n37, cor_maj_15_n36,
         cor_maj_15_n35, cor_maj_15_n34, cor_maj_15_n33, cor_maj_15_n32,
         cor_maj_15_n31, cor_maj_15_n30, cor_maj_15_n29, cor_maj_15_n28,
         cor_maj_15_n27, cor_maj_15_n26, cor_maj_15_n25, cor_maj_15_n24,
         cor_maj_15_n23, cor_maj_15_n22, cor_maj_15_n21, cor_maj_15_n20,
         cor_maj_15_n19, cor_maj_15_n18, cor_maj_15_n17, cor_maj_15_n16,
         cor_maj_15_n15, cor_maj_15_n14, cor_maj_15_n13, cor_maj_15_n12,
         cor_maj_15_n11, cor_maj_15_n10, cor_maj_15_n9, cor_maj_15_n8,
         cor_maj_15_n7, cor_maj_15_n6, cor_maj_15_n5, cor_maj_15_n4,
         cor_maj_15_n3, cor_maj_15_n2, cor_maj_15_n1, cor_maj_16_n67,
         cor_maj_16_n66, cor_maj_16_n65, cor_maj_16_n64, cor_maj_16_n63,
         cor_maj_16_n62, cor_maj_16_n61, cor_maj_16_n60, cor_maj_16_n59,
         cor_maj_16_n58, cor_maj_16_n57, cor_maj_16_n56, cor_maj_16_n55,
         cor_maj_16_n54, cor_maj_16_n53, cor_maj_16_n52, cor_maj_16_n51,
         cor_maj_16_n50, cor_maj_16_n49, cor_maj_16_n48, cor_maj_16_n47,
         cor_maj_16_n46, cor_maj_16_n45, cor_maj_16_n44, cor_maj_16_n43,
         cor_maj_16_n42, cor_maj_16_n41, cor_maj_16_n40, cor_maj_16_n39,
         cor_maj_16_n38, cor_maj_16_n37, cor_maj_16_n36, cor_maj_16_n35,
         cor_maj_16_n34, cor_maj_16_n33, cor_maj_16_n32, cor_maj_16_n31,
         cor_maj_16_n30, cor_maj_16_n29, cor_maj_16_n28, cor_maj_16_n27,
         cor_maj_16_n26, cor_maj_16_n25, cor_maj_16_n24, cor_maj_16_n23,
         cor_maj_16_n22, cor_maj_16_n21, cor_maj_16_n20, cor_maj_16_n19,
         cor_maj_16_n18, cor_maj_16_n17, cor_maj_16_n16, cor_maj_16_n15,
         cor_maj_16_n14, cor_maj_16_n13, cor_maj_16_n12, cor_maj_16_n11,
         cor_maj_16_n10, cor_maj_16_n9, cor_maj_16_n8, cor_maj_16_n7,
         cor_maj_16_n6, cor_maj_16_n5, cor_maj_16_n4, cor_maj_16_n3,
         cor_maj_16_n2, cor_maj_16_n1, cor_maj_17_n67, cor_maj_17_n66,
         cor_maj_17_n65, cor_maj_17_n64, cor_maj_17_n63, cor_maj_17_n62,
         cor_maj_17_n61, cor_maj_17_n60, cor_maj_17_n59, cor_maj_17_n58,
         cor_maj_17_n57, cor_maj_17_n56, cor_maj_17_n55, cor_maj_17_n54,
         cor_maj_17_n53, cor_maj_17_n52, cor_maj_17_n51, cor_maj_17_n50,
         cor_maj_17_n49, cor_maj_17_n48, cor_maj_17_n47, cor_maj_17_n46,
         cor_maj_17_n45, cor_maj_17_n44, cor_maj_17_n43, cor_maj_17_n42,
         cor_maj_17_n41, cor_maj_17_n40, cor_maj_17_n39, cor_maj_17_n38,
         cor_maj_17_n37, cor_maj_17_n36, cor_maj_17_n35, cor_maj_17_n34,
         cor_maj_17_n33, cor_maj_17_n32, cor_maj_17_n31, cor_maj_17_n30,
         cor_maj_17_n29, cor_maj_17_n28, cor_maj_17_n27, cor_maj_17_n26,
         cor_maj_17_n25, cor_maj_17_n24, cor_maj_17_n23, cor_maj_17_n22,
         cor_maj_17_n21, cor_maj_17_n20, cor_maj_17_n19, cor_maj_17_n18,
         cor_maj_17_n17, cor_maj_17_n16, cor_maj_17_n15, cor_maj_17_n14,
         cor_maj_17_n13, cor_maj_17_n12, cor_maj_17_n11, cor_maj_17_n10,
         cor_maj_17_n9, cor_maj_17_n8, cor_maj_17_n7, cor_maj_17_n6,
         cor_maj_17_n5, cor_maj_17_n4, cor_maj_17_n3, cor_maj_17_n2,
         cor_maj_17_n1, cor_maj_18_n67, cor_maj_18_n66, cor_maj_18_n65,
         cor_maj_18_n64, cor_maj_18_n63, cor_maj_18_n62, cor_maj_18_n61,
         cor_maj_18_n60, cor_maj_18_n59, cor_maj_18_n58, cor_maj_18_n57,
         cor_maj_18_n56, cor_maj_18_n55, cor_maj_18_n54, cor_maj_18_n53,
         cor_maj_18_n52, cor_maj_18_n51, cor_maj_18_n50, cor_maj_18_n49,
         cor_maj_18_n48, cor_maj_18_n47, cor_maj_18_n46, cor_maj_18_n45,
         cor_maj_18_n44, cor_maj_18_n43, cor_maj_18_n42, cor_maj_18_n41,
         cor_maj_18_n40, cor_maj_18_n39, cor_maj_18_n38, cor_maj_18_n37,
         cor_maj_18_n36, cor_maj_18_n35, cor_maj_18_n34, cor_maj_18_n33,
         cor_maj_18_n32, cor_maj_18_n31, cor_maj_18_n30, cor_maj_18_n29,
         cor_maj_18_n28, cor_maj_18_n27, cor_maj_18_n26, cor_maj_18_n25,
         cor_maj_18_n24, cor_maj_18_n23, cor_maj_18_n22, cor_maj_18_n21,
         cor_maj_18_n20, cor_maj_18_n19, cor_maj_18_n18, cor_maj_18_n17,
         cor_maj_18_n16, cor_maj_18_n15, cor_maj_18_n14, cor_maj_18_n13,
         cor_maj_18_n12, cor_maj_18_n11, cor_maj_18_n10, cor_maj_18_n9,
         cor_maj_18_n8, cor_maj_18_n7, cor_maj_18_n6, cor_maj_18_n5,
         cor_maj_18_n4, cor_maj_18_n3, cor_maj_18_n2, cor_maj_18_n1,
         cor_maj_19_n67, cor_maj_19_n66, cor_maj_19_n65, cor_maj_19_n64,
         cor_maj_19_n63, cor_maj_19_n62, cor_maj_19_n61, cor_maj_19_n60,
         cor_maj_19_n59, cor_maj_19_n58, cor_maj_19_n57, cor_maj_19_n56,
         cor_maj_19_n55, cor_maj_19_n54, cor_maj_19_n53, cor_maj_19_n52,
         cor_maj_19_n51, cor_maj_19_n50, cor_maj_19_n49, cor_maj_19_n48,
         cor_maj_19_n47, cor_maj_19_n46, cor_maj_19_n45, cor_maj_19_n44,
         cor_maj_19_n43, cor_maj_19_n42, cor_maj_19_n41, cor_maj_19_n40,
         cor_maj_19_n39, cor_maj_19_n38, cor_maj_19_n37, cor_maj_19_n36,
         cor_maj_19_n35, cor_maj_19_n34, cor_maj_19_n33, cor_maj_19_n32,
         cor_maj_19_n31, cor_maj_19_n30, cor_maj_19_n29, cor_maj_19_n28,
         cor_maj_19_n27, cor_maj_19_n26, cor_maj_19_n25, cor_maj_19_n24,
         cor_maj_19_n23, cor_maj_19_n22, cor_maj_19_n21, cor_maj_19_n20,
         cor_maj_19_n19, cor_maj_19_n18, cor_maj_19_n17, cor_maj_19_n16,
         cor_maj_19_n15, cor_maj_19_n14, cor_maj_19_n13, cor_maj_19_n12,
         cor_maj_19_n11, cor_maj_19_n10, cor_maj_19_n9, cor_maj_19_n8,
         cor_maj_19_n7, cor_maj_19_n6, cor_maj_19_n5, cor_maj_19_n4,
         cor_maj_19_n3, cor_maj_19_n2, cor_maj_19_n1, cor_maj_20_n67,
         cor_maj_20_n66, cor_maj_20_n65, cor_maj_20_n64, cor_maj_20_n63,
         cor_maj_20_n62, cor_maj_20_n61, cor_maj_20_n60, cor_maj_20_n59,
         cor_maj_20_n58, cor_maj_20_n57, cor_maj_20_n56, cor_maj_20_n55,
         cor_maj_20_n54, cor_maj_20_n53, cor_maj_20_n52, cor_maj_20_n51,
         cor_maj_20_n50, cor_maj_20_n49, cor_maj_20_n48, cor_maj_20_n47,
         cor_maj_20_n46, cor_maj_20_n45, cor_maj_20_n44, cor_maj_20_n43,
         cor_maj_20_n42, cor_maj_20_n41, cor_maj_20_n40, cor_maj_20_n39,
         cor_maj_20_n38, cor_maj_20_n37, cor_maj_20_n36, cor_maj_20_n35,
         cor_maj_20_n34, cor_maj_20_n33, cor_maj_20_n32, cor_maj_20_n31,
         cor_maj_20_n30, cor_maj_20_n29, cor_maj_20_n28, cor_maj_20_n27,
         cor_maj_20_n26, cor_maj_20_n25, cor_maj_20_n24, cor_maj_20_n23,
         cor_maj_20_n22, cor_maj_20_n21, cor_maj_20_n20, cor_maj_20_n19,
         cor_maj_20_n18, cor_maj_20_n17, cor_maj_20_n16, cor_maj_20_n15,
         cor_maj_20_n14, cor_maj_20_n13, cor_maj_20_n12, cor_maj_20_n11,
         cor_maj_20_n10, cor_maj_20_n9, cor_maj_20_n8, cor_maj_20_n7,
         cor_maj_20_n6, cor_maj_20_n5, cor_maj_20_n4, cor_maj_20_n3,
         cor_maj_20_n2, cor_maj_20_n1, cor_maj_21_n67, cor_maj_21_n66,
         cor_maj_21_n65, cor_maj_21_n64, cor_maj_21_n63, cor_maj_21_n62,
         cor_maj_21_n61, cor_maj_21_n60, cor_maj_21_n59, cor_maj_21_n58,
         cor_maj_21_n57, cor_maj_21_n56, cor_maj_21_n55, cor_maj_21_n54,
         cor_maj_21_n53, cor_maj_21_n52, cor_maj_21_n51, cor_maj_21_n50,
         cor_maj_21_n49, cor_maj_21_n48, cor_maj_21_n47, cor_maj_21_n46,
         cor_maj_21_n45, cor_maj_21_n44, cor_maj_21_n43, cor_maj_21_n42,
         cor_maj_21_n41, cor_maj_21_n40, cor_maj_21_n39, cor_maj_21_n38,
         cor_maj_21_n37, cor_maj_21_n36, cor_maj_21_n35, cor_maj_21_n34,
         cor_maj_21_n33, cor_maj_21_n32, cor_maj_21_n31, cor_maj_21_n30,
         cor_maj_21_n29, cor_maj_21_n28, cor_maj_21_n27, cor_maj_21_n26,
         cor_maj_21_n25, cor_maj_21_n24, cor_maj_21_n23, cor_maj_21_n22,
         cor_maj_21_n21, cor_maj_21_n20, cor_maj_21_n19, cor_maj_21_n18,
         cor_maj_21_n17, cor_maj_21_n16, cor_maj_21_n15, cor_maj_21_n14,
         cor_maj_21_n13, cor_maj_21_n12, cor_maj_21_n11, cor_maj_21_n10,
         cor_maj_21_n9, cor_maj_21_n8, cor_maj_21_n7, cor_maj_21_n6,
         cor_maj_21_n5, cor_maj_21_n4, cor_maj_21_n3, cor_maj_21_n2,
         cor_maj_21_n1;
  wire   [10:0] mul_port_c;

  AND2_X1 mul_U11 ( .A1(port_b[0]), .A2(port_a[0]), .ZN(mul_port_c[0]) );
  AND2_X1 mul_U10 ( .A1(port_b[10]), .A2(port_a[10]), .ZN(mul_port_c[10]) );
  AND2_X1 mul_U9 ( .A1(port_b[1]), .A2(port_a[1]), .ZN(mul_port_c[1]) );
  AND2_X1 mul_U8 ( .A1(port_b[2]), .A2(port_a[2]), .ZN(mul_port_c[2]) );
  AND2_X1 mul_U7 ( .A1(port_b[3]), .A2(port_a[3]), .ZN(mul_port_c[3]) );
  AND2_X1 mul_U6 ( .A1(port_b[4]), .A2(port_a[4]), .ZN(mul_port_c[4]) );
  AND2_X1 mul_U5 ( .A1(port_b[5]), .A2(port_a[5]), .ZN(mul_port_c[5]) );
  AND2_X1 mul_U4 ( .A1(port_b[6]), .A2(port_a[6]), .ZN(mul_port_c[6]) );
  AND2_X1 mul_U3 ( .A1(port_b[7]), .A2(port_a[7]), .ZN(mul_port_c[7]) );
  AND2_X1 mul_U2 ( .A1(port_b[8]), .A2(port_a[8]), .ZN(mul_port_c[8]) );
  AND2_X2 mul_U1 ( .A1(port_b[9]), .A2(port_a[9]), .ZN(mul_port_c[9]) );
  AND2_X1 cor_maj_11_U70 ( .A1(mul_port_c[2]), .A2(mul_port_c[1]), .ZN(
        cor_maj_11_n27) );
  OR2_X1 cor_maj_11_U69 ( .A1(mul_port_c[0]), .A2(mul_port_c[10]), .ZN(
        cor_maj_11_n53) );
  NAND2_X1 cor_maj_11_U68 ( .A1(cor_maj_11_n27), .A2(cor_maj_11_n53), .ZN(
        cor_maj_11_n66) );
  NAND2_X1 cor_maj_11_U67 ( .A1(mul_port_c[10]), .A2(mul_port_c[0]), .ZN(
        cor_maj_11_n62) );
  INV_X1 cor_maj_11_U66 ( .A(cor_maj_11_n62), .ZN(cor_maj_11_n25) );
  OR2_X1 cor_maj_11_U65 ( .A1(mul_port_c[1]), .A2(mul_port_c[2]), .ZN(
        cor_maj_11_n52) );
  NAND2_X1 cor_maj_11_U64 ( .A1(cor_maj_11_n25), .A2(cor_maj_11_n52), .ZN(
        cor_maj_11_n67) );
  AND2_X1 cor_maj_11_U63 ( .A1(cor_maj_11_n66), .A2(cor_maj_11_n67), .ZN(
        cor_maj_11_n16) );
  AND2_X1 cor_maj_11_U62 ( .A1(mul_port_c[6]), .A2(mul_port_c[5]), .ZN(
        cor_maj_11_n59) );
  OR2_X1 cor_maj_11_U61 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_11_n57) );
  NAND2_X1 cor_maj_11_U60 ( .A1(cor_maj_11_n59), .A2(cor_maj_11_n57), .ZN(
        cor_maj_11_n64) );
  AND2_X1 cor_maj_11_U59 ( .A1(mul_port_c[4]), .A2(mul_port_c[3]), .ZN(
        cor_maj_11_n58) );
  OR2_X1 cor_maj_11_U58 ( .A1(mul_port_c[5]), .A2(mul_port_c[6]), .ZN(
        cor_maj_11_n56) );
  NAND2_X1 cor_maj_11_U57 ( .A1(cor_maj_11_n58), .A2(cor_maj_11_n56), .ZN(
        cor_maj_11_n65) );
  AND2_X1 cor_maj_11_U56 ( .A1(cor_maj_11_n64), .A2(cor_maj_11_n65), .ZN(
        cor_maj_11_n17) );
  NOR2_X1 cor_maj_11_U55 ( .A1(cor_maj_11_n16), .A2(cor_maj_11_n17), .ZN(
        cor_maj_11_n42) );
  NOR2_X1 cor_maj_11_U54 ( .A1(cor_maj_11_n56), .A2(cor_maj_11_n57), .ZN(
        cor_maj_11_n41) );
  INV_X1 cor_maj_11_U53 ( .A(cor_maj_11_n41), .ZN(cor_maj_11_n22) );
  NAND2_X1 cor_maj_11_U52 ( .A1(cor_maj_11_n27), .A2(cor_maj_11_n22), .ZN(
        cor_maj_11_n63) );
  NOR2_X1 cor_maj_11_U51 ( .A1(cor_maj_11_n62), .A2(cor_maj_11_n63), .ZN(
        cor_maj_11_n60) );
  NOR2_X1 cor_maj_11_U50 ( .A1(cor_maj_11_n52), .A2(cor_maj_11_n53), .ZN(
        cor_maj_11_n20) );
  NAND2_X1 cor_maj_11_U49 ( .A1(cor_maj_11_n58), .A2(cor_maj_11_n59), .ZN(
        cor_maj_11_n37) );
  NOR2_X1 cor_maj_11_U48 ( .A1(cor_maj_11_n20), .A2(cor_maj_11_n37), .ZN(
        cor_maj_11_n61) );
  NOR2_X1 cor_maj_11_U47 ( .A1(cor_maj_11_n60), .A2(cor_maj_11_n61), .ZN(
        cor_maj_11_n46) );
  NOR2_X1 cor_maj_11_U46 ( .A1(cor_maj_11_n58), .A2(cor_maj_11_n59), .ZN(
        cor_maj_11_n54) );
  NAND2_X1 cor_maj_11_U45 ( .A1(cor_maj_11_n56), .A2(cor_maj_11_n57), .ZN(
        cor_maj_11_n55) );
  NAND2_X1 cor_maj_11_U44 ( .A1(cor_maj_11_n54), .A2(cor_maj_11_n55), .ZN(
        cor_maj_11_n26) );
  INV_X1 cor_maj_11_U43 ( .A(cor_maj_11_n26), .ZN(cor_maj_11_n21) );
  NOR2_X1 cor_maj_11_U42 ( .A1(cor_maj_11_n21), .A2(cor_maj_11_n16), .ZN(
        cor_maj_11_n48) );
  NOR2_X1 cor_maj_11_U41 ( .A1(cor_maj_11_n25), .A2(cor_maj_11_n27), .ZN(
        cor_maj_11_n50) );
  NAND2_X1 cor_maj_11_U40 ( .A1(cor_maj_11_n52), .A2(cor_maj_11_n53), .ZN(
        cor_maj_11_n51) );
  NAND2_X1 cor_maj_11_U39 ( .A1(cor_maj_11_n50), .A2(cor_maj_11_n51), .ZN(
        cor_maj_11_n23) );
  INV_X1 cor_maj_11_U38 ( .A(cor_maj_11_n23), .ZN(cor_maj_11_n40) );
  NOR2_X1 cor_maj_11_U37 ( .A1(cor_maj_11_n40), .A2(cor_maj_11_n17), .ZN(
        cor_maj_11_n49) );
  NOR2_X1 cor_maj_11_U36 ( .A1(cor_maj_11_n48), .A2(cor_maj_11_n49), .ZN(
        cor_maj_11_n47) );
  NAND2_X1 cor_maj_11_U35 ( .A1(cor_maj_11_n46), .A2(cor_maj_11_n47), .ZN(
        cor_maj_11_n31) );
  NAND2_X1 cor_maj_11_U34 ( .A1(mul_port_c[9]), .A2(cor_maj_11_n31), .ZN(
        cor_maj_11_n44) );
  OR2_X1 cor_maj_11_U33 ( .A1(cor_maj_11_n37), .A2(cor_maj_11_n40), .ZN(
        cor_maj_11_n45) );
  NAND2_X1 cor_maj_11_U32 ( .A1(cor_maj_11_n44), .A2(cor_maj_11_n45), .ZN(
        cor_maj_11_n43) );
  NOR2_X1 cor_maj_11_U31 ( .A1(cor_maj_11_n42), .A2(cor_maj_11_n43), .ZN(
        cor_maj_11_n1) );
  NOR2_X1 cor_maj_11_U30 ( .A1(cor_maj_11_n16), .A2(cor_maj_11_n41), .ZN(
        cor_maj_11_n38) );
  NOR2_X1 cor_maj_11_U29 ( .A1(cor_maj_11_n40), .A2(cor_maj_11_n21), .ZN(
        cor_maj_11_n39) );
  NOR2_X1 cor_maj_11_U28 ( .A1(cor_maj_11_n38), .A2(cor_maj_11_n39), .ZN(
        cor_maj_11_n32) );
  NOR2_X1 cor_maj_11_U27 ( .A1(cor_maj_11_n17), .A2(cor_maj_11_n20), .ZN(
        cor_maj_11_n34) );
  NAND2_X1 cor_maj_11_U26 ( .A1(cor_maj_11_n25), .A2(cor_maj_11_n27), .ZN(
        cor_maj_11_n36) );
  NAND2_X1 cor_maj_11_U25 ( .A1(cor_maj_11_n36), .A2(cor_maj_11_n37), .ZN(
        cor_maj_11_n35) );
  NOR2_X1 cor_maj_11_U24 ( .A1(cor_maj_11_n34), .A2(cor_maj_11_n35), .ZN(
        cor_maj_11_n33) );
  NAND2_X1 cor_maj_11_U23 ( .A1(cor_maj_11_n32), .A2(cor_maj_11_n33), .ZN(
        cor_maj_11_n11) );
  AND2_X1 cor_maj_11_U22 ( .A1(cor_maj_11_n11), .A2(mul_port_c[9]), .ZN(
        cor_maj_11_n30) );
  NOR2_X1 cor_maj_11_U21 ( .A1(cor_maj_11_n30), .A2(cor_maj_11_n31), .ZN(
        cor_maj_11_n28) );
  NOR2_X1 cor_maj_11_U20 ( .A1(mul_port_c[7]), .A2(mul_port_c[8]), .ZN(
        cor_maj_11_n29) );
  NOR2_X1 cor_maj_11_U19 ( .A1(cor_maj_11_n28), .A2(cor_maj_11_n29), .ZN(
        cor_maj_11_n3) );
  AND2_X1 cor_maj_11_U18 ( .A1(cor_maj_11_n26), .A2(cor_maj_11_n27), .ZN(
        cor_maj_11_n24) );
  NAND2_X1 cor_maj_11_U17 ( .A1(cor_maj_11_n24), .A2(cor_maj_11_n25), .ZN(
        cor_maj_11_n5) );
  NAND2_X1 cor_maj_11_U16 ( .A1(cor_maj_11_n22), .A2(cor_maj_11_n23), .ZN(
        cor_maj_11_n18) );
  OR2_X1 cor_maj_11_U15 ( .A1(cor_maj_11_n20), .A2(cor_maj_11_n21), .ZN(
        cor_maj_11_n19) );
  NAND2_X1 cor_maj_11_U14 ( .A1(cor_maj_11_n18), .A2(cor_maj_11_n19), .ZN(
        cor_maj_11_n14) );
  NAND2_X1 cor_maj_11_U13 ( .A1(cor_maj_11_n16), .A2(cor_maj_11_n17), .ZN(
        cor_maj_11_n15) );
  NOR2_X1 cor_maj_11_U12 ( .A1(cor_maj_11_n14), .A2(cor_maj_11_n15), .ZN(
        cor_maj_11_n12) );
  INV_X1 cor_maj_11_U11 ( .A(mul_port_c[9]), .ZN(cor_maj_11_n13) );
  NOR2_X1 cor_maj_11_U10 ( .A1(cor_maj_11_n12), .A2(cor_maj_11_n13), .ZN(
        cor_maj_11_n10) );
  NOR2_X1 cor_maj_11_U9 ( .A1(cor_maj_11_n10), .A2(cor_maj_11_n11), .ZN(
        cor_maj_11_n8) );
  INV_X1 cor_maj_11_U8 ( .A(mul_port_c[7]), .ZN(cor_maj_11_n9) );
  NOR2_X1 cor_maj_11_U7 ( .A1(cor_maj_11_n8), .A2(cor_maj_11_n9), .ZN(
        cor_maj_11_n7) );
  NAND2_X1 cor_maj_11_U6 ( .A1(cor_maj_11_n7), .A2(mul_port_c[8]), .ZN(
        cor_maj_11_n6) );
  NAND2_X1 cor_maj_11_U5 ( .A1(cor_maj_11_n5), .A2(cor_maj_11_n6), .ZN(
        cor_maj_11_n4) );
  NOR2_X1 cor_maj_11_U4 ( .A1(cor_maj_11_n3), .A2(cor_maj_11_n4), .ZN(
        cor_maj_11_n2) );
  NAND2_X1 cor_maj_11_U3 ( .A1(cor_maj_11_n1), .A2(cor_maj_11_n2), .ZN(
        port_c[0]) );
  AND2_X1 cor_maj_12_U70 ( .A1(mul_port_c[2]), .A2(mul_port_c[1]), .ZN(
        cor_maj_12_n27) );
  OR2_X1 cor_maj_12_U69 ( .A1(mul_port_c[0]), .A2(mul_port_c[10]), .ZN(
        cor_maj_12_n53) );
  NAND2_X1 cor_maj_12_U68 ( .A1(cor_maj_12_n27), .A2(cor_maj_12_n53), .ZN(
        cor_maj_12_n66) );
  NAND2_X1 cor_maj_12_U67 ( .A1(mul_port_c[10]), .A2(mul_port_c[0]), .ZN(
        cor_maj_12_n62) );
  INV_X1 cor_maj_12_U66 ( .A(cor_maj_12_n62), .ZN(cor_maj_12_n25) );
  OR2_X1 cor_maj_12_U65 ( .A1(mul_port_c[1]), .A2(mul_port_c[2]), .ZN(
        cor_maj_12_n52) );
  NAND2_X1 cor_maj_12_U64 ( .A1(cor_maj_12_n25), .A2(cor_maj_12_n52), .ZN(
        cor_maj_12_n67) );
  AND2_X1 cor_maj_12_U63 ( .A1(cor_maj_12_n66), .A2(cor_maj_12_n67), .ZN(
        cor_maj_12_n16) );
  AND2_X1 cor_maj_12_U62 ( .A1(mul_port_c[6]), .A2(mul_port_c[5]), .ZN(
        cor_maj_12_n59) );
  OR2_X1 cor_maj_12_U61 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_12_n57) );
  NAND2_X1 cor_maj_12_U60 ( .A1(cor_maj_12_n59), .A2(cor_maj_12_n57), .ZN(
        cor_maj_12_n64) );
  AND2_X1 cor_maj_12_U59 ( .A1(mul_port_c[4]), .A2(mul_port_c[3]), .ZN(
        cor_maj_12_n58) );
  OR2_X1 cor_maj_12_U58 ( .A1(mul_port_c[5]), .A2(mul_port_c[6]), .ZN(
        cor_maj_12_n56) );
  NAND2_X1 cor_maj_12_U57 ( .A1(cor_maj_12_n58), .A2(cor_maj_12_n56), .ZN(
        cor_maj_12_n65) );
  AND2_X1 cor_maj_12_U56 ( .A1(cor_maj_12_n64), .A2(cor_maj_12_n65), .ZN(
        cor_maj_12_n17) );
  NOR2_X1 cor_maj_12_U55 ( .A1(cor_maj_12_n16), .A2(cor_maj_12_n17), .ZN(
        cor_maj_12_n42) );
  NOR2_X1 cor_maj_12_U54 ( .A1(cor_maj_12_n56), .A2(cor_maj_12_n57), .ZN(
        cor_maj_12_n41) );
  INV_X1 cor_maj_12_U53 ( .A(cor_maj_12_n41), .ZN(cor_maj_12_n22) );
  NAND2_X1 cor_maj_12_U52 ( .A1(cor_maj_12_n27), .A2(cor_maj_12_n22), .ZN(
        cor_maj_12_n63) );
  NOR2_X1 cor_maj_12_U51 ( .A1(cor_maj_12_n62), .A2(cor_maj_12_n63), .ZN(
        cor_maj_12_n60) );
  NOR2_X1 cor_maj_12_U50 ( .A1(cor_maj_12_n52), .A2(cor_maj_12_n53), .ZN(
        cor_maj_12_n20) );
  NAND2_X1 cor_maj_12_U49 ( .A1(cor_maj_12_n58), .A2(cor_maj_12_n59), .ZN(
        cor_maj_12_n37) );
  NOR2_X1 cor_maj_12_U48 ( .A1(cor_maj_12_n20), .A2(cor_maj_12_n37), .ZN(
        cor_maj_12_n61) );
  NOR2_X1 cor_maj_12_U47 ( .A1(cor_maj_12_n60), .A2(cor_maj_12_n61), .ZN(
        cor_maj_12_n46) );
  NOR2_X1 cor_maj_12_U46 ( .A1(cor_maj_12_n58), .A2(cor_maj_12_n59), .ZN(
        cor_maj_12_n54) );
  NAND2_X1 cor_maj_12_U45 ( .A1(cor_maj_12_n56), .A2(cor_maj_12_n57), .ZN(
        cor_maj_12_n55) );
  NAND2_X1 cor_maj_12_U44 ( .A1(cor_maj_12_n54), .A2(cor_maj_12_n55), .ZN(
        cor_maj_12_n26) );
  INV_X1 cor_maj_12_U43 ( .A(cor_maj_12_n26), .ZN(cor_maj_12_n21) );
  NOR2_X1 cor_maj_12_U42 ( .A1(cor_maj_12_n21), .A2(cor_maj_12_n16), .ZN(
        cor_maj_12_n48) );
  NOR2_X1 cor_maj_12_U41 ( .A1(cor_maj_12_n25), .A2(cor_maj_12_n27), .ZN(
        cor_maj_12_n50) );
  NAND2_X1 cor_maj_12_U40 ( .A1(cor_maj_12_n52), .A2(cor_maj_12_n53), .ZN(
        cor_maj_12_n51) );
  NAND2_X1 cor_maj_12_U39 ( .A1(cor_maj_12_n50), .A2(cor_maj_12_n51), .ZN(
        cor_maj_12_n23) );
  INV_X1 cor_maj_12_U38 ( .A(cor_maj_12_n23), .ZN(cor_maj_12_n40) );
  NOR2_X1 cor_maj_12_U37 ( .A1(cor_maj_12_n40), .A2(cor_maj_12_n17), .ZN(
        cor_maj_12_n49) );
  NOR2_X1 cor_maj_12_U36 ( .A1(cor_maj_12_n48), .A2(cor_maj_12_n49), .ZN(
        cor_maj_12_n47) );
  NAND2_X1 cor_maj_12_U35 ( .A1(cor_maj_12_n46), .A2(cor_maj_12_n47), .ZN(
        cor_maj_12_n31) );
  NAND2_X1 cor_maj_12_U34 ( .A1(mul_port_c[9]), .A2(cor_maj_12_n31), .ZN(
        cor_maj_12_n44) );
  OR2_X1 cor_maj_12_U33 ( .A1(cor_maj_12_n37), .A2(cor_maj_12_n40), .ZN(
        cor_maj_12_n45) );
  NAND2_X1 cor_maj_12_U32 ( .A1(cor_maj_12_n44), .A2(cor_maj_12_n45), .ZN(
        cor_maj_12_n43) );
  NOR2_X1 cor_maj_12_U31 ( .A1(cor_maj_12_n42), .A2(cor_maj_12_n43), .ZN(
        cor_maj_12_n1) );
  NOR2_X1 cor_maj_12_U30 ( .A1(cor_maj_12_n16), .A2(cor_maj_12_n41), .ZN(
        cor_maj_12_n38) );
  NOR2_X1 cor_maj_12_U29 ( .A1(cor_maj_12_n40), .A2(cor_maj_12_n21), .ZN(
        cor_maj_12_n39) );
  NOR2_X1 cor_maj_12_U28 ( .A1(cor_maj_12_n38), .A2(cor_maj_12_n39), .ZN(
        cor_maj_12_n32) );
  NOR2_X1 cor_maj_12_U27 ( .A1(cor_maj_12_n17), .A2(cor_maj_12_n20), .ZN(
        cor_maj_12_n34) );
  NAND2_X1 cor_maj_12_U26 ( .A1(cor_maj_12_n25), .A2(cor_maj_12_n27), .ZN(
        cor_maj_12_n36) );
  NAND2_X1 cor_maj_12_U25 ( .A1(cor_maj_12_n36), .A2(cor_maj_12_n37), .ZN(
        cor_maj_12_n35) );
  NOR2_X1 cor_maj_12_U24 ( .A1(cor_maj_12_n34), .A2(cor_maj_12_n35), .ZN(
        cor_maj_12_n33) );
  NAND2_X1 cor_maj_12_U23 ( .A1(cor_maj_12_n32), .A2(cor_maj_12_n33), .ZN(
        cor_maj_12_n11) );
  AND2_X1 cor_maj_12_U22 ( .A1(cor_maj_12_n11), .A2(mul_port_c[9]), .ZN(
        cor_maj_12_n30) );
  NOR2_X1 cor_maj_12_U21 ( .A1(cor_maj_12_n30), .A2(cor_maj_12_n31), .ZN(
        cor_maj_12_n28) );
  NOR2_X1 cor_maj_12_U20 ( .A1(mul_port_c[7]), .A2(mul_port_c[8]), .ZN(
        cor_maj_12_n29) );
  NOR2_X1 cor_maj_12_U19 ( .A1(cor_maj_12_n28), .A2(cor_maj_12_n29), .ZN(
        cor_maj_12_n3) );
  AND2_X1 cor_maj_12_U18 ( .A1(cor_maj_12_n26), .A2(cor_maj_12_n27), .ZN(
        cor_maj_12_n24) );
  NAND2_X1 cor_maj_12_U17 ( .A1(cor_maj_12_n24), .A2(cor_maj_12_n25), .ZN(
        cor_maj_12_n5) );
  NAND2_X1 cor_maj_12_U16 ( .A1(cor_maj_12_n22), .A2(cor_maj_12_n23), .ZN(
        cor_maj_12_n18) );
  OR2_X1 cor_maj_12_U15 ( .A1(cor_maj_12_n20), .A2(cor_maj_12_n21), .ZN(
        cor_maj_12_n19) );
  NAND2_X1 cor_maj_12_U14 ( .A1(cor_maj_12_n18), .A2(cor_maj_12_n19), .ZN(
        cor_maj_12_n14) );
  NAND2_X1 cor_maj_12_U13 ( .A1(cor_maj_12_n16), .A2(cor_maj_12_n17), .ZN(
        cor_maj_12_n15) );
  NOR2_X1 cor_maj_12_U12 ( .A1(cor_maj_12_n14), .A2(cor_maj_12_n15), .ZN(
        cor_maj_12_n12) );
  INV_X1 cor_maj_12_U11 ( .A(mul_port_c[9]), .ZN(cor_maj_12_n13) );
  NOR2_X1 cor_maj_12_U10 ( .A1(cor_maj_12_n12), .A2(cor_maj_12_n13), .ZN(
        cor_maj_12_n10) );
  NOR2_X1 cor_maj_12_U9 ( .A1(cor_maj_12_n10), .A2(cor_maj_12_n11), .ZN(
        cor_maj_12_n8) );
  INV_X1 cor_maj_12_U8 ( .A(mul_port_c[7]), .ZN(cor_maj_12_n9) );
  NOR2_X1 cor_maj_12_U7 ( .A1(cor_maj_12_n8), .A2(cor_maj_12_n9), .ZN(
        cor_maj_12_n7) );
  NAND2_X1 cor_maj_12_U6 ( .A1(cor_maj_12_n7), .A2(mul_port_c[8]), .ZN(
        cor_maj_12_n6) );
  NAND2_X1 cor_maj_12_U5 ( .A1(cor_maj_12_n5), .A2(cor_maj_12_n6), .ZN(
        cor_maj_12_n4) );
  NOR2_X1 cor_maj_12_U4 ( .A1(cor_maj_12_n3), .A2(cor_maj_12_n4), .ZN(
        cor_maj_12_n2) );
  NAND2_X1 cor_maj_12_U3 ( .A1(cor_maj_12_n1), .A2(cor_maj_12_n2), .ZN(
        port_c[1]) );
  AND2_X1 cor_maj_13_U70 ( .A1(mul_port_c[2]), .A2(mul_port_c[1]), .ZN(
        cor_maj_13_n27) );
  OR2_X1 cor_maj_13_U69 ( .A1(mul_port_c[0]), .A2(mul_port_c[10]), .ZN(
        cor_maj_13_n53) );
  NAND2_X1 cor_maj_13_U68 ( .A1(cor_maj_13_n27), .A2(cor_maj_13_n53), .ZN(
        cor_maj_13_n66) );
  NAND2_X1 cor_maj_13_U67 ( .A1(mul_port_c[10]), .A2(mul_port_c[0]), .ZN(
        cor_maj_13_n62) );
  INV_X1 cor_maj_13_U66 ( .A(cor_maj_13_n62), .ZN(cor_maj_13_n25) );
  OR2_X1 cor_maj_13_U65 ( .A1(mul_port_c[1]), .A2(mul_port_c[2]), .ZN(
        cor_maj_13_n52) );
  NAND2_X1 cor_maj_13_U64 ( .A1(cor_maj_13_n25), .A2(cor_maj_13_n52), .ZN(
        cor_maj_13_n67) );
  AND2_X1 cor_maj_13_U63 ( .A1(cor_maj_13_n66), .A2(cor_maj_13_n67), .ZN(
        cor_maj_13_n16) );
  AND2_X1 cor_maj_13_U62 ( .A1(mul_port_c[6]), .A2(mul_port_c[5]), .ZN(
        cor_maj_13_n59) );
  OR2_X1 cor_maj_13_U61 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_13_n57) );
  NAND2_X1 cor_maj_13_U60 ( .A1(cor_maj_13_n59), .A2(cor_maj_13_n57), .ZN(
        cor_maj_13_n64) );
  AND2_X1 cor_maj_13_U59 ( .A1(mul_port_c[4]), .A2(mul_port_c[3]), .ZN(
        cor_maj_13_n58) );
  OR2_X1 cor_maj_13_U58 ( .A1(mul_port_c[5]), .A2(mul_port_c[6]), .ZN(
        cor_maj_13_n56) );
  NAND2_X1 cor_maj_13_U57 ( .A1(cor_maj_13_n58), .A2(cor_maj_13_n56), .ZN(
        cor_maj_13_n65) );
  AND2_X1 cor_maj_13_U56 ( .A1(cor_maj_13_n64), .A2(cor_maj_13_n65), .ZN(
        cor_maj_13_n17) );
  NOR2_X1 cor_maj_13_U55 ( .A1(cor_maj_13_n16), .A2(cor_maj_13_n17), .ZN(
        cor_maj_13_n42) );
  NOR2_X1 cor_maj_13_U54 ( .A1(cor_maj_13_n56), .A2(cor_maj_13_n57), .ZN(
        cor_maj_13_n41) );
  INV_X1 cor_maj_13_U53 ( .A(cor_maj_13_n41), .ZN(cor_maj_13_n22) );
  NAND2_X1 cor_maj_13_U52 ( .A1(cor_maj_13_n27), .A2(cor_maj_13_n22), .ZN(
        cor_maj_13_n63) );
  NOR2_X1 cor_maj_13_U51 ( .A1(cor_maj_13_n62), .A2(cor_maj_13_n63), .ZN(
        cor_maj_13_n60) );
  NOR2_X1 cor_maj_13_U50 ( .A1(cor_maj_13_n52), .A2(cor_maj_13_n53), .ZN(
        cor_maj_13_n20) );
  NAND2_X1 cor_maj_13_U49 ( .A1(cor_maj_13_n58), .A2(cor_maj_13_n59), .ZN(
        cor_maj_13_n37) );
  NOR2_X1 cor_maj_13_U48 ( .A1(cor_maj_13_n20), .A2(cor_maj_13_n37), .ZN(
        cor_maj_13_n61) );
  NOR2_X1 cor_maj_13_U47 ( .A1(cor_maj_13_n60), .A2(cor_maj_13_n61), .ZN(
        cor_maj_13_n46) );
  NOR2_X1 cor_maj_13_U46 ( .A1(cor_maj_13_n58), .A2(cor_maj_13_n59), .ZN(
        cor_maj_13_n54) );
  NAND2_X1 cor_maj_13_U45 ( .A1(cor_maj_13_n56), .A2(cor_maj_13_n57), .ZN(
        cor_maj_13_n55) );
  NAND2_X1 cor_maj_13_U44 ( .A1(cor_maj_13_n54), .A2(cor_maj_13_n55), .ZN(
        cor_maj_13_n26) );
  INV_X1 cor_maj_13_U43 ( .A(cor_maj_13_n26), .ZN(cor_maj_13_n21) );
  NOR2_X1 cor_maj_13_U42 ( .A1(cor_maj_13_n21), .A2(cor_maj_13_n16), .ZN(
        cor_maj_13_n48) );
  NOR2_X1 cor_maj_13_U41 ( .A1(cor_maj_13_n25), .A2(cor_maj_13_n27), .ZN(
        cor_maj_13_n50) );
  NAND2_X1 cor_maj_13_U40 ( .A1(cor_maj_13_n52), .A2(cor_maj_13_n53), .ZN(
        cor_maj_13_n51) );
  NAND2_X1 cor_maj_13_U39 ( .A1(cor_maj_13_n50), .A2(cor_maj_13_n51), .ZN(
        cor_maj_13_n23) );
  INV_X1 cor_maj_13_U38 ( .A(cor_maj_13_n23), .ZN(cor_maj_13_n40) );
  NOR2_X1 cor_maj_13_U37 ( .A1(cor_maj_13_n40), .A2(cor_maj_13_n17), .ZN(
        cor_maj_13_n49) );
  NOR2_X1 cor_maj_13_U36 ( .A1(cor_maj_13_n48), .A2(cor_maj_13_n49), .ZN(
        cor_maj_13_n47) );
  NAND2_X1 cor_maj_13_U35 ( .A1(cor_maj_13_n46), .A2(cor_maj_13_n47), .ZN(
        cor_maj_13_n31) );
  NAND2_X1 cor_maj_13_U34 ( .A1(mul_port_c[9]), .A2(cor_maj_13_n31), .ZN(
        cor_maj_13_n44) );
  OR2_X1 cor_maj_13_U33 ( .A1(cor_maj_13_n37), .A2(cor_maj_13_n40), .ZN(
        cor_maj_13_n45) );
  NAND2_X1 cor_maj_13_U32 ( .A1(cor_maj_13_n44), .A2(cor_maj_13_n45), .ZN(
        cor_maj_13_n43) );
  NOR2_X1 cor_maj_13_U31 ( .A1(cor_maj_13_n42), .A2(cor_maj_13_n43), .ZN(
        cor_maj_13_n1) );
  NOR2_X1 cor_maj_13_U30 ( .A1(cor_maj_13_n16), .A2(cor_maj_13_n41), .ZN(
        cor_maj_13_n38) );
  NOR2_X1 cor_maj_13_U29 ( .A1(cor_maj_13_n40), .A2(cor_maj_13_n21), .ZN(
        cor_maj_13_n39) );
  NOR2_X1 cor_maj_13_U28 ( .A1(cor_maj_13_n38), .A2(cor_maj_13_n39), .ZN(
        cor_maj_13_n32) );
  NOR2_X1 cor_maj_13_U27 ( .A1(cor_maj_13_n17), .A2(cor_maj_13_n20), .ZN(
        cor_maj_13_n34) );
  NAND2_X1 cor_maj_13_U26 ( .A1(cor_maj_13_n25), .A2(cor_maj_13_n27), .ZN(
        cor_maj_13_n36) );
  NAND2_X1 cor_maj_13_U25 ( .A1(cor_maj_13_n36), .A2(cor_maj_13_n37), .ZN(
        cor_maj_13_n35) );
  NOR2_X1 cor_maj_13_U24 ( .A1(cor_maj_13_n34), .A2(cor_maj_13_n35), .ZN(
        cor_maj_13_n33) );
  NAND2_X1 cor_maj_13_U23 ( .A1(cor_maj_13_n32), .A2(cor_maj_13_n33), .ZN(
        cor_maj_13_n11) );
  AND2_X1 cor_maj_13_U22 ( .A1(cor_maj_13_n11), .A2(mul_port_c[9]), .ZN(
        cor_maj_13_n30) );
  NOR2_X1 cor_maj_13_U21 ( .A1(cor_maj_13_n30), .A2(cor_maj_13_n31), .ZN(
        cor_maj_13_n28) );
  NOR2_X1 cor_maj_13_U20 ( .A1(mul_port_c[7]), .A2(mul_port_c[8]), .ZN(
        cor_maj_13_n29) );
  NOR2_X1 cor_maj_13_U19 ( .A1(cor_maj_13_n28), .A2(cor_maj_13_n29), .ZN(
        cor_maj_13_n3) );
  AND2_X1 cor_maj_13_U18 ( .A1(cor_maj_13_n26), .A2(cor_maj_13_n27), .ZN(
        cor_maj_13_n24) );
  NAND2_X1 cor_maj_13_U17 ( .A1(cor_maj_13_n24), .A2(cor_maj_13_n25), .ZN(
        cor_maj_13_n5) );
  NAND2_X1 cor_maj_13_U16 ( .A1(cor_maj_13_n22), .A2(cor_maj_13_n23), .ZN(
        cor_maj_13_n18) );
  OR2_X1 cor_maj_13_U15 ( .A1(cor_maj_13_n20), .A2(cor_maj_13_n21), .ZN(
        cor_maj_13_n19) );
  NAND2_X1 cor_maj_13_U14 ( .A1(cor_maj_13_n18), .A2(cor_maj_13_n19), .ZN(
        cor_maj_13_n14) );
  NAND2_X1 cor_maj_13_U13 ( .A1(cor_maj_13_n16), .A2(cor_maj_13_n17), .ZN(
        cor_maj_13_n15) );
  NOR2_X1 cor_maj_13_U12 ( .A1(cor_maj_13_n14), .A2(cor_maj_13_n15), .ZN(
        cor_maj_13_n12) );
  INV_X1 cor_maj_13_U11 ( .A(mul_port_c[9]), .ZN(cor_maj_13_n13) );
  NOR2_X1 cor_maj_13_U10 ( .A1(cor_maj_13_n12), .A2(cor_maj_13_n13), .ZN(
        cor_maj_13_n10) );
  NOR2_X1 cor_maj_13_U9 ( .A1(cor_maj_13_n10), .A2(cor_maj_13_n11), .ZN(
        cor_maj_13_n8) );
  INV_X1 cor_maj_13_U8 ( .A(mul_port_c[7]), .ZN(cor_maj_13_n9) );
  NOR2_X1 cor_maj_13_U7 ( .A1(cor_maj_13_n8), .A2(cor_maj_13_n9), .ZN(
        cor_maj_13_n7) );
  NAND2_X1 cor_maj_13_U6 ( .A1(cor_maj_13_n7), .A2(mul_port_c[8]), .ZN(
        cor_maj_13_n6) );
  NAND2_X1 cor_maj_13_U5 ( .A1(cor_maj_13_n5), .A2(cor_maj_13_n6), .ZN(
        cor_maj_13_n4) );
  NOR2_X1 cor_maj_13_U4 ( .A1(cor_maj_13_n3), .A2(cor_maj_13_n4), .ZN(
        cor_maj_13_n2) );
  NAND2_X1 cor_maj_13_U3 ( .A1(cor_maj_13_n1), .A2(cor_maj_13_n2), .ZN(
        port_c[2]) );
  AND2_X1 cor_maj_14_U70 ( .A1(mul_port_c[2]), .A2(mul_port_c[1]), .ZN(
        cor_maj_14_n27) );
  OR2_X1 cor_maj_14_U69 ( .A1(mul_port_c[0]), .A2(mul_port_c[10]), .ZN(
        cor_maj_14_n53) );
  NAND2_X1 cor_maj_14_U68 ( .A1(cor_maj_14_n27), .A2(cor_maj_14_n53), .ZN(
        cor_maj_14_n66) );
  NAND2_X1 cor_maj_14_U67 ( .A1(mul_port_c[10]), .A2(mul_port_c[0]), .ZN(
        cor_maj_14_n62) );
  INV_X1 cor_maj_14_U66 ( .A(cor_maj_14_n62), .ZN(cor_maj_14_n25) );
  OR2_X1 cor_maj_14_U65 ( .A1(mul_port_c[1]), .A2(mul_port_c[2]), .ZN(
        cor_maj_14_n52) );
  NAND2_X1 cor_maj_14_U64 ( .A1(cor_maj_14_n25), .A2(cor_maj_14_n52), .ZN(
        cor_maj_14_n67) );
  AND2_X1 cor_maj_14_U63 ( .A1(cor_maj_14_n66), .A2(cor_maj_14_n67), .ZN(
        cor_maj_14_n16) );
  AND2_X1 cor_maj_14_U62 ( .A1(mul_port_c[6]), .A2(mul_port_c[5]), .ZN(
        cor_maj_14_n59) );
  OR2_X1 cor_maj_14_U61 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_14_n57) );
  NAND2_X1 cor_maj_14_U60 ( .A1(cor_maj_14_n59), .A2(cor_maj_14_n57), .ZN(
        cor_maj_14_n64) );
  AND2_X1 cor_maj_14_U59 ( .A1(mul_port_c[4]), .A2(mul_port_c[3]), .ZN(
        cor_maj_14_n58) );
  OR2_X1 cor_maj_14_U58 ( .A1(mul_port_c[5]), .A2(mul_port_c[6]), .ZN(
        cor_maj_14_n56) );
  NAND2_X1 cor_maj_14_U57 ( .A1(cor_maj_14_n58), .A2(cor_maj_14_n56), .ZN(
        cor_maj_14_n65) );
  AND2_X1 cor_maj_14_U56 ( .A1(cor_maj_14_n64), .A2(cor_maj_14_n65), .ZN(
        cor_maj_14_n17) );
  NOR2_X1 cor_maj_14_U55 ( .A1(cor_maj_14_n16), .A2(cor_maj_14_n17), .ZN(
        cor_maj_14_n42) );
  NOR2_X1 cor_maj_14_U54 ( .A1(cor_maj_14_n56), .A2(cor_maj_14_n57), .ZN(
        cor_maj_14_n41) );
  INV_X1 cor_maj_14_U53 ( .A(cor_maj_14_n41), .ZN(cor_maj_14_n22) );
  NAND2_X1 cor_maj_14_U52 ( .A1(cor_maj_14_n27), .A2(cor_maj_14_n22), .ZN(
        cor_maj_14_n63) );
  NOR2_X1 cor_maj_14_U51 ( .A1(cor_maj_14_n62), .A2(cor_maj_14_n63), .ZN(
        cor_maj_14_n60) );
  NOR2_X1 cor_maj_14_U50 ( .A1(cor_maj_14_n52), .A2(cor_maj_14_n53), .ZN(
        cor_maj_14_n20) );
  NAND2_X1 cor_maj_14_U49 ( .A1(cor_maj_14_n58), .A2(cor_maj_14_n59), .ZN(
        cor_maj_14_n37) );
  NOR2_X1 cor_maj_14_U48 ( .A1(cor_maj_14_n20), .A2(cor_maj_14_n37), .ZN(
        cor_maj_14_n61) );
  NOR2_X1 cor_maj_14_U47 ( .A1(cor_maj_14_n60), .A2(cor_maj_14_n61), .ZN(
        cor_maj_14_n46) );
  NOR2_X1 cor_maj_14_U46 ( .A1(cor_maj_14_n58), .A2(cor_maj_14_n59), .ZN(
        cor_maj_14_n54) );
  NAND2_X1 cor_maj_14_U45 ( .A1(cor_maj_14_n56), .A2(cor_maj_14_n57), .ZN(
        cor_maj_14_n55) );
  NAND2_X1 cor_maj_14_U44 ( .A1(cor_maj_14_n54), .A2(cor_maj_14_n55), .ZN(
        cor_maj_14_n26) );
  INV_X1 cor_maj_14_U43 ( .A(cor_maj_14_n26), .ZN(cor_maj_14_n21) );
  NOR2_X1 cor_maj_14_U42 ( .A1(cor_maj_14_n21), .A2(cor_maj_14_n16), .ZN(
        cor_maj_14_n48) );
  NOR2_X1 cor_maj_14_U41 ( .A1(cor_maj_14_n25), .A2(cor_maj_14_n27), .ZN(
        cor_maj_14_n50) );
  NAND2_X1 cor_maj_14_U40 ( .A1(cor_maj_14_n52), .A2(cor_maj_14_n53), .ZN(
        cor_maj_14_n51) );
  NAND2_X1 cor_maj_14_U39 ( .A1(cor_maj_14_n50), .A2(cor_maj_14_n51), .ZN(
        cor_maj_14_n23) );
  INV_X1 cor_maj_14_U38 ( .A(cor_maj_14_n23), .ZN(cor_maj_14_n40) );
  NOR2_X1 cor_maj_14_U37 ( .A1(cor_maj_14_n40), .A2(cor_maj_14_n17), .ZN(
        cor_maj_14_n49) );
  NOR2_X1 cor_maj_14_U36 ( .A1(cor_maj_14_n48), .A2(cor_maj_14_n49), .ZN(
        cor_maj_14_n47) );
  NAND2_X1 cor_maj_14_U35 ( .A1(cor_maj_14_n46), .A2(cor_maj_14_n47), .ZN(
        cor_maj_14_n31) );
  NAND2_X1 cor_maj_14_U34 ( .A1(mul_port_c[9]), .A2(cor_maj_14_n31), .ZN(
        cor_maj_14_n44) );
  OR2_X1 cor_maj_14_U33 ( .A1(cor_maj_14_n37), .A2(cor_maj_14_n40), .ZN(
        cor_maj_14_n45) );
  NAND2_X1 cor_maj_14_U32 ( .A1(cor_maj_14_n44), .A2(cor_maj_14_n45), .ZN(
        cor_maj_14_n43) );
  NOR2_X1 cor_maj_14_U31 ( .A1(cor_maj_14_n42), .A2(cor_maj_14_n43), .ZN(
        cor_maj_14_n1) );
  NOR2_X1 cor_maj_14_U30 ( .A1(cor_maj_14_n16), .A2(cor_maj_14_n41), .ZN(
        cor_maj_14_n38) );
  NOR2_X1 cor_maj_14_U29 ( .A1(cor_maj_14_n40), .A2(cor_maj_14_n21), .ZN(
        cor_maj_14_n39) );
  NOR2_X1 cor_maj_14_U28 ( .A1(cor_maj_14_n38), .A2(cor_maj_14_n39), .ZN(
        cor_maj_14_n32) );
  NOR2_X1 cor_maj_14_U27 ( .A1(cor_maj_14_n17), .A2(cor_maj_14_n20), .ZN(
        cor_maj_14_n34) );
  NAND2_X1 cor_maj_14_U26 ( .A1(cor_maj_14_n25), .A2(cor_maj_14_n27), .ZN(
        cor_maj_14_n36) );
  NAND2_X1 cor_maj_14_U25 ( .A1(cor_maj_14_n36), .A2(cor_maj_14_n37), .ZN(
        cor_maj_14_n35) );
  NOR2_X1 cor_maj_14_U24 ( .A1(cor_maj_14_n34), .A2(cor_maj_14_n35), .ZN(
        cor_maj_14_n33) );
  NAND2_X1 cor_maj_14_U23 ( .A1(cor_maj_14_n32), .A2(cor_maj_14_n33), .ZN(
        cor_maj_14_n11) );
  AND2_X1 cor_maj_14_U22 ( .A1(cor_maj_14_n11), .A2(mul_port_c[9]), .ZN(
        cor_maj_14_n30) );
  NOR2_X1 cor_maj_14_U21 ( .A1(cor_maj_14_n30), .A2(cor_maj_14_n31), .ZN(
        cor_maj_14_n28) );
  NOR2_X1 cor_maj_14_U20 ( .A1(mul_port_c[7]), .A2(mul_port_c[8]), .ZN(
        cor_maj_14_n29) );
  NOR2_X1 cor_maj_14_U19 ( .A1(cor_maj_14_n28), .A2(cor_maj_14_n29), .ZN(
        cor_maj_14_n3) );
  AND2_X1 cor_maj_14_U18 ( .A1(cor_maj_14_n26), .A2(cor_maj_14_n27), .ZN(
        cor_maj_14_n24) );
  NAND2_X1 cor_maj_14_U17 ( .A1(cor_maj_14_n24), .A2(cor_maj_14_n25), .ZN(
        cor_maj_14_n5) );
  NAND2_X1 cor_maj_14_U16 ( .A1(cor_maj_14_n22), .A2(cor_maj_14_n23), .ZN(
        cor_maj_14_n18) );
  OR2_X1 cor_maj_14_U15 ( .A1(cor_maj_14_n20), .A2(cor_maj_14_n21), .ZN(
        cor_maj_14_n19) );
  NAND2_X1 cor_maj_14_U14 ( .A1(cor_maj_14_n18), .A2(cor_maj_14_n19), .ZN(
        cor_maj_14_n14) );
  NAND2_X1 cor_maj_14_U13 ( .A1(cor_maj_14_n16), .A2(cor_maj_14_n17), .ZN(
        cor_maj_14_n15) );
  NOR2_X1 cor_maj_14_U12 ( .A1(cor_maj_14_n14), .A2(cor_maj_14_n15), .ZN(
        cor_maj_14_n12) );
  INV_X1 cor_maj_14_U11 ( .A(mul_port_c[9]), .ZN(cor_maj_14_n13) );
  NOR2_X1 cor_maj_14_U10 ( .A1(cor_maj_14_n12), .A2(cor_maj_14_n13), .ZN(
        cor_maj_14_n10) );
  NOR2_X1 cor_maj_14_U9 ( .A1(cor_maj_14_n10), .A2(cor_maj_14_n11), .ZN(
        cor_maj_14_n8) );
  INV_X1 cor_maj_14_U8 ( .A(mul_port_c[7]), .ZN(cor_maj_14_n9) );
  NOR2_X1 cor_maj_14_U7 ( .A1(cor_maj_14_n8), .A2(cor_maj_14_n9), .ZN(
        cor_maj_14_n7) );
  NAND2_X1 cor_maj_14_U6 ( .A1(cor_maj_14_n7), .A2(mul_port_c[8]), .ZN(
        cor_maj_14_n6) );
  NAND2_X1 cor_maj_14_U5 ( .A1(cor_maj_14_n5), .A2(cor_maj_14_n6), .ZN(
        cor_maj_14_n4) );
  NOR2_X1 cor_maj_14_U4 ( .A1(cor_maj_14_n3), .A2(cor_maj_14_n4), .ZN(
        cor_maj_14_n2) );
  NAND2_X1 cor_maj_14_U3 ( .A1(cor_maj_14_n1), .A2(cor_maj_14_n2), .ZN(
        port_c[3]) );
  AND2_X1 cor_maj_15_U70 ( .A1(mul_port_c[2]), .A2(mul_port_c[1]), .ZN(
        cor_maj_15_n27) );
  OR2_X1 cor_maj_15_U69 ( .A1(mul_port_c[0]), .A2(mul_port_c[10]), .ZN(
        cor_maj_15_n53) );
  NAND2_X1 cor_maj_15_U68 ( .A1(cor_maj_15_n27), .A2(cor_maj_15_n53), .ZN(
        cor_maj_15_n66) );
  NAND2_X1 cor_maj_15_U67 ( .A1(mul_port_c[10]), .A2(mul_port_c[0]), .ZN(
        cor_maj_15_n62) );
  INV_X1 cor_maj_15_U66 ( .A(cor_maj_15_n62), .ZN(cor_maj_15_n25) );
  OR2_X1 cor_maj_15_U65 ( .A1(mul_port_c[1]), .A2(mul_port_c[2]), .ZN(
        cor_maj_15_n52) );
  NAND2_X1 cor_maj_15_U64 ( .A1(cor_maj_15_n25), .A2(cor_maj_15_n52), .ZN(
        cor_maj_15_n67) );
  AND2_X1 cor_maj_15_U63 ( .A1(cor_maj_15_n66), .A2(cor_maj_15_n67), .ZN(
        cor_maj_15_n16) );
  AND2_X1 cor_maj_15_U62 ( .A1(mul_port_c[6]), .A2(mul_port_c[5]), .ZN(
        cor_maj_15_n59) );
  OR2_X1 cor_maj_15_U61 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_15_n57) );
  NAND2_X1 cor_maj_15_U60 ( .A1(cor_maj_15_n59), .A2(cor_maj_15_n57), .ZN(
        cor_maj_15_n64) );
  AND2_X1 cor_maj_15_U59 ( .A1(mul_port_c[4]), .A2(mul_port_c[3]), .ZN(
        cor_maj_15_n58) );
  OR2_X1 cor_maj_15_U58 ( .A1(mul_port_c[5]), .A2(mul_port_c[6]), .ZN(
        cor_maj_15_n56) );
  NAND2_X1 cor_maj_15_U57 ( .A1(cor_maj_15_n58), .A2(cor_maj_15_n56), .ZN(
        cor_maj_15_n65) );
  AND2_X1 cor_maj_15_U56 ( .A1(cor_maj_15_n64), .A2(cor_maj_15_n65), .ZN(
        cor_maj_15_n17) );
  NOR2_X1 cor_maj_15_U55 ( .A1(cor_maj_15_n16), .A2(cor_maj_15_n17), .ZN(
        cor_maj_15_n42) );
  NOR2_X1 cor_maj_15_U54 ( .A1(cor_maj_15_n56), .A2(cor_maj_15_n57), .ZN(
        cor_maj_15_n41) );
  INV_X1 cor_maj_15_U53 ( .A(cor_maj_15_n41), .ZN(cor_maj_15_n22) );
  NAND2_X1 cor_maj_15_U52 ( .A1(cor_maj_15_n27), .A2(cor_maj_15_n22), .ZN(
        cor_maj_15_n63) );
  NOR2_X1 cor_maj_15_U51 ( .A1(cor_maj_15_n62), .A2(cor_maj_15_n63), .ZN(
        cor_maj_15_n60) );
  NOR2_X1 cor_maj_15_U50 ( .A1(cor_maj_15_n52), .A2(cor_maj_15_n53), .ZN(
        cor_maj_15_n20) );
  NAND2_X1 cor_maj_15_U49 ( .A1(cor_maj_15_n58), .A2(cor_maj_15_n59), .ZN(
        cor_maj_15_n37) );
  NOR2_X1 cor_maj_15_U48 ( .A1(cor_maj_15_n20), .A2(cor_maj_15_n37), .ZN(
        cor_maj_15_n61) );
  NOR2_X1 cor_maj_15_U47 ( .A1(cor_maj_15_n60), .A2(cor_maj_15_n61), .ZN(
        cor_maj_15_n46) );
  NOR2_X1 cor_maj_15_U46 ( .A1(cor_maj_15_n58), .A2(cor_maj_15_n59), .ZN(
        cor_maj_15_n54) );
  NAND2_X1 cor_maj_15_U45 ( .A1(cor_maj_15_n56), .A2(cor_maj_15_n57), .ZN(
        cor_maj_15_n55) );
  NAND2_X1 cor_maj_15_U44 ( .A1(cor_maj_15_n54), .A2(cor_maj_15_n55), .ZN(
        cor_maj_15_n26) );
  INV_X1 cor_maj_15_U43 ( .A(cor_maj_15_n26), .ZN(cor_maj_15_n21) );
  NOR2_X1 cor_maj_15_U42 ( .A1(cor_maj_15_n21), .A2(cor_maj_15_n16), .ZN(
        cor_maj_15_n48) );
  NOR2_X1 cor_maj_15_U41 ( .A1(cor_maj_15_n25), .A2(cor_maj_15_n27), .ZN(
        cor_maj_15_n50) );
  NAND2_X1 cor_maj_15_U40 ( .A1(cor_maj_15_n52), .A2(cor_maj_15_n53), .ZN(
        cor_maj_15_n51) );
  NAND2_X1 cor_maj_15_U39 ( .A1(cor_maj_15_n50), .A2(cor_maj_15_n51), .ZN(
        cor_maj_15_n23) );
  INV_X1 cor_maj_15_U38 ( .A(cor_maj_15_n23), .ZN(cor_maj_15_n40) );
  NOR2_X1 cor_maj_15_U37 ( .A1(cor_maj_15_n40), .A2(cor_maj_15_n17), .ZN(
        cor_maj_15_n49) );
  NOR2_X1 cor_maj_15_U36 ( .A1(cor_maj_15_n48), .A2(cor_maj_15_n49), .ZN(
        cor_maj_15_n47) );
  NAND2_X1 cor_maj_15_U35 ( .A1(cor_maj_15_n46), .A2(cor_maj_15_n47), .ZN(
        cor_maj_15_n31) );
  NAND2_X1 cor_maj_15_U34 ( .A1(mul_port_c[9]), .A2(cor_maj_15_n31), .ZN(
        cor_maj_15_n44) );
  OR2_X1 cor_maj_15_U33 ( .A1(cor_maj_15_n37), .A2(cor_maj_15_n40), .ZN(
        cor_maj_15_n45) );
  NAND2_X1 cor_maj_15_U32 ( .A1(cor_maj_15_n44), .A2(cor_maj_15_n45), .ZN(
        cor_maj_15_n43) );
  NOR2_X1 cor_maj_15_U31 ( .A1(cor_maj_15_n42), .A2(cor_maj_15_n43), .ZN(
        cor_maj_15_n1) );
  NOR2_X1 cor_maj_15_U30 ( .A1(cor_maj_15_n16), .A2(cor_maj_15_n41), .ZN(
        cor_maj_15_n38) );
  NOR2_X1 cor_maj_15_U29 ( .A1(cor_maj_15_n40), .A2(cor_maj_15_n21), .ZN(
        cor_maj_15_n39) );
  NOR2_X1 cor_maj_15_U28 ( .A1(cor_maj_15_n38), .A2(cor_maj_15_n39), .ZN(
        cor_maj_15_n32) );
  NOR2_X1 cor_maj_15_U27 ( .A1(cor_maj_15_n17), .A2(cor_maj_15_n20), .ZN(
        cor_maj_15_n34) );
  NAND2_X1 cor_maj_15_U26 ( .A1(cor_maj_15_n25), .A2(cor_maj_15_n27), .ZN(
        cor_maj_15_n36) );
  NAND2_X1 cor_maj_15_U25 ( .A1(cor_maj_15_n36), .A2(cor_maj_15_n37), .ZN(
        cor_maj_15_n35) );
  NOR2_X1 cor_maj_15_U24 ( .A1(cor_maj_15_n34), .A2(cor_maj_15_n35), .ZN(
        cor_maj_15_n33) );
  NAND2_X1 cor_maj_15_U23 ( .A1(cor_maj_15_n32), .A2(cor_maj_15_n33), .ZN(
        cor_maj_15_n11) );
  AND2_X1 cor_maj_15_U22 ( .A1(cor_maj_15_n11), .A2(mul_port_c[9]), .ZN(
        cor_maj_15_n30) );
  NOR2_X1 cor_maj_15_U21 ( .A1(cor_maj_15_n30), .A2(cor_maj_15_n31), .ZN(
        cor_maj_15_n28) );
  NOR2_X1 cor_maj_15_U20 ( .A1(mul_port_c[7]), .A2(mul_port_c[8]), .ZN(
        cor_maj_15_n29) );
  NOR2_X1 cor_maj_15_U19 ( .A1(cor_maj_15_n28), .A2(cor_maj_15_n29), .ZN(
        cor_maj_15_n3) );
  AND2_X1 cor_maj_15_U18 ( .A1(cor_maj_15_n26), .A2(cor_maj_15_n27), .ZN(
        cor_maj_15_n24) );
  NAND2_X1 cor_maj_15_U17 ( .A1(cor_maj_15_n24), .A2(cor_maj_15_n25), .ZN(
        cor_maj_15_n5) );
  NAND2_X1 cor_maj_15_U16 ( .A1(cor_maj_15_n22), .A2(cor_maj_15_n23), .ZN(
        cor_maj_15_n18) );
  OR2_X1 cor_maj_15_U15 ( .A1(cor_maj_15_n20), .A2(cor_maj_15_n21), .ZN(
        cor_maj_15_n19) );
  NAND2_X1 cor_maj_15_U14 ( .A1(cor_maj_15_n18), .A2(cor_maj_15_n19), .ZN(
        cor_maj_15_n14) );
  NAND2_X1 cor_maj_15_U13 ( .A1(cor_maj_15_n16), .A2(cor_maj_15_n17), .ZN(
        cor_maj_15_n15) );
  NOR2_X1 cor_maj_15_U12 ( .A1(cor_maj_15_n14), .A2(cor_maj_15_n15), .ZN(
        cor_maj_15_n12) );
  INV_X1 cor_maj_15_U11 ( .A(mul_port_c[9]), .ZN(cor_maj_15_n13) );
  NOR2_X1 cor_maj_15_U10 ( .A1(cor_maj_15_n12), .A2(cor_maj_15_n13), .ZN(
        cor_maj_15_n10) );
  NOR2_X1 cor_maj_15_U9 ( .A1(cor_maj_15_n10), .A2(cor_maj_15_n11), .ZN(
        cor_maj_15_n8) );
  INV_X1 cor_maj_15_U8 ( .A(mul_port_c[7]), .ZN(cor_maj_15_n9) );
  NOR2_X1 cor_maj_15_U7 ( .A1(cor_maj_15_n8), .A2(cor_maj_15_n9), .ZN(
        cor_maj_15_n7) );
  NAND2_X1 cor_maj_15_U6 ( .A1(cor_maj_15_n7), .A2(mul_port_c[8]), .ZN(
        cor_maj_15_n6) );
  NAND2_X1 cor_maj_15_U5 ( .A1(cor_maj_15_n5), .A2(cor_maj_15_n6), .ZN(
        cor_maj_15_n4) );
  NOR2_X1 cor_maj_15_U4 ( .A1(cor_maj_15_n3), .A2(cor_maj_15_n4), .ZN(
        cor_maj_15_n2) );
  NAND2_X1 cor_maj_15_U3 ( .A1(cor_maj_15_n1), .A2(cor_maj_15_n2), .ZN(
        port_c[4]) );
  AND2_X1 cor_maj_16_U70 ( .A1(mul_port_c[2]), .A2(mul_port_c[1]), .ZN(
        cor_maj_16_n27) );
  OR2_X1 cor_maj_16_U69 ( .A1(mul_port_c[0]), .A2(mul_port_c[10]), .ZN(
        cor_maj_16_n53) );
  NAND2_X1 cor_maj_16_U68 ( .A1(cor_maj_16_n27), .A2(cor_maj_16_n53), .ZN(
        cor_maj_16_n66) );
  NAND2_X1 cor_maj_16_U67 ( .A1(mul_port_c[10]), .A2(mul_port_c[0]), .ZN(
        cor_maj_16_n62) );
  INV_X1 cor_maj_16_U66 ( .A(cor_maj_16_n62), .ZN(cor_maj_16_n25) );
  OR2_X1 cor_maj_16_U65 ( .A1(mul_port_c[1]), .A2(mul_port_c[2]), .ZN(
        cor_maj_16_n52) );
  NAND2_X1 cor_maj_16_U64 ( .A1(cor_maj_16_n25), .A2(cor_maj_16_n52), .ZN(
        cor_maj_16_n67) );
  AND2_X1 cor_maj_16_U63 ( .A1(cor_maj_16_n66), .A2(cor_maj_16_n67), .ZN(
        cor_maj_16_n16) );
  AND2_X1 cor_maj_16_U62 ( .A1(mul_port_c[6]), .A2(mul_port_c[5]), .ZN(
        cor_maj_16_n59) );
  OR2_X1 cor_maj_16_U61 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_16_n57) );
  NAND2_X1 cor_maj_16_U60 ( .A1(cor_maj_16_n59), .A2(cor_maj_16_n57), .ZN(
        cor_maj_16_n64) );
  AND2_X1 cor_maj_16_U59 ( .A1(mul_port_c[4]), .A2(mul_port_c[3]), .ZN(
        cor_maj_16_n58) );
  OR2_X1 cor_maj_16_U58 ( .A1(mul_port_c[5]), .A2(mul_port_c[6]), .ZN(
        cor_maj_16_n56) );
  NAND2_X1 cor_maj_16_U57 ( .A1(cor_maj_16_n58), .A2(cor_maj_16_n56), .ZN(
        cor_maj_16_n65) );
  AND2_X1 cor_maj_16_U56 ( .A1(cor_maj_16_n64), .A2(cor_maj_16_n65), .ZN(
        cor_maj_16_n17) );
  NOR2_X1 cor_maj_16_U55 ( .A1(cor_maj_16_n16), .A2(cor_maj_16_n17), .ZN(
        cor_maj_16_n42) );
  NOR2_X1 cor_maj_16_U54 ( .A1(cor_maj_16_n56), .A2(cor_maj_16_n57), .ZN(
        cor_maj_16_n41) );
  INV_X1 cor_maj_16_U53 ( .A(cor_maj_16_n41), .ZN(cor_maj_16_n22) );
  NAND2_X1 cor_maj_16_U52 ( .A1(cor_maj_16_n27), .A2(cor_maj_16_n22), .ZN(
        cor_maj_16_n63) );
  NOR2_X1 cor_maj_16_U51 ( .A1(cor_maj_16_n62), .A2(cor_maj_16_n63), .ZN(
        cor_maj_16_n60) );
  NOR2_X1 cor_maj_16_U50 ( .A1(cor_maj_16_n52), .A2(cor_maj_16_n53), .ZN(
        cor_maj_16_n20) );
  NAND2_X1 cor_maj_16_U49 ( .A1(cor_maj_16_n58), .A2(cor_maj_16_n59), .ZN(
        cor_maj_16_n37) );
  NOR2_X1 cor_maj_16_U48 ( .A1(cor_maj_16_n20), .A2(cor_maj_16_n37), .ZN(
        cor_maj_16_n61) );
  NOR2_X1 cor_maj_16_U47 ( .A1(cor_maj_16_n60), .A2(cor_maj_16_n61), .ZN(
        cor_maj_16_n46) );
  NOR2_X1 cor_maj_16_U46 ( .A1(cor_maj_16_n58), .A2(cor_maj_16_n59), .ZN(
        cor_maj_16_n54) );
  NAND2_X1 cor_maj_16_U45 ( .A1(cor_maj_16_n56), .A2(cor_maj_16_n57), .ZN(
        cor_maj_16_n55) );
  NAND2_X1 cor_maj_16_U44 ( .A1(cor_maj_16_n54), .A2(cor_maj_16_n55), .ZN(
        cor_maj_16_n26) );
  INV_X1 cor_maj_16_U43 ( .A(cor_maj_16_n26), .ZN(cor_maj_16_n21) );
  NOR2_X1 cor_maj_16_U42 ( .A1(cor_maj_16_n21), .A2(cor_maj_16_n16), .ZN(
        cor_maj_16_n48) );
  NOR2_X1 cor_maj_16_U41 ( .A1(cor_maj_16_n25), .A2(cor_maj_16_n27), .ZN(
        cor_maj_16_n50) );
  NAND2_X1 cor_maj_16_U40 ( .A1(cor_maj_16_n52), .A2(cor_maj_16_n53), .ZN(
        cor_maj_16_n51) );
  NAND2_X1 cor_maj_16_U39 ( .A1(cor_maj_16_n50), .A2(cor_maj_16_n51), .ZN(
        cor_maj_16_n23) );
  INV_X1 cor_maj_16_U38 ( .A(cor_maj_16_n23), .ZN(cor_maj_16_n40) );
  NOR2_X1 cor_maj_16_U37 ( .A1(cor_maj_16_n40), .A2(cor_maj_16_n17), .ZN(
        cor_maj_16_n49) );
  NOR2_X1 cor_maj_16_U36 ( .A1(cor_maj_16_n48), .A2(cor_maj_16_n49), .ZN(
        cor_maj_16_n47) );
  NAND2_X1 cor_maj_16_U35 ( .A1(cor_maj_16_n46), .A2(cor_maj_16_n47), .ZN(
        cor_maj_16_n31) );
  NAND2_X1 cor_maj_16_U34 ( .A1(mul_port_c[9]), .A2(cor_maj_16_n31), .ZN(
        cor_maj_16_n44) );
  OR2_X1 cor_maj_16_U33 ( .A1(cor_maj_16_n37), .A2(cor_maj_16_n40), .ZN(
        cor_maj_16_n45) );
  NAND2_X1 cor_maj_16_U32 ( .A1(cor_maj_16_n44), .A2(cor_maj_16_n45), .ZN(
        cor_maj_16_n43) );
  NOR2_X1 cor_maj_16_U31 ( .A1(cor_maj_16_n42), .A2(cor_maj_16_n43), .ZN(
        cor_maj_16_n1) );
  NOR2_X1 cor_maj_16_U30 ( .A1(cor_maj_16_n16), .A2(cor_maj_16_n41), .ZN(
        cor_maj_16_n38) );
  NOR2_X1 cor_maj_16_U29 ( .A1(cor_maj_16_n40), .A2(cor_maj_16_n21), .ZN(
        cor_maj_16_n39) );
  NOR2_X1 cor_maj_16_U28 ( .A1(cor_maj_16_n38), .A2(cor_maj_16_n39), .ZN(
        cor_maj_16_n32) );
  NOR2_X1 cor_maj_16_U27 ( .A1(cor_maj_16_n17), .A2(cor_maj_16_n20), .ZN(
        cor_maj_16_n34) );
  NAND2_X1 cor_maj_16_U26 ( .A1(cor_maj_16_n25), .A2(cor_maj_16_n27), .ZN(
        cor_maj_16_n36) );
  NAND2_X1 cor_maj_16_U25 ( .A1(cor_maj_16_n36), .A2(cor_maj_16_n37), .ZN(
        cor_maj_16_n35) );
  NOR2_X1 cor_maj_16_U24 ( .A1(cor_maj_16_n34), .A2(cor_maj_16_n35), .ZN(
        cor_maj_16_n33) );
  NAND2_X1 cor_maj_16_U23 ( .A1(cor_maj_16_n32), .A2(cor_maj_16_n33), .ZN(
        cor_maj_16_n11) );
  AND2_X1 cor_maj_16_U22 ( .A1(cor_maj_16_n11), .A2(mul_port_c[9]), .ZN(
        cor_maj_16_n30) );
  NOR2_X1 cor_maj_16_U21 ( .A1(cor_maj_16_n30), .A2(cor_maj_16_n31), .ZN(
        cor_maj_16_n28) );
  NOR2_X1 cor_maj_16_U20 ( .A1(mul_port_c[7]), .A2(mul_port_c[8]), .ZN(
        cor_maj_16_n29) );
  NOR2_X1 cor_maj_16_U19 ( .A1(cor_maj_16_n28), .A2(cor_maj_16_n29), .ZN(
        cor_maj_16_n3) );
  AND2_X1 cor_maj_16_U18 ( .A1(cor_maj_16_n26), .A2(cor_maj_16_n27), .ZN(
        cor_maj_16_n24) );
  NAND2_X1 cor_maj_16_U17 ( .A1(cor_maj_16_n24), .A2(cor_maj_16_n25), .ZN(
        cor_maj_16_n5) );
  NAND2_X1 cor_maj_16_U16 ( .A1(cor_maj_16_n22), .A2(cor_maj_16_n23), .ZN(
        cor_maj_16_n18) );
  OR2_X1 cor_maj_16_U15 ( .A1(cor_maj_16_n20), .A2(cor_maj_16_n21), .ZN(
        cor_maj_16_n19) );
  NAND2_X1 cor_maj_16_U14 ( .A1(cor_maj_16_n18), .A2(cor_maj_16_n19), .ZN(
        cor_maj_16_n14) );
  NAND2_X1 cor_maj_16_U13 ( .A1(cor_maj_16_n16), .A2(cor_maj_16_n17), .ZN(
        cor_maj_16_n15) );
  NOR2_X1 cor_maj_16_U12 ( .A1(cor_maj_16_n14), .A2(cor_maj_16_n15), .ZN(
        cor_maj_16_n12) );
  INV_X1 cor_maj_16_U11 ( .A(mul_port_c[9]), .ZN(cor_maj_16_n13) );
  NOR2_X1 cor_maj_16_U10 ( .A1(cor_maj_16_n12), .A2(cor_maj_16_n13), .ZN(
        cor_maj_16_n10) );
  NOR2_X1 cor_maj_16_U9 ( .A1(cor_maj_16_n10), .A2(cor_maj_16_n11), .ZN(
        cor_maj_16_n8) );
  INV_X1 cor_maj_16_U8 ( .A(mul_port_c[7]), .ZN(cor_maj_16_n9) );
  NOR2_X1 cor_maj_16_U7 ( .A1(cor_maj_16_n8), .A2(cor_maj_16_n9), .ZN(
        cor_maj_16_n7) );
  NAND2_X1 cor_maj_16_U6 ( .A1(cor_maj_16_n7), .A2(mul_port_c[8]), .ZN(
        cor_maj_16_n6) );
  NAND2_X1 cor_maj_16_U5 ( .A1(cor_maj_16_n5), .A2(cor_maj_16_n6), .ZN(
        cor_maj_16_n4) );
  NOR2_X1 cor_maj_16_U4 ( .A1(cor_maj_16_n3), .A2(cor_maj_16_n4), .ZN(
        cor_maj_16_n2) );
  NAND2_X1 cor_maj_16_U3 ( .A1(cor_maj_16_n1), .A2(cor_maj_16_n2), .ZN(
        port_c[5]) );
  AND2_X1 cor_maj_17_U70 ( .A1(mul_port_c[2]), .A2(mul_port_c[1]), .ZN(
        cor_maj_17_n27) );
  OR2_X1 cor_maj_17_U69 ( .A1(mul_port_c[0]), .A2(mul_port_c[10]), .ZN(
        cor_maj_17_n53) );
  NAND2_X1 cor_maj_17_U68 ( .A1(cor_maj_17_n27), .A2(cor_maj_17_n53), .ZN(
        cor_maj_17_n66) );
  NAND2_X1 cor_maj_17_U67 ( .A1(mul_port_c[10]), .A2(mul_port_c[0]), .ZN(
        cor_maj_17_n62) );
  INV_X1 cor_maj_17_U66 ( .A(cor_maj_17_n62), .ZN(cor_maj_17_n25) );
  OR2_X1 cor_maj_17_U65 ( .A1(mul_port_c[1]), .A2(mul_port_c[2]), .ZN(
        cor_maj_17_n52) );
  NAND2_X1 cor_maj_17_U64 ( .A1(cor_maj_17_n25), .A2(cor_maj_17_n52), .ZN(
        cor_maj_17_n67) );
  AND2_X1 cor_maj_17_U63 ( .A1(cor_maj_17_n66), .A2(cor_maj_17_n67), .ZN(
        cor_maj_17_n16) );
  AND2_X1 cor_maj_17_U62 ( .A1(mul_port_c[6]), .A2(mul_port_c[5]), .ZN(
        cor_maj_17_n59) );
  OR2_X1 cor_maj_17_U61 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_17_n57) );
  NAND2_X1 cor_maj_17_U60 ( .A1(cor_maj_17_n59), .A2(cor_maj_17_n57), .ZN(
        cor_maj_17_n64) );
  AND2_X1 cor_maj_17_U59 ( .A1(mul_port_c[4]), .A2(mul_port_c[3]), .ZN(
        cor_maj_17_n58) );
  OR2_X1 cor_maj_17_U58 ( .A1(mul_port_c[5]), .A2(mul_port_c[6]), .ZN(
        cor_maj_17_n56) );
  NAND2_X1 cor_maj_17_U57 ( .A1(cor_maj_17_n58), .A2(cor_maj_17_n56), .ZN(
        cor_maj_17_n65) );
  AND2_X1 cor_maj_17_U56 ( .A1(cor_maj_17_n64), .A2(cor_maj_17_n65), .ZN(
        cor_maj_17_n17) );
  NOR2_X1 cor_maj_17_U55 ( .A1(cor_maj_17_n16), .A2(cor_maj_17_n17), .ZN(
        cor_maj_17_n42) );
  NOR2_X1 cor_maj_17_U54 ( .A1(cor_maj_17_n56), .A2(cor_maj_17_n57), .ZN(
        cor_maj_17_n41) );
  INV_X1 cor_maj_17_U53 ( .A(cor_maj_17_n41), .ZN(cor_maj_17_n22) );
  NAND2_X1 cor_maj_17_U52 ( .A1(cor_maj_17_n27), .A2(cor_maj_17_n22), .ZN(
        cor_maj_17_n63) );
  NOR2_X1 cor_maj_17_U51 ( .A1(cor_maj_17_n62), .A2(cor_maj_17_n63), .ZN(
        cor_maj_17_n60) );
  NOR2_X1 cor_maj_17_U50 ( .A1(cor_maj_17_n52), .A2(cor_maj_17_n53), .ZN(
        cor_maj_17_n20) );
  NAND2_X1 cor_maj_17_U49 ( .A1(cor_maj_17_n58), .A2(cor_maj_17_n59), .ZN(
        cor_maj_17_n37) );
  NOR2_X1 cor_maj_17_U48 ( .A1(cor_maj_17_n20), .A2(cor_maj_17_n37), .ZN(
        cor_maj_17_n61) );
  NOR2_X1 cor_maj_17_U47 ( .A1(cor_maj_17_n60), .A2(cor_maj_17_n61), .ZN(
        cor_maj_17_n46) );
  NOR2_X1 cor_maj_17_U46 ( .A1(cor_maj_17_n58), .A2(cor_maj_17_n59), .ZN(
        cor_maj_17_n54) );
  NAND2_X1 cor_maj_17_U45 ( .A1(cor_maj_17_n56), .A2(cor_maj_17_n57), .ZN(
        cor_maj_17_n55) );
  NAND2_X1 cor_maj_17_U44 ( .A1(cor_maj_17_n54), .A2(cor_maj_17_n55), .ZN(
        cor_maj_17_n26) );
  INV_X1 cor_maj_17_U43 ( .A(cor_maj_17_n26), .ZN(cor_maj_17_n21) );
  NOR2_X1 cor_maj_17_U42 ( .A1(cor_maj_17_n21), .A2(cor_maj_17_n16), .ZN(
        cor_maj_17_n48) );
  NOR2_X1 cor_maj_17_U41 ( .A1(cor_maj_17_n25), .A2(cor_maj_17_n27), .ZN(
        cor_maj_17_n50) );
  NAND2_X1 cor_maj_17_U40 ( .A1(cor_maj_17_n52), .A2(cor_maj_17_n53), .ZN(
        cor_maj_17_n51) );
  NAND2_X1 cor_maj_17_U39 ( .A1(cor_maj_17_n50), .A2(cor_maj_17_n51), .ZN(
        cor_maj_17_n23) );
  INV_X1 cor_maj_17_U38 ( .A(cor_maj_17_n23), .ZN(cor_maj_17_n40) );
  NOR2_X1 cor_maj_17_U37 ( .A1(cor_maj_17_n40), .A2(cor_maj_17_n17), .ZN(
        cor_maj_17_n49) );
  NOR2_X1 cor_maj_17_U36 ( .A1(cor_maj_17_n48), .A2(cor_maj_17_n49), .ZN(
        cor_maj_17_n47) );
  NAND2_X1 cor_maj_17_U35 ( .A1(cor_maj_17_n46), .A2(cor_maj_17_n47), .ZN(
        cor_maj_17_n31) );
  NAND2_X1 cor_maj_17_U34 ( .A1(mul_port_c[9]), .A2(cor_maj_17_n31), .ZN(
        cor_maj_17_n44) );
  OR2_X1 cor_maj_17_U33 ( .A1(cor_maj_17_n37), .A2(cor_maj_17_n40), .ZN(
        cor_maj_17_n45) );
  NAND2_X1 cor_maj_17_U32 ( .A1(cor_maj_17_n44), .A2(cor_maj_17_n45), .ZN(
        cor_maj_17_n43) );
  NOR2_X1 cor_maj_17_U31 ( .A1(cor_maj_17_n42), .A2(cor_maj_17_n43), .ZN(
        cor_maj_17_n1) );
  NOR2_X1 cor_maj_17_U30 ( .A1(cor_maj_17_n16), .A2(cor_maj_17_n41), .ZN(
        cor_maj_17_n38) );
  NOR2_X1 cor_maj_17_U29 ( .A1(cor_maj_17_n40), .A2(cor_maj_17_n21), .ZN(
        cor_maj_17_n39) );
  NOR2_X1 cor_maj_17_U28 ( .A1(cor_maj_17_n38), .A2(cor_maj_17_n39), .ZN(
        cor_maj_17_n32) );
  NOR2_X1 cor_maj_17_U27 ( .A1(cor_maj_17_n17), .A2(cor_maj_17_n20), .ZN(
        cor_maj_17_n34) );
  NAND2_X1 cor_maj_17_U26 ( .A1(cor_maj_17_n25), .A2(cor_maj_17_n27), .ZN(
        cor_maj_17_n36) );
  NAND2_X1 cor_maj_17_U25 ( .A1(cor_maj_17_n36), .A2(cor_maj_17_n37), .ZN(
        cor_maj_17_n35) );
  NOR2_X1 cor_maj_17_U24 ( .A1(cor_maj_17_n34), .A2(cor_maj_17_n35), .ZN(
        cor_maj_17_n33) );
  NAND2_X1 cor_maj_17_U23 ( .A1(cor_maj_17_n32), .A2(cor_maj_17_n33), .ZN(
        cor_maj_17_n11) );
  AND2_X1 cor_maj_17_U22 ( .A1(cor_maj_17_n11), .A2(mul_port_c[9]), .ZN(
        cor_maj_17_n30) );
  NOR2_X1 cor_maj_17_U21 ( .A1(cor_maj_17_n30), .A2(cor_maj_17_n31), .ZN(
        cor_maj_17_n28) );
  NOR2_X1 cor_maj_17_U20 ( .A1(mul_port_c[7]), .A2(mul_port_c[8]), .ZN(
        cor_maj_17_n29) );
  NOR2_X1 cor_maj_17_U19 ( .A1(cor_maj_17_n28), .A2(cor_maj_17_n29), .ZN(
        cor_maj_17_n3) );
  AND2_X1 cor_maj_17_U18 ( .A1(cor_maj_17_n26), .A2(cor_maj_17_n27), .ZN(
        cor_maj_17_n24) );
  NAND2_X1 cor_maj_17_U17 ( .A1(cor_maj_17_n24), .A2(cor_maj_17_n25), .ZN(
        cor_maj_17_n5) );
  NAND2_X1 cor_maj_17_U16 ( .A1(cor_maj_17_n22), .A2(cor_maj_17_n23), .ZN(
        cor_maj_17_n18) );
  OR2_X1 cor_maj_17_U15 ( .A1(cor_maj_17_n20), .A2(cor_maj_17_n21), .ZN(
        cor_maj_17_n19) );
  NAND2_X1 cor_maj_17_U14 ( .A1(cor_maj_17_n18), .A2(cor_maj_17_n19), .ZN(
        cor_maj_17_n14) );
  NAND2_X1 cor_maj_17_U13 ( .A1(cor_maj_17_n16), .A2(cor_maj_17_n17), .ZN(
        cor_maj_17_n15) );
  NOR2_X1 cor_maj_17_U12 ( .A1(cor_maj_17_n14), .A2(cor_maj_17_n15), .ZN(
        cor_maj_17_n12) );
  INV_X1 cor_maj_17_U11 ( .A(mul_port_c[9]), .ZN(cor_maj_17_n13) );
  NOR2_X1 cor_maj_17_U10 ( .A1(cor_maj_17_n12), .A2(cor_maj_17_n13), .ZN(
        cor_maj_17_n10) );
  NOR2_X1 cor_maj_17_U9 ( .A1(cor_maj_17_n10), .A2(cor_maj_17_n11), .ZN(
        cor_maj_17_n8) );
  INV_X1 cor_maj_17_U8 ( .A(mul_port_c[7]), .ZN(cor_maj_17_n9) );
  NOR2_X1 cor_maj_17_U7 ( .A1(cor_maj_17_n8), .A2(cor_maj_17_n9), .ZN(
        cor_maj_17_n7) );
  NAND2_X1 cor_maj_17_U6 ( .A1(cor_maj_17_n7), .A2(mul_port_c[8]), .ZN(
        cor_maj_17_n6) );
  NAND2_X1 cor_maj_17_U5 ( .A1(cor_maj_17_n5), .A2(cor_maj_17_n6), .ZN(
        cor_maj_17_n4) );
  NOR2_X1 cor_maj_17_U4 ( .A1(cor_maj_17_n3), .A2(cor_maj_17_n4), .ZN(
        cor_maj_17_n2) );
  NAND2_X1 cor_maj_17_U3 ( .A1(cor_maj_17_n1), .A2(cor_maj_17_n2), .ZN(
        port_c[6]) );
  AND2_X1 cor_maj_18_U70 ( .A1(mul_port_c[2]), .A2(mul_port_c[1]), .ZN(
        cor_maj_18_n27) );
  OR2_X1 cor_maj_18_U69 ( .A1(mul_port_c[0]), .A2(mul_port_c[10]), .ZN(
        cor_maj_18_n53) );
  NAND2_X1 cor_maj_18_U68 ( .A1(cor_maj_18_n27), .A2(cor_maj_18_n53), .ZN(
        cor_maj_18_n66) );
  NAND2_X1 cor_maj_18_U67 ( .A1(mul_port_c[10]), .A2(mul_port_c[0]), .ZN(
        cor_maj_18_n62) );
  INV_X1 cor_maj_18_U66 ( .A(cor_maj_18_n62), .ZN(cor_maj_18_n25) );
  OR2_X1 cor_maj_18_U65 ( .A1(mul_port_c[1]), .A2(mul_port_c[2]), .ZN(
        cor_maj_18_n52) );
  NAND2_X1 cor_maj_18_U64 ( .A1(cor_maj_18_n25), .A2(cor_maj_18_n52), .ZN(
        cor_maj_18_n67) );
  AND2_X1 cor_maj_18_U63 ( .A1(cor_maj_18_n66), .A2(cor_maj_18_n67), .ZN(
        cor_maj_18_n16) );
  AND2_X1 cor_maj_18_U62 ( .A1(mul_port_c[6]), .A2(mul_port_c[5]), .ZN(
        cor_maj_18_n59) );
  OR2_X1 cor_maj_18_U61 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_18_n57) );
  NAND2_X1 cor_maj_18_U60 ( .A1(cor_maj_18_n59), .A2(cor_maj_18_n57), .ZN(
        cor_maj_18_n64) );
  AND2_X1 cor_maj_18_U59 ( .A1(mul_port_c[4]), .A2(mul_port_c[3]), .ZN(
        cor_maj_18_n58) );
  OR2_X1 cor_maj_18_U58 ( .A1(mul_port_c[5]), .A2(mul_port_c[6]), .ZN(
        cor_maj_18_n56) );
  NAND2_X1 cor_maj_18_U57 ( .A1(cor_maj_18_n58), .A2(cor_maj_18_n56), .ZN(
        cor_maj_18_n65) );
  AND2_X1 cor_maj_18_U56 ( .A1(cor_maj_18_n64), .A2(cor_maj_18_n65), .ZN(
        cor_maj_18_n17) );
  NOR2_X1 cor_maj_18_U55 ( .A1(cor_maj_18_n16), .A2(cor_maj_18_n17), .ZN(
        cor_maj_18_n42) );
  NOR2_X1 cor_maj_18_U54 ( .A1(cor_maj_18_n56), .A2(cor_maj_18_n57), .ZN(
        cor_maj_18_n41) );
  INV_X1 cor_maj_18_U53 ( .A(cor_maj_18_n41), .ZN(cor_maj_18_n22) );
  NAND2_X1 cor_maj_18_U52 ( .A1(cor_maj_18_n27), .A2(cor_maj_18_n22), .ZN(
        cor_maj_18_n63) );
  NOR2_X1 cor_maj_18_U51 ( .A1(cor_maj_18_n62), .A2(cor_maj_18_n63), .ZN(
        cor_maj_18_n60) );
  NOR2_X1 cor_maj_18_U50 ( .A1(cor_maj_18_n52), .A2(cor_maj_18_n53), .ZN(
        cor_maj_18_n20) );
  NAND2_X1 cor_maj_18_U49 ( .A1(cor_maj_18_n58), .A2(cor_maj_18_n59), .ZN(
        cor_maj_18_n37) );
  NOR2_X1 cor_maj_18_U48 ( .A1(cor_maj_18_n20), .A2(cor_maj_18_n37), .ZN(
        cor_maj_18_n61) );
  NOR2_X1 cor_maj_18_U47 ( .A1(cor_maj_18_n60), .A2(cor_maj_18_n61), .ZN(
        cor_maj_18_n46) );
  NOR2_X1 cor_maj_18_U46 ( .A1(cor_maj_18_n58), .A2(cor_maj_18_n59), .ZN(
        cor_maj_18_n54) );
  NAND2_X1 cor_maj_18_U45 ( .A1(cor_maj_18_n56), .A2(cor_maj_18_n57), .ZN(
        cor_maj_18_n55) );
  NAND2_X1 cor_maj_18_U44 ( .A1(cor_maj_18_n54), .A2(cor_maj_18_n55), .ZN(
        cor_maj_18_n26) );
  INV_X1 cor_maj_18_U43 ( .A(cor_maj_18_n26), .ZN(cor_maj_18_n21) );
  NOR2_X1 cor_maj_18_U42 ( .A1(cor_maj_18_n21), .A2(cor_maj_18_n16), .ZN(
        cor_maj_18_n48) );
  NOR2_X1 cor_maj_18_U41 ( .A1(cor_maj_18_n25), .A2(cor_maj_18_n27), .ZN(
        cor_maj_18_n50) );
  NAND2_X1 cor_maj_18_U40 ( .A1(cor_maj_18_n52), .A2(cor_maj_18_n53), .ZN(
        cor_maj_18_n51) );
  NAND2_X1 cor_maj_18_U39 ( .A1(cor_maj_18_n50), .A2(cor_maj_18_n51), .ZN(
        cor_maj_18_n23) );
  INV_X1 cor_maj_18_U38 ( .A(cor_maj_18_n23), .ZN(cor_maj_18_n40) );
  NOR2_X1 cor_maj_18_U37 ( .A1(cor_maj_18_n40), .A2(cor_maj_18_n17), .ZN(
        cor_maj_18_n49) );
  NOR2_X1 cor_maj_18_U36 ( .A1(cor_maj_18_n48), .A2(cor_maj_18_n49), .ZN(
        cor_maj_18_n47) );
  NAND2_X1 cor_maj_18_U35 ( .A1(cor_maj_18_n46), .A2(cor_maj_18_n47), .ZN(
        cor_maj_18_n31) );
  NAND2_X1 cor_maj_18_U34 ( .A1(mul_port_c[9]), .A2(cor_maj_18_n31), .ZN(
        cor_maj_18_n44) );
  OR2_X1 cor_maj_18_U33 ( .A1(cor_maj_18_n37), .A2(cor_maj_18_n40), .ZN(
        cor_maj_18_n45) );
  NAND2_X1 cor_maj_18_U32 ( .A1(cor_maj_18_n44), .A2(cor_maj_18_n45), .ZN(
        cor_maj_18_n43) );
  NOR2_X1 cor_maj_18_U31 ( .A1(cor_maj_18_n42), .A2(cor_maj_18_n43), .ZN(
        cor_maj_18_n1) );
  NOR2_X1 cor_maj_18_U30 ( .A1(cor_maj_18_n16), .A2(cor_maj_18_n41), .ZN(
        cor_maj_18_n38) );
  NOR2_X1 cor_maj_18_U29 ( .A1(cor_maj_18_n40), .A2(cor_maj_18_n21), .ZN(
        cor_maj_18_n39) );
  NOR2_X1 cor_maj_18_U28 ( .A1(cor_maj_18_n38), .A2(cor_maj_18_n39), .ZN(
        cor_maj_18_n32) );
  NOR2_X1 cor_maj_18_U27 ( .A1(cor_maj_18_n17), .A2(cor_maj_18_n20), .ZN(
        cor_maj_18_n34) );
  NAND2_X1 cor_maj_18_U26 ( .A1(cor_maj_18_n25), .A2(cor_maj_18_n27), .ZN(
        cor_maj_18_n36) );
  NAND2_X1 cor_maj_18_U25 ( .A1(cor_maj_18_n36), .A2(cor_maj_18_n37), .ZN(
        cor_maj_18_n35) );
  NOR2_X1 cor_maj_18_U24 ( .A1(cor_maj_18_n34), .A2(cor_maj_18_n35), .ZN(
        cor_maj_18_n33) );
  NAND2_X1 cor_maj_18_U23 ( .A1(cor_maj_18_n32), .A2(cor_maj_18_n33), .ZN(
        cor_maj_18_n11) );
  AND2_X1 cor_maj_18_U22 ( .A1(cor_maj_18_n11), .A2(mul_port_c[9]), .ZN(
        cor_maj_18_n30) );
  NOR2_X1 cor_maj_18_U21 ( .A1(cor_maj_18_n30), .A2(cor_maj_18_n31), .ZN(
        cor_maj_18_n28) );
  NOR2_X1 cor_maj_18_U20 ( .A1(mul_port_c[7]), .A2(mul_port_c[8]), .ZN(
        cor_maj_18_n29) );
  NOR2_X1 cor_maj_18_U19 ( .A1(cor_maj_18_n28), .A2(cor_maj_18_n29), .ZN(
        cor_maj_18_n3) );
  AND2_X1 cor_maj_18_U18 ( .A1(cor_maj_18_n26), .A2(cor_maj_18_n27), .ZN(
        cor_maj_18_n24) );
  NAND2_X1 cor_maj_18_U17 ( .A1(cor_maj_18_n24), .A2(cor_maj_18_n25), .ZN(
        cor_maj_18_n5) );
  NAND2_X1 cor_maj_18_U16 ( .A1(cor_maj_18_n22), .A2(cor_maj_18_n23), .ZN(
        cor_maj_18_n18) );
  OR2_X1 cor_maj_18_U15 ( .A1(cor_maj_18_n20), .A2(cor_maj_18_n21), .ZN(
        cor_maj_18_n19) );
  NAND2_X1 cor_maj_18_U14 ( .A1(cor_maj_18_n18), .A2(cor_maj_18_n19), .ZN(
        cor_maj_18_n14) );
  NAND2_X1 cor_maj_18_U13 ( .A1(cor_maj_18_n16), .A2(cor_maj_18_n17), .ZN(
        cor_maj_18_n15) );
  NOR2_X1 cor_maj_18_U12 ( .A1(cor_maj_18_n14), .A2(cor_maj_18_n15), .ZN(
        cor_maj_18_n12) );
  INV_X1 cor_maj_18_U11 ( .A(mul_port_c[9]), .ZN(cor_maj_18_n13) );
  NOR2_X1 cor_maj_18_U10 ( .A1(cor_maj_18_n12), .A2(cor_maj_18_n13), .ZN(
        cor_maj_18_n10) );
  NOR2_X1 cor_maj_18_U9 ( .A1(cor_maj_18_n10), .A2(cor_maj_18_n11), .ZN(
        cor_maj_18_n8) );
  INV_X1 cor_maj_18_U8 ( .A(mul_port_c[7]), .ZN(cor_maj_18_n9) );
  NOR2_X1 cor_maj_18_U7 ( .A1(cor_maj_18_n8), .A2(cor_maj_18_n9), .ZN(
        cor_maj_18_n7) );
  NAND2_X1 cor_maj_18_U6 ( .A1(cor_maj_18_n7), .A2(mul_port_c[8]), .ZN(
        cor_maj_18_n6) );
  NAND2_X1 cor_maj_18_U5 ( .A1(cor_maj_18_n5), .A2(cor_maj_18_n6), .ZN(
        cor_maj_18_n4) );
  NOR2_X1 cor_maj_18_U4 ( .A1(cor_maj_18_n3), .A2(cor_maj_18_n4), .ZN(
        cor_maj_18_n2) );
  NAND2_X1 cor_maj_18_U3 ( .A1(cor_maj_18_n1), .A2(cor_maj_18_n2), .ZN(
        port_c[7]) );
  AND2_X1 cor_maj_19_U70 ( .A1(mul_port_c[2]), .A2(mul_port_c[1]), .ZN(
        cor_maj_19_n27) );
  OR2_X1 cor_maj_19_U69 ( .A1(mul_port_c[0]), .A2(mul_port_c[10]), .ZN(
        cor_maj_19_n53) );
  NAND2_X1 cor_maj_19_U68 ( .A1(cor_maj_19_n27), .A2(cor_maj_19_n53), .ZN(
        cor_maj_19_n66) );
  NAND2_X1 cor_maj_19_U67 ( .A1(mul_port_c[10]), .A2(mul_port_c[0]), .ZN(
        cor_maj_19_n62) );
  INV_X1 cor_maj_19_U66 ( .A(cor_maj_19_n62), .ZN(cor_maj_19_n25) );
  OR2_X1 cor_maj_19_U65 ( .A1(mul_port_c[1]), .A2(mul_port_c[2]), .ZN(
        cor_maj_19_n52) );
  NAND2_X1 cor_maj_19_U64 ( .A1(cor_maj_19_n25), .A2(cor_maj_19_n52), .ZN(
        cor_maj_19_n67) );
  AND2_X1 cor_maj_19_U63 ( .A1(cor_maj_19_n66), .A2(cor_maj_19_n67), .ZN(
        cor_maj_19_n16) );
  AND2_X1 cor_maj_19_U62 ( .A1(mul_port_c[6]), .A2(mul_port_c[5]), .ZN(
        cor_maj_19_n59) );
  OR2_X1 cor_maj_19_U61 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_19_n57) );
  NAND2_X1 cor_maj_19_U60 ( .A1(cor_maj_19_n59), .A2(cor_maj_19_n57), .ZN(
        cor_maj_19_n64) );
  AND2_X1 cor_maj_19_U59 ( .A1(mul_port_c[4]), .A2(mul_port_c[3]), .ZN(
        cor_maj_19_n58) );
  OR2_X1 cor_maj_19_U58 ( .A1(mul_port_c[5]), .A2(mul_port_c[6]), .ZN(
        cor_maj_19_n56) );
  NAND2_X1 cor_maj_19_U57 ( .A1(cor_maj_19_n58), .A2(cor_maj_19_n56), .ZN(
        cor_maj_19_n65) );
  AND2_X1 cor_maj_19_U56 ( .A1(cor_maj_19_n64), .A2(cor_maj_19_n65), .ZN(
        cor_maj_19_n17) );
  NOR2_X1 cor_maj_19_U55 ( .A1(cor_maj_19_n16), .A2(cor_maj_19_n17), .ZN(
        cor_maj_19_n42) );
  NOR2_X1 cor_maj_19_U54 ( .A1(cor_maj_19_n56), .A2(cor_maj_19_n57), .ZN(
        cor_maj_19_n41) );
  INV_X1 cor_maj_19_U53 ( .A(cor_maj_19_n41), .ZN(cor_maj_19_n22) );
  NAND2_X1 cor_maj_19_U52 ( .A1(cor_maj_19_n27), .A2(cor_maj_19_n22), .ZN(
        cor_maj_19_n63) );
  NOR2_X1 cor_maj_19_U51 ( .A1(cor_maj_19_n62), .A2(cor_maj_19_n63), .ZN(
        cor_maj_19_n60) );
  NOR2_X1 cor_maj_19_U50 ( .A1(cor_maj_19_n52), .A2(cor_maj_19_n53), .ZN(
        cor_maj_19_n20) );
  NAND2_X1 cor_maj_19_U49 ( .A1(cor_maj_19_n58), .A2(cor_maj_19_n59), .ZN(
        cor_maj_19_n37) );
  NOR2_X1 cor_maj_19_U48 ( .A1(cor_maj_19_n20), .A2(cor_maj_19_n37), .ZN(
        cor_maj_19_n61) );
  NOR2_X1 cor_maj_19_U47 ( .A1(cor_maj_19_n60), .A2(cor_maj_19_n61), .ZN(
        cor_maj_19_n46) );
  NOR2_X1 cor_maj_19_U46 ( .A1(cor_maj_19_n58), .A2(cor_maj_19_n59), .ZN(
        cor_maj_19_n54) );
  NAND2_X1 cor_maj_19_U45 ( .A1(cor_maj_19_n56), .A2(cor_maj_19_n57), .ZN(
        cor_maj_19_n55) );
  NAND2_X1 cor_maj_19_U44 ( .A1(cor_maj_19_n54), .A2(cor_maj_19_n55), .ZN(
        cor_maj_19_n26) );
  INV_X1 cor_maj_19_U43 ( .A(cor_maj_19_n26), .ZN(cor_maj_19_n21) );
  NOR2_X1 cor_maj_19_U42 ( .A1(cor_maj_19_n21), .A2(cor_maj_19_n16), .ZN(
        cor_maj_19_n48) );
  NOR2_X1 cor_maj_19_U41 ( .A1(cor_maj_19_n25), .A2(cor_maj_19_n27), .ZN(
        cor_maj_19_n50) );
  NAND2_X1 cor_maj_19_U40 ( .A1(cor_maj_19_n52), .A2(cor_maj_19_n53), .ZN(
        cor_maj_19_n51) );
  NAND2_X1 cor_maj_19_U39 ( .A1(cor_maj_19_n50), .A2(cor_maj_19_n51), .ZN(
        cor_maj_19_n23) );
  INV_X1 cor_maj_19_U38 ( .A(cor_maj_19_n23), .ZN(cor_maj_19_n40) );
  NOR2_X1 cor_maj_19_U37 ( .A1(cor_maj_19_n40), .A2(cor_maj_19_n17), .ZN(
        cor_maj_19_n49) );
  NOR2_X1 cor_maj_19_U36 ( .A1(cor_maj_19_n48), .A2(cor_maj_19_n49), .ZN(
        cor_maj_19_n47) );
  NAND2_X1 cor_maj_19_U35 ( .A1(cor_maj_19_n46), .A2(cor_maj_19_n47), .ZN(
        cor_maj_19_n31) );
  NAND2_X1 cor_maj_19_U34 ( .A1(mul_port_c[9]), .A2(cor_maj_19_n31), .ZN(
        cor_maj_19_n44) );
  OR2_X1 cor_maj_19_U33 ( .A1(cor_maj_19_n37), .A2(cor_maj_19_n40), .ZN(
        cor_maj_19_n45) );
  NAND2_X1 cor_maj_19_U32 ( .A1(cor_maj_19_n44), .A2(cor_maj_19_n45), .ZN(
        cor_maj_19_n43) );
  NOR2_X1 cor_maj_19_U31 ( .A1(cor_maj_19_n42), .A2(cor_maj_19_n43), .ZN(
        cor_maj_19_n1) );
  NOR2_X1 cor_maj_19_U30 ( .A1(cor_maj_19_n16), .A2(cor_maj_19_n41), .ZN(
        cor_maj_19_n38) );
  NOR2_X1 cor_maj_19_U29 ( .A1(cor_maj_19_n40), .A2(cor_maj_19_n21), .ZN(
        cor_maj_19_n39) );
  NOR2_X1 cor_maj_19_U28 ( .A1(cor_maj_19_n38), .A2(cor_maj_19_n39), .ZN(
        cor_maj_19_n32) );
  NOR2_X1 cor_maj_19_U27 ( .A1(cor_maj_19_n17), .A2(cor_maj_19_n20), .ZN(
        cor_maj_19_n34) );
  NAND2_X1 cor_maj_19_U26 ( .A1(cor_maj_19_n25), .A2(cor_maj_19_n27), .ZN(
        cor_maj_19_n36) );
  NAND2_X1 cor_maj_19_U25 ( .A1(cor_maj_19_n36), .A2(cor_maj_19_n37), .ZN(
        cor_maj_19_n35) );
  NOR2_X1 cor_maj_19_U24 ( .A1(cor_maj_19_n34), .A2(cor_maj_19_n35), .ZN(
        cor_maj_19_n33) );
  NAND2_X1 cor_maj_19_U23 ( .A1(cor_maj_19_n32), .A2(cor_maj_19_n33), .ZN(
        cor_maj_19_n11) );
  AND2_X1 cor_maj_19_U22 ( .A1(cor_maj_19_n11), .A2(mul_port_c[9]), .ZN(
        cor_maj_19_n30) );
  NOR2_X1 cor_maj_19_U21 ( .A1(cor_maj_19_n30), .A2(cor_maj_19_n31), .ZN(
        cor_maj_19_n28) );
  NOR2_X1 cor_maj_19_U20 ( .A1(mul_port_c[7]), .A2(mul_port_c[8]), .ZN(
        cor_maj_19_n29) );
  NOR2_X1 cor_maj_19_U19 ( .A1(cor_maj_19_n28), .A2(cor_maj_19_n29), .ZN(
        cor_maj_19_n3) );
  AND2_X1 cor_maj_19_U18 ( .A1(cor_maj_19_n26), .A2(cor_maj_19_n27), .ZN(
        cor_maj_19_n24) );
  NAND2_X1 cor_maj_19_U17 ( .A1(cor_maj_19_n24), .A2(cor_maj_19_n25), .ZN(
        cor_maj_19_n5) );
  NAND2_X1 cor_maj_19_U16 ( .A1(cor_maj_19_n22), .A2(cor_maj_19_n23), .ZN(
        cor_maj_19_n18) );
  OR2_X1 cor_maj_19_U15 ( .A1(cor_maj_19_n20), .A2(cor_maj_19_n21), .ZN(
        cor_maj_19_n19) );
  NAND2_X1 cor_maj_19_U14 ( .A1(cor_maj_19_n18), .A2(cor_maj_19_n19), .ZN(
        cor_maj_19_n14) );
  NAND2_X1 cor_maj_19_U13 ( .A1(cor_maj_19_n16), .A2(cor_maj_19_n17), .ZN(
        cor_maj_19_n15) );
  NOR2_X1 cor_maj_19_U12 ( .A1(cor_maj_19_n14), .A2(cor_maj_19_n15), .ZN(
        cor_maj_19_n12) );
  INV_X1 cor_maj_19_U11 ( .A(mul_port_c[9]), .ZN(cor_maj_19_n13) );
  NOR2_X1 cor_maj_19_U10 ( .A1(cor_maj_19_n12), .A2(cor_maj_19_n13), .ZN(
        cor_maj_19_n10) );
  NOR2_X1 cor_maj_19_U9 ( .A1(cor_maj_19_n10), .A2(cor_maj_19_n11), .ZN(
        cor_maj_19_n8) );
  INV_X1 cor_maj_19_U8 ( .A(mul_port_c[7]), .ZN(cor_maj_19_n9) );
  NOR2_X1 cor_maj_19_U7 ( .A1(cor_maj_19_n8), .A2(cor_maj_19_n9), .ZN(
        cor_maj_19_n7) );
  NAND2_X1 cor_maj_19_U6 ( .A1(cor_maj_19_n7), .A2(mul_port_c[8]), .ZN(
        cor_maj_19_n6) );
  NAND2_X1 cor_maj_19_U5 ( .A1(cor_maj_19_n5), .A2(cor_maj_19_n6), .ZN(
        cor_maj_19_n4) );
  NOR2_X1 cor_maj_19_U4 ( .A1(cor_maj_19_n3), .A2(cor_maj_19_n4), .ZN(
        cor_maj_19_n2) );
  NAND2_X1 cor_maj_19_U3 ( .A1(cor_maj_19_n1), .A2(cor_maj_19_n2), .ZN(
        port_c[8]) );
  AND2_X1 cor_maj_20_U70 ( .A1(mul_port_c[2]), .A2(mul_port_c[1]), .ZN(
        cor_maj_20_n27) );
  OR2_X1 cor_maj_20_U69 ( .A1(mul_port_c[0]), .A2(mul_port_c[10]), .ZN(
        cor_maj_20_n53) );
  NAND2_X1 cor_maj_20_U68 ( .A1(cor_maj_20_n27), .A2(cor_maj_20_n53), .ZN(
        cor_maj_20_n66) );
  NAND2_X1 cor_maj_20_U67 ( .A1(mul_port_c[10]), .A2(mul_port_c[0]), .ZN(
        cor_maj_20_n62) );
  INV_X1 cor_maj_20_U66 ( .A(cor_maj_20_n62), .ZN(cor_maj_20_n25) );
  OR2_X1 cor_maj_20_U65 ( .A1(mul_port_c[1]), .A2(mul_port_c[2]), .ZN(
        cor_maj_20_n52) );
  NAND2_X1 cor_maj_20_U64 ( .A1(cor_maj_20_n25), .A2(cor_maj_20_n52), .ZN(
        cor_maj_20_n67) );
  AND2_X1 cor_maj_20_U63 ( .A1(cor_maj_20_n66), .A2(cor_maj_20_n67), .ZN(
        cor_maj_20_n16) );
  AND2_X1 cor_maj_20_U62 ( .A1(mul_port_c[6]), .A2(mul_port_c[5]), .ZN(
        cor_maj_20_n59) );
  OR2_X1 cor_maj_20_U61 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_20_n57) );
  NAND2_X1 cor_maj_20_U60 ( .A1(cor_maj_20_n59), .A2(cor_maj_20_n57), .ZN(
        cor_maj_20_n64) );
  AND2_X1 cor_maj_20_U59 ( .A1(mul_port_c[4]), .A2(mul_port_c[3]), .ZN(
        cor_maj_20_n58) );
  OR2_X1 cor_maj_20_U58 ( .A1(mul_port_c[5]), .A2(mul_port_c[6]), .ZN(
        cor_maj_20_n56) );
  NAND2_X1 cor_maj_20_U57 ( .A1(cor_maj_20_n58), .A2(cor_maj_20_n56), .ZN(
        cor_maj_20_n65) );
  AND2_X1 cor_maj_20_U56 ( .A1(cor_maj_20_n64), .A2(cor_maj_20_n65), .ZN(
        cor_maj_20_n17) );
  NOR2_X1 cor_maj_20_U55 ( .A1(cor_maj_20_n16), .A2(cor_maj_20_n17), .ZN(
        cor_maj_20_n42) );
  NOR2_X1 cor_maj_20_U54 ( .A1(cor_maj_20_n56), .A2(cor_maj_20_n57), .ZN(
        cor_maj_20_n41) );
  INV_X1 cor_maj_20_U53 ( .A(cor_maj_20_n41), .ZN(cor_maj_20_n22) );
  NAND2_X1 cor_maj_20_U52 ( .A1(cor_maj_20_n27), .A2(cor_maj_20_n22), .ZN(
        cor_maj_20_n63) );
  NOR2_X1 cor_maj_20_U51 ( .A1(cor_maj_20_n62), .A2(cor_maj_20_n63), .ZN(
        cor_maj_20_n60) );
  NOR2_X1 cor_maj_20_U50 ( .A1(cor_maj_20_n52), .A2(cor_maj_20_n53), .ZN(
        cor_maj_20_n20) );
  NAND2_X1 cor_maj_20_U49 ( .A1(cor_maj_20_n58), .A2(cor_maj_20_n59), .ZN(
        cor_maj_20_n37) );
  NOR2_X1 cor_maj_20_U48 ( .A1(cor_maj_20_n20), .A2(cor_maj_20_n37), .ZN(
        cor_maj_20_n61) );
  NOR2_X1 cor_maj_20_U47 ( .A1(cor_maj_20_n60), .A2(cor_maj_20_n61), .ZN(
        cor_maj_20_n46) );
  NOR2_X1 cor_maj_20_U46 ( .A1(cor_maj_20_n58), .A2(cor_maj_20_n59), .ZN(
        cor_maj_20_n54) );
  NAND2_X1 cor_maj_20_U45 ( .A1(cor_maj_20_n56), .A2(cor_maj_20_n57), .ZN(
        cor_maj_20_n55) );
  NAND2_X1 cor_maj_20_U44 ( .A1(cor_maj_20_n54), .A2(cor_maj_20_n55), .ZN(
        cor_maj_20_n26) );
  INV_X1 cor_maj_20_U43 ( .A(cor_maj_20_n26), .ZN(cor_maj_20_n21) );
  NOR2_X1 cor_maj_20_U42 ( .A1(cor_maj_20_n21), .A2(cor_maj_20_n16), .ZN(
        cor_maj_20_n48) );
  NOR2_X1 cor_maj_20_U41 ( .A1(cor_maj_20_n25), .A2(cor_maj_20_n27), .ZN(
        cor_maj_20_n50) );
  NAND2_X1 cor_maj_20_U40 ( .A1(cor_maj_20_n52), .A2(cor_maj_20_n53), .ZN(
        cor_maj_20_n51) );
  NAND2_X1 cor_maj_20_U39 ( .A1(cor_maj_20_n50), .A2(cor_maj_20_n51), .ZN(
        cor_maj_20_n23) );
  INV_X1 cor_maj_20_U38 ( .A(cor_maj_20_n23), .ZN(cor_maj_20_n40) );
  NOR2_X1 cor_maj_20_U37 ( .A1(cor_maj_20_n40), .A2(cor_maj_20_n17), .ZN(
        cor_maj_20_n49) );
  NOR2_X1 cor_maj_20_U36 ( .A1(cor_maj_20_n48), .A2(cor_maj_20_n49), .ZN(
        cor_maj_20_n47) );
  NAND2_X1 cor_maj_20_U35 ( .A1(cor_maj_20_n46), .A2(cor_maj_20_n47), .ZN(
        cor_maj_20_n31) );
  NAND2_X1 cor_maj_20_U34 ( .A1(mul_port_c[9]), .A2(cor_maj_20_n31), .ZN(
        cor_maj_20_n44) );
  OR2_X1 cor_maj_20_U33 ( .A1(cor_maj_20_n37), .A2(cor_maj_20_n40), .ZN(
        cor_maj_20_n45) );
  NAND2_X1 cor_maj_20_U32 ( .A1(cor_maj_20_n44), .A2(cor_maj_20_n45), .ZN(
        cor_maj_20_n43) );
  NOR2_X1 cor_maj_20_U31 ( .A1(cor_maj_20_n42), .A2(cor_maj_20_n43), .ZN(
        cor_maj_20_n1) );
  NOR2_X1 cor_maj_20_U30 ( .A1(cor_maj_20_n16), .A2(cor_maj_20_n41), .ZN(
        cor_maj_20_n38) );
  NOR2_X1 cor_maj_20_U29 ( .A1(cor_maj_20_n40), .A2(cor_maj_20_n21), .ZN(
        cor_maj_20_n39) );
  NOR2_X1 cor_maj_20_U28 ( .A1(cor_maj_20_n38), .A2(cor_maj_20_n39), .ZN(
        cor_maj_20_n32) );
  NOR2_X1 cor_maj_20_U27 ( .A1(cor_maj_20_n17), .A2(cor_maj_20_n20), .ZN(
        cor_maj_20_n34) );
  NAND2_X1 cor_maj_20_U26 ( .A1(cor_maj_20_n25), .A2(cor_maj_20_n27), .ZN(
        cor_maj_20_n36) );
  NAND2_X1 cor_maj_20_U25 ( .A1(cor_maj_20_n36), .A2(cor_maj_20_n37), .ZN(
        cor_maj_20_n35) );
  NOR2_X1 cor_maj_20_U24 ( .A1(cor_maj_20_n34), .A2(cor_maj_20_n35), .ZN(
        cor_maj_20_n33) );
  NAND2_X1 cor_maj_20_U23 ( .A1(cor_maj_20_n32), .A2(cor_maj_20_n33), .ZN(
        cor_maj_20_n11) );
  AND2_X1 cor_maj_20_U22 ( .A1(cor_maj_20_n11), .A2(mul_port_c[9]), .ZN(
        cor_maj_20_n30) );
  NOR2_X1 cor_maj_20_U21 ( .A1(cor_maj_20_n30), .A2(cor_maj_20_n31), .ZN(
        cor_maj_20_n28) );
  NOR2_X1 cor_maj_20_U20 ( .A1(mul_port_c[7]), .A2(mul_port_c[8]), .ZN(
        cor_maj_20_n29) );
  NOR2_X1 cor_maj_20_U19 ( .A1(cor_maj_20_n28), .A2(cor_maj_20_n29), .ZN(
        cor_maj_20_n3) );
  AND2_X1 cor_maj_20_U18 ( .A1(cor_maj_20_n26), .A2(cor_maj_20_n27), .ZN(
        cor_maj_20_n24) );
  NAND2_X1 cor_maj_20_U17 ( .A1(cor_maj_20_n24), .A2(cor_maj_20_n25), .ZN(
        cor_maj_20_n5) );
  NAND2_X1 cor_maj_20_U16 ( .A1(cor_maj_20_n22), .A2(cor_maj_20_n23), .ZN(
        cor_maj_20_n18) );
  OR2_X1 cor_maj_20_U15 ( .A1(cor_maj_20_n20), .A2(cor_maj_20_n21), .ZN(
        cor_maj_20_n19) );
  NAND2_X1 cor_maj_20_U14 ( .A1(cor_maj_20_n18), .A2(cor_maj_20_n19), .ZN(
        cor_maj_20_n14) );
  NAND2_X1 cor_maj_20_U13 ( .A1(cor_maj_20_n16), .A2(cor_maj_20_n17), .ZN(
        cor_maj_20_n15) );
  NOR2_X1 cor_maj_20_U12 ( .A1(cor_maj_20_n14), .A2(cor_maj_20_n15), .ZN(
        cor_maj_20_n12) );
  INV_X1 cor_maj_20_U11 ( .A(mul_port_c[9]), .ZN(cor_maj_20_n13) );
  NOR2_X1 cor_maj_20_U10 ( .A1(cor_maj_20_n12), .A2(cor_maj_20_n13), .ZN(
        cor_maj_20_n10) );
  NOR2_X1 cor_maj_20_U9 ( .A1(cor_maj_20_n10), .A2(cor_maj_20_n11), .ZN(
        cor_maj_20_n8) );
  INV_X1 cor_maj_20_U8 ( .A(mul_port_c[7]), .ZN(cor_maj_20_n9) );
  NOR2_X1 cor_maj_20_U7 ( .A1(cor_maj_20_n8), .A2(cor_maj_20_n9), .ZN(
        cor_maj_20_n7) );
  NAND2_X1 cor_maj_20_U6 ( .A1(cor_maj_20_n7), .A2(mul_port_c[8]), .ZN(
        cor_maj_20_n6) );
  NAND2_X1 cor_maj_20_U5 ( .A1(cor_maj_20_n5), .A2(cor_maj_20_n6), .ZN(
        cor_maj_20_n4) );
  NOR2_X1 cor_maj_20_U4 ( .A1(cor_maj_20_n3), .A2(cor_maj_20_n4), .ZN(
        cor_maj_20_n2) );
  NAND2_X1 cor_maj_20_U3 ( .A1(cor_maj_20_n1), .A2(cor_maj_20_n2), .ZN(
        port_c[9]) );
  AND2_X1 cor_maj_21_U70 ( .A1(mul_port_c[2]), .A2(mul_port_c[1]), .ZN(
        cor_maj_21_n27) );
  OR2_X1 cor_maj_21_U69 ( .A1(mul_port_c[0]), .A2(mul_port_c[10]), .ZN(
        cor_maj_21_n53) );
  NAND2_X1 cor_maj_21_U68 ( .A1(cor_maj_21_n27), .A2(cor_maj_21_n53), .ZN(
        cor_maj_21_n66) );
  NAND2_X1 cor_maj_21_U67 ( .A1(mul_port_c[10]), .A2(mul_port_c[0]), .ZN(
        cor_maj_21_n62) );
  INV_X1 cor_maj_21_U66 ( .A(cor_maj_21_n62), .ZN(cor_maj_21_n25) );
  OR2_X1 cor_maj_21_U65 ( .A1(mul_port_c[1]), .A2(mul_port_c[2]), .ZN(
        cor_maj_21_n52) );
  NAND2_X1 cor_maj_21_U64 ( .A1(cor_maj_21_n25), .A2(cor_maj_21_n52), .ZN(
        cor_maj_21_n67) );
  AND2_X1 cor_maj_21_U63 ( .A1(cor_maj_21_n66), .A2(cor_maj_21_n67), .ZN(
        cor_maj_21_n16) );
  AND2_X1 cor_maj_21_U62 ( .A1(mul_port_c[6]), .A2(mul_port_c[5]), .ZN(
        cor_maj_21_n59) );
  OR2_X1 cor_maj_21_U61 ( .A1(mul_port_c[3]), .A2(mul_port_c[4]), .ZN(
        cor_maj_21_n57) );
  NAND2_X1 cor_maj_21_U60 ( .A1(cor_maj_21_n59), .A2(cor_maj_21_n57), .ZN(
        cor_maj_21_n64) );
  AND2_X1 cor_maj_21_U59 ( .A1(mul_port_c[4]), .A2(mul_port_c[3]), .ZN(
        cor_maj_21_n58) );
  OR2_X1 cor_maj_21_U58 ( .A1(mul_port_c[5]), .A2(mul_port_c[6]), .ZN(
        cor_maj_21_n56) );
  NAND2_X1 cor_maj_21_U57 ( .A1(cor_maj_21_n58), .A2(cor_maj_21_n56), .ZN(
        cor_maj_21_n65) );
  AND2_X1 cor_maj_21_U56 ( .A1(cor_maj_21_n64), .A2(cor_maj_21_n65), .ZN(
        cor_maj_21_n17) );
  NOR2_X1 cor_maj_21_U55 ( .A1(cor_maj_21_n16), .A2(cor_maj_21_n17), .ZN(
        cor_maj_21_n42) );
  NOR2_X1 cor_maj_21_U54 ( .A1(cor_maj_21_n56), .A2(cor_maj_21_n57), .ZN(
        cor_maj_21_n41) );
  INV_X1 cor_maj_21_U53 ( .A(cor_maj_21_n41), .ZN(cor_maj_21_n22) );
  NAND2_X1 cor_maj_21_U52 ( .A1(cor_maj_21_n27), .A2(cor_maj_21_n22), .ZN(
        cor_maj_21_n63) );
  NOR2_X1 cor_maj_21_U51 ( .A1(cor_maj_21_n62), .A2(cor_maj_21_n63), .ZN(
        cor_maj_21_n60) );
  NOR2_X1 cor_maj_21_U50 ( .A1(cor_maj_21_n52), .A2(cor_maj_21_n53), .ZN(
        cor_maj_21_n20) );
  NAND2_X1 cor_maj_21_U49 ( .A1(cor_maj_21_n58), .A2(cor_maj_21_n59), .ZN(
        cor_maj_21_n37) );
  NOR2_X1 cor_maj_21_U48 ( .A1(cor_maj_21_n20), .A2(cor_maj_21_n37), .ZN(
        cor_maj_21_n61) );
  NOR2_X1 cor_maj_21_U47 ( .A1(cor_maj_21_n60), .A2(cor_maj_21_n61), .ZN(
        cor_maj_21_n46) );
  NOR2_X1 cor_maj_21_U46 ( .A1(cor_maj_21_n58), .A2(cor_maj_21_n59), .ZN(
        cor_maj_21_n54) );
  NAND2_X1 cor_maj_21_U45 ( .A1(cor_maj_21_n56), .A2(cor_maj_21_n57), .ZN(
        cor_maj_21_n55) );
  NAND2_X1 cor_maj_21_U44 ( .A1(cor_maj_21_n54), .A2(cor_maj_21_n55), .ZN(
        cor_maj_21_n26) );
  INV_X1 cor_maj_21_U43 ( .A(cor_maj_21_n26), .ZN(cor_maj_21_n21) );
  NOR2_X1 cor_maj_21_U42 ( .A1(cor_maj_21_n21), .A2(cor_maj_21_n16), .ZN(
        cor_maj_21_n48) );
  NOR2_X1 cor_maj_21_U41 ( .A1(cor_maj_21_n25), .A2(cor_maj_21_n27), .ZN(
        cor_maj_21_n50) );
  NAND2_X1 cor_maj_21_U40 ( .A1(cor_maj_21_n52), .A2(cor_maj_21_n53), .ZN(
        cor_maj_21_n51) );
  NAND2_X1 cor_maj_21_U39 ( .A1(cor_maj_21_n50), .A2(cor_maj_21_n51), .ZN(
        cor_maj_21_n23) );
  INV_X1 cor_maj_21_U38 ( .A(cor_maj_21_n23), .ZN(cor_maj_21_n40) );
  NOR2_X1 cor_maj_21_U37 ( .A1(cor_maj_21_n40), .A2(cor_maj_21_n17), .ZN(
        cor_maj_21_n49) );
  NOR2_X1 cor_maj_21_U36 ( .A1(cor_maj_21_n48), .A2(cor_maj_21_n49), .ZN(
        cor_maj_21_n47) );
  NAND2_X1 cor_maj_21_U35 ( .A1(cor_maj_21_n46), .A2(cor_maj_21_n47), .ZN(
        cor_maj_21_n31) );
  NAND2_X1 cor_maj_21_U34 ( .A1(mul_port_c[9]), .A2(cor_maj_21_n31), .ZN(
        cor_maj_21_n44) );
  OR2_X1 cor_maj_21_U33 ( .A1(cor_maj_21_n37), .A2(cor_maj_21_n40), .ZN(
        cor_maj_21_n45) );
  NAND2_X1 cor_maj_21_U32 ( .A1(cor_maj_21_n44), .A2(cor_maj_21_n45), .ZN(
        cor_maj_21_n43) );
  NOR2_X1 cor_maj_21_U31 ( .A1(cor_maj_21_n42), .A2(cor_maj_21_n43), .ZN(
        cor_maj_21_n1) );
  NOR2_X1 cor_maj_21_U30 ( .A1(cor_maj_21_n16), .A2(cor_maj_21_n41), .ZN(
        cor_maj_21_n38) );
  NOR2_X1 cor_maj_21_U29 ( .A1(cor_maj_21_n40), .A2(cor_maj_21_n21), .ZN(
        cor_maj_21_n39) );
  NOR2_X1 cor_maj_21_U28 ( .A1(cor_maj_21_n38), .A2(cor_maj_21_n39), .ZN(
        cor_maj_21_n32) );
  NOR2_X1 cor_maj_21_U27 ( .A1(cor_maj_21_n17), .A2(cor_maj_21_n20), .ZN(
        cor_maj_21_n34) );
  NAND2_X1 cor_maj_21_U26 ( .A1(cor_maj_21_n25), .A2(cor_maj_21_n27), .ZN(
        cor_maj_21_n36) );
  NAND2_X1 cor_maj_21_U25 ( .A1(cor_maj_21_n36), .A2(cor_maj_21_n37), .ZN(
        cor_maj_21_n35) );
  NOR2_X1 cor_maj_21_U24 ( .A1(cor_maj_21_n34), .A2(cor_maj_21_n35), .ZN(
        cor_maj_21_n33) );
  NAND2_X1 cor_maj_21_U23 ( .A1(cor_maj_21_n32), .A2(cor_maj_21_n33), .ZN(
        cor_maj_21_n11) );
  AND2_X1 cor_maj_21_U22 ( .A1(cor_maj_21_n11), .A2(mul_port_c[9]), .ZN(
        cor_maj_21_n30) );
  NOR2_X1 cor_maj_21_U21 ( .A1(cor_maj_21_n30), .A2(cor_maj_21_n31), .ZN(
        cor_maj_21_n28) );
  NOR2_X1 cor_maj_21_U20 ( .A1(mul_port_c[7]), .A2(mul_port_c[8]), .ZN(
        cor_maj_21_n29) );
  NOR2_X1 cor_maj_21_U19 ( .A1(cor_maj_21_n28), .A2(cor_maj_21_n29), .ZN(
        cor_maj_21_n3) );
  AND2_X1 cor_maj_21_U18 ( .A1(cor_maj_21_n26), .A2(cor_maj_21_n27), .ZN(
        cor_maj_21_n24) );
  NAND2_X1 cor_maj_21_U17 ( .A1(cor_maj_21_n24), .A2(cor_maj_21_n25), .ZN(
        cor_maj_21_n5) );
  NAND2_X1 cor_maj_21_U16 ( .A1(cor_maj_21_n22), .A2(cor_maj_21_n23), .ZN(
        cor_maj_21_n18) );
  OR2_X1 cor_maj_21_U15 ( .A1(cor_maj_21_n20), .A2(cor_maj_21_n21), .ZN(
        cor_maj_21_n19) );
  NAND2_X1 cor_maj_21_U14 ( .A1(cor_maj_21_n18), .A2(cor_maj_21_n19), .ZN(
        cor_maj_21_n14) );
  NAND2_X1 cor_maj_21_U13 ( .A1(cor_maj_21_n16), .A2(cor_maj_21_n17), .ZN(
        cor_maj_21_n15) );
  NOR2_X1 cor_maj_21_U12 ( .A1(cor_maj_21_n14), .A2(cor_maj_21_n15), .ZN(
        cor_maj_21_n12) );
  INV_X1 cor_maj_21_U11 ( .A(mul_port_c[9]), .ZN(cor_maj_21_n13) );
  NOR2_X1 cor_maj_21_U10 ( .A1(cor_maj_21_n12), .A2(cor_maj_21_n13), .ZN(
        cor_maj_21_n10) );
  NOR2_X1 cor_maj_21_U9 ( .A1(cor_maj_21_n10), .A2(cor_maj_21_n11), .ZN(
        cor_maj_21_n8) );
  INV_X1 cor_maj_21_U8 ( .A(mul_port_c[7]), .ZN(cor_maj_21_n9) );
  NOR2_X1 cor_maj_21_U7 ( .A1(cor_maj_21_n8), .A2(cor_maj_21_n9), .ZN(
        cor_maj_21_n7) );
  NAND2_X1 cor_maj_21_U6 ( .A1(cor_maj_21_n7), .A2(mul_port_c[8]), .ZN(
        cor_maj_21_n6) );
  NAND2_X1 cor_maj_21_U5 ( .A1(cor_maj_21_n5), .A2(cor_maj_21_n6), .ZN(
        cor_maj_21_n4) );
  NOR2_X1 cor_maj_21_U4 ( .A1(cor_maj_21_n3), .A2(cor_maj_21_n4), .ZN(
        cor_maj_21_n2) );
  NAND2_X1 cor_maj_21_U3 ( .A1(cor_maj_21_n1), .A2(cor_maj_21_n2), .ZN(
        port_c[10]) );
endmodule

