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
    Port ( chall : in  STD_LOGIC_VECTOR (3 downto 0);
			  resp : in STD_LOGIC_VECTOR (3 downto 0);
           nextKey : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           lastKey : out  STD_LOGIC;
           found : out  STD_LOGIC);
end checker;

architecture Behavioral of checker is
component crypto is
    Port ( plain : in  STD_LOGIC_VECTOR (3 downto 0);
           key : in  STD_LOGIC_VECTOR (3 downto 0);
           enc : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component keylookup is
    Port ( getNext : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           isLast : out  STD_LOGIC;
           key : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
signal currKey : STD_LOGIC_VECTOR (3 downto 0);
signal answer : STD_LOGIC_VECTOR (3 downto 0);

begin
	-- Link crypto to keylookup and chall
	-- Compare encode and resp
	-- send OK if equals.
	k1: keylookup port map (nextKey, reset, lastKey, currKey);
	c1: crypto port map (chall, currKey, answer);
	
	found <= (resp = answer);
	-- Don't forget to edit random to only use 4 bit data words!

end Behavioral;

