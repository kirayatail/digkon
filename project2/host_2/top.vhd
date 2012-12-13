----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:37:38 12/13/2012 
-- Design Name: 
-- Module Name:    top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           trig : in  STD_LOGIC;
           data : in  STD_LOGIC_VECTOR (3 downto 0);
           lowClk : in  STD_LOGIC;
           rcv : in  STD_LOGIC;
           sendDone : in  STD_LOGIC;
           getRand : out  STD_LOGIC;
           sendEnable : out  STD_LOGIC;
           larm : out  STD_LOGIC;
           okLmp : out  STD_LOGIC);
end top;

architecture Behavioral of top is

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
	
	component checker
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
	
	component receiver
      port ( reset    : in    std_logic; 
             lowClk   : in    std_logic; 
             receiver : in    std_logic; 
             enable   : in    std_logic; 
             rcvDone  : out   std_logic; 
             rcvData  : out   std_logic_vector (3 downto 0));
   end component;

	signal Timeout : std_logic;
	signal TimerStart : std_logic;
	signal RcvDone : std_logic;
	signal RcvEnable : std_logic;
	signal CheckOk : std_logic;
	signal LastKey : std_logic;
	signal NextKey : std_logic;
	signal CheckRst : std_logic;
	signal RcvData : std_logic_vector(3 downto 0);
	signal InvTrig : std_logic;
	signal InvRst : std_logic;

begin

InvRst <= not rst;
InvTrig <= not trig;

ctrl1 : ctrl port map (clk, InvRst, InvTrig, Timeout, RcvDone,
							  sendDone, CheckOk, LastKey, getRand,
							  sendEnable, RcvEnable, TimerStart, NextKey,
							  CheckRst, larm, okLmp);

check1 : checker port map (RcvData, data, NextKey, CheckRst,
									LastKey, CheckOk);

tim1 : timer port map (TimerStart, lowClk, Timeout);

rcv1 : receiver port map (InvRst, lowClk, rcv, RcvEnable, 
								  RcvDone, RcvData);

end Behavioral;

