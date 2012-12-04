library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all;

entity counter is

Port (	clk: in STD_LOGIC;
			reset: in STD_LOGIC;
			done: out STD_LOGIC);
end counter;

architecture arch of counter is
signal count: STD_LOGIC_VECTOR(7 downto 0);
begin	
	process(clk, reset)
	begin
		if reset = '0' then
			count <= "000000001";
			done <= '0';
		elsif clk'event and clk = '1' then
			done <= '0';
			count <= count +1;
			if count = "111111111" then
				count <= "000000001";
				done <= '1';
			end if;
		end if;
	end process;
end arch;