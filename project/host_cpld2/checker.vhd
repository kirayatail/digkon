----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:58:53 12/04/2012 
-- Design Name: 
-- Module Name:    checker - Behavioral 
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

entity checker is
    Port ( word : in  STD_LOGIC_VECTOR (3 downto 0);
           nextKey : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           lastKey : out  STD_LOGIC;
           found : out  STD_LOGIC);
end checker;

architecture Behavioral of checker is

begin


end Behavioral;

