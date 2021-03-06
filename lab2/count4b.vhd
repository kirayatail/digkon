-- count4b.vhd
-- 121105 wmax

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

  entity count4b is
    port (clk, reset, ce : in STD_LOGIC;
          q : out STD_LOGIC_VECTOR (3 downto 0));
  end count4b;
  
  architecture behavior of count4b is
    signal count: STD_LOGIC_VECTOR (3 downto 0);    
  begin
    process begin
      wait until clk'event and clk ='1';
      if reset = '1' then
        count <= "0000";
      elsif ce = '1' then
        count <= count + 1;
      end if;
    end process;
    q <= count;
  end behavior;