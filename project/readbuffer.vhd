----------------------------------------------------------------------------------
-- Company: CTH
-- Engineer: Max Witt
-- 
-- Create Date:    08:24:55 11/27/2012 
-- Design Name: 
-- Module Name:    readbuffer - Behavioral 
-- Project Name: 
-- Target Devices: CPLD Xilinx XC9572XL
-- Tool versions: 
-- Desc: State machine for assigning 8 bits of serial data to an output buffer. 
--			Giving 'clear' a negative pulse starts the reading of the 'data'
--			port. when 'ready' is 1, the full word will be available on 'word'
--			until next clear.
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

entity readbuffer is
    Port ( data : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           word : out  STD_LOGIC_VECTOR (7 downto 0);
           ready : out  STD_LOGIC);
end readbuffer;

architecture Behavioral of readbuffer is
	type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8);
	signal state : state_type;
begin
	process(clk, clear) begin
		if (clear = '0') then
			ready <= '0';
			state <= s0;
		elsif rising_edge(clk) then
			case state is
				when s0 =>
					word(0) <= data;
					state <= s1;
				when s1 =>
					word(1) <= data;
					state <= s2;
				when s2 =>
					word(2) <= data;
					state <= s3;
				when s3 =>
					word(3) <= data;
					state <= s4;
				when s4 =>
					word(4) <= data;
					state <= s5;
				when s5 =>
					word(5) <= data;
					state <= s6;
				when s6 =>
					word(6) <= data;
					state <= s7;
				when s7 =>
					word(7) <= data;
					state <= s8;
				when s8 =>
					ready <= '1';
			end case;
		end if;
	end process;
end Behavioral;

