
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity crypto is
    Port ( plain : in  STD_LOGIC_VECTOR (3 downto 0);
           key : in  STD_LOGIC_VECTOR (3 downto 0);
           enc : out  STD_LOGIC_VECTOR (3 downto 0));
end crypto;
architecture Behavioral of crypto is
begin
	enc(3 downto 0) <= plain(3 downto 0) xor key;

end Behavioral;

