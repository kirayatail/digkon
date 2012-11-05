-- encoder42.vhd
-- 121102 wmax
    LIBRARY ieee;
    USE IEEE.STD_LOGIC_1164.ALL;
    
    ENTITY encoder42 is
      port (a: IN STD_LOGIC_VECTOR (3 downto 0);
            f: OUT STD_LOGIC_VECTOR (1 downto 0);
            z: OUT STD_LOGIC);
    end encoder42;
    
    Architecture comb of encoder42 is
      begin
        z <= '1' when a = "0000" else '0';
        f <= "11" when a(3) = '1' else
        "10" when a(3 downto 2) = "01" else
        "01" when a(3 downto 1) = "001" else
        "00";
    end comb;