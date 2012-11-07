-- vhdltop.vhd
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity vhdltop is
    Port ( clk : in  STD_LOGIC;
           resin : in  STD_LOGIC;
           din : in  STD_LOGIC_VECTOR (2 downto 0);
           dav : in  STD_LOGIC;
           borrnere : in  STD_LOGIC;
           borruppe : in  STD_LOGIC;
           refpos : in  STD_LOGIC;
           oe : out  STD_LOGIC;
           steg : out  STD_LOGIC;
           framback : out  STD_LOGIC;
           borrmotor : out STD_LOGIC;
           solenoid : out  STD_LOGIC;
           larm : out  STD_LOGIC;
           d1,d2,d3: OUT STD_LOGIC);
end vhdltop;
architecture Behavioral of vhdltop is
component sync is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           input : in  STD_LOGIC;
           sync : out  STD_LOGIC);
end component;
component lev2puls is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           levin : in  STD_LOGIC;
           pulson : out  STD_LOGIC);
end component;
component puls2lev is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           seton : in  STD_LOGIC;
           setoff : in  STD_LOGIC;
           levout : out  STD_LOGIC);
end component;
component decoder38e is
    Port (sin: in STD_LOGIC_VECTOR (2 downto 0);
          e: in STD_LOGIC;
          sout: out STD_LOGIC_VECTOR (7 downto 0));
end component;
signal levin,puls,reset: std_logic;
signal dut: std_LOGIC_VECTOR(7 downto 0);
begin
reset <= not resin;
x3: decoder38e port map(din,puls,dut);

x1: sync port map (clk,reset,dav,levin);
x2: lev2puls port map(clk,reset,levin,puls);
x4: puls2lev port map(clk,reset,dut(0),dut(1),borrmotor);
x5: puls2lev port map(clk,reset,dut(2),dut(3),solenoid);
end Behavioral;