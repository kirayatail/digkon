-- fde1.vhd
-- 121105 wmax

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

  entity fde1 is
    port (clk, reset, d, en: in STD_LOGIC;
          q: out STD_LOGIC);
  end fde1;

  architecture behavior of fde1 is
  begin
    process
    begin
      wait until rising_edge(clk);
      if reset = '1' then
        q <= '0';
      elsif en = '1' then
        q <= d;
      end if;
    end process;
  end behavior;
  