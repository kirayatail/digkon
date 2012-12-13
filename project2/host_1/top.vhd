--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.3
--  \   \         Application : sch2hdl
--  /   /         Filename : top.vhf
-- /___/   /\     Timestamp : 12/13/2012 14:22:08
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl C:/workspace/digkon/project2/host_1/top.vhf -w C:/workspace/digkon/project2/host_1/top.sch
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

entity FD4CE_MXILINX_top is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          D0  : in    std_logic; 
          D1  : in    std_logic; 
          D2  : in    std_logic; 
          D3  : in    std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic);
end FD4CE_MXILINX_top;

architecture BEHAVIORAL of FD4CE_MXILINX_top is
   attribute BOX_TYPE   : string ;
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
begin
   U0 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D0,
                Q=>Q0);
   
   U1 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D1,
                Q=>Q1);
   
   U2 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D2,
                Q=>Q2);
   
   U3 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D3,
                Q=>Q3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FD_MXILINX_top is
   generic( INIT : bit :=  '0');
   port ( C : in    std_logic; 
          D : in    std_logic; 
          Q : out   std_logic);
end FD_MXILINX_top;

architecture BEHAVIORAL of FD_MXILINX_top is
   attribute BOX_TYPE   : string ;
   signal XLXN_4 : std_logic;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FDCP
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             PRE : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCP : component is "BLACK_BOX";
   
begin
   I_36_43 : GND
      port map (G=>XLXN_4);
   
   U0 : FDCP
   generic map( INIT => INIT)
      port map (C=>C,
                CLR=>XLXN_4,
                D=>D,
                PRE=>XLXN_4,
                Q=>Q);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FDRE_MXILINX_top is
   generic( INIT : bit :=  '0');
   port ( C  : in    std_logic; 
          CE : in    std_logic; 
          D  : in    std_logic; 
          R  : in    std_logic; 
          Q  : out   std_logic);
end FDRE_MXILINX_top;

architecture BEHAVIORAL of FDRE_MXILINX_top is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   attribute RLOC       : string ;
   signal A0      : std_logic;
   signal A1      : std_logic;
   signal QD      : std_logic;
   signal Q_DUMMY : std_logic;
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component FD_MXILINX_top
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   attribute HU_SET of I_36_42 : label is "I_36_42_7";
   attribute RLOC of I_36_42 : label is "R0C0";
begin
   Q <= Q_DUMMY;
   I_36_32 : AND3B1
      port map (I0=>R,
                I1=>D,
                I2=>CE,
                O=>A1);
   
   I_36_33 : AND3B2
      port map (I0=>CE,
                I1=>R,
                I2=>Q_DUMMY,
                O=>A0);
   
   I_36_34 : OR2
      port map (I0=>A1,
                I1=>A0,
                O=>QD);
   
   I_36_42 : FD_MXILINX_top
   generic map( INIT => INIT)
      port map (C=>C,
                D=>QD,
                Q=>Q_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CJ4RE_MXILINX_top is
   port ( C  : in    std_logic; 
          CE : in    std_logic; 
          R  : in    std_logic; 
          Q0 : out   std_logic; 
          Q1 : out   std_logic; 
          Q2 : out   std_logic; 
          Q3 : out   std_logic);
end CJ4RE_MXILINX_top;

architecture BEHAVIORAL of CJ4RE_MXILINX_top is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal Q3B      : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   signal Q3_DUMMY : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component FDRE_MXILINX_top
      generic( INIT : bit :=  '0');
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             D  : in    std_logic; 
             R  : in    std_logic; 
             Q  : out   std_logic);
   end component;
   
   attribute HU_SET of U0 : label is "U0_8";
   attribute HU_SET of U1 : label is "U1_9";
   attribute HU_SET of U2 : label is "U2_11";
   attribute HU_SET of U3 : label is "U3_10";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   I_36_30 : INV
      port map (I=>Q3_DUMMY,
                O=>Q3B);
   
   U0 : FDRE_MXILINX_top
      port map (C=>C,
                CE=>CE,
                D=>Q3B,
                R=>R,
                Q=>Q0_DUMMY);
   
   U1 : FDRE_MXILINX_top
      port map (C=>C,
                CE=>CE,
                D=>Q0_DUMMY,
                R=>R,
                Q=>Q1_DUMMY);
   
   U2 : FDRE_MXILINX_top
      port map (C=>C,
                CE=>CE,
                D=>Q1_DUMMY,
                R=>R,
                Q=>Q2_DUMMY);
   
   U3 : FDRE_MXILINX_top
      port map (C=>C,
                CE=>CE,
                D=>Q2_DUMMY,
                R=>R,
                Q=>Q3_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity rand_MUSER_top is
   port ( clk     : in    std_logic; 
          getrand : in    std_logic; 
          rst     : in    std_logic; 
          chall   : out   std_logic_vector (3 downto 0));
end rand_MUSER_top;

architecture BEHAVIORAL of rand_MUSER_top is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_25 : std_logic;
   signal XLXN_66 : std_logic;
   signal XLXN_67 : std_logic;
   signal XLXN_68 : std_logic;
   signal XLXN_69 : std_logic;
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component FD4CE_MXILINX_top
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic);
   end component;
   
   component CJ4RE_MXILINX_top
      port ( C  : in    std_logic; 
             CE : in    std_logic; 
             R  : in    std_logic; 
             Q0 : out   std_logic; 
             Q1 : out   std_logic; 
             Q2 : out   std_logic; 
             Q3 : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_16 : label is "XLXI_16_13";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_12";
begin
   XLXI_6 : VCC
      port map (P=>XLXN_25);
   
   XLXI_16 : FD4CE_MXILINX_top
      port map (C=>clk,
                CE=>getrand,
                CLR=>rst,
                D0=>XLXN_66,
                D1=>XLXN_67,
                D2=>XLXN_68,
                D3=>XLXN_69,
                Q0=>chall(0),
                Q1=>chall(1),
                Q2=>chall(2),
                Q3=>chall(3));
   
   XLXI_18 : CJ4RE_MXILINX_top
      port map (C=>clk,
                CE=>XLXN_25,
                R=>rst,
                Q0=>XLXN_66,
                Q1=>XLXN_67,
                Q2=>XLXN_68,
                Q3=>XLXN_69);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity top is
   port ( clk        : in    std_logic; 
          getRand    : in    std_logic; 
          rst        : in    std_logic; 
          sendEnable : in    std_logic; 
          data       : out   std_logic_vector (3 downto 0); 
          lowClk     : out   std_logic; 
          sendDone   : out   std_logic; 
          xmt        : out   std_logic);
end top;

architecture BEHAVIORAL of top is
   attribute BOX_TYPE   : string ;
   signal XLXN_20      : std_logic;
   signal lowClk_DUMMY : std_logic;
   signal data_DUMMY   : std_logic_vector (3 downto 0);
   component counter
      port ( clk   : in    std_logic; 
             reset : in    std_logic; 
             done  : out   std_logic);
   end component;
   
   component sender
      port ( sendEnable  : in    std_logic; 
             lowClk      : in    std_logic; 
             data        : in    std_logic_vector (3 downto 0); 
             sendDone    : out   std_logic; 
             transmitter : out   std_logic);
   end component;
   
   component rand_MUSER_top
      port ( rst     : in    std_logic; 
             clk     : in    std_logic; 
             getrand : in    std_logic; 
             chall   : out   std_logic_vector (3 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   data(3 downto 0) <= data_DUMMY(3 downto 0);
   lowClk <= lowClk_DUMMY;
   XLXI_1 : counter
      port map (clk=>clk,
                reset=>XLXN_20,
                done=>lowClk_DUMMY);
   
   XLXI_2 : sender
      port map (data(3 downto 0)=>data_DUMMY(3 downto 0),
                lowClk=>lowClk_DUMMY,
                sendEnable=>sendEnable,
                sendDone=>sendDone,
                transmitter=>xmt);
   
   XLXI_3 : rand_MUSER_top
      port map (clk=>clk,
                getrand=>getRand,
                rst=>XLXN_20,
                chall(3 downto 0)=>data_DUMMY(3 downto 0));
   
   XLXI_4 : INV
      port map (I=>rst,
                O=>XLXN_20);
   
end BEHAVIORAL;


