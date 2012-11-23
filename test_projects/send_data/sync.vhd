library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity sync is
Port ( clk : in STD_LOGIC;
reset : in STD_LOGIC;
levin : in STD_LOGIC;
sync : out STD_LOGIC);
end sync;
architecture Behavioral of sync is
signal q: std_logic;
begin
process (clk)
begin
if clk'event and clk = '1' then
q <= levin;
sync <= q;
end if;
end process;
end Behavioral;

