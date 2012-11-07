-- decoder38e.vhd
-- 121107 wmax

library ieee;
use ieee.std_logic_1164.all;

entity decoder38e is
  port (e: IN STD_LOGIC;
        sin: IN STD_LOGIC_VECTOR (2 downto 0);
        sout: OUT STD_LOGIC_VECTOR (7 downto 0));
end decoder38e;

Architecture behavior of decoder38e is
  signal temp : STD_LOGIC_VECTOR (7 downto 0);
  begin
    with sin select
      temp <= "10000000" when "111",
              "01000000" when "110",
              "00100000" when "101",
              "00010000" when "100",
              "00001000" when "011",
              "00000100" when "010",
              "00000010" when "001",
              "00000001" when "000",
              "XXXXXXXX" when others;
      sout <= temp when e = '1' else "00000000";

end behavior;  
