-- lev2puls.vhd
-- 121105 wmax 

library ieee;
use ieee.std_logic_1164.all;

entity lev2puls is
  port (clk, reset, levin: in STD_LOGIC;
        pulson : out STD_LOGIC);
end lev2puls;

architecture behavioral of lev2puls is
  type state_type is (s0, s1, s2, s3);
  signal state : state_type;
  
begin
  process(clk, reset) begin
    if (reset = '1') then
      state <= s0;
      pulson <= '0';
    elsif rising_edge(clk) then
      
      case state is
        
      when s0 =>
        pulson <= '0';
        if levin ='1' then
          state <= s1;
        end if;
      when s1 =>
        pulson <= '1';
        state <= s2;
        
      when s2 =>
        pulson <= '0';
        
        if levin ='0' then
          state <= s3;
        end if;
        
      when s3 =>
        pulson <= '0';
        state <= s0;
        
      end case;
    end if;
  end process;
end behavioral;
        