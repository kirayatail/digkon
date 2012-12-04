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

entity ctrl is
    Port ( clk : in STD_LOGIC;
			  reset : in STD_LOGIC;
			  trig : in  STD_LOGIC;
           timeout : in  STD_LOGIC;
			  rcvDone : in  STD_LOGIC;
           sendDone : in  STD_LOGIC;
           checkOK : in  STD_LOGIC;
           lastKey : in  STD_LOGIC;
           rand : out  STD_LOGIC;
           send : out  STD_LOGIC;
           timerstart : out  STD_LOGIC;
           nextKey : out  STD_LOGIC;
			  checkRst : out STD_LOGIC;
           larmOut : out  STD_LOGIC);
end ctrl;

architecture Behavioral of ctrl is
	type state_type is (s0,s1,s2,s3,s4);
	signal state : state_type;
	signal alarm : STD_LOGIC;
	signal count : STD_LOGIC_VECTOR(1 downto 0);
	signal nextSig : STD_LOGIC;
begin
	process(clk, reset) begin
		if(reset = '1') then
			alarm <= '0';
			state <= s0;
		elsif rising_edge(clk) then
			case state is
				when s0 => 				-- Wait state
					if (trig = '1') then state <= s1; end if;
				
				when s1 =>				-- Random state
					count <= "00";
					state <= s2;
				
				when s2 =>				-- Send state
					if(sendDone = '1') then 
						state <= s3; 
					end if;
				
				when s3 =>				-- Receive state
					if (rcvDone = '1') then
						state <= s4;
					elsif(timeout = '1') then
						if(count = "11") then
							alarm <= '1';
							state <= s0;
						else
							count <= count +1;
							state <= s2;
						end if;
					end if;
					
				when s4 =>				-- Check state
					
					if (checkOK = '1' or lastKey = '1') then
						state <= s0;
					elsif(nextSig = '0') then
						nextSig <= '1';
					else
						nextSig <= '0';
					end if;
				
			end case;
		end if;
	end process;
	
	rand <= '1' when (state = s1) else '0';
	send <= '1' when (state = s2) else '0';
	timerStart <= '1' when (state = s2) else '0';
	
	nextKey <= nextSig when (state = s4) else '0';
	
	
end Behavioral;

