--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.2
--  \   \         Application : sch2hdl
--  /   /         Filename : equals.vhf
-- /___/   /\     Timestamp : 12/13/2012 14:47:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl Z:/DigKon/project/digkon/project/host_cpld2.1/equals.vhf -w Z:/DigKon/project/digkon/project/host_cpld2.1/equals.sch
--Design Name: equals
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

entity equals is
   port ( A      : in    std_logic_vector (3 downto 0); 
          B      : in    std_logic_vector (3 downto 0); 
          result : out   std_logic);
end equals;

architecture BEHAVIORAL of equals is
   attribute BOX_TYPE   : string ;
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_3 : std_logic;
   signal XLXN_4 : std_logic;
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
begin
   XLXI_2 : XNOR2
      port map (I0=>B(3),
                I1=>A(3),
                O=>XLXN_4);
   
   XLXI_3 : XNOR2
      port map (I0=>B(2),
                I1=>A(2),
                O=>XLXN_3);
   
   XLXI_4 : XNOR2
      port map (I0=>B(1),
                I1=>A(1),
                O=>XLXN_2);
   
   XLXI_5 : XNOR2
      port map (I0=>B(0),
                I1=>A(0),
                O=>XLXN_1);
   
   XLXI_6 : AND4
      port map (I0=>XLXN_4,
                I1=>XLXN_3,
                I2=>XLXN_2,
                I3=>XLXN_1,
                O=>result);
   
end BEHAVIORAL;


