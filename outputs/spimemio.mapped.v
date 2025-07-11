/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R) NXT Graphical
// Version   : T-2022.03-SP4
// Date      : Mon Mar 24 11:30:48 2025
/////////////////////////////////////////////////////////////


module spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_xfer_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  SAEDRVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK) );
endmodule


module spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_xfer_4 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  SAEDRVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK) );
endmodule


module spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_xfer_3 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  SAEDRVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK) );
endmodule


module spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_xfer_2 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  SAEDRVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK) );
endmodule


module spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_xfer_1 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  SAEDRVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK) );
endmodule


module spimemio_spimemio_xfer_0 ( clk, resetn, xfer_resetn, din_valid, 
        din_ready_BAR, din_data, din_tag, din_cont, din_dspi, din_qspi, 
        din_ddr, din_rd, dout_valid, dout_data, dout_tag, flash_csb, flash_clk, 
        flash_io0_oe, flash_io1_oe, flash_io2_oe, flash_io3_oe, flash_io0_do, 
        flash_io1_do, flash_io2_do, flash_io3_do, flash_io0_di, flash_io1_di, 
        flash_io2_di, flash_io3_di, IN0 );
  input [7:0] din_data;
  input [3:0] din_tag;
  output [7:0] dout_data;
  output [3:0] dout_tag;
  input clk, resetn, xfer_resetn, din_valid, din_cont, din_dspi, din_qspi,
         din_ddr, din_rd, flash_io0_di, flash_io1_di, flash_io2_di,
         flash_io3_di, IN0;
  output din_ready_BAR, dout_valid, flash_csb, flash_clk, flash_io0_oe,
         flash_io1_oe, flash_io2_oe, flash_io3_oe, flash_io0_do, flash_io1_do,
         flash_io2_do, flash_io3_do;
  wire   xfer_ddr_q, xfer_ddr, fetch, last_fetch, xfer_qspi, xfer_dspi,
         xfer_rd, N101, N102, N103, N104, N105, N106, N107, N108, N191, N193,
         N195, N197, N199, N201, N203, N205, N206, N207, N212, N214, N216,
         N217, N218, N220, N222, N224, N225, N226, N228, N230, N232, N236,
         N238, N240, N241, N250, N279, net784, net790, net795, net800, net805,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170;
  wire   [2:0] xfer_tag;
  wire   [7:0] obuffer;
  wire   [3:0] count;
  wire   [3:0] dummy_count;

  spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_xfer_0 clk_gate_xfer_rd_reg ( .CLK(
        clk), .EN(N241), .ENCLK(net784), .TE(n170) );
  spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_xfer_4 clk_gate_dummy_count_reg ( 
        .CLK(clk), .EN(N225), .ENCLK(net790), .TE(n170) );
  spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_xfer_3 clk_gate_obuffer_reg ( .CLK(
        clk), .EN(N250), .ENCLK(net795), .TE(n170) );
  spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_xfer_2 clk_gate_ibuffer_reg ( .CLK(
        clk), .EN(N279), .ENCLK(net800), .TE(n170) );
  spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_xfer_1 clk_gate_count_reg ( .CLK(clk), 
        .EN(N217), .ENCLK(net805), .TE(n170) );
  SAEDRVT14_FSDPQ_V2LP_1 xfer_tag_q_reg_2_ ( .D(xfer_tag[2]), .SI(n167), .SE(
        n167), .CK(clk), .Q(dout_tag[2]) );
  SAEDRVT14_FSDPQ_V2LP_1 xfer_tag_reg_2_ ( .D(N232), .SI(n166), .SE(n166), 
        .CK(net784), .Q(xfer_tag[2]) );
  SAEDRVT14_FSDPQ_V2LP_1 last_fetch_reg ( .D(N207), .SI(n165), .SE(n165), .CK(
        clk), .Q(last_fetch) );
  SAEDRVT14_FSDPQ_V2LP_1 xfer_ddr_q_reg ( .D(xfer_ddr), .SI(n164), .SE(n164), 
        .CK(clk), .Q(xfer_ddr_q) );
  SAEDRVT14_FSDPQ_V2LP_1 flash_csb_reg ( .D(n169), .SI(n163), .SE(n163), .CK(
        net784), .Q(flash_csb) );
  SAEDRVT14_FSDPQ_V2LP_1 xfer_tag_q_reg_0_ ( .D(xfer_tag[0]), .SI(n162), .SE(
        n162), .CK(clk), .Q(dout_tag[0]) );
  SAEDRVT14_FSDPQ_V2LP_1 xfer_tag_q_reg_1_ ( .D(xfer_tag[1]), .SI(n161), .SE(
        n161), .CK(clk), .Q(dout_tag[1]) );
  SAEDRVT14_FSDPQ_V2LP_1 xfer_tag_reg_1_ ( .D(N230), .SI(n160), .SE(n160), 
        .CK(net784), .Q(xfer_tag[1]) );
  SAEDRVT14_FSDPQ_V2LP_1 xfer_tag_reg_0_ ( .D(N228), .SI(n159), .SE(n159), 
        .CK(net784), .Q(xfer_tag[0]) );
  SAEDRVT14_FSDPQ_V2LP_1 xfer_dspi_reg ( .D(N236), .SI(n158), .SE(n158), .CK(
        net784), .Q(xfer_dspi) );
  SAEDRVT14_FSDPQ_V2LP_1 xfer_ddr_reg ( .D(N240), .SI(n157), .SE(n157), .CK(
        net784), .Q(xfer_ddr) );
  SAEDRVT14_FSDPQ_V2LP_1 xfer_qspi_reg ( .D(N238), .SI(n156), .SE(n156), .CK(
        net784), .Q(xfer_qspi) );
  SAEDRVT14_FSDPQ_V2LP_1 xfer_rd_reg ( .D(n168), .SI(n155), .SE(n155), .CK(
        net784), .Q(xfer_rd) );
  SAEDRVT14_FSDPQ_V2LP_1 ibuffer_reg_0_ ( .D(N101), .SI(n154), .SE(n154), .CK(
        net800), .Q(dout_data[0]) );
  SAEDRVT14_FSDPQ_V2LP_1 ibuffer_reg_1_ ( .D(N102), .SI(n153), .SE(n153), .CK(
        net800), .Q(dout_data[1]) );
  SAEDRVT14_FSDPQ_V2LP_1 fetch_reg ( .D(N206), .SI(n152), .SE(n152), .CK(clk), 
        .Q(fetch) );
  SAEDRVT14_FSDPQ_V2LP_1 ibuffer_reg_7_ ( .D(N108), .SI(n151), .SE(n151), .CK(
        net800), .Q(dout_data[7]) );
  SAEDRVT14_FSDPQ_V2LP_1 ibuffer_reg_6_ ( .D(N107), .SI(n150), .SE(n150), .CK(
        net800), .Q(dout_data[6]) );
  SAEDRVT14_FSDPQ_V2LP_1 ibuffer_reg_5_ ( .D(N106), .SI(n149), .SE(n149), .CK(
        net800), .Q(dout_data[5]) );
  SAEDRVT14_FSDPQ_V2LP_1 ibuffer_reg_4_ ( .D(N105), .SI(n148), .SE(n148), .CK(
        net800), .Q(dout_data[4]) );
  SAEDRVT14_FSDPQ_V2LP_1 ibuffer_reg_2_ ( .D(N103), .SI(n147), .SE(n147), .CK(
        net800), .Q(dout_data[2]) );
  SAEDRVT14_FSDPQ_V2LP_1 ibuffer_reg_3_ ( .D(N104), .SI(n146), .SE(n146), .CK(
        net800), .Q(dout_data[3]) );
  SAEDRVT14_FSDPQ_V2LP_1 count_reg_1_ ( .D(N214), .SI(n145), .SE(n145), .CK(
        net805), .Q(count[1]) );
  SAEDRVT14_FSDPQ_V2LP_1 count_reg_3_ ( .D(N218), .SI(n144), .SE(n144), .CK(
        net805), .Q(count[3]) );
  SAEDRVT14_FSDPQ_V2LP_1 dummy_count_reg_2_ ( .D(N224), .SI(n143), .SE(n143), 
        .CK(net790), .Q(dummy_count[2]) );
  SAEDRVT14_FSDPQ_V2LP_1 dummy_count_reg_1_ ( .D(N222), .SI(n142), .SE(n142), 
        .CK(net790), .Q(dummy_count[1]) );
  SAEDRVT14_FSDPQ_V2LP_1 dummy_count_reg_3_ ( .D(N226), .SI(n141), .SE(n141), 
        .CK(net790), .Q(dummy_count[3]) );
  SAEDRVT14_FSDPQ_V2LP_1 dummy_count_reg_0_ ( .D(N220), .SI(n140), .SE(n140), 
        .CK(net790), .Q(dummy_count[0]) );
  SAEDRVT14_FSDPQ_V2LP_1 count_reg_0_ ( .D(N212), .SI(n139), .SE(n139), .CK(
        net805), .Q(count[0]) );
  SAEDRVT14_FSDPQ_V2LP_1 count_reg_2_ ( .D(N216), .SI(n138), .SE(n138), .CK(
        net805), .Q(count[2]) );
  SAEDRVT14_FSDPQ_V2LP_1 flash_clk_reg ( .D(n137), .SI(n136), .SE(n136), .CK(
        clk), .Q(flash_clk) );
  SAEDRVT14_FSDPQ_V2LP_1 obuffer_reg_6_ ( .D(N203), .SI(n135), .SE(n135), .CK(
        net795), .Q(obuffer[6]) );
  SAEDRVT14_FSDPQ_V2LP_1 obuffer_reg_5_ ( .D(N201), .SI(n134), .SE(n134), .CK(
        net795), .Q(obuffer[5]) );
  SAEDRVT14_FSDPQ_V2LP_1 obuffer_reg_4_ ( .D(N199), .SI(n133), .SE(n133), .CK(
        net795), .Q(obuffer[4]) );
  SAEDRVT14_FSDPQ_V2LP_1 obuffer_reg_0_ ( .D(N191), .SI(n132), .SE(n132), .CK(
        net795), .Q(obuffer[0]) );
  SAEDRVT14_FSDPQ_V2LP_1 obuffer_reg_7_ ( .D(N205), .SI(n131), .SE(n131), .CK(
        net795), .Q(obuffer[7]) );
  SAEDRVT14_FSDPQ_V2LP_1 obuffer_reg_1_ ( .D(N193), .SI(n130), .SE(n130), .CK(
        net795), .Q(obuffer[1]) );
  SAEDRVT14_FSDPQ_V2LP_1 obuffer_reg_2_ ( .D(N195), .SI(n129), .SE(n129), .CK(
        net795), .Q(obuffer[2]) );
  SAEDRVT14_FSDPQ_V2LP_1 obuffer_reg_3_ ( .D(N197), .SI(n128), .SE(n128), .CK(
        net795), .Q(obuffer[3]) );
  SAEDRVT14_ND2_CDC_1 U42 ( .A1(xfer_resetn), .A2(resetn), .X(n169) );
  SAEDRVT14_INV_S_0P5 U43 ( .A(n169), .X(n124) );
  SAEDRVT14_AN2_MM_1 U44 ( .A1(n124), .A2(din_rd), .X(n168) );
  SAEDRVT14_AN2B_MM_1 U45 ( .B(xfer_ddr), .A(xfer_dspi), .X(n18) );
  SAEDRVT14_AN2B_MM_1 U46 ( .B(xfer_dspi), .A(xfer_ddr), .X(n19) );
  SAEDRVT14_NR2_MM_0P5 U49 ( .A1(xfer_ddr), .A2(xfer_dspi), .X(n45) );
  SAEDRVT14_INV_S_0P5 U59 ( .A(count[2]), .X(n112) );
  SAEDRVT14_INV_S_0P5 U60 ( .A(count[0]), .X(n108) );
  SAEDRVT14_OAI21_0P5 U61 ( .A1(flash_clk), .A2(n112), .B(n108), .X(n9) );
  SAEDRVT14_INV_S_0P5 U62 ( .A(flash_clk), .X(n86) );
  SAEDRVT14_NR2_MM_0P5 U63 ( .A1(xfer_qspi), .A2(n86), .X(n5) );
  SAEDRVT14_INV_S_0P5 U64 ( .A(count[1]), .X(n103) );
  SAEDRVT14_AOI21_0P75 U65 ( .A1(xfer_dspi), .A2(n5), .B(n103), .X(n7) );
  SAEDRVT14_OR4_1 U66 ( .A1(dummy_count[2]), .A2(dummy_count[3]), .A3(
        dummy_count[0]), .A4(dummy_count[1]), .X(n83) );
  SAEDRVT14_INV_0P75 U67 ( .A(n83), .X(n121) );
  SAEDRVT14_ND2_CDC_1 U68 ( .A1(n121), .A2(n24), .X(n44) );
  SAEDRVT14_OAI22_0P5 U69 ( .A1(n5), .A2(n108), .B1(xfer_qspi), .B2(n112), .X(
        n6) );
  SAEDRVT14_OR4_1 U70 ( .A1(count[3]), .A2(n7), .A3(n44), .A4(n6), .X(n8) );
  SAEDRVT14_AOI21_0P75 U71 ( .A1(xfer_dspi), .A2(n9), .B(n8), .X(n48) );
  SAEDRVT14_INV_S_0P5 U72 ( .A(n48), .X(n123) );
  SAEDRVT14_INV_S_0P5 U73 ( .A(fetch), .X(n11) );
  SAEDRVT14_INV_S_0P5 U74 ( .A(xfer_ddr_q), .X(n10) );
  SAEDRVT14_OA33_U_0P5 U75 ( .A1(fetch), .A2(xfer_ddr_q), .A3(n123), .B1(n11), 
        .B2(n10), .B3(last_fetch), .X(n12) );
  SAEDRVT14_AN2B_MM_1 U76 ( .B(xfer_resetn), .A(n12), .X(dout_valid) );
  SAEDRVT14_INV_S_0P5 U77 ( .A(count[3]), .X(n116) );
  SAEDRVT14_AN4_0P5 U78 ( .A1(n103), .A2(n108), .A3(n112), .A4(n116), .X(n84)
         );
  SAEDRVT14_INV_S_0P5 U79 ( .A(n84), .X(n125) );
  SAEDRVT14_ND2_CDC_1 U80 ( .A1(n121), .A2(n125), .X(n14) );
  SAEDRVT14_AOI21_0P75 U82 ( .A1(n86), .A2(n122), .B(n44), .X(n107) );
  SAEDRVT14_INV_S_0P5 U83 ( .A(n107), .X(n104) );
  SAEDRVT14_OAI21_0P5 U84 ( .A1(xfer_ddr), .A2(n104), .B(n124), .X(n13) );
  SAEDRVT14_NR2_MM_0P5 U85 ( .A1(n14), .A2(n13), .X(N279) );
  SAEDRVT14_INV_S_0P5 U86 ( .A(n24), .X(n38) );
  SAEDRVT14_OAI22_0P5 U87 ( .A1(n16), .A2(n15), .B1(n27), .B2(n49), .X(n17) );
  SAEDRVT14_AO21_U_0P5 U88 ( .A1(n38), .A2(dout_data[1]), .B(n17), .X(N102) );
  SAEDRVT14_INV_S_0P5 U89 ( .A(dout_data[2]), .X(n34) );
  SAEDRVT14_OAI21_0P5 U90 ( .A1(n19), .A2(n18), .B(xfer_qspi), .X(n41) );
  SAEDRVT14_INV_S_0P5 U91 ( .A(n41), .X(n42) );
  SAEDRVT14_ND2_CDC_1 U93 ( .A1(n19), .A2(n106), .X(n52) );
  SAEDRVT14_INV_S_0P5 U94 ( .A(dout_data[1]), .X(n30) );
  SAEDRVT14_OAI22_0P5 U95 ( .A1(n52), .A2(n27), .B1(n49), .B2(n30), .X(n20) );
  SAEDRVT14_AOI21_0P75 U96 ( .A1(n42), .A2(flash_io2_di), .B(n20), .X(n21) );
  SAEDRVT14_OAI21_0P5 U97 ( .A1(n24), .A2(n34), .B(n21), .X(N103) );
  SAEDRVT14_INV_S_0P5 U98 ( .A(dout_data[3]), .X(n40) );
  SAEDRVT14_OAI22_0P5 U99 ( .A1(n52), .A2(n30), .B1(n49), .B2(n34), .X(n22) );
  SAEDRVT14_AOI21_0P75 U100 ( .A1(n42), .A2(flash_io3_di), .B(n22), .X(n23) );
  SAEDRVT14_OAI21_0P5 U101 ( .A1(n24), .A2(n40), .B(n23), .X(N104) );
  SAEDRVT14_OAI22_0P5 U102 ( .A1(n52), .A2(n34), .B1(n49), .B2(n40), .X(n25)
         );
  SAEDRVT14_AOI21_0P75 U103 ( .A1(n38), .A2(dout_data[4]), .B(n25), .X(n26) );
  SAEDRVT14_OAI21_0P5 U104 ( .A1(n41), .A2(n27), .B(n26), .X(N105) );
  SAEDRVT14_INV_S_0P5 U105 ( .A(dout_data[4]), .X(n31) );
  SAEDRVT14_OAI22_0P5 U106 ( .A1(n52), .A2(n40), .B1(n49), .B2(n31), .X(n28)
         );
  SAEDRVT14_AOI21_0P75 U107 ( .A1(n38), .A2(dout_data[5]), .B(n28), .X(n29) );
  SAEDRVT14_OAI21_0P5 U108 ( .A1(n41), .A2(n30), .B(n29), .X(N106) );
  SAEDRVT14_INV_S_0P5 U109 ( .A(dout_data[5]), .X(n36) );
  SAEDRVT14_OAI22_0P5 U110 ( .A1(n52), .A2(n31), .B1(n49), .B2(n36), .X(n32)
         );
  SAEDRVT14_AOI21_0P75 U111 ( .A1(n38), .A2(dout_data[6]), .B(n32), .X(n33) );
  SAEDRVT14_OAI21_0P5 U112 ( .A1(n41), .A2(n34), .B(n33), .X(N107) );
  SAEDRVT14_INV_S_0P5 U113 ( .A(dout_data[6]), .X(n35) );
  SAEDRVT14_OAI22_0P5 U114 ( .A1(n52), .A2(n36), .B1(n49), .B2(n35), .X(n37)
         );
  SAEDRVT14_AOI21_0P75 U115 ( .A1(n38), .A2(dout_data[7]), .B(n37), .X(n39) );
  SAEDRVT14_OAI21_0P5 U116 ( .A1(n41), .A2(n40), .B(n39), .X(N108) );
  SAEDRVT14_ND2_CDC_1 U117 ( .A1(n121), .A2(n42), .X(n58) );
  SAEDRVT14_INV_S_0P5 U118 ( .A(obuffer[5]), .X(n75) );
  SAEDRVT14_ND2_CDC_1 U119 ( .A1(n121), .A2(obuffer[7]), .X(n43) );
  SAEDRVT14_OAI22_0P5 U120 ( .A1(n58), .A2(n75), .B1(n52), .B2(n43), .X(
        flash_io1_do) );
  SAEDRVT14_NR2_MM_0P5 U121 ( .A1(xfer_rd), .A2(n58), .X(flash_io3_oe) );
  SAEDRVT14_AOI21_0P5 U122 ( .A1(xfer_rd), .A2(n49), .B(n44), .X(flash_io0_oe)
         );
  SAEDRVT14_AN2B_MM_1 U123 ( .B(flash_io0_oe), .A(n45), .X(flash_io1_oe) );
  SAEDRVT14_INV_S_0P5 U124 ( .A(obuffer[6]), .X(n73) );
  SAEDRVT14_INV_S_0P5 U125 ( .A(obuffer[7]), .X(n47) );
  SAEDRVT14_OA22_U_0P5 U126 ( .A1(n52), .A2(n73), .B1(n49), .B2(n47), .X(n46)
         );
  SAEDRVT14_INV_S_0P5 U127 ( .A(obuffer[4]), .X(n68) );
  SAEDRVT14_OAI22_0P5 U128 ( .A1(n46), .A2(n83), .B1(n58), .B2(n68), .X(
        flash_io0_do) );
  SAEDRVT14_NR2_MM_0P5 U129 ( .A1(n58), .A2(n47), .X(flash_io3_do) );
  SAEDRVT14_NR2_MM_0P5 U130 ( .A1(n58), .A2(n73), .X(flash_io2_do) );
  SAEDRVT14_ND2_CDC_1 U131 ( .A1(n48), .A2(din_valid), .X(n118) );
  SAEDRVT14_INV_S_0P5 U132 ( .A(n118), .X(n87) );
  SAEDRVT14_ND2_CDC_1 U133 ( .A1(xfer_resetn), .A2(n87), .X(din_ready_BAR) );
  SAEDRVT14_INV_S_0P5 U135 ( .A(din_data[0]), .X(n88) );
  SAEDRVT14_INV_S_0P5 U136 ( .A(obuffer[0]), .X(n60) );
  SAEDRVT14_NR2_MM_0P5 U137 ( .A1(IN0), .A2(n107), .X(n80) );
  SAEDRVT14_INV_S_0P5 U138 ( .A(n80), .X(n55) );
  SAEDRVT14_OAI22_0P5 U139 ( .A1(din_ready_BAR), .A2(n88), .B1(n60), .B2(n55), 
        .X(N191) );
  SAEDRVT14_INV_S_0P5 U140 ( .A(dummy_count[0]), .X(n85) );
  SAEDRVT14_ND2_CDC_1 U141 ( .A1(flash_clk), .A2(n85), .X(n90) );
  SAEDRVT14_NR2_MM_0P5 U142 ( .A1(dummy_count[1]), .A2(n90), .X(n94) );
  SAEDRVT14_INV_S_0P5 U143 ( .A(dummy_count[2]), .X(n93) );
  SAEDRVT14_ND2_CDC_1 U144 ( .A1(n94), .A2(n93), .X(n97) );
  SAEDRVT14_OR2_0P5 U145 ( .A1(n49), .A2(n97), .X(n102) );
  SAEDRVT14_ND2B_U_0P5 U146 ( .A(n102), .B(din_ready_BAR), .X(n74) );
  SAEDRVT14_INV_S_0P5 U147 ( .A(obuffer[1]), .X(n64) );
  SAEDRVT14_OAI22_0P5 U148 ( .A1(n60), .A2(n74), .B1(n55), .B2(n64), .X(n51)
         );
  SAEDRVT14_AO21_U_0P5 U149 ( .A1(IN0), .A2(din_data[1]), .B(n51), .X(N193) );
  SAEDRVT14_OR3_0P5 U150 ( .A1(IN0), .A2(n104), .A3(n52), .X(n76) );
  SAEDRVT14_INV_S_0P5 U151 ( .A(obuffer[2]), .X(n69) );
  SAEDRVT14_OAI22_0P5 U152 ( .A1(n69), .A2(n55), .B1(n74), .B2(n64), .X(n53)
         );
  SAEDRVT14_AOI21_0P75 U153 ( .A1(IN0), .A2(din_data[2]), .B(n53), .X(n54) );
  SAEDRVT14_OAI21_0P5 U154 ( .A1(n60), .A2(n76), .B(n54), .X(N195) );
  SAEDRVT14_INV_S_0P5 U155 ( .A(obuffer[3]), .X(n77) );
  SAEDRVT14_OAI22_0P5 U156 ( .A1(n69), .A2(n74), .B1(n55), .B2(n77), .X(n56)
         );
  SAEDRVT14_AOI21_0P75 U157 ( .A1(IN0), .A2(din_data[3]), .B(n56), .X(n57) );
  SAEDRVT14_OAI21_0P5 U158 ( .A1(n76), .A2(n64), .B(n57), .X(N197) );
  SAEDRVT14_OA2BB2_V1_0P5 U159 ( .A1(IN0), .A2(din_data[4]), .B1(n74), .B2(n77), .X(n63) );
  SAEDRVT14_NR2_MM_0P5 U160 ( .A1(flash_clk), .A2(xfer_ddr), .X(n59) );
  SAEDRVT14_OR3_0P5 U161 ( .A1(n59), .A2(IN0), .A3(n58), .X(n78) );
  SAEDRVT14_OAI22_0P5 U162 ( .A1(n78), .A2(n60), .B1(n76), .B2(n69), .X(n61)
         );
  SAEDRVT14_AOI21_0P75 U163 ( .A1(n80), .A2(obuffer[4]), .B(n61), .X(n62) );
  SAEDRVT14_ND2_CDC_1 U164 ( .A1(n63), .A2(n62), .X(N199) );
  SAEDRVT14_OA2BB2_V1_0P5 U165 ( .A1(IN0), .A2(din_data[5]), .B1(n68), .B2(n74), .X(n67) );
  SAEDRVT14_OAI22_0P5 U166 ( .A1(n78), .A2(n64), .B1(n76), .B2(n77), .X(n65)
         );
  SAEDRVT14_AOI21_0P75 U167 ( .A1(n80), .A2(obuffer[5]), .B(n65), .X(n66) );
  SAEDRVT14_ND2_CDC_1 U168 ( .A1(n67), .A2(n66), .X(N201) );
  SAEDRVT14_OA2BB2_V1_0P5 U169 ( .A1(IN0), .A2(din_data[6]), .B1(n74), .B2(n75), .X(n72) );
  SAEDRVT14_OAI22_0P5 U170 ( .A1(n78), .A2(n69), .B1(n76), .B2(n68), .X(n70)
         );
  SAEDRVT14_AOI21_0P75 U171 ( .A1(n80), .A2(obuffer[6]), .B(n70), .X(n71) );
  SAEDRVT14_ND2_CDC_1 U172 ( .A1(n72), .A2(n71), .X(N203) );
  SAEDRVT14_OA2BB2_V1_0P5 U173 ( .A1(IN0), .A2(din_data[7]), .B1(n74), .B2(n73), .X(n82) );
  SAEDRVT14_OAI22_0P5 U174 ( .A1(n78), .A2(n77), .B1(n76), .B2(n75), .X(n79)
         );
  SAEDRVT14_AOI21_0P75 U175 ( .A1(n80), .A2(obuffer[7]), .B(n79), .X(n81) );
  SAEDRVT14_ND2_CDC_1 U176 ( .A1(n82), .A2(n81), .X(N205) );
  SAEDRVT14_ND2_CDC_1 U177 ( .A1(n124), .A2(n118), .X(N241) );
  SAEDRVT14_INV_S_0P5 U178 ( .A(N241), .X(n120) );
  SAEDRVT14_OAI21_0P5 U179 ( .A1(n84), .A2(n83), .B(n120), .X(N217) );
  SAEDRVT14_AN2_MM_1 U180 ( .A1(n124), .A2(N217), .X(N250) );
  SAEDRVT14_AN2_MM_1 U181 ( .A1(n124), .A2(din_ddr), .X(N240) );
  SAEDRVT14_AN2_MM_1 U182 ( .A1(n124), .A2(din_qspi), .X(N238) );
  SAEDRVT14_AN2_MM_1 U183 ( .A1(n124), .A2(din_dspi), .X(N236) );
  SAEDRVT14_AN2_MM_1 U184 ( .A1(n124), .A2(din_tag[0]), .X(N228) );
  SAEDRVT14_AN2_MM_1 U185 ( .A1(n124), .A2(din_tag[1]), .X(N230) );
  SAEDRVT14_AN2_MM_1 U186 ( .A1(n124), .A2(din_tag[2]), .X(N232) );
  SAEDRVT14_OAI22_0P5 U187 ( .A1(flash_clk), .A2(dummy_count[0]), .B1(n86), 
        .B2(n85), .X(n89) );
  SAEDRVT14_ND2_CDC_1 U188 ( .A1(n87), .A2(n168), .X(n99) );
  SAEDRVT14_OAI22_0P5 U189 ( .A1(n89), .A2(N241), .B1(n88), .B2(n99), .X(N220)
         );
  SAEDRVT14_AOI21_0P75 U190 ( .A1(dummy_count[1]), .A2(n90), .B(n94), .X(n92)
         );
  SAEDRVT14_INV_S_0P5 U191 ( .A(din_data[1]), .X(n91) );
  SAEDRVT14_OAI22_0P5 U192 ( .A1(n92), .A2(N241), .B1(n91), .B2(n99), .X(N222)
         );
  SAEDRVT14_OA21_1 U193 ( .A1(n94), .A2(n93), .B(n97), .X(n96) );
  SAEDRVT14_INV_S_0P5 U194 ( .A(din_data[2]), .X(n95) );
  SAEDRVT14_OAI22_0P5 U195 ( .A1(n96), .A2(N241), .B1(n95), .B2(n99), .X(N224)
         );
  SAEDRVT14_INV_S_0P5 U196 ( .A(din_data[3]), .X(n100) );
  SAEDRVT14_ND2_CDC_1 U197 ( .A1(n97), .A2(dummy_count[3]), .X(n98) );
  SAEDRVT14_OAI22_0P5 U198 ( .A1(n100), .A2(n99), .B1(N241), .B2(n98), .X(N226) );
  SAEDRVT14_INV_S_0P5 U199 ( .A(n102), .X(n101) );
  SAEDRVT14_OA221_U_0P5 U200 ( .A1(n102), .A2(n108), .B1(n101), .B2(count[0]), 
        .C(n120), .X(N212) );
  SAEDRVT14_OAI21_0P5 U201 ( .A1(xfer_dspi), .A2(n108), .B(n103), .X(n105) );
  SAEDRVT14_AOI21_0P75 U202 ( .A1(n106), .A2(n105), .B(n104), .X(n113) );
  SAEDRVT14_INV_S_0P5 U203 ( .A(n113), .X(n114) );
  SAEDRVT14_OAI21_0P5 U204 ( .A1(xfer_dspi), .A2(n108), .B(n107), .X(n109) );
  SAEDRVT14_OAI21_0P5 U205 ( .A1(xfer_qspi), .A2(n109), .B(count[1]), .X(n110)
         );
  SAEDRVT14_OA21_1 U206 ( .A1(n114), .A2(xfer_qspi), .B(n110), .X(n111) );
  SAEDRVT14_NR2_MM_0P5 U207 ( .A1(n111), .A2(N241), .X(N214) );
  SAEDRVT14_ND2_CDC_1 U208 ( .A1(n113), .A2(n112), .X(n115) );
  SAEDRVT14_INV_S_0P5 U209 ( .A(n115), .X(n117) );
  SAEDRVT14_AO32_U_0P5 U210 ( .A1(n120), .A2(count[2]), .A3(n114), .B1(n120), 
        .B2(n117), .X(N216) );
  SAEDRVT14_OAI22_0P5 U211 ( .A1(count[3]), .A2(n117), .B1(n116), .B2(n115), 
        .X(n119) );
  SAEDRVT14_AOI21_0P75 U212 ( .A1(n119), .A2(n118), .B(n169), .X(N218) );
  SAEDRVT14_ND2_CDC_1 U213 ( .A1(n121), .A2(n120), .X(N225) );
  SAEDRVT14_OR3_0P5 U214 ( .A1(fetch), .A2(n169), .A3(n122), .X(N207) );
  SAEDRVT14_ND2_CDC_1 U215 ( .A1(n124), .A2(n123), .X(N206) );
  SAEDRVT14_NR2_MM_0P5 U216 ( .A1(n125), .A2(N225), .X(n127) );
  SAEDRVT14_OR4_1 U217 ( .A1(n127), .A2(flash_clk), .A3(N241), .A4(flash_csb), 
        .X(n126) );
  SAEDRVT14_AO21B_0P5 U218 ( .A1(flash_clk), .A2(n127), .B(n126), .X(n137) );
  SAEDRVT14_TIE0_PV1ECO_1 U3 ( .X(n128) );
  SAEDRVT14_TIE0_PV1ECO_1 U4 ( .X(n129) );
  SAEDRVT14_TIE0_PV1ECO_1 U5 ( .X(n130) );
  SAEDRVT14_TIE0_PV1ECO_1 U6 ( .X(n131) );
  SAEDRVT14_TIE0_PV1ECO_1 U7 ( .X(n132) );
  SAEDRVT14_TIE0_PV1ECO_1 U8 ( .X(n133) );
  SAEDRVT14_TIE0_PV1ECO_1 U9 ( .X(n134) );
  SAEDRVT14_TIE0_PV1ECO_1 U10 ( .X(n135) );
  SAEDRVT14_TIE0_PV1ECO_1 U11 ( .X(n136) );
  SAEDRVT14_TIE0_PV1ECO_1 U12 ( .X(n138) );
  SAEDRVT14_TIE0_PV1ECO_1 U13 ( .X(n139) );
  SAEDRVT14_TIE0_PV1ECO_1 U14 ( .X(n140) );
  SAEDRVT14_TIE0_PV1ECO_1 U15 ( .X(n141) );
  SAEDRVT14_TIE0_PV1ECO_1 U16 ( .X(n142) );
  SAEDRVT14_TIE0_PV1ECO_1 U17 ( .X(n143) );
  SAEDRVT14_TIE0_PV1ECO_1 U18 ( .X(n144) );
  SAEDRVT14_TIE0_PV1ECO_1 U19 ( .X(n145) );
  SAEDRVT14_TIE0_PV1ECO_1 U20 ( .X(n146) );
  SAEDRVT14_TIE0_PV1ECO_1 U21 ( .X(n147) );
  SAEDRVT14_TIE0_PV1ECO_1 U22 ( .X(n148) );
  SAEDRVT14_TIE0_PV1ECO_1 U23 ( .X(n149) );
  SAEDRVT14_TIE0_PV1ECO_1 U24 ( .X(n150) );
  SAEDRVT14_TIE0_PV1ECO_1 U25 ( .X(n151) );
  SAEDRVT14_TIE0_PV1ECO_1 U26 ( .X(n152) );
  SAEDRVT14_TIE0_PV1ECO_1 U27 ( .X(n153) );
  SAEDRVT14_TIE0_PV1ECO_1 U28 ( .X(n154) );
  SAEDRVT14_TIE0_PV1ECO_1 U29 ( .X(n155) );
  SAEDRVT14_TIE0_PV1ECO_1 U30 ( .X(n156) );
  SAEDRVT14_TIE0_PV1ECO_1 U31 ( .X(n157) );
  SAEDRVT14_TIE0_PV1ECO_1 U32 ( .X(n158) );
  SAEDRVT14_TIE0_PV1ECO_1 U33 ( .X(n159) );
  SAEDRVT14_TIE0_PV1ECO_1 U34 ( .X(n160) );
  SAEDRVT14_TIE0_PV1ECO_1 U35 ( .X(n161) );
  SAEDRVT14_TIE0_PV1ECO_1 U36 ( .X(n162) );
  SAEDRVT14_TIE0_PV1ECO_1 U37 ( .X(n163) );
  SAEDRVT14_TIE0_PV1ECO_1 U38 ( .X(n164) );
  SAEDRVT14_TIE0_PV1ECO_1 U39 ( .X(n165) );
  SAEDRVT14_TIE0_PV1ECO_1 U40 ( .X(n166) );
  SAEDRVT14_TIE0_PV1ECO_1 U41 ( .X(n167) );
  SAEDRVT14_TIE0_PV1ECO_1 U58 ( .X(n170) );
  SAEDRVT14_AO21_U_0P5 U57 ( .A1(flash_io0_di), .A2(n4), .B(n3), .X(N101) );
  SAEDRVT14_INV_S_0P5 U48 ( .A(n16), .X(n4) );
  SAEDRVT14_OAI22_0P5 U56 ( .A1(n49), .A2(n15), .B1(n27), .B2(n24), .X(n3) );
  SAEDRVT14_OR2_1 U51 ( .A1(xfer_qspi), .A2(n1), .X(n49) );
  SAEDRVT14_INV_S_0P5 U50 ( .A(n45), .X(n1) );
  SAEDRVT14_INV_S_0P5 U81 ( .A(xfer_ddr), .X(n122) );
  SAEDRVT14_INV_S_0P5 U53 ( .A(dout_data[0]), .X(n27) );
  SAEDRVT14_ND2_CDC_1 U55 ( .A1(n2), .A2(n16), .X(n24) );
  SAEDRVT14_OR2_1 U54 ( .A1(xfer_qspi), .A2(xfer_ddr), .X(n2) );
  SAEDRVT14_AOI21_0P5 U47 ( .A1(n18), .A2(xfer_qspi), .B(n19), .X(n16) );
  SAEDRVT14_INV_S_0P5 U52 ( .A(flash_io1_di), .X(n15) );
  SAEDRVT14_INV_S_0P5 U92 ( .A(xfer_qspi), .X(n106) );
endmodule


module spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  SAEDRVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK) );
endmodule


module spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_7 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  SAEDRVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK) );
endmodule


module spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_6 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  SAEDRVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK) );
endmodule


module spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_5 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  SAEDRVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK) );
endmodule


module spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_4 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  SAEDRVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK) );
endmodule


module spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_3 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  SAEDRVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK) );
endmodule


module spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_2 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  SAEDRVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK) );
endmodule


module spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_1 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  SAEDRVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK) );
endmodule


module spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_0_1_0 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  SAEDRVT14_CKGTPLT_V5_1 latch ( .CK(CLK), .EN(EN), .SE(TE), .Q(ENCLK) );
endmodule


module spimemio_spimemio_DW01_add_0_0 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188;

  SAEDRVT14_EN2_1 U83 ( .A1(n136), .A2(A[2]), .X(SUM[3]) );
  SAEDRVT14_INV_S_0P5 U85 ( .A(n136), .X(n137) );
  SAEDRVT14_ND2_CDC_1 U86 ( .A1(A[2]), .A2(n137), .X(n139) );
  SAEDRVT14_EO2_V1_0P75 U87 ( .A1(n138), .A2(n139), .X(SUM[4]) );
  SAEDRVT14_NR2_MM_0P5 U89 ( .A1(n139), .A2(n138), .X(n142) );
  SAEDRVT14_EN2_1 U90 ( .A1(n140), .A2(n142), .X(SUM[5]) );
  SAEDRVT14_INV_S_0P5 U92 ( .A(n140), .X(n141) );
  SAEDRVT14_ND2_CDC_1 U93 ( .A1(n142), .A2(n141), .X(n144) );
  SAEDRVT14_EO2_V1_0P75 U94 ( .A1(n143), .A2(n144), .X(SUM[6]) );
  SAEDRVT14_EN2_1 U97 ( .A1(n145), .A2(n147), .X(SUM[7]) );
  SAEDRVT14_INV_S_0P5 U99 ( .A(n145), .X(n146) );
  SAEDRVT14_ND2_CDC_1 U100 ( .A1(n147), .A2(n146), .X(n149) );
  SAEDRVT14_EO2_V1_0P75 U101 ( .A1(n148), .A2(n149), .X(SUM[8]) );
  SAEDRVT14_NR2_MM_0P5 U103 ( .A1(n149), .A2(n148), .X(n152) );
  SAEDRVT14_EN2_1 U104 ( .A1(n150), .A2(n152), .X(SUM[9]) );
  SAEDRVT14_INV_S_0P5 U106 ( .A(n150), .X(n151) );
  SAEDRVT14_ND2_CDC_1 U107 ( .A1(n152), .A2(n151), .X(n154) );
  SAEDRVT14_EO2_V1_0P75 U108 ( .A1(n153), .A2(n154), .X(SUM[10]) );
  SAEDRVT14_NR2_MM_0P5 U110 ( .A1(n154), .A2(n153), .X(n157) );
  SAEDRVT14_EN2_1 U111 ( .A1(n155), .A2(n157), .X(SUM[11]) );
  SAEDRVT14_INV_S_0P5 U113 ( .A(n155), .X(n156) );
  SAEDRVT14_ND2_CDC_1 U114 ( .A1(n157), .A2(n156), .X(n159) );
  SAEDRVT14_EO2_V1_0P75 U115 ( .A1(n158), .A2(n159), .X(SUM[12]) );
  SAEDRVT14_EN2_1 U118 ( .A1(n160), .A2(n162), .X(SUM[13]) );
  SAEDRVT14_INV_S_0P5 U120 ( .A(n160), .X(n161) );
  SAEDRVT14_ND2_CDC_1 U121 ( .A1(n162), .A2(n161), .X(n164) );
  SAEDRVT14_EO2_V1_0P75 U122 ( .A1(n163), .A2(n164), .X(SUM[14]) );
  SAEDRVT14_NR2_MM_0P5 U124 ( .A1(n164), .A2(n163), .X(n167) );
  SAEDRVT14_EN2_1 U125 ( .A1(n165), .A2(n167), .X(SUM[15]) );
  SAEDRVT14_INV_S_0P5 U127 ( .A(n165), .X(n166) );
  SAEDRVT14_ND2_CDC_1 U128 ( .A1(n167), .A2(n166), .X(n169) );
  SAEDRVT14_EO2_V1_0P75 U129 ( .A1(n168), .A2(n169), .X(SUM[16]) );
  SAEDRVT14_NR2_MM_0P5 U131 ( .A1(n169), .A2(n168), .X(n172) );
  SAEDRVT14_EN2_1 U132 ( .A1(n170), .A2(n172), .X(SUM[17]) );
  SAEDRVT14_INV_S_0P5 U134 ( .A(n170), .X(n171) );
  SAEDRVT14_ND2_CDC_1 U135 ( .A1(n172), .A2(n171), .X(n174) );
  SAEDRVT14_EO2_V1_0P75 U136 ( .A1(n173), .A2(n174), .X(SUM[18]) );
  SAEDRVT14_NR2_MM_0P5 U138 ( .A1(n174), .A2(n173), .X(n177) );
  SAEDRVT14_EN2_1 U139 ( .A1(n175), .A2(n177), .X(SUM[19]) );
  SAEDRVT14_INV_S_0P5 U141 ( .A(n175), .X(n176) );
  SAEDRVT14_ND2_CDC_1 U142 ( .A1(n177), .A2(n176), .X(n179) );
  SAEDRVT14_EO2_V1_0P75 U143 ( .A1(n178), .A2(n179), .X(SUM[20]) );
  SAEDRVT14_NR2_MM_0P5 U145 ( .A1(n179), .A2(n178), .X(n182) );
  SAEDRVT14_EN2_1 U146 ( .A1(n180), .A2(n182), .X(SUM[21]) );
  SAEDRVT14_INV_S_0P5 U148 ( .A(n180), .X(n181) );
  SAEDRVT14_ND2_CDC_1 U149 ( .A1(n182), .A2(n181), .X(n184) );
  SAEDRVT14_EO2_V1_0P75 U150 ( .A1(n183), .A2(n184), .X(SUM[22]) );
  SAEDRVT14_NR2_MM_0P5 U152 ( .A1(n184), .A2(n183), .X(n187) );
  SAEDRVT14_EN2_1 U153 ( .A1(n185), .A2(n187), .X(SUM[23]) );
  SAEDRVT14_INV_S_0P5 U154 ( .A(n185), .X(n186) );
  SAEDRVT14_ND2_CDC_1 U155 ( .A1(n187), .A2(n186), .X(n188) );
  SAEDRVT14_INV_S_0P5 U156 ( .A(n188), .X(SUM[24]) );
  SAEDRVT14_INV_S_0P5 U82 ( .A(A[3]), .X(n136) );
  SAEDRVT14_INV_S_0P5 U84 ( .A(A[4]), .X(n138) );
  SAEDRVT14_INV_S_0P5 U88 ( .A(A[5]), .X(n140) );
  SAEDRVT14_INV_S_0P5 U91 ( .A(A[6]), .X(n143) );
  SAEDRVT14_NR2_MM_0P5 U96 ( .A1(n144), .A2(n143), .X(n147) );
  SAEDRVT14_INV_S_0P5 U95 ( .A(A[7]), .X(n145) );
  SAEDRVT14_INV_S_0P5 U98 ( .A(A[8]), .X(n148) );
  SAEDRVT14_INV_S_0P5 U102 ( .A(A[9]), .X(n150) );
  SAEDRVT14_INV_S_0P5 U105 ( .A(A[10]), .X(n153) );
  SAEDRVT14_INV_S_0P5 U109 ( .A(A[11]), .X(n155) );
  SAEDRVT14_NR2_MM_0P5 U117 ( .A1(n159), .A2(n158), .X(n162) );
  SAEDRVT14_INV_S_0P5 U116 ( .A(A[13]), .X(n160) );
  SAEDRVT14_INV_S_0P5 U112 ( .A(A[12]), .X(n158) );
  SAEDRVT14_INV_S_0P5 U119 ( .A(A[14]), .X(n163) );
  SAEDRVT14_INV_S_0P5 U123 ( .A(A[15]), .X(n165) );
  SAEDRVT14_INV_S_0P5 U126 ( .A(A[16]), .X(n168) );
  SAEDRVT14_INV_S_0P5 U130 ( .A(A[17]), .X(n170) );
  SAEDRVT14_INV_S_0P5 U133 ( .A(A[18]), .X(n173) );
  SAEDRVT14_INV_S_0P5 U137 ( .A(A[19]), .X(n175) );
  SAEDRVT14_INV_S_0P5 U140 ( .A(A[20]), .X(n178) );
  SAEDRVT14_INV_S_0P5 U144 ( .A(A[21]), .X(n180) );
  SAEDRVT14_INV_S_0P5 U147 ( .A(A[22]), .X(n183) );
  SAEDRVT14_INV_S_0P5 U151 ( .A(A[23]), .X(n185) );
endmodule


module spimemio ( clk, resetn, valid, ready, addr, rdata, flash_csb, flash_clk, 
        flash_io0_oeb, flash_io1_oeb, flash_io2_oeb, flash_io3_oeb, 
        flash_io0_do, flash_io1_do, flash_io2_do, flash_io3_do, flash_io0_di, 
        flash_io1_di, flash_io2_di, flash_io3_di, cfgreg_we, cfgreg_di, 
        cfgreg_do );
  input [23:0] addr;
  output [31:0] rdata;
  input [3:0] cfgreg_we;
  input [31:0] cfgreg_di;
  output [31:0] cfgreg_do;
  input clk, resetn, valid, flash_io0_di, flash_io1_di, flash_io2_di,
         flash_io3_di;
  output ready, flash_csb, flash_clk, flash_io0_oeb, flash_io1_oeb,
         flash_io2_oeb, flash_io3_oeb, flash_io0_do, flash_io1_do,
         flash_io2_do, flash_io3_do;

//synopsys upf_name_map spimemio ""
  wire   n_Logic1_, n792, n793, n794, n819, n820, n821, n822, cfgreg_di_31,
         n823, n824, n825, n826, n827, n828, n829, cfgreg_di_11, cfgreg_di_10,
         cfgreg_di_9, cfgreg_di_8, cfgreg_di_5, cfgreg_di_4, cfgreg_di_3,
         cfgreg_di_2, cfgreg_di_1, cfgreg_di_0, flash_csb, flash_clk,
         cfgreg_do_3, cfgreg_do_2, cfgreg_do_1, cfgreg_do_0, rd_valid, N40,
         N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54,
         N55, N56, N57, N58, N59, N60, N61, softreset, config_csb, config_clk,
         N66, N69, N70, N72, N74, N76, N78, N79, N80, N82, N84, N86, N88, N90,
         N91, N92, N94, N96, N98, N100, N102, xfer_io0_90, xfer_io0_do,
         xfer_io1_90, xfer_io1_do, xfer_io2_90, xfer_io2_do, xfer_io3_90,
         xfer_io3_do, xfer_csb, xfer_clk, xfer_io0_oe, xfer_io1_oe,
         xfer_io3_oe, din_ddr, din_qspi, xfer_dspi, xfer_ddr, xfer_resetn,
         din_valid, din_rd, dout_valid, rd_inc, N118, N150, N151, N152, N153,
         N154, N155, N156, N157, N158, N159, N160, N161, N162, N163, N164,
         N165, N166, N167, N168, N169, N170, N171, N172, N173, rd_wait, N364,
         N366, N367, N368, N383, N391, N399, N456, N458, net731, net737,
         net742, net747, net752, net757, net762, net767, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, n592,
         n593, n594, n595, n596, n597, n598, n599, n600, n601, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
         n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
         n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692,
         n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703,
         n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714,
         n715, n716, n717, n718, n719, n720, n721, n722, n723, n724, n725,
         n726, n727, n728, n729, n730, n731, n732, n733, n734, n735,
         flash_io3_di, flash_io2_di, flash_io1_di, flash_io0_di, n790, n791,
         n830, n831, n832, n833, n834, n835, n836, n837, n838,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
  wire   [795:818] n;
  wire   [23:0] rd_addr;
  wire   [3:0] config_oe;
  wire   [3:0] config_do;
  wire   [7:0] din_data;
  wire   [2:0] din_tag;
  wire   [7:0] dout_data;
  wire   [2:0] dout_tag;
  wire   [3:0] state;
  wire   [23:0] buffer;
  assign cfgreg_do[30] = cfgreg_do[6];
  assign cfgreg_do[29] = cfgreg_do[6];
  assign cfgreg_do[28] = cfgreg_do[6];
  assign cfgreg_do[27] = cfgreg_do[6];
  assign cfgreg_do[26] = cfgreg_do[6];
  assign cfgreg_do[25] = cfgreg_do[6];
  assign cfgreg_do[24] = cfgreg_do[6];
  assign cfgreg_do[23] = cfgreg_do[6];
  assign cfgreg_do[15] = cfgreg_do[6];
  assign cfgreg_do[14] = cfgreg_do[6];
  assign cfgreg_do[13] = cfgreg_do[6];
  assign cfgreg_do[12] = cfgreg_do[6];
  assign cfgreg_do[7] = cfgreg_do[6];
  assign cfgreg_do[5] = flash_csb;
  assign cfgreg_do[4] = flash_clk;
  assign cfgreg_do[3] = flash_io3_di;
  assign cfgreg_do[2] = flash_io2_di;
  assign cfgreg_do[1] = flash_io1_di;
  assign cfgreg_do[0] = flash_io0_di;

  spimemio_spimemio_xfer_0 xfer ( .clk(n792), .resetn(n793), .xfer_resetn(
        xfer_resetn), .din_valid(din_valid), .din_ready_BAR(n836), .din_data(
        din_data), .din_tag({n735, din_tag}), .din_cont(n735), .din_dspi(
        xfer_dspi), .din_qspi(din_qspi), .din_ddr(xfer_ddr), .din_rd(din_rd), 
        .dout_valid(dout_valid), .dout_data(dout_data), .dout_tag({
        SYNOPSYS_UNCONNECTED_1, dout_tag}), .flash_csb(xfer_csb), .flash_clk(
        xfer_clk), .flash_io0_oe(xfer_io0_oe), .flash_io1_oe(xfer_io1_oe), 
        .flash_io3_oe(xfer_io3_oe), .flash_io0_do(xfer_io0_do), .flash_io1_do(
        xfer_io1_do), .flash_io2_do(xfer_io2_do), .flash_io3_do(xfer_io3_do), 
        .flash_io0_di(cfgreg_do_0), .flash_io1_di(cfgreg_do_1), .flash_io2_di(
        cfgreg_do_2), .flash_io3_di(cfgreg_do_3), .IN0(n837) );
  spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_0 clk_gate_config_qspi_reg ( .CLK(
        n792), .EN(N91), .ENCLK(net731), .TE(n735) );
  spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_7 clk_gate_config_csb_reg ( .CLK(n792), .EN(N69), .ENCLK(net737), .TE(n735) );
  spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_6 clk_gate_config_oe_reg ( .CLK(n792), 
        .EN(N79), .ENCLK(net742), .TE(n735) );
  spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_5 clk_gate_rd_addr_reg ( .CLK(n792), 
        .EN(N456), .ENCLK(net747), .TE(n735) );
  spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_4 clk_gate_buffer_reg ( .CLK(n792), 
        .EN(N399), .ENCLK(net752), .TE(n735) );
  spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_3 clk_gate_buffer_reg_0 ( .CLK(n792), 
        .EN(N391), .ENCLK(net757), .TE(n735) );
  spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_2 clk_gate_buffer_reg_1 ( .CLK(n792), 
        .EN(N383), .ENCLK(net762), .TE(n735) );
  spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_1 clk_gate_rd_inc_reg ( .CLK(n792), 
        .EN(N118), .ENCLK(net767), .TE(n735) );
  spimemio_SNPS_CLOCK_GATE_HIGH_spimemio_0_1_0 clk_gate_din_tag_reg ( .CLK(
        n792), .EN(N367), .ENCLK(n791), .TE(n735) );
  SAEDRVT14_LVLUBUF_IY2V1_1 flash_io0_di_UPF_LS ( .A(flash_io0_di), .X(
        cfgreg_do_0) );
  SAEDRVT14_LVLUBUF_IY2V1_1 flash_io1_di_UPF_LS ( .A(flash_io1_di), .X(
        cfgreg_do_1) );
  SAEDRVT14_LVLUBUF_IY2V1_1 flash_io2_di_UPF_LS ( .A(flash_io2_di), .X(
        cfgreg_do_2) );
  SAEDRVT14_LVLUBUF_IY2V1_1 flash_io3_di_UPF_LS ( .A(flash_io3_di), .X(
        cfgreg_do_3) );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_0__UPF_LS ( .A(cfgreg_di[0]), .X(
        cfgreg_di_0) );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_1__UPF_LS ( .A(cfgreg_di[1]), .X(
        cfgreg_di_1) );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_2__UPF_LS ( .A(cfgreg_di[2]), .X(
        cfgreg_di_2) );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_3__UPF_LS ( .A(cfgreg_di[3]), .X(
        cfgreg_di_3) );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_4__UPF_LS ( .A(cfgreg_di[4]), .X(
        cfgreg_di_4) );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_5__UPF_LS ( .A(cfgreg_di[5]), .X(
        cfgreg_di_5) );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_8__UPF_LS ( .A(cfgreg_di[8]), .X(
        cfgreg_di_8) );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_9__UPF_LS ( .A(cfgreg_di[9]), .X(
        cfgreg_di_9) );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_10__UPF_LS ( .A(cfgreg_di[10]), .X(
        cfgreg_di_10) );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_11__UPF_LS ( .A(cfgreg_di[11]), .X(
        cfgreg_di_11) );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_16__UPF_LS ( .A(cfgreg_di[16]), .X(n829)
         );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_17__UPF_LS ( .A(cfgreg_di[17]), .X(n828)
         );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_18__UPF_LS ( .A(cfgreg_di[18]), .X(n827)
         );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_19__UPF_LS ( .A(cfgreg_di[19]), .X(n826)
         );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_20__UPF_LS ( .A(cfgreg_di[20]), .X(n825)
         );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_21__UPF_LS ( .A(cfgreg_di[21]), .X(n824)
         );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_22__UPF_LS ( .A(cfgreg_di[22]), .X(n823)
         );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_di_31__UPF_LS ( .A(cfgreg_di[31]), .X(
        cfgreg_di_31) );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_we_0__UPF_LS ( .A(cfgreg_we[0]), .X(n822)
         );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_we_1__UPF_LS ( .A(cfgreg_we[1]), .X(n821)
         );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_we_2__UPF_LS ( .A(cfgreg_we[2]), .X(n820)
         );
  SAEDRVT14_LVLUBUF_IY2V1_1 cfgreg_we_3__UPF_LS ( .A(cfgreg_we[3]), .X(n819)
         );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_0__UPF_LS ( .A(addr[0]), .X(n[818]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_1__UPF_LS ( .A(addr[1]), .X(n[817]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_2__UPF_LS ( .A(addr[2]), .X(n[816]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_3__UPF_LS ( .A(addr[3]), .X(n[815]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_4__UPF_LS ( .A(addr[4]), .X(n[814]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_5__UPF_LS ( .A(addr[5]), .X(n[813]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_6__UPF_LS ( .A(addr[6]), .X(n[812]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_7__UPF_LS ( .A(addr[7]), .X(n[811]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_8__UPF_LS ( .A(addr[8]), .X(n[810]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_9__UPF_LS ( .A(addr[9]), .X(n[809]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_10__UPF_LS ( .A(addr[10]), .X(n[808]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_11__UPF_LS ( .A(addr[11]), .X(n[807]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_12__UPF_LS ( .A(addr[12]), .X(n[806]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_13__UPF_LS ( .A(addr[13]), .X(n[805]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_14__UPF_LS ( .A(addr[14]), .X(n[804]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_15__UPF_LS ( .A(addr[15]), .X(n[803]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_16__UPF_LS ( .A(addr[16]), .X(n[802]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_17__UPF_LS ( .A(addr[17]), .X(n[801]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_18__UPF_LS ( .A(addr[18]), .X(n[800]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_19__UPF_LS ( .A(addr[19]), .X(n[799]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_20__UPF_LS ( .A(addr[20]), .X(n[798]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_21__UPF_LS ( .A(addr[21]), .X(n[797]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_22__UPF_LS ( .A(addr[22]), .X(n[796]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 addr_23__UPF_LS ( .A(addr[23]), .X(n[795]) );
  SAEDRVT14_LVLUBUF_IY2V1_1 valid_UPF_LS ( .A(valid), .X(n794) );
  SAEDRVT14_LVLUBUF_IY2V1_1 resetn_UPF_LS ( .A(resetn), .X(n793) );
  SAEDRVT14_LVLUBUF_IY2V1_1 clk_UPF_LS ( .A(clk), .X(n792) );
  spimemio_spimemio_DW01_add_0_0 add_x_2 ( .A({n735, rd_addr}), .B({n735, n735, 
        n735, n735, n735, n735, n735, n735, n735, n735, n735, n735, n735, n735, 
        n735, n735, n735, n735, n735, n735, n735, n735, n_Logic1_, n735, n735}), .CI(n735), .SUM({N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, 
        N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4}) );
  SAEDRVT14_FSDPQ_V2LP_1 din_tag_reg_1_ ( .D(N366), .SI(n732), .SE(n732), .CK(
        n791), .Q(din_tag[1]) );
  SAEDRVT14_FSDPQ_V2LP_1 din_tag_reg_2_ ( .D(N368), .SI(n731), .SE(n731), .CK(
        n791), .Q(din_tag[2]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_1_ ( .D(dout_data[1]), .SI(n730), .SE(n730), .CK(net762), .Q(buffer[1]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_9_ ( .D(dout_data[1]), .SI(n729), .SE(n729), .CK(net757), .Q(buffer[9]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_17_ ( .D(dout_data[1]), .SI(n728), .SE(
        n728), .CK(net752), .Q(buffer[17]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_25_ ( .D(dout_data[1]), .SI(n727), .SE(n727), .CK(net747), .Q(rdata[25]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_4_ ( .D(dout_data[4]), .SI(n726), .SE(n726), .CK(net762), .Q(buffer[4]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_5_ ( .D(dout_data[5]), .SI(n725), .SE(n725), .CK(net762), .Q(buffer[5]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_6_ ( .D(dout_data[6]), .SI(n724), .SE(n724), .CK(net762), .Q(buffer[6]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_12_ ( .D(dout_data[4]), .SI(n723), .SE(
        n723), .CK(net757), .Q(buffer[12]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_13_ ( .D(dout_data[5]), .SI(n722), .SE(
        n722), .CK(net757), .Q(buffer[13]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_14_ ( .D(dout_data[6]), .SI(n721), .SE(
        n721), .CK(net757), .Q(buffer[14]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_20_ ( .D(dout_data[4]), .SI(n720), .SE(
        n720), .CK(net752), .Q(buffer[20]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_21_ ( .D(dout_data[5]), .SI(n719), .SE(
        n719), .CK(net752), .Q(buffer[21]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_22_ ( .D(dout_data[6]), .SI(n718), .SE(
        n718), .CK(net752), .Q(buffer[22]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_28_ ( .D(dout_data[4]), .SI(n717), .SE(n717), .CK(net747), .Q(rdata[28]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_29_ ( .D(dout_data[5]), .SI(n716), .SE(n716), .CK(net747), .Q(rdata[29]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_30_ ( .D(dout_data[6]), .SI(n715), .SE(n715), .CK(net747), .Q(rdata[30]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_0_ ( .D(dout_data[0]), .SI(n714), .SE(n714), .CK(net762), .Q(buffer[0]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_8_ ( .D(dout_data[0]), .SI(n713), .SE(n713), .CK(net757), .Q(buffer[8]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_16_ ( .D(dout_data[0]), .SI(n712), .SE(
        n712), .CK(net752), .Q(buffer[16]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_24_ ( .D(dout_data[0]), .SI(n711), .SE(n711), .CK(net747), .Q(rdata[24]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_7_ ( .D(dout_data[7]), .SI(n710), .SE(n710), .CK(net762), .Q(buffer[7]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_15_ ( .D(dout_data[7]), .SI(n709), .SE(
        n709), .CK(net757), .Q(buffer[15]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_23_ ( .D(dout_data[7]), .SI(n708), .SE(
        n708), .CK(net752), .Q(buffer[23]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_31_ ( .D(dout_data[7]), .SI(n707), .SE(n707), .CK(net747), .Q(rdata[31]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_3_ ( .D(dout_data[3]), .SI(n706), .SE(n706), .CK(net762), .Q(buffer[3]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_11_ ( .D(dout_data[3]), .SI(n705), .SE(
        n705), .CK(net757), .Q(buffer[11]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_19_ ( .D(dout_data[3]), .SI(n704), .SE(
        n704), .CK(net752), .Q(buffer[19]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_27_ ( .D(dout_data[3]), .SI(n703), .SE(n703), .CK(net747), .Q(rdata[27]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_2_ ( .D(dout_data[2]), .SI(n702), .SE(n702), .CK(net762), .Q(buffer[2]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_10_ ( .D(dout_data[2]), .SI(n701), .SE(
        n701), .CK(net757), .Q(buffer[10]) );
  SAEDRVT14_FSDPQ_V2LP_1 buffer_reg_18_ ( .D(dout_data[2]), .SI(n700), .SE(
        n700), .CK(net752), .Q(buffer[18]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_26_ ( .D(dout_data[2]), .SI(n699), .SE(n699), .CK(net747), .Q(rdata[26]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_0_ ( .D(buffer[0]), .SI(n698), .SE(n698), 
        .CK(net747), .Q(rdata[0]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_1_ ( .D(buffer[1]), .SI(n697), .SE(n697), 
        .CK(net747), .Q(rdata[1]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_2_ ( .D(buffer[2]), .SI(n696), .SE(n696), 
        .CK(net747), .Q(rdata[2]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_3_ ( .D(buffer[3]), .SI(n695), .SE(n695), 
        .CK(net747), .Q(rdata[3]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_4_ ( .D(buffer[4]), .SI(n694), .SE(n694), 
        .CK(net747), .Q(rdata[4]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_5_ ( .D(buffer[5]), .SI(n693), .SE(n693), 
        .CK(net747), .Q(rdata[5]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_6_ ( .D(buffer[6]), .SI(n692), .SE(n692), 
        .CK(net747), .Q(rdata[6]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_7_ ( .D(buffer[7]), .SI(n691), .SE(n691), 
        .CK(net747), .Q(rdata[7]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_8_ ( .D(buffer[8]), .SI(n690), .SE(n690), 
        .CK(net747), .Q(rdata[8]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_9_ ( .D(buffer[9]), .SI(n689), .SE(n689), 
        .CK(net747), .Q(rdata[9]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_10_ ( .D(buffer[10]), .SI(n688), .SE(n688), 
        .CK(net747), .Q(rdata[10]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_11_ ( .D(buffer[11]), .SI(n687), .SE(n687), 
        .CK(net747), .Q(rdata[11]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_12_ ( .D(buffer[12]), .SI(n686), .SE(n686), 
        .CK(net747), .Q(rdata[12]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_13_ ( .D(buffer[13]), .SI(n685), .SE(n685), 
        .CK(net747), .Q(rdata[13]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_14_ ( .D(buffer[14]), .SI(n684), .SE(n684), 
        .CK(net747), .Q(rdata[14]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_15_ ( .D(buffer[15]), .SI(n683), .SE(n683), 
        .CK(net747), .Q(rdata[15]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_16_ ( .D(buffer[16]), .SI(n682), .SE(n682), 
        .CK(net747), .Q(rdata[16]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_17_ ( .D(buffer[17]), .SI(n681), .SE(n681), 
        .CK(net747), .Q(rdata[17]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_18_ ( .D(buffer[18]), .SI(n680), .SE(n680), 
        .CK(net747), .Q(rdata[18]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_19_ ( .D(buffer[19]), .SI(n679), .SE(n679), 
        .CK(net747), .Q(rdata[19]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_20_ ( .D(buffer[20]), .SI(n678), .SE(n678), 
        .CK(net747), .Q(rdata[20]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_21_ ( .D(buffer[21]), .SI(n677), .SE(n677), 
        .CK(net747), .Q(rdata[21]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_22_ ( .D(buffer[22]), .SI(n676), .SE(n676), 
        .CK(net747), .Q(rdata[22]) );
  SAEDRVT14_FSDPQ_V2LP_1 rdata_reg_23_ ( .D(buffer[23]), .SI(n675), .SE(n675), 
        .CK(net747), .Q(rdata[23]) );
  SAEDRVT14_FSDPQ_V2LP_1 config_en_reg ( .D(n674), .SI(n673), .SE(n673), .CK(
        n792), .Q(cfgreg_do[31]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_2_ ( .D(N152), .SI(n672), .SE(n672), .CK(
        net747), .Q(rd_addr[2]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_1_ ( .D(N151), .SI(n671), .SE(n671), .CK(
        net747), .Q(rd_addr[1]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_0_ ( .D(N150), .SI(n670), .SE(n670), .CK(
        net747), .Q(rd_addr[0]) );
  SAEDRVT14_FSDPQ_V2LP_1 din_tag_reg_0_ ( .D(N364), .SI(n669), .SE(n669), .CK(
        n791), .Q(din_tag[0]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_3_ ( .D(N153), .SI(n668), .SE(n668), .CK(
        net747), .Q(rd_addr[3]) );
  SAEDRVT14_FSDPQ_V2LP_1 softreset_reg ( .D(N66), .SI(n667), .SE(n667), .CK(
        n792), .Q(softreset) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_4_ ( .D(N154), .SI(n666), .SE(n666), .CK(
        net747), .Q(rd_addr[4]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_5_ ( .D(N155), .SI(n665), .SE(n665), .CK(
        net747), .Q(rd_addr[5]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_6_ ( .D(N156), .SI(n664), .SE(n664), .CK(
        net747), .Q(rd_addr[6]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_7_ ( .D(N157), .SI(n663), .SE(n663), .CK(
        net747), .Q(rd_addr[7]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_8_ ( .D(N158), .SI(n662), .SE(n662), .CK(
        net747), .Q(rd_addr[8]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_9_ ( .D(N159), .SI(n661), .SE(n661), .CK(
        net747), .Q(rd_addr[9]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_10_ ( .D(N160), .SI(n660), .SE(n660), 
        .CK(net747), .Q(rd_addr[10]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_11_ ( .D(N161), .SI(n659), .SE(n659), 
        .CK(net747), .Q(rd_addr[11]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_13_ ( .D(N163), .SI(n658), .SE(n658), 
        .CK(net747), .Q(rd_addr[13]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_12_ ( .D(N162), .SI(n657), .SE(n657), 
        .CK(net747), .Q(rd_addr[12]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_14_ ( .D(N164), .SI(n656), .SE(n656), 
        .CK(net747), .Q(rd_addr[14]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_15_ ( .D(N165), .SI(n655), .SE(n655), 
        .CK(net747), .Q(rd_addr[15]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_16_ ( .D(N166), .SI(n654), .SE(n654), 
        .CK(net747), .Q(rd_addr[16]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_17_ ( .D(N167), .SI(n653), .SE(n653), 
        .CK(net747), .Q(rd_addr[17]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_18_ ( .D(N168), .SI(n652), .SE(n652), 
        .CK(net747), .Q(rd_addr[18]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_19_ ( .D(N169), .SI(n651), .SE(n651), 
        .CK(net747), .Q(rd_addr[19]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_20_ ( .D(N170), .SI(n650), .SE(n650), 
        .CK(net747), .Q(rd_addr[20]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_21_ ( .D(N171), .SI(n649), .SE(n649), 
        .CK(net747), .Q(rd_addr[21]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_22_ ( .D(N172), .SI(n648), .SE(n648), 
        .CK(net747), .Q(rd_addr[22]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_addr_reg_23_ ( .D(N173), .SI(n647), .SE(n647), 
        .CK(net747), .Q(rd_addr[23]) );
  SAEDRVT14_FSDPQ_V2LP_1 din_valid_reg ( .D(N458), .SI(n646), .SE(n646), .CK(
        n792), .Q(din_valid) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_wait_reg ( .D(n645), .SI(n644), .SE(n644), .CK(
        net767), .Q(rd_wait) );
  SAEDRVT14_FSDPQ_V2LP_1 din_data_reg_7_ ( .D(n643), .SI(n642), .SE(n642), 
        .CK(net767), .Q(din_data[7]) );
  SAEDRVT14_FSDPQ_V2LP_1 din_data_reg_2_ ( .D(n641), .SI(n640), .SE(n640), 
        .CK(net767), .Q(din_data[2]) );
  SAEDRVT14_FSDPQ_V2LP_1 din_data_reg_5_ ( .D(n639), .SI(n638), .SE(n638), 
        .CK(net767), .Q(din_data[5]) );
  SAEDRVT14_FSDPQ_V2LP_1 din_data_reg_6_ ( .D(n637), .SI(n636), .SE(n636), 
        .CK(net767), .Q(din_data[6]) );
  SAEDRVT14_FSDPQ_V2LP_1 din_data_reg_4_ ( .D(n635), .SI(n634), .SE(n634), 
        .CK(net767), .Q(din_data[4]) );
  SAEDRVT14_FSDPQ_V2LP_1 din_data_reg_0_ ( .D(n633), .SI(n632), .SE(n632), 
        .CK(net767), .Q(din_data[0]) );
  SAEDRVT14_FSDPQ_V2LP_1 din_data_reg_3_ ( .D(n631), .SI(n630), .SE(n630), 
        .CK(net767), .Q(din_data[3]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_inc_reg ( .D(n629), .SI(n628), .SE(n628), .CK(
        net767), .Q(rd_inc) );
  SAEDRVT14_FSDPQ_V2LP_1 din_data_reg_1_ ( .D(n627), .SI(n626), .SE(n626), 
        .CK(net767), .Q(din_data[1]) );
  SAEDRVT14_FSDPQ_V2LP_1 rd_valid_reg ( .D(n625), .SI(n624), .SE(n624), .CK(
        n792), .Q(rd_valid) );
  SAEDRVT14_FSDPQ_V2LP_1 din_rd_reg ( .D(n623), .SI(n622), .SE(n622), .CK(n792), .Q(din_rd) );
  SAEDRVT14_FSDPQ_V2LP_1 xfer_resetn_reg ( .D(n733), .SI(n621), .SE(n621), 
        .CK(n792), .Q(xfer_resetn) );
  SAEDRVT14_FSDPQ_V2LP_1 din_qspi_reg ( .D(n620), .SI(n619), .SE(n619), .CK(
        n792), .Q(din_qspi) );
  SAEDRVT14_FSDPQ_V2LP_1 din_ddr_reg ( .D(n618), .SI(n617), .SE(n617), .CK(
        n792), .Q(din_ddr) );
  SAEDRVT14_FSDPQ_V2LP_1 state_reg_3_ ( .D(n616), .SI(n615), .SE(n615), .CK(
        n792), .Q(state[3]) );
  SAEDRVT14_FSDPQ_V2LP_1 state_reg_2_ ( .D(n614), .SI(n613), .SE(n613), .CK(
        n792), .Q(state[2]) );
  SAEDRVT14_FSDPQ_V2LP_1 state_reg_1_ ( .D(n612), .SI(n611), .SE(n611), .CK(
        n792), .Q(state[1]) );
  SAEDRVT14_FSDPQ_V2LP_1 state_reg_0_ ( .D(n610), .SI(n609), .SE(n609), .CK(
        n792), .Q(state[0]) );
  SAEDRVT14_FSDN_V2_1 xfer_io2_90_reg ( .D(xfer_io2_do), .SI(n608), .SE(n608), 
        .CK(n792), .Q(xfer_io2_90) );
  SAEDRVT14_FSDN_V2_1 xfer_io3_90_reg ( .D(xfer_io3_do), .SI(n607), .SE(n607), 
        .CK(n792), .Q(xfer_io3_90) );
  SAEDRVT14_FSDN_V2_1 xfer_io1_90_reg ( .D(xfer_io1_do), .SI(n606), .SE(n606), 
        .CK(n792), .Q(xfer_io1_90) );
  SAEDRVT14_FSDN_V2_1 xfer_io0_90_reg ( .D(xfer_io0_do), .SI(n605), .SE(n605), 
        .CK(n792), .Q(xfer_io0_90) );
  SAEDRVT14_NR2_MM_0P5 U576 ( .A1(softreset), .A2(n830), .X(N118) );
  SAEDRVT14_INV_S_0P5 U577 ( .A(state[0]), .X(n599) );
  SAEDRVT14_INV_S_0P5 U578 ( .A(dout_valid), .X(n457) );
  SAEDRVT14_INV_S_0P5 U579 ( .A(state[3]), .X(n532) );
  SAEDRVT14_INV_S_0P5 U580 ( .A(state[2]), .X(n588) );
  SAEDRVT14_ND2_CDC_1 U581 ( .A1(n532), .A2(n588), .X(n557) );
  SAEDRVT14_ND2_CDC_1 U582 ( .A1(n794), .A2(rd_valid), .X(n439) );
  SAEDRVT14_EO2_V1_0P75 U583 ( .A1(n[805]), .A2(N50), .X(n365) );
  SAEDRVT14_INV_0P75 U584 ( .A(n[816]), .X(n537) );
  SAEDRVT14_OA2BB2_V1_1 U585 ( .A1(n537), .A2(rd_addr[2]), .B1(n537), .B2(
        rd_addr[2]), .X(n410) );
  SAEDRVT14_INV_0P75 U586 ( .A(rd_addr[0]), .X(n462) );
  SAEDRVT14_INV_0P75 U587 ( .A(rd_addr[1]), .X(n464) );
  SAEDRVT14_OAI22_0P5 U588 ( .A1(n462), .A2(n[818]), .B1(n464), .B2(n[817]), 
        .X(n364) );
  SAEDRVT14_AO221_0P5 U589 ( .A1(n462), .A2(n[818]), .B1(n[817]), .B2(n464), 
        .C(n364), .X(n431) );
  SAEDRVT14_OR4_1 U590 ( .A1(N61), .A2(n365), .A3(n410), .A4(n431), .X(n437)
         );
  SAEDRVT14_INV_S_0P5 U591 ( .A(n[806]), .X(n516) );
  SAEDRVT14_INV_S_0P5 U592 ( .A(n[814]), .X(n518) );
  SAEDRVT14_OAI22_0P5 U593 ( .A1(n516), .A2(N49), .B1(n518), .B2(N41), .X(n366) );
  SAEDRVT14_AO221_0P5 U594 ( .A1(n516), .A2(N49), .B1(N41), .B2(n518), .C(n366), .X(n387) );
  SAEDRVT14_INV_S_0P5 U595 ( .A(n[810]), .X(n474) );
  SAEDRVT14_INV_S_0P5 U596 ( .A(n[797]), .X(n509) );
  SAEDRVT14_OAI22_0P5 U597 ( .A1(n474), .A2(N45), .B1(n509), .B2(N58), .X(n367) );
  SAEDRVT14_AO221_0P5 U598 ( .A1(n474), .A2(N45), .B1(N58), .B2(n509), .C(n367), .X(n386) );
  SAEDRVT14_INV_S_0P5 U599 ( .A(n[813]), .X(n510) );
  SAEDRVT14_INV_S_0P5 U600 ( .A(n[798]), .X(n517) );
  SAEDRVT14_OAI22_0P5 U601 ( .A1(n510), .A2(N42), .B1(n517), .B2(N57), .X(n368) );
  SAEDRVT14_AO221_0P5 U602 ( .A1(n510), .A2(N42), .B1(N57), .B2(n517), .C(n368), .X(n375) );
  SAEDRVT14_INV_S_0P5 U603 ( .A(n[799]), .X(n525) );
  SAEDRVT14_INV_0P75 U604 ( .A(n[800]), .X(n535) );
  SAEDRVT14_OAI22_0P5 U605 ( .A1(n525), .A2(N56), .B1(n535), .B2(N55), .X(n369) );
  SAEDRVT14_AO221_0P5 U606 ( .A1(n525), .A2(N56), .B1(N55), .B2(n535), .C(n369), .X(n374) );
  SAEDRVT14_INV_S_0P5 U607 ( .A(n[803]), .X(n499) );
  SAEDRVT14_INV_S_0P5 U608 ( .A(n[811]), .X(n493) );
  SAEDRVT14_OAI22_0P5 U609 ( .A1(n499), .A2(N52), .B1(n493), .B2(N44), .X(n370) );
  SAEDRVT14_AO221_0P5 U610 ( .A1(n499), .A2(N52), .B1(N44), .B2(n493), .C(n370), .X(n373) );
  SAEDRVT14_INV_S_0P5 U611 ( .A(n[808]), .X(n534) );
  SAEDRVT14_INV_S_0P5 U612 ( .A(n[815]), .X(n468) );
  SAEDRVT14_OAI22_0P5 U613 ( .A1(n534), .A2(N47), .B1(n468), .B2(N40), .X(n371) );
  SAEDRVT14_AO221_0P5 U614 ( .A1(n534), .A2(N47), .B1(N40), .B2(n468), .C(n371), .X(n372) );
  SAEDRVT14_OR4_1 U615 ( .A1(n375), .A2(n374), .A3(n373), .A4(n372), .X(n385)
         );
  SAEDRVT14_INV_S_0P5 U616 ( .A(n[807]), .X(n523) );
  SAEDRVT14_INV_S_0P5 U617 ( .A(n[809]), .X(n476) );
  SAEDRVT14_OAI22_0P5 U618 ( .A1(n523), .A2(N48), .B1(n476), .B2(N46), .X(n376) );
  SAEDRVT14_AO221_0P5 U619 ( .A1(n523), .A2(N48), .B1(N46), .B2(n476), .C(n376), .X(n383) );
  SAEDRVT14_INV_S_0P5 U620 ( .A(n[795]), .X(n492) );
  SAEDRVT14_INV_S_0P5 U621 ( .A(n[804]), .X(n503) );
  SAEDRVT14_OAI22_0P5 U622 ( .A1(n492), .A2(N60), .B1(n503), .B2(N51), .X(n377) );
  SAEDRVT14_AO221_0P5 U623 ( .A1(n492), .A2(N60), .B1(N51), .B2(n503), .C(n377), .X(n382) );
  SAEDRVT14_INV_S_0P5 U624 ( .A(n[812]), .X(n505) );
  SAEDRVT14_INV_S_0P5 U625 ( .A(n[802]), .X(n483) );
  SAEDRVT14_OAI22_0P5 U626 ( .A1(n505), .A2(N43), .B1(n483), .B2(N53), .X(n378) );
  SAEDRVT14_AO221_0P5 U627 ( .A1(n505), .A2(N43), .B1(N53), .B2(n483), .C(n378), .X(n381) );
  SAEDRVT14_INV_S_0P5 U628 ( .A(n[796]), .X(n504) );
  SAEDRVT14_INV_S_0P5 U629 ( .A(n[801]), .X(n547) );
  SAEDRVT14_OAI22_0P5 U630 ( .A1(n504), .A2(N59), .B1(n547), .B2(N54), .X(n379) );
  SAEDRVT14_AO221_0P5 U631 ( .A1(n504), .A2(N59), .B1(N54), .B2(n547), .C(n379), .X(n380) );
  SAEDRVT14_OR4_1 U632 ( .A1(n383), .A2(n382), .A3(n381), .A4(n380), .X(n384)
         );
  SAEDRVT14_OR4_1 U633 ( .A1(n387), .A2(n386), .A3(n385), .A4(n384), .X(n436)
         );
  SAEDRVT14_INV_0P75 U634 ( .A(rd_addr[3]), .X(n390) );
  SAEDRVT14_INV_0P75 U635 ( .A(rd_addr[16]), .X(n389) );
  SAEDRVT14_OAI22_0P5 U636 ( .A1(n390), .A2(n[815]), .B1(n389), .B2(n[802]), 
        .X(n388) );
  SAEDRVT14_AO221_0P5 U637 ( .A1(n390), .A2(n[815]), .B1(n[802]), .B2(n389), 
        .C(n388), .X(n435) );
  SAEDRVT14_INV_0P75 U638 ( .A(rd_addr[4]), .X(n393) );
  SAEDRVT14_INV_0P75 U639 ( .A(rd_addr[13]), .X(n392) );
  SAEDRVT14_OAI22_0P5 U640 ( .A1(n393), .A2(n[814]), .B1(n392), .B2(n[805]), 
        .X(n391) );
  SAEDRVT14_AO221_0P5 U641 ( .A1(n393), .A2(n[814]), .B1(n[805]), .B2(n392), 
        .C(n391), .X(n434) );
  SAEDRVT14_INV_0P75 U642 ( .A(rd_addr[12]), .X(n396) );
  SAEDRVT14_INV_0P75 U643 ( .A(rd_addr[7]), .X(n395) );
  SAEDRVT14_OAI22_0P5 U644 ( .A1(n396), .A2(n[806]), .B1(n395), .B2(n[811]), 
        .X(n394) );
  SAEDRVT14_AO221_0P5 U645 ( .A1(n396), .A2(n[806]), .B1(n[811]), .B2(n395), 
        .C(n394), .X(n409) );
  SAEDRVT14_INV_0P75 U646 ( .A(rd_addr[15]), .X(n399) );
  SAEDRVT14_INV_0P75 U647 ( .A(rd_addr[20]), .X(n398) );
  SAEDRVT14_OAI22_0P5 U648 ( .A1(n399), .A2(n[803]), .B1(n398), .B2(n[798]), 
        .X(n397) );
  SAEDRVT14_AO221_0P5 U649 ( .A1(n399), .A2(n[803]), .B1(n[798]), .B2(n398), 
        .C(n397), .X(n408) );
  SAEDRVT14_INV_0P75 U650 ( .A(rd_addr[19]), .X(n402) );
  SAEDRVT14_INV_0P75 U651 ( .A(rd_addr[5]), .X(n401) );
  SAEDRVT14_OAI22_0P5 U652 ( .A1(n402), .A2(n[799]), .B1(n401), .B2(n[813]), 
        .X(n400) );
  SAEDRVT14_AO221_0P5 U653 ( .A1(n402), .A2(n[799]), .B1(n[813]), .B2(n401), 
        .C(n400), .X(n407) );
  SAEDRVT14_INV_0P75 U654 ( .A(rd_addr[9]), .X(n405) );
  SAEDRVT14_INV_0P75 U655 ( .A(rd_addr[17]), .X(n404) );
  SAEDRVT14_OAI22_0P5 U656 ( .A1(n405), .A2(n[809]), .B1(n404), .B2(n[801]), 
        .X(n403) );
  SAEDRVT14_AO221_0P5 U657 ( .A1(n405), .A2(n[809]), .B1(n[801]), .B2(n404), 
        .C(n403), .X(n406) );
  SAEDRVT14_OR4_1 U658 ( .A1(n409), .A2(n408), .A3(n407), .A4(n406), .X(n433)
         );
  SAEDRVT14_INV_0P75 U659 ( .A(n410), .X(n411) );
  SAEDRVT14_AOI21_0P5 U660 ( .A1(rd_addr[18]), .A2(n535), .B(n411), .X(n412)
         );
  SAEDRVT14_OAI21_0P5 U661 ( .A1(rd_addr[18]), .A2(n535), .B(n412), .X(n430)
         );
  SAEDRVT14_INV_0P75 U662 ( .A(rd_addr[21]), .X(n415) );
  SAEDRVT14_INV_0P75 U663 ( .A(rd_addr[14]), .X(n414) );
  SAEDRVT14_OAI22_0P5 U664 ( .A1(n415), .A2(n[797]), .B1(n414), .B2(n[804]), 
        .X(n413) );
  SAEDRVT14_AO221_0P5 U665 ( .A1(n415), .A2(n[797]), .B1(n[804]), .B2(n414), 
        .C(n413), .X(n428) );
  SAEDRVT14_INV_0P75 U666 ( .A(rd_addr[6]), .X(n418) );
  SAEDRVT14_INV_0P75 U667 ( .A(rd_addr[23]), .X(n417) );
  SAEDRVT14_OAI22_0P5 U668 ( .A1(n418), .A2(n[812]), .B1(n417), .B2(n[795]), 
        .X(n416) );
  SAEDRVT14_AO221_0P5 U669 ( .A1(n418), .A2(n[812]), .B1(n[795]), .B2(n417), 
        .C(n416), .X(n427) );
  SAEDRVT14_INV_0P75 U670 ( .A(rd_addr[22]), .X(n421) );
  SAEDRVT14_INV_0P75 U671 ( .A(rd_addr[11]), .X(n420) );
  SAEDRVT14_OAI22_0P5 U672 ( .A1(n421), .A2(n[796]), .B1(n420), .B2(n[807]), 
        .X(n419) );
  SAEDRVT14_AO221_0P5 U673 ( .A1(n421), .A2(n[796]), .B1(n[807]), .B2(n420), 
        .C(n419), .X(n426) );
  SAEDRVT14_INV_0P75 U674 ( .A(rd_addr[10]), .X(n424) );
  SAEDRVT14_INV_0P75 U675 ( .A(rd_addr[8]), .X(n423) );
  SAEDRVT14_OAI22_0P5 U676 ( .A1(n424), .A2(n[808]), .B1(n423), .B2(n[810]), 
        .X(n422) );
  SAEDRVT14_AO221_0P5 U677 ( .A1(n424), .A2(n[808]), .B1(n[810]), .B2(n423), 
        .C(n422), .X(n425) );
  SAEDRVT14_OR4_1 U678 ( .A1(n428), .A2(n427), .A3(n426), .A4(n425), .X(n429)
         );
  SAEDRVT14_OR4_1 U679 ( .A1(n439), .A2(n431), .A3(n430), .A4(n429), .X(n432)
         );
  SAEDRVT14_OR4_1 U680 ( .A1(n435), .A2(n434), .A3(n433), .A4(n432), .X(n442)
         );
  SAEDRVT14_OAI21_0P5 U681 ( .A1(n437), .A2(n436), .B(n442), .X(n438) );
  SAEDRVT14_NR2_MM_0P5 U682 ( .A1(n439), .A2(n438), .X(n580) );
  SAEDRVT14_INV_S_0P5 U683 ( .A(N118), .X(n589) );
  SAEDRVT14_NR2_MM_0P5 U684 ( .A1(n580), .A2(n589), .X(n592) );
  SAEDRVT14_OA31_1 U685 ( .A1(n599), .A2(n457), .A3(n557), .B(n592), .X(n733)
         );
  SAEDRVT14_MUX2_U_0P5 U690 ( .D0(n[805]), .D1(N50), .S(n832), .X(N163) );
  SAEDRVT14_OR4_1 U701 ( .A1(n821), .A2(n822), .A3(n734), .A4(N91), .X(N66) );
  SAEDRVT14_AOI21_0P75 U702 ( .A1(n819), .A2(cfgreg_di_31), .B(n830), .X(n441)
         );
  SAEDRVT14_INV_0P75 U712 ( .A(n442), .X(ready) );
  SAEDRVT14_INV_S_0P5 U713 ( .A(din_ddr), .X(n572) );
  SAEDRVT14_NR2_MM_0P5 U714 ( .A1(din_qspi), .A2(n572), .X(xfer_dspi) );
  SAEDRVT14_INV_S_0P5 U715 ( .A(din_qspi), .X(n576) );
  SAEDRVT14_NR2_MM_0P5 U716 ( .A1(n572), .A2(n576), .X(xfer_ddr) );
  SAEDRVT14_INV_S_0P5 U717 ( .A(cfgreg_do[22]), .X(n573) );
  SAEDRVT14_OAI22_0P5 U718 ( .A1(cfgreg_do[22]), .A2(xfer_io3_do), .B1(n573), 
        .B2(xfer_io3_90), .X(n444) );
  SAEDRVT14_ND2_CDC_1 U720 ( .A1(n831), .A2(config_do[3]), .X(n443) );
  SAEDRVT14_OAI21_0P5 U721 ( .A1(n444), .A2(n831), .B(n443), .X(flash_io3_do)
         );
  SAEDRVT14_OAI22_0P5 U722 ( .A1(cfgreg_do[22]), .A2(xfer_io2_do), .B1(n573), 
        .B2(xfer_io2_90), .X(n446) );
  SAEDRVT14_ND2_CDC_1 U723 ( .A1(n831), .A2(config_do[2]), .X(n445) );
  SAEDRVT14_OAI21_0P5 U724 ( .A1(n446), .A2(n831), .B(n445), .X(flash_io2_do)
         );
  SAEDRVT14_OAI22_0P5 U725 ( .A1(cfgreg_do[22]), .A2(xfer_io1_do), .B1(n573), 
        .B2(xfer_io1_90), .X(n448) );
  SAEDRVT14_ND2_CDC_1 U726 ( .A1(n831), .A2(config_do[1]), .X(n447) );
  SAEDRVT14_OAI21_0P5 U727 ( .A1(n448), .A2(n831), .B(n447), .X(flash_io1_do)
         );
  SAEDRVT14_OAI22_0P5 U728 ( .A1(cfgreg_do[22]), .A2(xfer_io0_do), .B1(n573), 
        .B2(xfer_io0_90), .X(n451) );
  SAEDRVT14_ND2_CDC_1 U729 ( .A1(n831), .A2(config_do[0]), .X(n449) );
  SAEDRVT14_OAI21_0P5 U730 ( .A1(n451), .A2(n831), .B(n449), .X(flash_io0_do)
         );
  SAEDRVT14_MUXI2_U_0P5 U731 ( .D0(config_oe[3]), .D1(xfer_io3_oe), .S(
        cfgreg_do[31]), .X(flash_io3_oeb) );
  SAEDRVT14_INV_S_0P5 U732 ( .A(flash_io3_oeb), .X(cfgreg_do[11]) );
  SAEDRVT14_MUXI2_U_0P5 U733 ( .D0(config_oe[2]), .D1(xfer_io3_oe), .S(
        cfgreg_do[31]), .X(flash_io2_oeb) );
  SAEDRVT14_INV_S_0P5 U734 ( .A(flash_io2_oeb), .X(cfgreg_do[10]) );
  SAEDRVT14_MUXI2_U_0P5 U735 ( .D0(config_oe[1]), .D1(xfer_io1_oe), .S(
        cfgreg_do[31]), .X(flash_io1_oeb) );
  SAEDRVT14_INV_S_0P5 U736 ( .A(flash_io1_oeb), .X(cfgreg_do[9]) );
  SAEDRVT14_MUXI2_U_0P5 U737 ( .D0(config_oe[0]), .D1(xfer_io0_oe), .S(
        cfgreg_do[31]), .X(flash_io0_oeb) );
  SAEDRVT14_INV_S_0P5 U738 ( .A(flash_io0_oeb), .X(cfgreg_do[8]) );
  SAEDRVT14_MUX2_U_0P5 U739 ( .D0(config_clk), .D1(xfer_clk), .S(cfgreg_do[31]), .X(flash_clk) );
  SAEDRVT14_MUX2_U_0P5 U740 ( .D0(config_csb), .D1(xfer_csb), .S(cfgreg_do[31]), .X(flash_csb) );
  SAEDRVT14_ND2_CDC_1 U741 ( .A1(state[3]), .A2(state[2]), .X(n452) );
  SAEDRVT14_ND2_CDC_1 U742 ( .A1(state[2]), .A2(n532), .X(n498) );
  SAEDRVT14_INV_S_0P5 U743 ( .A(state[1]), .X(n555) );
  SAEDRVT14_NR2_MM_0P5 U744 ( .A1(n498), .A2(n555), .X(n494) );
  SAEDRVT14_AOI21_0P75 U745 ( .A1(n599), .A2(n452), .B(n494), .X(n453) );
  SAEDRVT14_INV_S_0P5 U746 ( .A(n794), .X(n601) );
  SAEDRVT14_AOI21_0P75 U747 ( .A1(state[0]), .A2(state[1]), .B(n498), .X(n586)
         );
  SAEDRVT14_ND2_CDC_1 U748 ( .A1(state[0]), .A2(n586), .X(n546) );
  SAEDRVT14_OR3_0P5 U749 ( .A1(ready), .A2(n601), .A3(n546), .X(n571) );
  SAEDRVT14_ND2_CDC_1 U750 ( .A1(n453), .A2(n571), .X(n566) );
  SAEDRVT14_AOI21_0P75 U751 ( .A1(state[3]), .A2(n588), .B(n566), .X(n454) );
  SAEDRVT14_ND2_CDC_1 U752 ( .A1(n599), .A2(n555), .X(n497) );
  SAEDRVT14_AO32_U_0P5 U753 ( .A1(n454), .A2(rd_wait), .A3(n601), .B1(n454), 
        .B2(n497), .X(n582) );
  SAEDRVT14_NR3_0P5 U754 ( .A1(n589), .A2(n582), .A3(n837), .X(N458) );
  SAEDRVT14_INV_S_0P5 U755 ( .A(dout_tag[0]), .X(n459) );
  SAEDRVT14_INV_S_0P5 U756 ( .A(dout_tag[1]), .X(n456) );
  SAEDRVT14_AN4_0P5 U757 ( .A1(dout_valid), .A2(dout_tag[2]), .A3(n459), .A4(
        n456), .X(n604) );
  SAEDRVT14_INV_S_0P5 U758 ( .A(n604), .X(n603) );
  SAEDRVT14_NR2_MM_0P5 U759 ( .A1(n589), .A2(n603), .X(N456) );
  SAEDRVT14_NR2_MM_0P5 U760 ( .A1(dout_tag[2]), .A2(n589), .X(n455) );
  SAEDRVT14_AN4_0P5 U761 ( .A1(dout_valid), .A2(dout_tag[0]), .A3(n455), .A4(
        n456), .X(N383) );
  SAEDRVT14_OR4_1 U762 ( .A1(dout_tag[2]), .A2(n457), .A3(n589), .A4(n456), 
        .X(n458) );
  SAEDRVT14_NR2_MM_0P5 U763 ( .A1(dout_tag[0]), .A2(n458), .X(N391) );
  SAEDRVT14_NR2_MM_0P5 U764 ( .A1(n459), .A2(n458), .X(N399) );
  SAEDRVT14_NR2_MM_0P5 U765 ( .A1(state[2]), .A2(n589), .X(n460) );
  SAEDRVT14_ND2_CDC_1 U766 ( .A1(state[3]), .A2(n460), .X(n461) );
  SAEDRVT14_NR2_MM_0P5 U767 ( .A1(n599), .A2(n461), .X(N364) );
  SAEDRVT14_NR2_MM_0P5 U768 ( .A1(n555), .A2(n461), .X(N366) );
  SAEDRVT14_AN3_0P5 U769 ( .A1(N118), .A2(state[2]), .A3(state[3]), .X(N368)
         );
  SAEDRVT14_ND2_CDC_1 U770 ( .A1(N118), .A2(n582), .X(N367) );
  SAEDRVT14_INV_S_0P5 U771 ( .A(n[818]), .X(n463) );
  SAEDRVT14_OAI22_0P5 U772 ( .A1(n834), .A2(n463), .B1(n835), .B2(n462), .X(
        N150) );
  SAEDRVT14_INV_S_0P5 U774 ( .A(n[817]), .X(n465) );
  SAEDRVT14_OAI22_0P5 U775 ( .A1(n834), .A2(n465), .B1(n835), .B2(n464), .X(
        N151) );
  SAEDRVT14_OAI22_0P5 U776 ( .A1(n834), .A2(n537), .B1(n835), .B2(rd_addr[2]), 
        .X(N152) );
  SAEDRVT14_INV_S_0P5 U777 ( .A(N40), .X(n467) );
  SAEDRVT14_OAI22_0P5 U778 ( .A1(n834), .A2(n468), .B1(n835), .B2(n467), .X(
        N153) );
  SAEDRVT14_INV_S_0P5 U779 ( .A(N41), .X(n469) );
  SAEDRVT14_OAI22_0P5 U780 ( .A1(n834), .A2(n518), .B1(n835), .B2(n469), .X(
        N154) );
  SAEDRVT14_INV_S_0P5 U781 ( .A(N42), .X(n470) );
  SAEDRVT14_OAI22_0P5 U782 ( .A1(n832), .A2(n510), .B1(n833), .B2(n470), .X(
        N155) );
  SAEDRVT14_INV_S_0P5 U783 ( .A(N43), .X(n471) );
  SAEDRVT14_OAI22_0P5 U784 ( .A1(n834), .A2(n505), .B1(n835), .B2(n471), .X(
        N156) );
  SAEDRVT14_INV_S_0P5 U785 ( .A(N44), .X(n472) );
  SAEDRVT14_OAI22_0P5 U786 ( .A1(n832), .A2(n493), .B1(n833), .B2(n472), .X(
        N157) );
  SAEDRVT14_INV_S_0P5 U787 ( .A(N45), .X(n473) );
  SAEDRVT14_OAI22_0P5 U788 ( .A1(n832), .A2(n474), .B1(n833), .B2(n473), .X(
        N158) );
  SAEDRVT14_INV_S_0P5 U789 ( .A(N46), .X(n475) );
  SAEDRVT14_OAI22_0P5 U790 ( .A1(n832), .A2(n476), .B1(n833), .B2(n475), .X(
        N159) );
  SAEDRVT14_INV_S_0P5 U791 ( .A(N47), .X(n477) );
  SAEDRVT14_OAI22_0P5 U792 ( .A1(n834), .A2(n534), .B1(n835), .B2(n477), .X(
        N160) );
  SAEDRVT14_INV_S_0P5 U793 ( .A(N48), .X(n478) );
  SAEDRVT14_OAI22_0P5 U794 ( .A1(n832), .A2(n523), .B1(n833), .B2(n478), .X(
        N161) );
  SAEDRVT14_INV_S_0P5 U795 ( .A(N49), .X(n479) );
  SAEDRVT14_OAI22_0P5 U796 ( .A1(n832), .A2(n516), .B1(n833), .B2(n479), .X(
        N162) );
  SAEDRVT14_INV_S_0P5 U797 ( .A(N51), .X(n480) );
  SAEDRVT14_OAI22_0P5 U798 ( .A1(n832), .A2(n503), .B1(n833), .B2(n480), .X(
        N164) );
  SAEDRVT14_INV_S_0P5 U799 ( .A(N52), .X(n481) );
  SAEDRVT14_OAI22_0P5 U800 ( .A1(n832), .A2(n499), .B1(n833), .B2(n481), .X(
        N165) );
  SAEDRVT14_INV_S_0P5 U801 ( .A(N53), .X(n482) );
  SAEDRVT14_OAI22_0P5 U802 ( .A1(n834), .A2(n483), .B1(n835), .B2(n482), .X(
        N166) );
  SAEDRVT14_INV_S_0P5 U803 ( .A(N54), .X(n484) );
  SAEDRVT14_OAI22_0P5 U804 ( .A1(n832), .A2(n547), .B1(n833), .B2(n484), .X(
        N167) );
  SAEDRVT14_INV_S_0P5 U805 ( .A(N55), .X(n485) );
  SAEDRVT14_OAI22_0P5 U806 ( .A1(n834), .A2(n535), .B1(n835), .B2(n485), .X(
        N168) );
  SAEDRVT14_INV_S_0P5 U807 ( .A(N56), .X(n486) );
  SAEDRVT14_OAI22_0P5 U808 ( .A1(n834), .A2(n525), .B1(n835), .B2(n486), .X(
        N169) );
  SAEDRVT14_INV_S_0P5 U809 ( .A(N57), .X(n487) );
  SAEDRVT14_OAI22_0P5 U810 ( .A1(n832), .A2(n517), .B1(n833), .B2(n487), .X(
        N170) );
  SAEDRVT14_INV_S_0P5 U811 ( .A(N58), .X(n488) );
  SAEDRVT14_OAI22_0P5 U812 ( .A1(n832), .A2(n509), .B1(n833), .B2(n488), .X(
        N171) );
  SAEDRVT14_INV_S_0P5 U813 ( .A(N59), .X(n489) );
  SAEDRVT14_OAI22_0P5 U814 ( .A1(n834), .A2(n504), .B1(n835), .B2(n489), .X(
        N172) );
  SAEDRVT14_INV_S_0P5 U815 ( .A(N60), .X(n490) );
  SAEDRVT14_OAI22_0P5 U816 ( .A1(n832), .A2(n492), .B1(n833), .B2(n490), .X(
        N173) );
  SAEDRVT14_INV_S_0P5 U818 ( .A(n494), .X(n595) );
  SAEDRVT14_NR2_MM_0P5 U819 ( .A1(n599), .A2(n595), .X(n591) );
  SAEDRVT14_ND2_CDC_1 U821 ( .A1(n591), .A2(n836), .X(n536) );
  SAEDRVT14_OAI22_0P5 U822 ( .A1(n493), .A2(n536), .B1(n492), .B2(n546), .X(
        n501) );
  SAEDRVT14_ND2_CDC_1 U823 ( .A1(n494), .A2(n599), .X(n533) );
  SAEDRVT14_INV_S_0P5 U824 ( .A(n497), .X(n495) );
  SAEDRVT14_ND2_CDC_1 U825 ( .A1(n495), .A2(n588), .X(n496) );
  SAEDRVT14_INV_S_0P5 U826 ( .A(n496), .X(n559) );
  SAEDRVT14_ND2_CDC_1 U827 ( .A1(n836), .A2(n559), .X(n556) );
  SAEDRVT14_NR2_MM_0P5 U828 ( .A1(n498), .A2(n497), .X(n544) );
  SAEDRVT14_INV_S_0P5 U829 ( .A(cfgreg_do[21]), .X(n574) );
  SAEDRVT14_ND2_CDC_1 U830 ( .A1(n573), .A2(n574), .X(n594) );
  SAEDRVT14_AO21B_0P5 U831 ( .A1(n544), .A2(n594), .B(n557), .X(n528) );
  SAEDRVT14_AN2B_MM_1 U832 ( .B(n556), .A(n528), .X(n512) );
  SAEDRVT14_OAI21_0P5 U833 ( .A1(n499), .A2(n533), .B(n512), .X(n500) );
  SAEDRVT14_OAI21_0P5 U834 ( .A1(n501), .A2(n500), .B(n566), .X(n502) );
  SAEDRVT14_AO21B_0P5 U835 ( .A1(n838), .A2(din_data[7]), .B(n502), .X(n643)
         );
  SAEDRVT14_OAI22_0P5 U836 ( .A1(cfgreg_do[20]), .A2(n556), .B1(state[1]), 
        .B2(n557), .X(n521) );
  SAEDRVT14_INV_S_0P5 U837 ( .A(n544), .X(n578) );
  SAEDRVT14_OAI22_0P5 U838 ( .A1(n503), .A2(n533), .B1(n574), .B2(n578), .X(
        n507) );
  SAEDRVT14_OAI22_0P5 U839 ( .A1(n505), .A2(n536), .B1(n504), .B2(n546), .X(
        n506) );
  SAEDRVT14_OA31_1 U840 ( .A1(n521), .A2(n507), .A3(n506), .B(n566), .X(n508)
         );
  SAEDRVT14_AO21_U_0P5 U841 ( .A1(n838), .A2(din_data[6]), .B(n508), .X(n637)
         );
  SAEDRVT14_INV_S_0P5 U842 ( .A(n533), .X(n549) );
  SAEDRVT14_OAI22_0P5 U843 ( .A1(n510), .A2(n536), .B1(n509), .B2(n546), .X(
        n511) );
  SAEDRVT14_AOI21_0P75 U844 ( .A1(n[805]), .A2(n549), .B(n511), .X(n513) );
  SAEDRVT14_AOI21_0P75 U845 ( .A1(n513), .A2(n512), .B(n838), .X(n514) );
  SAEDRVT14_AO21_U_0P5 U846 ( .A1(n838), .A2(din_data[5]), .B(n514), .X(n639)
         );
  SAEDRVT14_ND2_CDC_1 U847 ( .A1(n544), .A2(n574), .X(n515) );
  SAEDRVT14_OAI22_0P5 U848 ( .A1(n516), .A2(n533), .B1(n573), .B2(n515), .X(
        n520) );
  SAEDRVT14_OAI22_0P5 U849 ( .A1(n518), .A2(n536), .B1(n517), .B2(n546), .X(
        n519) );
  SAEDRVT14_OA31_1 U850 ( .A1(n521), .A2(n520), .A3(n519), .B(n566), .X(n522)
         );
  SAEDRVT14_AO21_U_0P5 U851 ( .A1(n838), .A2(din_data[4]), .B(n522), .X(n635)
         );
  SAEDRVT14_INV_S_0P5 U852 ( .A(n536), .X(n564) );
  SAEDRVT14_OAI22_0P5 U853 ( .A1(cfgreg_do[20]), .A2(n556), .B1(n523), .B2(
        n533), .X(n527) );
  SAEDRVT14_ND2_CDC_1 U854 ( .A1(n837), .A2(n559), .X(n569) );
  SAEDRVT14_INV_S_0P5 U855 ( .A(cfgreg_do[19]), .X(n524) );
  SAEDRVT14_OAI22_0P5 U856 ( .A1(n525), .A2(n546), .B1(n569), .B2(n524), .X(
        n526) );
  SAEDRVT14_OR3_0P5 U857 ( .A1(n528), .A2(n527), .A3(n526), .X(n529) );
  SAEDRVT14_AOI21_0P75 U858 ( .A1(n[815]), .A2(n564), .B(n529), .X(n531) );
  SAEDRVT14_INV_S_0P5 U859 ( .A(din_data[3]), .X(n530) );
  SAEDRVT14_OAI22_0P5 U860 ( .A1(n838), .A2(n531), .B1(n566), .B2(n530), .X(
        n631) );
  SAEDRVT14_OA31_1 U861 ( .A1(cfgreg_do[18]), .A2(n836), .A3(n532), .B(n559), 
        .X(n540) );
  SAEDRVT14_ND2_CDC_1 U862 ( .A1(cfgreg_do[21]), .A2(n544), .X(n542) );
  SAEDRVT14_OAI22_0P5 U863 ( .A1(n534), .A2(n533), .B1(n573), .B2(n542), .X(
        n539) );
  SAEDRVT14_OAI22_0P5 U864 ( .A1(n537), .A2(n536), .B1(n535), .B2(n546), .X(
        n538) );
  SAEDRVT14_OA31_1 U865 ( .A1(n540), .A2(n539), .A3(n538), .B(n566), .X(n541)
         );
  SAEDRVT14_AO21_U_0P5 U866 ( .A1(n838), .A2(din_data[2]), .B(n541), .X(n641)
         );
  SAEDRVT14_OAI21_0P5 U867 ( .A1(cfgreg_do[20]), .A2(n556), .B(n557), .X(n543)
         );
  SAEDRVT14_OAI22_0P5 U868 ( .A1(n544), .A2(n543), .B1(n573), .B2(n542), .X(
        n551) );
  SAEDRVT14_INV_S_0P5 U869 ( .A(cfgreg_do[17]), .X(n545) );
  SAEDRVT14_OAI22_0P5 U870 ( .A1(n547), .A2(n546), .B1(n569), .B2(n545), .X(
        n548) );
  SAEDRVT14_AOI21_0P75 U871 ( .A1(n[809]), .A2(n549), .B(n548), .X(n550) );
  SAEDRVT14_ND2_CDC_1 U872 ( .A1(n551), .A2(n550), .X(n552) );
  SAEDRVT14_AOI21_0P75 U873 ( .A1(n564), .A2(n[817]), .B(n552), .X(n554) );
  SAEDRVT14_INV_S_0P5 U874 ( .A(din_data[1]), .X(n553) );
  SAEDRVT14_OAI22_0P5 U875 ( .A1(n838), .A2(n554), .B1(n566), .B2(n553), .X(
        n627) );
  SAEDRVT14_INV_S_0P5 U876 ( .A(n586), .X(n562) );
  SAEDRVT14_OAI22_0P5 U877 ( .A1(n[802]), .A2(n599), .B1(n[810]), .B2(n555), 
        .X(n561) );
  SAEDRVT14_ND2_CDC_1 U878 ( .A1(n557), .A2(n556), .X(n558) );
  SAEDRVT14_AOI21_0P75 U879 ( .A1(n559), .A2(cfgreg_do[16]), .B(n558), .X(n560) );
  SAEDRVT14_OAI21_0P5 U880 ( .A1(n562), .A2(n561), .B(n560), .X(n563) );
  SAEDRVT14_AOI21_0P75 U881 ( .A1(n[818]), .A2(n564), .B(n563), .X(n567) );
  SAEDRVT14_INV_S_0P5 U882 ( .A(din_data[0]), .X(n565) );
  SAEDRVT14_OAI22_0P5 U883 ( .A1(n838), .A2(n567), .B1(n566), .B2(n565), .X(
        n633) );
  SAEDRVT14_INV_S_0P5 U884 ( .A(n569), .X(n570) );
  SAEDRVT14_AO32_U_0P5 U885 ( .A1(n592), .A2(state[3]), .A3(n570), .B1(n592), 
        .B2(din_rd), .X(n623) );
  SAEDRVT14_INV_S_0P5 U886 ( .A(n580), .X(n593) );
  SAEDRVT14_OAI21_0P5 U887 ( .A1(cfgreg_do[20]), .A2(n593), .B(N118), .X(n598)
         );
  SAEDRVT14_OR2_0P5 U888 ( .A1(n598), .A2(n571), .X(n575) );
  SAEDRVT14_ND2B_U_0P5 U889 ( .A(n598), .B(n571), .X(n577) );
  SAEDRVT14_OAI22_0P5 U890 ( .A1(n573), .A2(n575), .B1(n577), .B2(n572), .X(
        n618) );
  SAEDRVT14_OAI22_0P5 U891 ( .A1(n577), .A2(n576), .B1(n575), .B2(n574), .X(
        n620) );
  SAEDRVT14_OAI21_0P5 U892 ( .A1(n604), .A2(n834), .B(n578), .X(n579) );
  SAEDRVT14_NR2_MM_0P5 U893 ( .A1(n580), .A2(n579), .X(n629) );
  SAEDRVT14_ND2_CDC_1 U894 ( .A1(state[0]), .A2(state[1]), .X(n585) );
  SAEDRVT14_ND2_CDC_1 U895 ( .A1(n592), .A2(n585), .X(n584) );
  SAEDRVT14_OAI21_0P5 U896 ( .A1(n582), .A2(n836), .B(n733), .X(n600) );
  SAEDRVT14_AOI21_0P75 U897 ( .A1(state[0]), .A2(n600), .B(state[1]), .X(n583)
         );
  SAEDRVT14_AOI21_0P75 U898 ( .A1(n584), .A2(n600), .B(n583), .X(n612) );
  SAEDRVT14_OAI21_0P5 U899 ( .A1(state[2]), .A2(n585), .B(n593), .X(n587) );
  SAEDRVT14_AOI21_0P75 U900 ( .A1(n600), .A2(n587), .B(n586), .X(n590) );
  SAEDRVT14_OAI22_0P5 U901 ( .A1(n590), .A2(n589), .B1(n588), .B2(n600), .X(
        n614) );
  SAEDRVT14_AO32_U_0P5 U902 ( .A1(n592), .A2(n591), .A3(n600), .B1(n592), .B2(
        state[3]), .X(n616) );
  SAEDRVT14_OA21_1 U903 ( .A1(rd_valid), .A2(n604), .B(n592), .X(n625) );
  SAEDRVT14_OAI21_0P5 U904 ( .A1(n595), .A2(n594), .B(n593), .X(n596) );
  SAEDRVT14_OAI21_0P5 U905 ( .A1(n596), .A2(n599), .B(n600), .X(n597) );
  SAEDRVT14_OAI22_0P5 U906 ( .A1(n600), .A2(n599), .B1(n598), .B2(n597), .X(
        n610) );
  SAEDRVT14_OA221_U_0P5 U907 ( .A1(n604), .A2(rd_wait), .B1(n603), .B2(n834), 
        .C(n601), .X(n645) );
  SAEDRVT14_INV_S_0P5 U575 ( .A(n793), .X(n830) );
  SAEDRVT14_INV_S_0P5 U688 ( .A(cfgreg_do[31]), .X(n831) );
  SAEDRVT14_BUF_U_0P5 U689 ( .A(rd_inc), .X(n832) );
  SAEDRVT14_BUF_U_0P5 U773 ( .A(rd_inc), .X(n834) );
  SAEDRVT14_INV_S_0P5 U913 ( .A(n566), .X(n838) );
  SAEDRVT14_TIE1_V1_2 U466 ( .X(n_Logic1_) );
  SAEDRVT14_TIE0_PV1ECO_1 U467 ( .X(n605) );
  SAEDRVT14_TIE0_PV1ECO_1 U468 ( .X(n606) );
  SAEDRVT14_TIE0_PV1ECO_1 U469 ( .X(n607) );
  SAEDRVT14_TIE0_PV1ECO_1 U470 ( .X(n608) );
  SAEDRVT14_TIE0_PV1ECO_1 U471 ( .X(n609) );
  SAEDRVT14_TIE0_PV1ECO_1 U472 ( .X(n611) );
  SAEDRVT14_TIE0_PV1ECO_1 U473 ( .X(n613) );
  SAEDRVT14_TIE0_PV1ECO_1 U474 ( .X(n615) );
  SAEDRVT14_TIE0_PV1ECO_1 U475 ( .X(n617) );
  SAEDRVT14_TIE0_PV1ECO_1 U476 ( .X(n619) );
  SAEDRVT14_TIE0_PV1ECO_1 U477 ( .X(n621) );
  SAEDRVT14_TIE0_PV1ECO_1 U478 ( .X(n622) );
  SAEDRVT14_TIE0_PV1ECO_1 U479 ( .X(n624) );
  SAEDRVT14_TIE0_PV1ECO_1 U480 ( .X(n626) );
  SAEDRVT14_TIE0_PV1ECO_1 U481 ( .X(n628) );
  SAEDRVT14_TIE0_PV1ECO_1 U482 ( .X(n630) );
  SAEDRVT14_TIE0_PV1ECO_1 U483 ( .X(n632) );
  SAEDRVT14_TIE0_PV1ECO_1 U484 ( .X(n634) );
  SAEDRVT14_TIE0_PV1ECO_1 U485 ( .X(n636) );
  SAEDRVT14_TIE0_PV1ECO_1 U486 ( .X(n638) );
  SAEDRVT14_TIE0_PV1ECO_1 U487 ( .X(n640) );
  SAEDRVT14_TIE0_PV1ECO_1 U488 ( .X(n642) );
  SAEDRVT14_TIE0_PV1ECO_1 U489 ( .X(n644) );
  SAEDRVT14_TIE0_PV1ECO_1 U490 ( .X(n646) );
  SAEDRVT14_TIE0_PV1ECO_1 U491 ( .X(n647) );
  SAEDRVT14_TIE0_PV1ECO_1 U492 ( .X(n648) );
  SAEDRVT14_TIE0_PV1ECO_1 U493 ( .X(n649) );
  SAEDRVT14_TIE0_PV1ECO_1 U494 ( .X(n650) );
  SAEDRVT14_TIE0_PV1ECO_1 U495 ( .X(n651) );
  SAEDRVT14_TIE0_PV1ECO_1 U496 ( .X(n652) );
  SAEDRVT14_TIE0_PV1ECO_1 U497 ( .X(n653) );
  SAEDRVT14_TIE0_PV1ECO_1 U498 ( .X(n654) );
  SAEDRVT14_TIE0_PV1ECO_1 U499 ( .X(n655) );
  SAEDRVT14_TIE0_PV1ECO_1 U500 ( .X(n656) );
  SAEDRVT14_TIE0_PV1ECO_1 U501 ( .X(n657) );
  SAEDRVT14_TIE0_PV1ECO_1 U502 ( .X(n658) );
  SAEDRVT14_TIE0_PV1ECO_1 U503 ( .X(n659) );
  SAEDRVT14_TIE0_PV1ECO_1 U504 ( .X(n660) );
  SAEDRVT14_TIE0_PV1ECO_1 U505 ( .X(n661) );
  SAEDRVT14_TIE0_PV1ECO_1 U506 ( .X(n662) );
  SAEDRVT14_TIE0_PV1ECO_1 U507 ( .X(n663) );
  SAEDRVT14_TIE0_PV1ECO_1 U508 ( .X(n664) );
  SAEDRVT14_TIE0_PV1ECO_1 U509 ( .X(n665) );
  SAEDRVT14_TIE0_PV1ECO_1 U510 ( .X(n666) );
  SAEDRVT14_TIE0_PV1ECO_1 U511 ( .X(n667) );
  SAEDRVT14_TIE0_PV1ECO_1 U512 ( .X(n668) );
  SAEDRVT14_TIE0_PV1ECO_1 U513 ( .X(n669) );
  SAEDRVT14_TIE0_PV1ECO_1 U514 ( .X(n670) );
  SAEDRVT14_TIE0_PV1ECO_1 U515 ( .X(n671) );
  SAEDRVT14_TIE0_PV1ECO_1 U516 ( .X(n672) );
  SAEDRVT14_TIE0_PV1ECO_1 U517 ( .X(n673) );
  SAEDRVT14_TIE0_PV1ECO_1 U518 ( .X(n675) );
  SAEDRVT14_TIE0_PV1ECO_1 U519 ( .X(n676) );
  SAEDRVT14_TIE0_PV1ECO_1 U520 ( .X(n677) );
  SAEDRVT14_TIE0_PV1ECO_1 U521 ( .X(n678) );
  SAEDRVT14_TIE0_PV1ECO_1 U522 ( .X(n679) );
  SAEDRVT14_TIE0_PV1ECO_1 U523 ( .X(n680) );
  SAEDRVT14_TIE0_PV1ECO_1 U524 ( .X(n681) );
  SAEDRVT14_TIE0_PV1ECO_1 U525 ( .X(n682) );
  SAEDRVT14_TIE0_PV1ECO_1 U526 ( .X(n683) );
  SAEDRVT14_TIE0_PV1ECO_1 U527 ( .X(n684) );
  SAEDRVT14_TIE0_PV1ECO_1 U528 ( .X(n685) );
  SAEDRVT14_TIE0_PV1ECO_1 U529 ( .X(n686) );
  SAEDRVT14_TIE0_PV1ECO_1 U530 ( .X(n687) );
  SAEDRVT14_TIE0_PV1ECO_1 U531 ( .X(n688) );
  SAEDRVT14_TIE0_PV1ECO_1 U532 ( .X(n689) );
  SAEDRVT14_TIE0_PV1ECO_1 U533 ( .X(n690) );
  SAEDRVT14_TIE0_PV1ECO_1 U534 ( .X(n691) );
  SAEDRVT14_TIE0_PV1ECO_1 U535 ( .X(n692) );
  SAEDRVT14_TIE0_PV1ECO_1 U536 ( .X(n693) );
  SAEDRVT14_TIE0_PV1ECO_1 U537 ( .X(n694) );
  SAEDRVT14_TIE0_PV1ECO_1 U538 ( .X(n695) );
  SAEDRVT14_TIE0_PV1ECO_1 U539 ( .X(n696) );
  SAEDRVT14_TIE0_PV1ECO_1 U540 ( .X(n697) );
  SAEDRVT14_TIE0_PV1ECO_1 U541 ( .X(n698) );
  SAEDRVT14_TIE0_PV1ECO_1 U542 ( .X(n699) );
  SAEDRVT14_TIE0_PV1ECO_1 U543 ( .X(n700) );
  SAEDRVT14_TIE0_PV1ECO_1 U544 ( .X(n701) );
  SAEDRVT14_TIE0_PV1ECO_1 U545 ( .X(n702) );
  SAEDRVT14_TIE0_PV1ECO_1 U546 ( .X(n703) );
  SAEDRVT14_TIE0_PV1ECO_1 U547 ( .X(n704) );
  SAEDRVT14_TIE0_PV1ECO_1 U548 ( .X(n705) );
  SAEDRVT14_TIE0_PV1ECO_1 U549 ( .X(n706) );
  SAEDRVT14_TIE0_PV1ECO_1 U550 ( .X(n707) );
  SAEDRVT14_TIE0_PV1ECO_1 U551 ( .X(n708) );
  SAEDRVT14_TIE0_PV1ECO_1 U552 ( .X(n709) );
  SAEDRVT14_TIE0_PV1ECO_1 U553 ( .X(n710) );
  SAEDRVT14_TIE0_PV1ECO_1 U554 ( .X(n711) );
  SAEDRVT14_TIE0_PV1ECO_1 U555 ( .X(n712) );
  SAEDRVT14_TIE0_PV1ECO_1 U556 ( .X(n713) );
  SAEDRVT14_TIE0_PV1ECO_1 U557 ( .X(n714) );
  SAEDRVT14_TIE0_PV1ECO_1 U558 ( .X(n715) );
  SAEDRVT14_TIE0_PV1ECO_1 U559 ( .X(n716) );
  SAEDRVT14_TIE0_PV1ECO_1 U560 ( .X(n717) );
  SAEDRVT14_TIE0_PV1ECO_1 U561 ( .X(n718) );
  SAEDRVT14_TIE0_PV1ECO_1 U562 ( .X(n719) );
  SAEDRVT14_TIE0_PV1ECO_1 U563 ( .X(n720) );
  SAEDRVT14_TIE0_PV1ECO_1 U564 ( .X(n721) );
  SAEDRVT14_TIE0_PV1ECO_1 U565 ( .X(n722) );
  SAEDRVT14_TIE0_PV1ECO_1 U566 ( .X(n723) );
  SAEDRVT14_TIE0_PV1ECO_1 U567 ( .X(n724) );
  SAEDRVT14_TIE0_PV1ECO_1 U568 ( .X(n725) );
  SAEDRVT14_TIE0_PV1ECO_1 U569 ( .X(n726) );
  SAEDRVT14_TIE0_PV1ECO_1 U570 ( .X(n727) );
  SAEDRVT14_TIE0_PV1ECO_1 U571 ( .X(n728) );
  SAEDRVT14_TIE0_PV1ECO_1 U572 ( .X(n729) );
  SAEDRVT14_TIE0_PV1ECO_1 U573 ( .X(n730) );
  SAEDRVT14_TIE0_PV1ECO_1 U574 ( .X(n731) );
  SAEDRVT14_TIE0_PV1ECO_1 U686 ( .X(n732) );
  SAEDRVT14_TIE0_PV1ECO_1 U687 ( .X(n735) );
  SAEDRVT14_TIE0_PV1ECO_1 U710 ( .X(cfgreg_do[6]) );
  SAEDRVT14_TIE0_PV1ECO_1 U711 ( .X(n790) );
  SAEDRVT14_AN2_MM_1 U709 ( .A1(n793), .A2(n824), .X(N92) );
  SAEDRVT14_AN2_MM_1 U708 ( .A1(n793), .A2(n823), .X(N90) );
  SAEDRVT14_AN2_MM_1 U707 ( .A1(n793), .A2(n825), .X(N94) );
  SAEDRVT14_ND2B_U_0P5 U910 ( .A(n826), .B(n793), .X(N102) );
  SAEDRVT14_AN2_MM_1 U706 ( .A1(n793), .A2(n827), .X(N100) );
  SAEDRVT14_AN2_MM_1 U705 ( .A1(n793), .A2(n828), .X(N98) );
  SAEDRVT14_AN2_MM_1 U704 ( .A1(n793), .A2(n829), .X(N96) );
  SAEDRVT14_AN2_MM_1 U700 ( .A1(n793), .A2(cfgreg_di_5), .X(N70) );
  SAEDRVT14_AN2_MM_1 U699 ( .A1(n793), .A2(cfgreg_di_4), .X(N72) );
  SAEDRVT14_AN2_MM_1 U698 ( .A1(n793), .A2(cfgreg_di_11), .X(N80) );
  SAEDRVT14_AN2_MM_1 U697 ( .A1(n793), .A2(cfgreg_di_10), .X(N78) );
  SAEDRVT14_AN2_MM_1 U696 ( .A1(n793), .A2(cfgreg_di_9), .X(N76) );
  SAEDRVT14_AN2_MM_1 U695 ( .A1(n793), .A2(cfgreg_di_8), .X(N74) );
  SAEDRVT14_AN2_MM_1 U694 ( .A1(n793), .A2(cfgreg_di_3), .X(N88) );
  SAEDRVT14_AN2_MM_1 U693 ( .A1(n793), .A2(cfgreg_di_2), .X(N86) );
  SAEDRVT14_AN2_MM_1 U692 ( .A1(n793), .A2(cfgreg_di_1), .X(N84) );
  SAEDRVT14_AN2_MM_1 U691 ( .A1(n793), .A2(cfgreg_di_0), .X(N82) );
  SAEDRVT14_ND2_CDC_1 U703 ( .A1(n441), .A2(n734), .X(n674) );
  SAEDRVT14_ND2B_U_0P5 U908 ( .A(n820), .B(n793), .X(N91) );
  SAEDRVT14_ND2B_U_0P5 U912 ( .A(n822), .B(n793), .X(N69) );
  SAEDRVT14_ND2B_U_0P5 U911 ( .A(n821), .B(n793), .X(N79) );
  SAEDRVT14_ND2B_U_0P5 U909 ( .A(n819), .B(cfgreg_do[31]), .X(n734) );
  SAEDRVT14_INV_S_0P5 U817 ( .A(n834), .X(n835) );
  SAEDRVT14_INV_S_0P5 U719 ( .A(n832), .X(n833) );
  SAEDRVT14_INV_S_0P5 U820 ( .A(n836), .X(n837) );
  SAEDRVT14_FSDPQ_V2LP_1 config_qspi_reg ( .D(N92), .SI(n790), .SE(n790), .CK(
        net731), .Q(cfgreg_do[21]) );
  SAEDRVT14_FSDPQ_V2LP_1 config_ddr_reg ( .D(N90), .SI(n790), .SE(n790), .CK(
        net731), .Q(cfgreg_do[22]) );
  SAEDRVT14_FSDPQ_V2LP_1 config_cont_reg ( .D(N94), .SI(n790), .SE(n790), .CK(
        net731), .Q(cfgreg_do[20]) );
  SAEDRVT14_FSDPQ_V2LP_1 config_dummy_reg_3_ ( .D(N102), .SI(n790), .SE(n790), 
        .CK(net731), .Q(cfgreg_do[19]) );
  SAEDRVT14_FSDPQ_V2LP_1 config_dummy_reg_2_ ( .D(N100), .SI(n790), .SE(n790), 
        .CK(net731), .Q(cfgreg_do[18]) );
  SAEDRVT14_FSDPQ_V2LP_1 config_dummy_reg_1_ ( .D(N98), .SI(n790), .SE(n790), 
        .CK(net731), .Q(cfgreg_do[17]) );
  SAEDRVT14_FSDPQ_V2LP_1 config_dummy_reg_0_ ( .D(N96), .SI(n790), .SE(n790), 
        .CK(net731), .Q(cfgreg_do[16]) );
  SAEDRVT14_FSDPQ_V2LP_1 config_csb_reg ( .D(N70), .SI(n790), .SE(n790), .CK(
        net737), .Q(config_csb) );
  SAEDRVT14_FSDPQ_V2LP_1 config_clk_reg ( .D(N72), .SI(n790), .SE(n790), .CK(
        net737), .Q(config_clk) );
  SAEDRVT14_FSDPQ_V2LP_1 config_oe_reg_3_ ( .D(N80), .SI(n790), .SE(n790), 
        .CK(net742), .Q(config_oe[3]) );
  SAEDRVT14_FSDPQ_V2LP_1 config_oe_reg_2_ ( .D(N78), .SI(n790), .SE(n790), 
        .CK(net742), .Q(config_oe[2]) );
  SAEDRVT14_FSDPQ_V2LP_1 config_oe_reg_1_ ( .D(N76), .SI(n790), .SE(n790), 
        .CK(net742), .Q(config_oe[1]) );
  SAEDRVT14_FSDPQ_V2LP_1 config_oe_reg_0_ ( .D(N74), .SI(n790), .SE(n790), 
        .CK(net742), .Q(config_oe[0]) );
  SAEDRVT14_FSDPQ_V2LP_1 config_do_reg_3_ ( .D(N88), .SI(n790), .SE(n790), 
        .CK(net737), .Q(config_do[3]) );
  SAEDRVT14_FSDPQ_V2LP_1 config_do_reg_2_ ( .D(N86), .SI(n790), .SE(n790), 
        .CK(net737), .Q(config_do[2]) );
  SAEDRVT14_FSDPQ_V2LP_1 config_do_reg_1_ ( .D(N84), .SI(n790), .SE(n790), 
        .CK(net737), .Q(config_do[1]) );
  SAEDRVT14_FSDPQ_V2LP_1 config_do_reg_0_ ( .D(N82), .SI(n790), .SE(n790), 
        .CK(net737), .Q(config_do[0]) );
endmodule

