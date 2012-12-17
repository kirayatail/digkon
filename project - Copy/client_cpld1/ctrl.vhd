----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:04:58 12/09/2012 
-- Design Name: 
-- Module Name:    ctrl - Behavioral 
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

entity ctrl is
    Port ( reset : in STD_LOGIC;
			  rcvDone : in  STD_LOGIC;
           sendDone : in  STD_LOGIC;
           lowClk : in  STD_LOGIC;
           rcvEnable : out  STD_LOGIC;
           sendEnable : out  STD_LOGIC);
end ctrl;

architecture Behavioral of ctrl is
type state_type is (s0, s1, s2, s3);
signal state : state_type;
signal sendcount : STD_LOGIC_VECTOR(2 downto 0);
begin
	process(lowClk, reset) begin
		if reset = '1' then
			state <= s0;
		elsif rising_edge(lowClk) then
			if state = s0 then
				sendcount <= "000";
				state <= s1;
			end if;
			
			if state = s1 AND rcvDone = '1' then
				state <= s2;
			end if;
			
			if state = s2 AND sendDone = '1' then
				sendcount <= sendcount +1;
				state <= s3;
			end if;
			
			if state = s3 then
				if sendCount = "111" then
					state <= s0;
				else
					state <= s2;
				end if;
			end if;
			
		end if;
	end process;
	
	rcvEnable <= '0' when state = s0 else '1';
	sendEnable <= '1' when state = s2 else '0';
	
end Behavioral;

