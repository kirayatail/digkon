----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:11:16 12/13/2012 
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
           resp : in  STD_LOGIC_VECTOR (3 downto 0);
           nextKey : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           lastKey : out  STD_LOGIC;
           found : out  STD_LOGIC);
end checker;

architecture Behavioral of checker is
	
	component keylookup
		port ( getNext : in std_logic;
				 reset : in std_logic;
				 isLast : out std_logic;
				 key : out std_logic_vector(3 downto 0));
	end component;
	
	component crypto
		port ( plain : in STD_LOGIC_VECTOR(3 downto 0);
				 key : in STD_LOGIC_VECTOR(3 downto 0);
				 enc : out STD_LOGIC_VECTOR(3 downto 0));
	end component;
	
	component equals
		port ( A : in std_logic_vector(3 downto 0);
				 B : in std_logic_vector(3 downto 0);
				 result : out std_logic);
	end component;
	
	signal keySig : std_logic_vector (3 downto 0);
	signal encSig : std_logic_vector (3 downto 0);
begin
	k1 : keylookup port map (getNext => nextKey,
									 reset => reset,
									 isLast => lastKey,
									 key => keySig);
	
	c1 : crypto port map (key => keySig,
								 plain => chall,
								 enc => encSig);
	
	e1 : equals port map (A => encSig,
								 B => resp,
								 result => found);
								 
end Behavioral;

