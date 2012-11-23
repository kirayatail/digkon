----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:58:42 11/16/2012 
-- Design Name: 
-- Module Name:    recieve_one_bit - Behavioral 
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

entity recieve_one_bit is
    Port ( clk: in STD_LOGIC;
				reciever : in  STD_LOGIC;
				reset: in STD_LOGIC;
           lmp : out  STD_LOGIC);
end recieve_one_bit;

architecture Behavioral of recieve_one_bit is

type state_type is (s0,s1,s2,s3,s4,s5,s6,s7);
signal state, nstate: state_type;
begin

p0: process(clk, reset)
begin

if clk'event and clk = '1' then
if reset = '0' then
state <= s0;
end if;
state <= nstate;
end if;
end process p0;

p1: process(state, reciever)
begin
case state is
when s0 => if reciever = '1' then nstate <= s1; else nstate <= s0; end if;
when s1 => if reciever = '0' then nstate <= s2; else nstate <= s0; end if; 
when s2 => if reciever = '1' then nstate <= s3; else nstate <= s0; end if;
when s3 => if reciever = '0' then nstate <= s4; else nstate <= s0; end if;
when s4 => if reciever = '1' then nstate <= s5; else nstate <= s0; end if;
when s5 => if reciever = '0' then nstate <= s6; else nstate <= s0; end if;
when s6 => nstate <= s7; lmp <= not reciever;
when s7 => if reciever = '0' then nstate <= s0; end if;
when others =>
end case;
end process p1;
 
end Behavioral;

