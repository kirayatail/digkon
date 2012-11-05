-- adder4b.vhd
-- 121105 wmax
    LIBRARY ieee;
    USE IEEE.STD_LOGIC_1164.ALL;

    entity adder4b IS
      port (a, b: IN STD_LOGIC_VECTOR (3 downto 0);
            cin: IN STD_LOGIC;
            s: OUT STD_LOGIC_VECTOR (3 downto 0);
            cut: OUT STD_LOGIC);
    end adder4b;
    
    architecture behavior of adder4b is
      signal c: STD_LOGIC_VECTOR (2 downto 0);
      component fulladd
        port (a,b,cin: IN STD_LOGIC;
              s,cut: OUT STD_LOGIC);
      end component;
      
    begin
        fa0: fulladd port map (a(0), b(0), cin, s(0), c(0));
        fa1: fulladd port map (a(1), b(1), c(0), s(1), c(1));
        fa2: fulladd port map (a(2), b(2), c(1), s(2), c(2));
        fa3: fulladd port map (a(3), b(3), c(2), s(3), cut);
    end behavior;