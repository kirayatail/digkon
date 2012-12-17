----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:28:18 12/09/2012 
-- Design Name: 
-- Module Name:    sender - Behavioral 
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

entity sender is
    Port ( sendEnable : in  STD_LOGIC;
           data : in  STD_LOGIC_VECTOR (3 downto 0);
           lowClk : in  STD_LOGIC;
           sendDone : out  STD_LOGIC;
			  transmitter : out STD_LOGIC);
end sender;

architecture Behavioral of sender is
type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,sWait);
signal state : state_type;
signal parity : std_logic;
begin
	process(lowClk,sendEnable) begin
		if sendEnable = '0' then
			state <= s0;
			transmitter <= '0';
		elsif rising_edge(lowClk) AND sendEnable = '1' then
			case state is
				when s0 => state <= s1; transmitter <= '1';
				when s1 => state <= s2; transmitter <= '0';
				when s2 => state <= s3; transmitter <= '1';
				when s3 => state <= s4; transmitter <= '0';
				when s4 => state <= s5; transmitter <= '1';
				when s5 => state <= s6; transmitter <= '0';
				when s6 => state <= s7; transmitter <= '1';
				when s7 => state <= s8; transmitter <= '0';
				when s8 => state <= s9; transmitter <= '1';
				when s9 => state <= s10; transmitter <= '0';
				when s10 => state <= s11; transmitter <= '1';
				when s11 => state <= s12; transmitter <= '0';
				when s12 => state <= s13; transmitter <= data(0);
				when s13 => state <= s14; transmitter <= data(1);
				when s14 => state <= s15; transmitter <= data(2);
				when s15 => state <= s16; transmitter <= data(3);
				when s16 => state <= s17; transmitter <= parity;
				when s17	=> state <= sWait; transmitter <= '0';
				when sWait => state <= sWait;
			end case;
		end if;
	end process;
	
	parity <= ((data(0) xor data(1)) xor (data(2) xor data(3)));
	sendDone <= '1' when (state = sWait) else '0';

end Behavioral;

