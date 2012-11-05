-- comp1.vhd
-- 121102 wmax
    LIBRARY ieee;
    USE IEEE.STD_LOGIC_1164.ALL;
    
    ENTITY comp1 IS
      port (a,b : IN STD_LOGIC;
            agtb, aeqb, altb : OUT STD_LOGIC);
    END comp1;
    
    ARCHITECTURE comb OF comp1 is
      begin
        aeqb <= not (a xor b);
        agtb <= a and (not b);
        altb <= (not a) and b;
        
      end comb;
    