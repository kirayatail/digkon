
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity puls2lev is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           seton : in  STD_LOGIC;
           setoff : in  STD_LOGIC;
           levout : out  STD_LOGIC);
end puls2lev;

architecture Behavioral of puls2lev is

begin
	process begin
		if clk'event and clk = '1' then
			if reset = '1' then
				levout <= '0';
			else
				if seton = '1' then 
					levout <= '1';
				else
					if setoff = '1' then
						levout <= '0';
					end if;
				end if;
			end if;
		end if;
	end process;
end Behavioral;

