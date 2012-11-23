----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:51:21 11/15/2012 
-- Design Name: 
-- Module Name:    test_dip - Behavioral 
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

entity test_dip is
    Port ( dip : in  STD_LOGIC_VECTOR(3 downto 0);
           out_signal : out  STD_LOGIC_VECTOR(3 downto 0));
end test_dip;

architecture Behavioral of test_dip is

begin
	out_signal <= dip; 
end Behavioral;

