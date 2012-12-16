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
	type state_type is (s0, s1 , s2,last);
	signal state,tstate : state_type;
begin
	process(getNext, reset) begin
		if (reset = '1') then
			tstate <= s0;
			isLast <= '0';
		elsif getNext = '1' then
			case state is
				when s0 =>
					tstate <= s1;
					key <="0110";
				when s1 =>
					tstate <= s2;
					key <="1011";
				when s2 =>
					tstate <= last;
					key <="0000";
				when last =>
					isLast <= '1';
					
			end case;
		end if;
	end process;


	process(tstate) begin
		state <=tstate;
	end process;
end Behavioral;

