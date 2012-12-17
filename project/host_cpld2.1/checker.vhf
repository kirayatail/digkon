--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.2
--  \   \         Application : sch2hdl
--  /   /         Filename : checker.vhf
-- /___/   /\     Timestamp : 12/13/2012 14:47:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl Z:/DigKon/project/digkon/project/host_cpld2.1/checker.vhf -w Z:/DigKon/project/digkon/project/host_cpld2.1/checker.sch
--Design Name: checker
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

entity equals_MUSER_checker is
   port ( A      : in    std_logic_vector (3 downto 0); 
          B      : in    std_logic_vector (3 downto 0); 
          result : out   std_logic);
end equals_MUSER_checker;

architecture BEHAVIORAL of equals_MUSER_checker is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity checker is
   port ( chall   : in    std_logic_vector (3 downto 0); 
          nextKey : in    std_logic; 
          reset   : in    std_logic; 
          resp    : in    std_logic_vector (3 downto 0); 
          found   : out   std_logic; 
          lastKey : out   std_logic);
end checker;

architecture BEHAVIORAL of checker is
   signal XLXN_22 : std_logic_vector (3 downto 0);
   signal XLXN_23 : std_logic_vector (3 downto 0);
   component keylookup
      port ( getNext : in    std_logic; 
             reset   : in    std_logic; 
             isLast  : out   std_logic; 
             key     : out   std_logic_vector (3 downto 0));
   end component;
   
   component crypto
      port ( plain : in    std_logic_vector (3 downto 0); 
             key   : in    std_logic_vector (3 downto 0); 
             enc   : out   std_logic_vector (3 downto 0));
   end component;
   
   component equals_MUSER_checker
      port ( A      : in    std_logic_vector (3 downto 0); 
             B      : in    std_logic_vector (3 downto 0); 
             result : out   std_logic);
   end component;
   
begin
   XLXI_12 : keylookup
      port map (getNext=>nextKey,
                reset=>reset,
                isLast=>lastKey,
                key(3 downto 0)=>XLXN_22(3 downto 0));
   
   XLXI_15 : crypto
      port map (key(3 downto 0)=>XLXN_22(3 downto 0),
                plain(3 downto 0)=>chall(3 downto 0),
                enc(3 downto 0)=>XLXN_23(3 downto 0));
   
   XLXI_17 : equals_MUSER_checker
      port map (A(3 downto 0)=>XLXN_23(3 downto 0),
                B(3 downto 0)=>resp(3 downto 0),
                result=>found);
   
end BEHAVIORAL;


