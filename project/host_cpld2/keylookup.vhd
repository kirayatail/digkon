----------------------------------------------------------------------------------
-- Company: CTH
-- Engineer: Max Witt
-- 
-- Create Date:    12:00:00 11/27/2012 
-- Design Name: 
-- Module Name:    keylookup - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Holds two different keys and an internal counter which determines 
--					 which key is sent. 'isLast' is set to 1 if the current key is the 
-- 				 last one in the list.
--					 Automatically sets to the top of the list when reset = '1'
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

entity keylookup is
    Port ( getNext : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           isLast : out  STD_LOGIC;
           key : out  STD_LOGIC_VECTOR (3 downto 0));
end keylookup;

architecture Behavioral of keylookup is
	type state_type is (s0, s1);
	signal state : state_type;
begin
	process(getNext, reset) begin
		if (reset = '1') then
			state <= s0;
		elsif rising_edge(getNext) then
			case state is
				when s0 =>
					state <= s1;
				when s1 =>
					state <= s0;
			end case;
		end if;
	end process;
	
	with state select
		key <=	"0110" when s0,
					"1011" when s1,
					"0000" when others;
	
	with state select
		isLast <= '1' when s1,
					 '0' when others;
	
end Behavioral;

