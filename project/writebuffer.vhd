----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:53:21 11/27/2012 
-- Design Name: 
-- Module Name:    writebuffer - Behavioral 
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

entity writebuffer is
    Port ( word : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           start : in  STD_LOGIC;
           data : out  STD_LOGIC;
           ready : out  STD_LOGIC);
end writebuffer;

architecture Behavioral of writebuffer is
	type state_type is (s0, s1, s2, s3, s4, s5, s6, s7);
	signal state : state_type;
begin
	process(clk, start) begin
		if (start = '1') then
			ready <= '0';
			state <= s0;
		elsif rising_edge(clk) then
			case state is
				when s0 =>
					data <= word(0);
					state <= s1;
				when s1 =>
					data <= word(1);
					state <= s2;
				when s2 =>
					data <= word(2);
					state <= s3;
				when s3 =>
					data <= word(3);
					state <= s4;
				when s4 =>
					data <= word(4);
					state <= s5;
				when s5 =>
					data <= word(5);
					state <= s6;
				when s6 =>
					data <= word(6);
					state <= s7;
				when s7 =>
					data <= word(7);
					ready <= '1';
			end case;
		end if;
	end process;
end Behavioral;

