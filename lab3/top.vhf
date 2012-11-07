--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 11/07/2012 10:39:53
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl W:/digkon/lab3/top.vhf -w W:/digkon/lab3/top.sch
--Design Name: top
--Device: xc9500xl
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity top is
   port ( XLXN_5 : in    std_logic; 
          XLXN_6 : in    std_logic; 
          XLXN_7 : in    std_logic; 
          XLXN_8 : out   std_logic);
end top;

architecture BEHAVIORAL of top is
   component lev2puls
      port ( clk    : in    std_logic; 
             reset  : in    std_logic; 
             levin  : in    std_logic; 
             pulson : out   std_logic);
   end component;
   
begin
   XLXI_4 : lev2puls
      port map (clk=>XLXN_5,
                levin=>XLXN_7,
                reset=>XLXN_6,
                pulson=>XLXN_8);
   
end BEHAVIORAL;


