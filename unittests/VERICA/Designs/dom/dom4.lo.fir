circuit DOM : @[vlog/dom4.v:144.1-173.10]
  module AND2_X1 : @[lib/cells.v:19.1-23.10]
    input A1 : UInt<1> @[lib/cells.v:20.7-20.9]
    input A2 : UInt<1> @[lib/cells.v:20.11-20.13]
    output ZN : UInt<1> @[lib/cells.v:21.8-21.10]

    node _and_lib_cells_v_22_4 = and(A1, asUInt(A2)) @[lib/cells.v:22.14-22.21 lib/cells.v:22.14-22.21]
    ZN <= bits(_and_lib_cells_v_22_4, 0, 0) @[lib/cells.v:21.8-21.10]

  module DFF_X1 : @[lib/cells.v:49.1-56.10]
    input CK : UInt<1> @[lib/cells.v:50.7-50.9]
    input D : UInt<1> @[lib/cells.v:50.11-50.12]
    output Q : UInt<1> @[lib/cells.v:51.12-51.13]
    output QN : UInt<1> @[lib/cells.v:51.15-51.17]

    reg _procdff_14 : UInt<1>, asClock(CK) with :
      reset => (UInt<1>("h0"), _procdff_14) @[lib/cells.v:54.1-55.11]
    reg _procdff_15 : UInt<1>, asClock(CK) with :
      reset => (UInt<1>("h0"), _procdff_15) @[lib/cells.v:52.1-53.9]
    node _not_lib_cells_v_55_13 = not(pad(D, 1)) @[lib/cells.v:55.8-55.10 lib/cells.v:55.8-55.10]
    node _0_QN_0_0_ = bits(_not_lib_cells_v_55_13, 0, 0) @[lib/cells.v:54.1-55.11 lib/cells.v:54.1-55.11]
    Q <= bits(_procdff_15, 0, 0) @[lib/cells.v:51.12-51.13]
    QN <= bits(_procdff_14, 0, 0) @[lib/cells.v:51.15-51.17]
    _procdff_14 <= _0_QN_0_0_ @[lib/cells.v:54.1-55.11]
    _procdff_15 <= D @[lib/cells.v:52.1-53.9]

  module XNOR2_X1 : @[lib/cells.v:43.1-47.10]
    input A : UInt<1> @[lib/cells.v:44.7-44.8]
    input B : UInt<1> @[lib/cells.v:44.10-44.11]
    output ZN : UInt<1> @[lib/cells.v:45.8-45.10]

    node _xor_lib_cells_v_46_9 = xor(A, asUInt(B)) @[lib/cells.v:46.15-46.20 lib/cells.v:46.15-46.20]
    node _xor_lib_cells_v_46_9_Y = bits(_xor_lib_cells_v_46_9, 0, 0) @[lib/cells.v:46.15-46.20 lib/cells.v:46.15-46.20]
    node _not_lib_cells_v_46_10 = not(pad(_xor_lib_cells_v_46_9_Y, 1)) @[lib/cells.v:46.13-46.21 lib/cells.v:46.13-46.21]
    ZN <= bits(_not_lib_cells_v_46_10, 0, 0) @[lib/cells.v:45.8-45.10]

  module XOR2_X1 : @[lib/cells.v:37.1-41.10]
    input A : UInt<1> @[lib/cells.v:38.7-38.8]
    input B : UInt<1> @[lib/cells.v:38.10-38.11]
    output Z : UInt<1> @[lib/cells.v:39.8-39.9]

    node _xor_lib_cells_v_40_8 = xor(A, asUInt(B)) @[lib/cells.v:40.13-40.18 lib/cells.v:40.13-40.18]
    Z <= bits(_xor_lib_cells_v_40_8, 0, 0) @[lib/cells.v:39.8-39.9]

  module DOMcmp : @[vlog/dom4.v:112.1-141.10]
    output port_c : UInt<5> @[vlog/dom4.v:118.16-118.22]
    input port_v_0 : UInt<5> @[vlog/dom4.v:113.15-113.23]
    input port_v_1 : UInt<5> @[vlog/dom4.v:114.15-114.23]
    input port_v_2 : UInt<5> @[vlog/dom4.v:115.15-115.23]
    input port_v_3 : UInt<5> @[vlog/dom4.v:116.15-116.23]
    input port_v_4 : UInt<5> @[vlog/dom4.v:117.15-117.23]

    inst U1 of XOR2_X1 @[vlog/dom4.v:121.11-121.58]
    inst U10 of XNOR2_X1 @[vlog/dom4.v:130.12-130.61]
    inst U11 of XNOR2_X1 @[vlog/dom4.v:131.12-131.43]
    inst U12 of XOR2_X1 @[vlog/dom4.v:132.11-132.57]
    inst U13 of XOR2_X1 @[vlog/dom4.v:133.11-133.60]
    inst U14 of XNOR2_X1 @[vlog/dom4.v:134.12-134.62]
    inst U15 of XNOR2_X1 @[vlog/dom4.v:135.12-135.46]
    inst U16 of XOR2_X1 @[vlog/dom4.v:136.11-136.58]
    inst U17 of XOR2_X1 @[vlog/dom4.v:137.11-137.60]
    inst U18 of XNOR2_X1 @[vlog/dom4.v:138.12-138.62]
    inst U19 of XNOR2_X1 @[vlog/dom4.v:139.12-139.46]
    inst U2 of XNOR2_X1 @[vlog/dom4.v:122.12-122.60]
    inst U20 of XOR2_X1 @[vlog/dom4.v:140.11-140.58]
    inst U3 of XNOR2_X1 @[vlog/dom4.v:123.12-123.42]
    inst U4 of XOR2_X1 @[vlog/dom4.v:124.11-124.56]
    inst U5 of XOR2_X1 @[vlog/dom4.v:125.11-125.58]
    inst U6 of XNOR2_X1 @[vlog/dom4.v:126.12-126.60]
    inst U7 of XNOR2_X1 @[vlog/dom4.v:127.12-127.42]
    inst U8 of XOR2_X1 @[vlog/dom4.v:128.11-128.56]
    inst U9 of XOR2_X1 @[vlog/dom4.v:129.11-129.58]
    node n1 = U2.ZN @[vlog/dom4.v:119.10-119.12 vlog/dom4.v:122.12-122.60]
    node n10 = U14.ZN @[vlog/dom4.v:119.46-119.49 vlog/dom4.v:134.12-134.62]
    node n11 = U13.Z @[vlog/dom4.v:119.51-119.54 vlog/dom4.v:133.11-133.60]
    node n12 = U15.ZN @[vlog/dom4.v:119.56-119.59 vlog/dom4.v:135.12-135.46]
    node n13 = U18.ZN @[vlog/dom4.v:119.61-119.64 vlog/dom4.v:138.12-138.62]
    node n14 = U17.Z @[vlog/dom4.v:119.66-119.69 vlog/dom4.v:137.11-137.60]
    node n15 = U19.ZN @[vlog/dom4.v:119.71-119.74 vlog/dom4.v:139.12-139.46]
    node n2 = U1.Z @[vlog/dom4.v:119.14-119.16 vlog/dom4.v:121.11-121.58]
    node n3 = U3.ZN @[vlog/dom4.v:119.18-119.20 vlog/dom4.v:123.12-123.42]
    node n4 = U6.ZN @[vlog/dom4.v:119.22-119.24 vlog/dom4.v:126.12-126.60]
    node n5 = U5.Z @[vlog/dom4.v:119.26-119.28 vlog/dom4.v:125.11-125.58]
    node n6 = U7.ZN @[vlog/dom4.v:119.30-119.32 vlog/dom4.v:127.12-127.42]
    node n7 = U10.ZN @[vlog/dom4.v:119.34-119.36 vlog/dom4.v:130.12-130.61]
    node n8 = U9.Z @[vlog/dom4.v:119.38-119.40 vlog/dom4.v:129.11-129.58]
    node n9 = U11.ZN @[vlog/dom4.v:119.42-119.44 vlog/dom4.v:131.12-131.43]
    port_c <= cat(bits(U20.Z, 0, 0), cat(bits(U16.Z, 0, 0), cat(bits(U12.Z, 0, 0), cat(bits(U8.Z, 0, 0), bits(U4.Z, 0, 0))))) @[vlog/dom4.v:118.16-118.22]
    U1.A <= bits(port_v_0, 2, 2) @[vlog/dom4.v:121.11-121.58]
    U1.B <= bits(port_v_0, 3, 3) @[vlog/dom4.v:121.11-121.58]
    U10.A <= bits(port_v_2, 4, 4) @[vlog/dom4.v:130.12-130.61]
    U10.B <= bits(port_v_2, 1, 1) @[vlog/dom4.v:130.12-130.61]
    U11.A <= n8 @[vlog/dom4.v:131.12-131.43]
    U11.B <= n7 @[vlog/dom4.v:131.12-131.43]
    U12.A <= bits(port_v_2, 0, 0) @[vlog/dom4.v:132.11-132.57]
    U12.B <= n9 @[vlog/dom4.v:132.11-132.57]
    U13.A <= bits(port_v_3, 2, 2) @[vlog/dom4.v:133.11-133.60]
    U13.B <= bits(port_v_3, 3, 3) @[vlog/dom4.v:133.11-133.60]
    U14.A <= bits(port_v_3, 4, 4) @[vlog/dom4.v:134.12-134.62]
    U14.B <= bits(port_v_3, 1, 1) @[vlog/dom4.v:134.12-134.62]
    U15.A <= n11 @[vlog/dom4.v:135.12-135.46]
    U15.B <= n10 @[vlog/dom4.v:135.12-135.46]
    U16.A <= bits(port_v_3, 0, 0) @[vlog/dom4.v:136.11-136.58]
    U16.B <= n12 @[vlog/dom4.v:136.11-136.58]
    U17.A <= bits(port_v_4, 2, 2) @[vlog/dom4.v:137.11-137.60]
    U17.B <= bits(port_v_4, 3, 3) @[vlog/dom4.v:137.11-137.60]
    U18.A <= bits(port_v_4, 4, 4) @[vlog/dom4.v:138.12-138.62]
    U18.B <= bits(port_v_4, 1, 1) @[vlog/dom4.v:138.12-138.62]
    U19.A <= n14 @[vlog/dom4.v:139.12-139.46]
    U19.B <= n13 @[vlog/dom4.v:139.12-139.46]
    U2.A <= bits(port_v_0, 4, 4) @[vlog/dom4.v:122.12-122.60]
    U2.B <= bits(port_v_0, 1, 1) @[vlog/dom4.v:122.12-122.60]
    U20.A <= bits(port_v_4, 0, 0) @[vlog/dom4.v:140.11-140.58]
    U20.B <= n15 @[vlog/dom4.v:140.11-140.58]
    U3.A <= n2 @[vlog/dom4.v:123.12-123.42]
    U3.B <= n1 @[vlog/dom4.v:123.12-123.42]
    U4.A <= bits(port_v_0, 0, 0) @[vlog/dom4.v:124.11-124.56]
    U4.B <= n3 @[vlog/dom4.v:124.11-124.56]
    U5.A <= bits(port_v_1, 2, 2) @[vlog/dom4.v:125.11-125.58]
    U5.B <= bits(port_v_1, 3, 3) @[vlog/dom4.v:125.11-125.58]
    U6.A <= bits(port_v_1, 4, 4) @[vlog/dom4.v:126.12-126.60]
    U6.B <= bits(port_v_1, 1, 1) @[vlog/dom4.v:126.12-126.60]
    U7.A <= n5 @[vlog/dom4.v:127.12-127.42]
    U7.B <= n4 @[vlog/dom4.v:127.12-127.42]
    U8.A <= bits(port_v_1, 0, 0) @[vlog/dom4.v:128.11-128.56]
    U8.B <= n6 @[vlog/dom4.v:128.11-128.56]
    U9.A <= bits(port_v_2, 2, 2) @[vlog/dom4.v:129.11-129.58]
    U9.B <= bits(port_v_2, 3, 3) @[vlog/dom4.v:129.11-129.58]

  module DOMmul : @[vlog/dom4.v:8.1-44.10]
    input port_a : UInt<5> @[vlog/dom4.v:10.15-10.21]
    input port_b : UInt<5> @[vlog/dom4.v:11.15-11.21]
    output port_u_0 : UInt<5> @[vlog/dom4.v:12.16-12.24]
    output port_u_1 : UInt<5> @[vlog/dom4.v:13.16-13.24]
    output port_u_2 : UInt<5> @[vlog/dom4.v:14.16-14.24]
    output port_u_3 : UInt<5> @[vlog/dom4.v:15.16-15.24]
    output port_u_4 : UInt<5> @[vlog/dom4.v:16.16-16.24]

    inst U1 of AND2_X1 @[vlog/dom4.v:19.11-19.66]
    inst U10 of AND2_X1 @[vlog/dom4.v:28.11-28.67]
    inst U11 of AND2_X1 @[vlog/dom4.v:29.11-29.67]
    inst U12 of AND2_X1 @[vlog/dom4.v:30.11-30.67]
    inst U13 of AND2_X1 @[vlog/dom4.v:31.11-31.67]
    inst U14 of AND2_X1 @[vlog/dom4.v:32.11-32.67]
    inst U15 of AND2_X1 @[vlog/dom4.v:33.11-33.67]
    inst U16 of AND2_X1 @[vlog/dom4.v:34.11-34.67]
    inst U17 of AND2_X1 @[vlog/dom4.v:35.11-35.67]
    inst U18 of AND2_X1 @[vlog/dom4.v:36.11-36.67]
    inst U19 of AND2_X1 @[vlog/dom4.v:37.11-37.67]
    inst U2 of AND2_X1 @[vlog/dom4.v:20.11-20.66]
    inst U20 of AND2_X1 @[vlog/dom4.v:38.11-38.67]
    inst U21 of AND2_X1 @[vlog/dom4.v:39.11-39.67]
    inst U22 of AND2_X1 @[vlog/dom4.v:40.11-40.67]
    inst U23 of AND2_X1 @[vlog/dom4.v:41.11-41.67]
    inst U24 of AND2_X1 @[vlog/dom4.v:42.11-42.67]
    inst U25 of AND2_X1 @[vlog/dom4.v:43.11-43.67]
    inst U3 of AND2_X1 @[vlog/dom4.v:21.11-21.66]
    inst U4 of AND2_X1 @[vlog/dom4.v:22.11-22.66]
    inst U5 of AND2_X1 @[vlog/dom4.v:23.11-23.66]
    inst U6 of AND2_X1 @[vlog/dom4.v:24.11-24.66]
    inst U7 of AND2_X1 @[vlog/dom4.v:25.11-25.66]
    inst U8 of AND2_X1 @[vlog/dom4.v:26.11-26.66]
    inst U9 of AND2_X1 @[vlog/dom4.v:27.11-27.66]
    port_u_0 <= cat(bits(U6.ZN, 0, 0), cat(bits(U7.ZN, 0, 0), cat(bits(U8.ZN, 0, 0), cat(bits(U9.ZN, 0, 0), bits(U10.ZN, 0, 0))))) @[vlog/dom4.v:12.16-12.24]
    port_u_1 <= cat(bits(U17.ZN, 0, 0), cat(bits(U18.ZN, 0, 0), cat(bits(U19.ZN, 0, 0), cat(bits(U20.ZN, 0, 0), bits(U21.ZN, 0, 0))))) @[vlog/dom4.v:13.16-13.24]
    port_u_2 <= cat(bits(U22.ZN, 0, 0), cat(bits(U23.ZN, 0, 0), cat(bits(U24.ZN, 0, 0), cat(bits(U25.ZN, 0, 0), bits(U14.ZN, 0, 0))))) @[vlog/dom4.v:14.16-14.24]
    port_u_3 <= cat(bits(U11.ZN, 0, 0), cat(bits(U12.ZN, 0, 0), cat(bits(U13.ZN, 0, 0), cat(bits(U15.ZN, 0, 0), bits(U16.ZN, 0, 0))))) @[vlog/dom4.v:15.16-15.24]
    port_u_4 <= cat(bits(U1.ZN, 0, 0), cat(bits(U2.ZN, 0, 0), cat(bits(U3.ZN, 0, 0), cat(bits(U4.ZN, 0, 0), bits(U5.ZN, 0, 0))))) @[vlog/dom4.v:16.16-16.24]
    U1.A1 <= bits(port_b, 4, 4) @[vlog/dom4.v:19.11-19.66]
    U1.A2 <= bits(port_a, 4, 4) @[vlog/dom4.v:19.11-19.66]
    U10.A1 <= bits(port_b, 0, 0) @[vlog/dom4.v:28.11-28.67]
    U10.A2 <= bits(port_a, 0, 0) @[vlog/dom4.v:28.11-28.67]
    U11.A1 <= bits(port_b, 4, 4) @[vlog/dom4.v:29.11-29.67]
    U11.A2 <= bits(port_a, 3, 3) @[vlog/dom4.v:29.11-29.67]
    U12.A1 <= bits(port_b, 3, 3) @[vlog/dom4.v:30.11-30.67]
    U12.A2 <= bits(port_a, 3, 3) @[vlog/dom4.v:30.11-30.67]
    U13.A1 <= bits(port_b, 2, 2) @[vlog/dom4.v:31.11-31.67]
    U13.A2 <= bits(port_a, 3, 3) @[vlog/dom4.v:31.11-31.67]
    U14.A1 <= bits(port_b, 0, 0) @[vlog/dom4.v:32.11-32.67]
    U14.A2 <= bits(port_a, 2, 2) @[vlog/dom4.v:32.11-32.67]
    U15.A1 <= bits(port_b, 1, 1) @[vlog/dom4.v:33.11-33.67]
    U15.A2 <= bits(port_a, 3, 3) @[vlog/dom4.v:33.11-33.67]
    U16.A1 <= bits(port_b, 0, 0) @[vlog/dom4.v:34.11-34.67]
    U16.A2 <= bits(port_a, 3, 3) @[vlog/dom4.v:34.11-34.67]
    U17.A1 <= bits(port_b, 4, 4) @[vlog/dom4.v:35.11-35.67]
    U17.A2 <= bits(port_a, 1, 1) @[vlog/dom4.v:35.11-35.67]
    U18.A1 <= bits(port_b, 3, 3) @[vlog/dom4.v:36.11-36.67]
    U18.A2 <= bits(port_a, 1, 1) @[vlog/dom4.v:36.11-36.67]
    U19.A1 <= bits(port_a, 1, 1) @[vlog/dom4.v:37.11-37.67]
    U19.A2 <= bits(port_b, 2, 2) @[vlog/dom4.v:37.11-37.67]
    U2.A1 <= bits(port_b, 3, 3) @[vlog/dom4.v:20.11-20.66]
    U2.A2 <= bits(port_a, 4, 4) @[vlog/dom4.v:20.11-20.66]
    U20.A1 <= bits(port_b, 1, 1) @[vlog/dom4.v:38.11-38.67]
    U20.A2 <= bits(port_a, 1, 1) @[vlog/dom4.v:38.11-38.67]
    U21.A1 <= bits(port_b, 0, 0) @[vlog/dom4.v:39.11-39.67]
    U21.A2 <= bits(port_a, 1, 1) @[vlog/dom4.v:39.11-39.67]
    U22.A1 <= bits(port_a, 2, 2) @[vlog/dom4.v:40.11-40.67]
    U22.A2 <= bits(port_b, 4, 4) @[vlog/dom4.v:40.11-40.67]
    U23.A1 <= bits(port_a, 2, 2) @[vlog/dom4.v:41.11-41.67]
    U23.A2 <= bits(port_b, 3, 3) @[vlog/dom4.v:41.11-41.67]
    U24.A1 <= bits(port_a, 2, 2) @[vlog/dom4.v:42.11-42.67]
    U24.A2 <= bits(port_b, 2, 2) @[vlog/dom4.v:42.11-42.67]
    U25.A1 <= bits(port_a, 2, 2) @[vlog/dom4.v:43.11-43.67]
    U25.A2 <= bits(port_b, 1, 1) @[vlog/dom4.v:43.11-43.67]
    U3.A1 <= bits(port_b, 2, 2) @[vlog/dom4.v:21.11-21.66]
    U3.A2 <= bits(port_a, 4, 4) @[vlog/dom4.v:21.11-21.66]
    U4.A1 <= bits(port_b, 1, 1) @[vlog/dom4.v:22.11-22.66]
    U4.A2 <= bits(port_a, 4, 4) @[vlog/dom4.v:22.11-22.66]
    U5.A1 <= bits(port_b, 0, 0) @[vlog/dom4.v:23.11-23.66]
    U5.A2 <= bits(port_a, 4, 4) @[vlog/dom4.v:23.11-23.66]
    U6.A1 <= bits(port_b, 4, 4) @[vlog/dom4.v:24.11-24.66]
    U6.A2 <= bits(port_a, 0, 0) @[vlog/dom4.v:24.11-24.66]
    U7.A1 <= bits(port_b, 3, 3) @[vlog/dom4.v:25.11-25.66]
    U7.A2 <= bits(port_a, 0, 0) @[vlog/dom4.v:25.11-25.66]
    U8.A1 <= bits(port_b, 2, 2) @[vlog/dom4.v:26.11-26.66]
    U8.A2 <= bits(port_a, 0, 0) @[vlog/dom4.v:26.11-26.66]
    U9.A1 <= bits(port_b, 1, 1) @[vlog/dom4.v:27.11-27.66]
    U9.A2 <= bits(port_a, 0, 0) @[vlog/dom4.v:27.11-27.66]

  module DOMref : @[vlog/dom4.v:47.1-109.10]
    input clk : UInt<1> @[vlog/dom4.v:60.9-60.12]
    input port_r : UInt<10> @[vlog/dom4.v:59.15-59.21]
    input port_u_0 : UInt<5> @[vlog/dom4.v:49.15-49.23]
    input port_u_1 : UInt<5> @[vlog/dom4.v:50.15-50.23]
    input port_u_2 : UInt<5> @[vlog/dom4.v:51.15-51.23]
    input port_u_3 : UInt<5> @[vlog/dom4.v:52.15-52.23]
    input port_u_4 : UInt<5> @[vlog/dom4.v:53.15-53.23]
    output port_v_0 : UInt<5> @[vlog/dom4.v:54.16-54.24]
    output port_v_1 : UInt<5> @[vlog/dom4.v:55.16-55.24]
    output port_v_2 : UInt<5> @[vlog/dom4.v:56.16-56.24]
    output port_v_3 : UInt<5> @[vlog/dom4.v:57.16-57.24]
    output port_v_4 : UInt<5> @[vlog/dom4.v:58.16-58.24]
    input reset : UInt<1> @[vlog/dom4.v:60.14-60.19]

    inst U10 of XOR2_X1 @[vlog/dom4.v:96.11-96.57]
    inst U11 of XOR2_X1 @[vlog/dom4.v:97.11-97.58]
    inst U12 of XOR2_X1 @[vlog/dom4.v:98.11-98.58]
    inst U13 of XOR2_X1 @[vlog/dom4.v:99.11-99.58]
    inst U14 of XOR2_X1 @[vlog/dom4.v:100.11-100.58]
    inst U15 of XOR2_X1 @[vlog/dom4.v:101.11-101.57]
    inst U16 of XOR2_X1 @[vlog/dom4.v:102.11-102.57]
    inst U17 of XOR2_X1 @[vlog/dom4.v:103.11-103.57]
    inst U18 of XOR2_X1 @[vlog/dom4.v:104.11-104.57]
    inst U19 of XOR2_X1 @[vlog/dom4.v:105.11-105.58]
    inst U20 of XOR2_X1 @[vlog/dom4.v:106.11-106.58]
    inst U21 of XOR2_X1 @[vlog/dom4.v:107.11-107.58]
    inst U22 of XOR2_X1 @[vlog/dom4.v:108.11-108.58]
    inst U3 of XOR2_X1 @[vlog/dom4.v:89.11-89.56]
    inst U4 of XOR2_X1 @[vlog/dom4.v:90.11-90.56]
    inst U5 of XOR2_X1 @[vlog/dom4.v:91.11-91.57]
    inst U6 of XOR2_X1 @[vlog/dom4.v:92.11-92.57]
    inst U7 of XOR2_X1 @[vlog/dom4.v:93.11-93.56]
    inst U8 of XOR2_X1 @[vlog/dom4.v:94.11-94.56]
    inst U9 of XOR2_X1 @[vlog/dom4.v:95.11-95.56]
    inst ff_0_reg_0_ of DFF_X1 @[vlog/dom4.v:73.10-73.75]
    inst ff_0_reg_1_ of DFF_X1 @[vlog/dom4.v:72.10-72.66]
    inst ff_0_reg_2_ of DFF_X1 @[vlog/dom4.v:71.10-71.66]
    inst ff_0_reg_3_ of DFF_X1 @[vlog/dom4.v:70.10-70.66]
    inst ff_0_reg_4_ of DFF_X1 @[vlog/dom4.v:69.10-69.66]
    inst ff_1_reg_0_ of DFF_X1 @[vlog/dom4.v:83.10-83.66]
    inst ff_1_reg_1_ of DFF_X1 @[vlog/dom4.v:82.10-82.75]
    inst ff_1_reg_2_ of DFF_X1 @[vlog/dom4.v:81.10-81.66]
    inst ff_1_reg_3_ of DFF_X1 @[vlog/dom4.v:80.10-80.66]
    inst ff_1_reg_4_ of DFF_X1 @[vlog/dom4.v:79.10-79.66]
    inst ff_2_reg_0_ of DFF_X1 @[vlog/dom4.v:88.10-88.66]
    inst ff_2_reg_1_ of DFF_X1 @[vlog/dom4.v:87.10-87.66]
    inst ff_2_reg_2_ of DFF_X1 @[vlog/dom4.v:86.10-86.75]
    inst ff_2_reg_3_ of DFF_X1 @[vlog/dom4.v:85.10-85.67]
    inst ff_2_reg_4_ of DFF_X1 @[vlog/dom4.v:84.10-84.67]
    inst ff_3_reg_0_ of DFF_X1 @[vlog/dom4.v:78.10-78.67]
    inst ff_3_reg_1_ of DFF_X1 @[vlog/dom4.v:77.10-77.67]
    inst ff_3_reg_2_ of DFF_X1 @[vlog/dom4.v:76.10-76.67]
    inst ff_3_reg_3_ of DFF_X1 @[vlog/dom4.v:75.10-75.75]
    inst ff_3_reg_4_ of DFF_X1 @[vlog/dom4.v:74.10-74.67]
    inst ff_4_reg_0_ of DFF_X1 @[vlog/dom4.v:68.10-68.67]
    inst ff_4_reg_1_ of DFF_X1 @[vlog/dom4.v:67.10-67.67]
    inst ff_4_reg_2_ of DFF_X1 @[vlog/dom4.v:66.10-66.67]
    inst ff_4_reg_3_ of DFF_X1 @[vlog/dom4.v:65.10-65.67]
    inst ff_4_reg_4_ of DFF_X1 @[vlog/dom4.v:64.10-64.75]
    node N0 = U15.Z @[vlog/dom4.v:101.11-101.57 vlog/dom4.v:61.10-61.12]
    node N1 = U16.Z @[vlog/dom4.v:102.11-102.57 vlog/dom4.v:61.14-61.16]
    node N10 = U5.Z @[vlog/dom4.v:61.50-61.53 vlog/dom4.v:91.11-91.57]
    node N11 = U6.Z @[vlog/dom4.v:61.55-61.58 vlog/dom4.v:92.11-92.57]
    node N12 = U11.Z @[vlog/dom4.v:61.60-61.63 vlog/dom4.v:97.11-97.58]
    node N13 = U12.Z @[vlog/dom4.v:61.65-61.68 vlog/dom4.v:98.11-98.58]
    node N14 = U13.Z @[vlog/dom4.v:61.70-61.73 vlog/dom4.v:99.11-99.58]
    node N15 = U14.Z @[vlog/dom4.v:100.11-100.58 vlog/dom4.v:61.75-61.78]
    node N16 = U19.Z @[vlog/dom4.v:105.11-105.58 vlog/dom4.v:62.10-62.13]
    node N17 = U20.Z @[vlog/dom4.v:106.11-106.58 vlog/dom4.v:62.15-62.18]
    node N18 = U21.Z @[vlog/dom4.v:107.11-107.58 vlog/dom4.v:62.20-62.23]
    node N19 = U22.Z @[vlog/dom4.v:108.11-108.58 vlog/dom4.v:62.25-62.28]
    node N2 = U17.Z @[vlog/dom4.v:103.11-103.57 vlog/dom4.v:61.18-61.20]
    node N3 = U18.Z @[vlog/dom4.v:104.11-104.57 vlog/dom4.v:61.22-61.24]
    node N4 = U7.Z @[vlog/dom4.v:61.26-61.28 vlog/dom4.v:93.11-93.56]
    node N5 = U8.Z @[vlog/dom4.v:61.30-61.32 vlog/dom4.v:94.11-94.56]
    node N6 = U9.Z @[vlog/dom4.v:61.34-61.36 vlog/dom4.v:95.11-95.56]
    node N7 = U10.Z @[vlog/dom4.v:61.38-61.40 vlog/dom4.v:96.11-96.57]
    node N8 = U3.Z @[vlog/dom4.v:61.42-61.44 vlog/dom4.v:89.11-89.56]
    node N9 = U4.Z @[vlog/dom4.v:61.46-61.48 vlog/dom4.v:90.11-90.56]
    port_v_0 <= cat(bits(ff_0_reg_4_.Q, 0, 0), cat(bits(ff_0_reg_3_.Q, 0, 0), cat(bits(ff_0_reg_2_.Q, 0, 0), cat(bits(ff_0_reg_1_.Q, 0, 0), bits(ff_0_reg_0_.Q, 0, 0))))) @[vlog/dom4.v:54.16-54.24]
    port_v_1 <= cat(bits(ff_1_reg_4_.Q, 0, 0), cat(bits(ff_1_reg_3_.Q, 0, 0), cat(bits(ff_1_reg_2_.Q, 0, 0), cat(bits(ff_1_reg_1_.Q, 0, 0), bits(ff_1_reg_0_.Q, 0, 0))))) @[vlog/dom4.v:55.16-55.24]
    port_v_2 <= cat(bits(ff_2_reg_4_.Q, 0, 0), cat(bits(ff_2_reg_3_.Q, 0, 0), cat(bits(ff_2_reg_2_.Q, 0, 0), cat(bits(ff_2_reg_1_.Q, 0, 0), bits(ff_2_reg_0_.Q, 0, 0))))) @[vlog/dom4.v:56.16-56.24]
    port_v_3 <= cat(bits(ff_3_reg_4_.Q, 0, 0), cat(bits(ff_3_reg_3_.Q, 0, 0), cat(bits(ff_3_reg_2_.Q, 0, 0), cat(bits(ff_3_reg_1_.Q, 0, 0), bits(ff_3_reg_0_.Q, 0, 0))))) @[vlog/dom4.v:57.16-57.24]
    port_v_4 <= cat(bits(ff_4_reg_4_.Q, 0, 0), cat(bits(ff_4_reg_3_.Q, 0, 0), cat(bits(ff_4_reg_2_.Q, 0, 0), cat(bits(ff_4_reg_1_.Q, 0, 0), bits(ff_4_reg_0_.Q, 0, 0))))) @[vlog/dom4.v:58.16-58.24]
    U10.A <= bits(port_r, 7, 7) @[vlog/dom4.v:96.11-96.57]
    U10.B <= bits(port_u_1, 4, 4) @[vlog/dom4.v:96.11-96.57]
    U11.A <= bits(port_r, 3, 3) @[vlog/dom4.v:97.11-97.58]
    U11.B <= bits(port_u_3, 0, 0) @[vlog/dom4.v:97.11-97.58]
    U12.A <= bits(port_r, 4, 4) @[vlog/dom4.v:98.11-98.58]
    U12.B <= bits(port_u_3, 1, 1) @[vlog/dom4.v:98.11-98.58]
    U13.A <= bits(port_r, 5, 5) @[vlog/dom4.v:99.11-99.58]
    U13.B <= bits(port_u_3, 2, 2) @[vlog/dom4.v:99.11-99.58]
    U14.A <= bits(port_r, 9, 9) @[vlog/dom4.v:100.11-100.58]
    U14.B <= bits(port_u_3, 4, 4) @[vlog/dom4.v:100.11-100.58]
    U15.A <= bits(port_r, 0, 0) @[vlog/dom4.v:101.11-101.57]
    U15.B <= bits(port_u_0, 1, 1) @[vlog/dom4.v:101.11-101.57]
    U16.A <= bits(port_r, 1, 1) @[vlog/dom4.v:102.11-102.57]
    U16.B <= bits(port_u_0, 2, 2) @[vlog/dom4.v:102.11-102.57]
    U17.A <= bits(port_r, 3, 3) @[vlog/dom4.v:103.11-103.57]
    U17.B <= bits(port_u_0, 3, 3) @[vlog/dom4.v:103.11-103.57]
    U18.A <= bits(port_r, 6, 6) @[vlog/dom4.v:104.11-104.57]
    U18.B <= bits(port_u_0, 4, 4) @[vlog/dom4.v:104.11-104.57]
    U19.A <= bits(port_r, 6, 6) @[vlog/dom4.v:105.11-105.58]
    U19.B <= bits(port_u_4, 0, 0) @[vlog/dom4.v:105.11-105.58]
    U20.A <= bits(port_r, 7, 7) @[vlog/dom4.v:106.11-106.58]
    U20.B <= bits(port_u_4, 1, 1) @[vlog/dom4.v:106.11-106.58]
    U21.A <= bits(port_r, 8, 8) @[vlog/dom4.v:107.11-107.58]
    U21.B <= bits(port_u_4, 2, 2) @[vlog/dom4.v:107.11-107.58]
    U22.A <= bits(port_r, 9, 9) @[vlog/dom4.v:108.11-108.58]
    U22.B <= bits(port_u_4, 3, 3) @[vlog/dom4.v:108.11-108.58]
    U3.A <= bits(port_r, 1, 1) @[vlog/dom4.v:89.11-89.56]
    U3.B <= bits(port_u_2, 0, 0) @[vlog/dom4.v:89.11-89.56]
    U4.A <= bits(port_r, 2, 2) @[vlog/dom4.v:90.11-90.56]
    U4.B <= bits(port_u_2, 1, 1) @[vlog/dom4.v:90.11-90.56]
    U5.A <= bits(port_r, 5, 5) @[vlog/dom4.v:91.11-91.57]
    U5.B <= bits(port_u_2, 3, 3) @[vlog/dom4.v:91.11-91.57]
    U6.A <= bits(port_r, 8, 8) @[vlog/dom4.v:92.11-92.57]
    U6.B <= bits(port_u_2, 4, 4) @[vlog/dom4.v:92.11-92.57]
    U7.A <= bits(port_r, 0, 0) @[vlog/dom4.v:93.11-93.56]
    U7.B <= bits(port_u_1, 0, 0) @[vlog/dom4.v:93.11-93.56]
    U8.A <= bits(port_r, 2, 2) @[vlog/dom4.v:94.11-94.56]
    U8.B <= bits(port_u_1, 2, 2) @[vlog/dom4.v:94.11-94.56]
    U9.A <= bits(port_r, 4, 4) @[vlog/dom4.v:95.11-95.56]
    U9.B <= bits(port_u_1, 3, 3) @[vlog/dom4.v:95.11-95.56]
    ff_0_reg_0_.CK <= clk @[vlog/dom4.v:73.10-73.75]
    ff_0_reg_0_.D <= bits(port_u_0, 0, 0) @[vlog/dom4.v:73.10-73.75]
    ff_0_reg_1_.CK <= clk @[vlog/dom4.v:72.10-72.66]
    ff_0_reg_1_.D <= N0 @[vlog/dom4.v:72.10-72.66]
    ff_0_reg_2_.CK <= clk @[vlog/dom4.v:71.10-71.66]
    ff_0_reg_2_.D <= N1 @[vlog/dom4.v:71.10-71.66]
    ff_0_reg_3_.CK <= clk @[vlog/dom4.v:70.10-70.66]
    ff_0_reg_3_.D <= N2 @[vlog/dom4.v:70.10-70.66]
    ff_0_reg_4_.CK <= clk @[vlog/dom4.v:69.10-69.66]
    ff_0_reg_4_.D <= N3 @[vlog/dom4.v:69.10-69.66]
    ff_1_reg_0_.CK <= clk @[vlog/dom4.v:83.10-83.66]
    ff_1_reg_0_.D <= N4 @[vlog/dom4.v:83.10-83.66]
    ff_1_reg_1_.CK <= clk @[vlog/dom4.v:82.10-82.75]
    ff_1_reg_1_.D <= bits(port_u_1, 1, 1) @[vlog/dom4.v:82.10-82.75]
    ff_1_reg_2_.CK <= clk @[vlog/dom4.v:81.10-81.66]
    ff_1_reg_2_.D <= N5 @[vlog/dom4.v:81.10-81.66]
    ff_1_reg_3_.CK <= clk @[vlog/dom4.v:80.10-80.66]
    ff_1_reg_3_.D <= N6 @[vlog/dom4.v:80.10-80.66]
    ff_1_reg_4_.CK <= clk @[vlog/dom4.v:79.10-79.66]
    ff_1_reg_4_.D <= N7 @[vlog/dom4.v:79.10-79.66]
    ff_2_reg_0_.CK <= clk @[vlog/dom4.v:88.10-88.66]
    ff_2_reg_0_.D <= N8 @[vlog/dom4.v:88.10-88.66]
    ff_2_reg_1_.CK <= clk @[vlog/dom4.v:87.10-87.66]
    ff_2_reg_1_.D <= N9 @[vlog/dom4.v:87.10-87.66]
    ff_2_reg_2_.CK <= clk @[vlog/dom4.v:86.10-86.75]
    ff_2_reg_2_.D <= bits(port_u_2, 2, 2) @[vlog/dom4.v:86.10-86.75]
    ff_2_reg_3_.CK <= clk @[vlog/dom4.v:85.10-85.67]
    ff_2_reg_3_.D <= N10 @[vlog/dom4.v:85.10-85.67]
    ff_2_reg_4_.CK <= clk @[vlog/dom4.v:84.10-84.67]
    ff_2_reg_4_.D <= N11 @[vlog/dom4.v:84.10-84.67]
    ff_3_reg_0_.CK <= clk @[vlog/dom4.v:78.10-78.67]
    ff_3_reg_0_.D <= N12 @[vlog/dom4.v:78.10-78.67]
    ff_3_reg_1_.CK <= clk @[vlog/dom4.v:77.10-77.67]
    ff_3_reg_1_.D <= N13 @[vlog/dom4.v:77.10-77.67]
    ff_3_reg_2_.CK <= clk @[vlog/dom4.v:76.10-76.67]
    ff_3_reg_2_.D <= N14 @[vlog/dom4.v:76.10-76.67]
    ff_3_reg_3_.CK <= clk @[vlog/dom4.v:75.10-75.75]
    ff_3_reg_3_.D <= bits(port_u_3, 3, 3) @[vlog/dom4.v:75.10-75.75]
    ff_3_reg_4_.CK <= clk @[vlog/dom4.v:74.10-74.67]
    ff_3_reg_4_.D <= N15 @[vlog/dom4.v:74.10-74.67]
    ff_4_reg_0_.CK <= clk @[vlog/dom4.v:68.10-68.67]
    ff_4_reg_0_.D <= N16 @[vlog/dom4.v:68.10-68.67]
    ff_4_reg_1_.CK <= clk @[vlog/dom4.v:67.10-67.67]
    ff_4_reg_1_.D <= N17 @[vlog/dom4.v:67.10-67.67]
    ff_4_reg_2_.CK <= clk @[vlog/dom4.v:66.10-66.67]
    ff_4_reg_2_.D <= N18 @[vlog/dom4.v:66.10-66.67]
    ff_4_reg_3_.CK <= clk @[vlog/dom4.v:65.10-65.67]
    ff_4_reg_3_.D <= N19 @[vlog/dom4.v:65.10-65.67]
    ff_4_reg_4_.CK <= clk @[vlog/dom4.v:64.10-64.75]
    ff_4_reg_4_.D <= bits(port_u_4, 4, 4) @[vlog/dom4.v:64.10-64.75]

  module DOM : @[vlog/dom4.v:144.1-173.10]
    input clk : UInt<1> @[vlog/dom4.v:149.9-149.12]
    input port_a : UInt<5> @[vlog/dom4.v:145.15-145.21]
    input port_b : UInt<5> @[vlog/dom4.v:146.15-146.21]
    output port_c : UInt<5> @[vlog/dom4.v:147.16-147.22]
    input port_r : UInt<10> @[vlog/dom4.v:148.15-148.21]
    input reset : UInt<1> @[vlog/dom4.v:149.14-149.19]

    inst cmp of DOMcmp @[vlog/dom4.v:170.10-172.43]
    inst mul_ of DOMmul @[vlog/dom4.v:162.10-164.49]
    inst ref_1_ of DOMref @[vlog/dom4.v:165.10-169.51]
    node mul_port_u_0 = mul_.port_u_0 @[vlog/dom4.v:151.16-151.28 vlog/dom4.v:162.10-164.49]
    node mul_port_u_1 = mul_.port_u_1 @[vlog/dom4.v:152.16-152.28 vlog/dom4.v:162.10-164.49]
    node mul_port_u_2 = mul_.port_u_2 @[vlog/dom4.v:153.16-153.28 vlog/dom4.v:162.10-164.49]
    node mul_port_u_3 = mul_.port_u_3 @[vlog/dom4.v:154.16-154.28 vlog/dom4.v:162.10-164.49]
    node mul_port_u_4 = mul_.port_u_4 @[vlog/dom4.v:155.16-155.28 vlog/dom4.v:162.10-164.49]
    node ref_1_port_v_0 = ref_1_.port_v_0 @[vlog/dom4.v:156.16-156.30 vlog/dom4.v:165.10-169.51]
    node ref_1_port_v_1 = ref_1_.port_v_1 @[vlog/dom4.v:157.16-157.30 vlog/dom4.v:165.10-169.51]
    node ref_1_port_v_2 = ref_1_.port_v_2 @[vlog/dom4.v:158.16-158.30 vlog/dom4.v:165.10-169.51]
    node ref_1_port_v_3 = ref_1_.port_v_3 @[vlog/dom4.v:159.16-159.30 vlog/dom4.v:165.10-169.51]
    node ref_1_port_v_4 = ref_1_.port_v_4 @[vlog/dom4.v:160.16-160.30 vlog/dom4.v:165.10-169.51]
    port_c <= cmp.port_c @[vlog/dom4.v:170.10-172.43]
    cmp.port_v_0 <= ref_1_port_v_0 @[vlog/dom4.v:170.10-172.43]
    cmp.port_v_1 <= ref_1_port_v_1 @[vlog/dom4.v:170.10-172.43]
    cmp.port_v_2 <= ref_1_port_v_2 @[vlog/dom4.v:170.10-172.43]
    cmp.port_v_3 <= ref_1_port_v_3 @[vlog/dom4.v:170.10-172.43]
    cmp.port_v_4 <= ref_1_port_v_4 @[vlog/dom4.v:170.10-172.43]
    mul_.port_a <= port_a @[vlog/dom4.v:162.10-164.49]
    mul_.port_b <= port_b @[vlog/dom4.v:162.10-164.49]
    ref_1_.clk <= clk @[vlog/dom4.v:165.10-169.51]
    ref_1_.port_r <= port_r @[vlog/dom4.v:165.10-169.51]
    ref_1_.port_u_0 <= mul_port_u_0 @[vlog/dom4.v:165.10-169.51]
    ref_1_.port_u_1 <= mul_port_u_1 @[vlog/dom4.v:165.10-169.51]
    ref_1_.port_u_2 <= mul_port_u_2 @[vlog/dom4.v:165.10-169.51]
    ref_1_.port_u_3 <= mul_port_u_3 @[vlog/dom4.v:165.10-169.51]
    ref_1_.port_u_4 <= mul_port_u_4 @[vlog/dom4.v:165.10-169.51]
    ref_1_.reset <= UInt<1>("h0") @[vlog/dom4.v:165.10-169.51]
