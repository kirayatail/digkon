library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.all;


entity sendBack is
    Port ( in_signal: in STD_LOGIC_VECTOR(3 downto 0);
				reset: in STD_LOGIC;
				clk: in STD_LOGIC;
			  send: in STD_LOGIC;
			  read: out STD_LOGIC;
			  transmitter : out  STD_LOGIC);
end sendBack;

architecture Behavioral of sendBack is	

type state_type is (start,s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17);
signal state, nstate: state_type;
signal count: STD_LOGIC_VECTOR(7 downto 0);
signal en: STD_LOGIC;
signal levin,puls: std_logic;
begin

p0: process(clk, reset)
begin
	
	
	if state = start then 
	
	end if ;
if reset = '0' then
	state <= start;
	read <= '1';
elsif clk'event and clk = '1' then
	if en = '1' AND send = '1' then
	state <= nstate;
	end if;
end if;
end process p0;

p1: process(state, puls,en,send)
begin
if puls = '0' and state = start then
	read <= '0';
	nstate <= s0;

else
case state is
	when s0 => nstate <= s1; transmitter <= '1';
	when s1 => nstate <= s2; transmitter <= '0';
	when s2 => nstate <= s3; transmitter <= '1';
	when s3 => nstate <= s4; transmitter <= '0';
	when s4 => nstate <= s5; transmitter <= '1';
	when s5 => nstate <= s6; transmitter <= '0';
	when s6 => nstate <= s7; transmitter <= '1';
	when s7 => nstate <= s8; transmitter <= '0';
	when s8 => nstate <= s9; transmitter <= '1';
	when s9 => nstate <= s10; transmitter <= '0';
	when s10 => nstate <= s11; transmitter <= '1';
	when s11 => nstate <= s12; transmitter <= '0';
	when s12 => nstate <= s13; transmitter <= '1';

	when s13 => nstate <= s14; transmitter <= in_signal(0);
	when s14 => nstate <= s15; transmitter <= in_signal(1);
	when s15 => nstate <= s16; transmitter <= in_signal(2);
	when s16 => nstate <= s17; transmitter <= in_signal(3);
	
	
	when s17 => nstate <= start; transmitter <= '0'; read <= '1';
	when others => 
	
end case;
end if;

end process p1;

p2: process(clk, reset)
begin
if reset = '0' then
	count <= "00000001";
   en <= '0';


elsif clk'event and clk = '1' then
en <= '0';
count <= count +1;

	if count = "11111111" then
	count <= "00000001";
en <= '1';
end if;
end if;

end process p2;

end Behavioral;