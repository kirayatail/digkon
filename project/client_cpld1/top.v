////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.3
//  \   \         Application : sch2hdl
//  /   /         Filename : top.vf
// /___/   /\     Timestamp : 12/09/2012 19:34:09
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: sch2hdl -intstyle ise -family xc9500xl -verilog C:/workspace/digkon/project/client_cpld1/top.vf -w C:/workspace/digkon/project/client_cpld1/top.sch
//Design Name: top
//Device: xc9500xl
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module top(clk, 
           key, 
           rcv, 
           rst, 
           xmt);

    input clk;
    input [3:0] key;
    input rcv;
    input rst;
   output xmt;
   
   wire XLXN_2;
   wire XLXN_3;
   wire [3:0] XLXN_4;
   wire [3:0] XLXN_5;
   wire XLXN_8;
   wire XLXN_20;
   wire XLXN_27;
   wire XLXN_42;
   
   ctrl  XLXI_1 (.lowClk(XLXN_20), 
                .rcvDone(XLXN_27), 
                .reset(XLXN_42), 
                .sendDone(XLXN_2), 
                .rcvEnable(XLXN_3), 
                .sendEnable(XLXN_8));
   receiver  XLXI_2 (.enable(XLXN_3), 
                    .lowClk(XLXN_20), 
                    .receiver(rcv), 
                    .reset(XLXN_42), 
                    .rcvData(XLXN_4[3:0]), 
                    .rcvDone(XLXN_27));
   crypto  XLXI_3 (.key(key[3:0]), 
                  .plain(XLXN_4[3:0]), 
                  .enc(XLXN_5[3:0]));
   sender  XLXI_4 (.data(XLXN_5[3:0]), 
                  .lowClk(XLXN_20), 
                  .sendEnable(XLXN_8), 
                  .sendDone(XLXN_2), 
                  .transmitter(xmt));
   counter  XLXI_8 (.clk(clk), 
                   .reset(XLXN_42), 
                   .done(XLXN_20));
   INV  XLXI_14 (.I(rst), 
                .O(XLXN_42));
endmodule
