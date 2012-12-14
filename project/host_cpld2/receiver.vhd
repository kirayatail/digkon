----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:21:30 12/09/2012 
-- Design Name: 
-- Module Name:    receiver - Behavioral 
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

entity receiver is
    Port ( reset : in STD_LOGIC;
			  lowClk : in  STD_LOGIC;
			  receiver: in STD_LOGIC;
           enable : in  STD_LOGIC;
           rcvDone : out  STD_LOGIC;
           rcvData : out  STD_LOGIC_VECTOR (3 downto 0));
end receiver;

architecture Behavioral of receiver is
type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,sWait);
signal state : state_type;
signal data : STD_LOGIC_VECTOR (3 downto 0);
signal parity : std_logic;
begin
	process(lowClk,reset,enable) begin
		if reset = '1' OR enable = '0' then 
			state <= s0;
			data <= "0000";
		elsif rising_edge(lowClk) AND enable = '1' then
			case state is
				when s0 => if receiver = '1' then state <= s1; else state <= s0; end if;
				when s1 => if receiver = '0' then state <= s2; else state <= s1; end if;
				when s2 => if receiver = '1' then state <= s3; else state <= s0; end if;
				when s3 => if receiver = '0' then state <= s4; else state <= s1; end if;
				when s4 => if receiver = '1' then state <= s5; else state <= s0; end if;
				when s5 => if receiver = '0' then state <= s6; else state <= s1; end if;
				when s6 => if receiver = '1' then state <= s7; else state <= s0; end if;
				when s7 => if receiver = '0' then state <= s8; else state <= s1; end if;
				when s8 => if receiver = '1' then state <= s9; else state <= s0; end if;
				when s9 => if receiver = '0' then state <= s10; else state <= s1; end if;
				when s10 => if receiver = '1' then state <= s11; else state <= s0; end if;
				when s11 => if receiver = '0' then state <= s12; else state <= s1; end if;
				when s12 => data(0) <= receiver; state <= s13;
				when s13 => data(1) <= receiver; state <= s14;
				when s14 => data(2) <= receiver; state <= s15;
				when s15 => data(3) <= receiver; state <= s16;
				when s16 => if receiver = parity then state <= s17; else if parity = '1' then state <= s1; else state <= s0; end if; end if;
				when s17 => if receiver = '0' then state <= sWait; else state <= s1; end if;
				when sWait => state <= sWait;
			end case;
		end if;
	end process;
	parity <= ((data(0) xor data(1)) xor (data(2) xor data(3)));
	rcvData <= data;
	rcvDone <= '1' when (state = sWait) else '0';
end Behavioral;

