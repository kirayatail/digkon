library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dipswitch is
    Port ( dip : in  STD_LOGIC_VECTOR(3 downto 0);
           out_signal : out  STD_LOGIC_VECTOR(3 downto 0));
end dipswitch;

architecture Behavioral of dipswitch is

begin
	out_signal <= dip; 
end Behavioral;

