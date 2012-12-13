////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.3
//  \   \         Application : sch2hdl
//  /   /         Filename : top.vf
// /___/   /\     Timestamp : 12/11/2012 14:56:58
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: sch2hdl -intstyle ise -family xc9500xl -verilog C:/workspace/digkon/project/host_cpld2/top.vf -w C:/workspace/digkon/project/host_cpld2/top.sch
//Design Name: top
//Device: xc9500xl
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module equals_MUSER_top(A, 
                        B, 
                        result);

    input [3:0] A;
    input [3:0] B;
   output result;
   
   wire XLXN_1;
   wire XLXN_2;
   wire XLXN_3;
   wire XLXN_4;
   
   XNOR2  XLXI_2 (.I0(B[3]), 
                 .I1(A[3]), 
                 .O(XLXN_4));
   XNOR2  XLXI_3 (.I0(B[2]), 
                 .I1(A[2]), 
                 .O(XLXN_3));
   XNOR2  XLXI_4 (.I0(B[1]), 
                 .I1(A[1]), 
                 .O(XLXN_2));
   XNOR2  XLXI_5 (.I0(B[0]), 
                 .I1(A[0]), 
                 .O(XLXN_1));
   AND4  XLXI_6 (.I0(XLXN_4), 
                .I1(XLXN_3), 
                .I2(XLXN_2), 
                .I3(XLXN_1), 
                .O(result));
endmodule
`timescale 1ns / 1ps

module checker_MUSER_top(chall, 
                         nextKey, 
                         reset, 
                         resp, 
                         found, 
                         lastKey);

    input [3:0] chall;
    input nextKey;
    input reset;
    input [3:0] resp;
   output found;
   output lastKey;
   
   wire [3:0] XLXN_22;
   wire [3:0] XLXN_23;
   
   keylookup  XLXI_12 (.getNext(nextKey), 
                      .reset(reset), 
                      .isLast(lastKey), 
                      .key(XLXN_22[3:0]));
   crypto  XLXI_15 (.key(XLXN_22[3:0]), 
                   .plain(chall[3:0]), 
                   .enc(XLXN_23[3:0]));
   equals_MUSER_top  XLXI_17 (.A(XLXN_23[3:0]), 
                             .B(resp[3:0]), 
                             .result(found));
endmodule
`timescale 1ns / 1ps

module top(clk, 
           data, 
           lowClk, 
           rcv, 
           rst, 
           sendDone, 
           trig, 
           getRand, 
           larm, 
           okLmp, 
           sendEnable);

    input clk;
    input [3:0] data;
    input lowClk;
    input rcv;
    input rst;
    input sendDone;
    input trig;
   output getRand;
   output larm;
   output okLmp;
   output sendEnable;
   
   wire Timeout;
   wire XLXN_4;
   wire XLXN_5;
   wire XLXN_30;
   wire XLXN_51;
   wire XLXN_56;
   wire XLXN_61;
   wire [3:0] XLXN_83;
   wire XLXN_84;
   wire XLXN_85;
   wire XLXN_105;
   
   ctrl  XLXI_1 (.checkOK(XLXN_105), 
                .clk(clk), 
                .lastKey(XLXN_61), 
                .rcvDone(XLXN_84), 
                .reset(XLXN_51), 
                .sendDone(sendDone), 
                .timeout(Timeout), 
                .trig(XLXN_56), 
                .checkRst(XLXN_5), 
                .larmOut(larm), 
                .nextKey(XLXN_4), 
                .okOut(okLmp), 
                .rand(getRand), 
                .rcvEnable(XLXN_85), 
                .send(sendEnable), 
                .timerstart(XLXN_30));
   checker_MUSER_top  XLXI_2 (.chall(data[3:0]), 
                             .nextKey(XLXN_4), 
                             .reset(XLXN_5), 
                             .resp(XLXN_83[3:0]), 
                             .found(XLXN_105), 
                             .lastKey(XLXN_61));
   timer  XLXI_9 (.lowclk(lowClk), 
                 .restart(XLXN_30), 
                 .timeout(Timeout));
   INV  XLXI_10 (.I(rst), 
                .O(XLXN_51));
   INV  XLXI_11 (.I(trig), 
                .O(XLXN_56));
   receiver  XLXI_12 (.enable(XLXN_85), 
                     .lowClk(lowClk), 
                     .receiver(rcv), 
                     .reset(XLXN_51), 
                     .rcvData(XLXN_83[3:0]), 
                     .rcvDone(XLXN_84));
endmodule
