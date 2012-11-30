library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity recieve is
    Port ( clk: in STD_LOGIC;
				reciever : in  STD_LOGIC;
				reset: in STD_LOGIC;
           lmp : out  STD_LOGIC_VECTOR(3 downto 0));
end recieve;

architecture Behavioral of recieve is

component counter is
	Port (	clk: in STD_LOGIC;
				reset: in STD_LOGIC;
				done: out STD_LOGIC);
end component;

type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17);
signal state, nstate: state_type;
signal en: STD_LOGIC;
begin
	p0: process(clk, reset)
	begin
		if clk'event and clk = '1' then
			if reset = '0' then
				state <= s0;
			end if;
			if en = '1' then
				state <= nstate;
			end if;
		end if;
	end process p0;

	p1: process(state, reciever,en)
	begin
		case state is
			when s0 => if reciever = '1' then nstate <= s1;  else nstate <= s0;  end if; 
			when s1 => if reciever = '0' then nstate <= s2; else nstate <= s1; end if;
			when s2 => if reciever = '1' then nstate <= s3; else nstate <= s0; end if;
			when s3 => if reciever = '0' then nstate <= s4; else nstate <= s1; end if;
			when s4 => if reciever = '1' then nstate <= s5; else nstate <= s0; end if; 
			when s5 => if reciever = '0' then nstate <= s6; else nstate <= s1; end if;
			when s6 => if reciever = '1' then nstate <= s7; else nstate <= s0; end if;
			when s7 => if reciever = '0' then nstate <= s8; else nstate <= s1; end if;
			when s8 => if reciever = '1' then nstate <= s9; else nstate <= s0; end if; 
			when s9 => if reciever = '0' then nstate <= s10; else nstate <= s1; end if;
			when s10 => if reciever = '1' then nstate <= s11; else nstate <= s0; end if;
			when s11 => if reciever = '0' then nstate <= s12; else nstate <= s1; end if;
			when s12 => if reciever = '1' then nstate <= s13; else nstate <= s0; end if;
			when s13 => nstate <= s14; lmp(0) <= not reciever; --DATTA
			when s14 => nstate <= s15; lmp(1) <= not reciever; --DATTA
			when s15 => nstate <= s16; lmp(2) <= not reciever; --DATTA
			when s16 => nstate <= s17; lmp(3) <= not reciever; --DATTA
			when s17 => if reciever = '0' then nstate <= s0; end if;
			when others =>
		end case;
	end process p1;

	x1: counter port map(clk, reset, en);
 
end Behavioral;