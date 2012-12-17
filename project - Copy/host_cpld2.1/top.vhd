--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.2
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 12/13/2012 14:47:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl Z:/DigKon/project/digkon/project/host_cpld2.1/top.vhf -w Z:/DigKon/project/digkon/project/host_cpld2.1/top.sch
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

entity equals_MUSER_top is
   port ( A      : in    std_logic_vector (3 downto 0); 
          B      : in    std_logic_vector (3 downto 0); 
          result : out   std_logic);
end equals_MUSER_top;

architecture BEHAVIORAL of equals_MUSER_top is
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

entity checker_MUSER_top is
   port ( chall   : in    std_logic_vector (3 downto 0); 
          nextKey : in    std_logic; 
          reset   : in    std_logic; 
          resp    : in    std_logic_vector (3 downto 0); 
          found   : out   std_logic; 
          lastKey : out   std_logic);
end checker_MUSER_top;

architecture BEHAVIORAL of checker_MUSER_top is
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
   
   component equals_MUSER_top
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
   
   XLXI_17 : equals_MUSER_top
      port map (A(3 downto 0)=>XLXN_23(3 downto 0),
                B(3 downto 0)=>resp(3 downto 0),
                result=>found);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity top is
   port ( clk        : in    std_logic; 
          data       : in    std_logic_vector (3 downto 0); 
          lowClk     : in    std_logic; 
          rcv        : in    std_logic; 
          rst        : in    std_logic; 
          sendDone   : in    std_logic; 
          trig       : in    std_logic; 
          getRand    : out   std_logic; 
          larm       : out   std_logic; 
          okLmp      : out   std_logic; 
          sendEnable : out   std_logic);
end top;

architecture BEHAVIORAL of top is
   attribute BOX_TYPE   : string ;
   signal Timeout    : std_logic;
   signal XLXN_4     : std_logic;
   signal XLXN_5     : std_logic;
   signal XLXN_30    : std_logic;
   signal XLXN_51    : std_logic;
   signal XLXN_56    : std_logic;
   signal XLXN_61    : std_logic;
   signal XLXN_83    : std_logic_vector (3 downto 0);
   signal XLXN_84    : std_logic;
   signal XLXN_85    : std_logic;
   signal XLXN_105   : std_logic;
   component ctrl
      port ( clk        : in    std_logic; 
             reset      : in    std_logic; 
             trig       : in    std_logic; 
             timeout    : in    std_logic; 
             rcvDone    : in    std_logic; 
             sendDone   : in    std_logic; 
             checkOK    : in    std_logic; 
             lastKey    : in    std_logic; 
             rand       : out   std_logic; 
             send       : out   std_logic; 
             rcvEnable  : out   std_logic; 
             timerstart : out   std_logic; 
             nextKey    : out   std_logic; 
             checkRst   : out   std_logic; 
             larmOut    : out   std_logic; 
             okOut      : out   std_logic);
   end component;
   
   component checker_MUSER_top
      port ( resp    : in    std_logic_vector (3 downto 0); 
             chall   : in    std_logic_vector (3 downto 0); 
             nextKey : in    std_logic; 
             reset   : in    std_logic; 
             lastKey : out   std_logic; 
             found   : out   std_logic);
   end component;
   
   component timer
      port ( restart : in    std_logic; 
             lowclk  : in    std_logic; 
             timeout : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component receiver
      port ( reset    : in    std_logic; 
             lowClk   : in    std_logic; 
             receiver : in    std_logic; 
             enable   : in    std_logic; 
             rcvDone  : out   std_logic; 
             rcvData  : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : ctrl
      port map (checkOK=>XLXN_105,
                clk=>clk,
                lastKey=>XLXN_61,
                rcvDone=>XLXN_84,
                reset=>XLXN_51,
                sendDone=>sendDone,
                timeout=>Timeout,
                trig=>XLXN_56,
                checkRst=>XLXN_5,
                larmOut=>larm,
                nextKey=>XLXN_4,
                okOut=>okLmp,
                rand=>getRand,
                rcvEnable=>XLXN_85,
                send=>sendEnable,
                timerstart=>XLXN_30);
   
   XLXI_2 : checker_MUSER_top
      port map (chall(3 downto 0)=>data(3 downto 0),
                nextKey=>XLXN_4,
                reset=>XLXN_5,
                resp(3 downto 0)=>XLXN_83(3 downto 0),
                found=>XLXN_105,
                lastKey=>XLXN_61);
   
   XLXI_9 : timer
      port map (lowclk=>lowClk,
                restart=>XLXN_30,
                timeout=>Timeout);
   
   XLXI_10 : INV
      port map (I=>rst,
                O=>XLXN_51);
   
   XLXI_11 : INV
      port map (I=>trig,
                O=>XLXN_56);
   
   XLXI_12 : receiver
      port map (enable=>XLXN_85,
                lowClk=>lowClk,
                receiver=>rcv,
                reset=>XLXN_51,
                rcvData(3 downto 0)=>XLXN_83(3 downto 0),
                rcvDone=>XLXN_84);
   
end BEHAVIORAL;


