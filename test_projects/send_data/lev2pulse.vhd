library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity lev2pulse is
Port ( clk : in STD_LOGIC;
reset : in STD_LOGIC;
levin : in STD_LOGIC;
pulson : out STD_LOGIC;
test_lamp : out STD_LOGIC);
end lev2pulse;
architecture arch of lev2pulse is
type state_type is (s0,s1,s2,s3);
signal state, nstate: state_type;
begin

process (levin,state)
begin

if reset = '0' then 
	nstate <= s0;
	pulson <= '1';
end if;
case state is
when s0 => if levin = '0' then nstate <= s1; else nstate <= s0; end if;
when s1 => if levin = '0' then nstate <= s2; pulson <= '0'; end if;
when s2 => if levin = '1' then nstate <= s3; pulson <= '1'; end if;
when s3 => nstate <= s0;
when others =>
end case;
end process;

process(clk)
begin
	if clk'event and clk = '1' then
	state <= nstate;
end if;
end process;
end arch;