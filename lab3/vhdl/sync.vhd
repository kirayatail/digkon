----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:14:53 11/07/2012 
-- Design Name: 
-- Module Name:    sync - Behavioral 
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
-- sync.vhd
-- 2100-10-19
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity sync is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           input : in  STD_LOGIC;
           sync : out  STD_LOGIC);
end sync;
architecture Behavioral of sync is
signal q: std_logic;
begin
process (clk)
      begin
      if clk'event and clk = '1' then
				q <= input;
            sync <= q;
      end if;
      end process;
end  Behavioral;