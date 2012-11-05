-- fulladd.vhd
-- 121102 wmax
    LIBRARY ieee;
    USE IEEE.STD_LOGIC_1164.ALL;
    
    ENTITY fulladd IS
      PORT (a,b,cin: IN STD_LOGIC;
            s,cut:OUT STD_LOGIC);
    END fulladd;
    
    ARCHITECTURE comb OF fulladd IS
      
      BEGIN
        s <= cin xor (a xor b);
        cut <= ((a xor b) and cin) or ( a and b);
      END comb;