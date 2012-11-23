----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:46:24 11/16/2012 
-- Design Name: 
-- Module Name:    one_bit - Behavioral 
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
USE ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity one_bit is
    Port ( in_signal: in STD_LOGIC;
				reset: in STD_LOGIC;
				clk: in STD_LOGIC;
			  enable: in STD_LOGIC;
			  on_lamp: out STD_LOGIC;
			  enable_lamp: out STD_LOGIC;
			  test_lamp: out STD_LOGIC;
           transmitter : out  STD_LOGIC);
end one_bit;

architecture Behavioral of one_bit is

component lev2pulse is
	Port ( clk : in STD_LOGIC;
		reset : in STD_LOGIC;
		levin : in STD_LOGIC;
		pulson : out STD_LOGIC);
end component;

component sync is
Port ( clk : in STD_LOGIC;
reset : in STD_LOGIC;
levin : in STD_LOGIC;
sync : out STD_LOGIC);
end component;

type state_type is (start,s0,s1,s2,s3,s4,s5,s6,s7);
signal state, nstate: state_type;
signal count: STD_LOGIC_VECTOR(9 downto 0);
signal en: STD_LOGIC;
signal levin,puls: std_logic;
begin

p0: process(clk, reset)
begin
if reset = '0' then
	state <= start;
elsif clk'event and clk = '1' then
	if en = '1' then
	state <= nstate;
	end if;
end if;
end process p0;

p1: process(state, puls,en)
begin
if puls = '0' and state = start then
	enable_lamp <= puls;
	nstate <= s0;
elsif puls = '1' then 
	enable_lamp <= puls;
end if;
case state is
	when s0 => nstate <= s1; transmitter <= '1';
	when s1 => nstate <= s2; transmitter <= '0';
	when s2 => nstate <= s3; transmitter <= '1';
	when s3 => nstate <= s4; transmitter <= '0';
	when s4 => nstate <= s5; transmitter <= '1';
	when s5 => nstate <= s6; transmitter <= '0';
	when s6 => nstate <= s7; transmitter <= in_signal;
	when s7 => nstate <= start; transmitter <= '0';
	when others =>
end case;
end process p1;

p2: process(clk, reset)
begin
if reset = '0' then
	count <= "0000000001";
   en <= '0';
end if;
count <= count +1;

if count = "1111111111" then
count <= "0000000001";
en <= '1';
end if;

end process p2;

x1: sync port map (clk,reset, enable, levin);
x2: lev2pulse port map(clk,reset,levin,puls);
end Behavioral;


































