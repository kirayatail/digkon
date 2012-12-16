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
			  rcvEnable : out STD_LOGIC;
           timerstart : out  STD_LOGIC;
           nextKey : out  STD_LOGIC;
			  checkRst : out STD_LOGIC;
           larmOut : out  STD_LOGIC;
			  okOut : out STD_LOGIC);
end ctrl;

architecture Behavioral of ctrl is
	type state_type is (s0,s1,s2,s3,s4,s5,s6);
	signal state,tstate : state_type;
	signal alarm : STD_LOGIC;
	signal count : STD_LOGIC_VECTOR(1 downto 0);

begin
	process(clk, reset) 
		variable nextSig : STD_LOGIC;
	begin
		
		if(reset = '1') then
		
			alarm <= '0';
			tstate <= s0;
			nextSig := '0';
		elsif rising_edge(clk) then
			rand <= '0';
			send <= '0';
			rcvEnable <= '0';
		
			
			
			larmOut <= '0';
			timerStart <= '0';
			nextKey <= '0';
			okOut <= checkOK;
			case state is
				when s0 => 				-- Wait state
					if (trig = '1') then 
						tstate <= s1; 
					end if;
					
					if (alarm='1') then 
						larmOut <= '1';
					end if;
					
				when s1 =>				-- Random state
					count <= "00";
					tstate <= s2;
					rand <= '1';
				
				when s2 =>				-- Send state
					if(sendDone = '1') then 
						tstate <= s3; 
					end if;
					send <= '1';
					timerStart <= '1';
					checkRst <= '1';
				
				when s3 =>				-- Receive state
				checkRst <= '0';
					if (rcvDone = '1') then
						tstate <= s4;
					elsif(timeout = '1') then
						if(count = "11") then
							alarm <= '1';
							tstate <= s0;
						else
							count <= count +1;
							tstate <= s2;
						end if;
					end if;
					

					rcvEnable <= '1';
				when s4 =>				-- Check stats
					
					if (checkOK = '1' or lastKey = '1') then
						if(checkOK = '1') then
							alarm <= '0'; 
						else 
							alarm <= '1';
						end if;
					end if;
					--	tstate <= s5;
					if(nextSig = '0') then
						nextSig := '1';
					else 
						nextSig := '0';
					end if;
					
					nextKey<=nextSig;
					
					--nextKey<='1';
					rcvEnable <= '1';
					

				when s5 =>				-- Wait for trigger release
					nextKey<='0';
					if (trig = '0') then 
						tstate <= s6; 
					end if;
					timerStart <= '1';
					
				when s6 =>				-- Delay until ready for next trigger
				nextKey<='0';
					if (timeout = '1') then 
						tstate <= s0; 
					end if;
					
			end case;
		end if;
	end process;
	
	

	process(tstate) begin
		state <= tstate;
	end process;
	
	
end Behavioral;

