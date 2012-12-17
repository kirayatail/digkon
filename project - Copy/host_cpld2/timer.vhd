----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:50:09 12/05/2012 
-- Design Name: 
-- Module Name:    timer - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity timer is
    Port ( restart : in  STD_LOGIC;
			  lowclk : in STD_LOGIC;
           timeout : out  STD_LOGIC);
end timer;

architecture Behavioral of timer is
signal timer : STD_LOGIC_VECTOR (5 downto 0);
begin
	process(lowclk, restart) begin
		if(restart = '1') then
			timer <= "000000";
		elsif rising_edge(lowclk) then
			timer <= timer+1;
		end if;
	end process;
	
	timeout <= '1' when timer = "111111" else '0';
end Behavioral;

