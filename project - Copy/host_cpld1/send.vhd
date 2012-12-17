library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity send is
    Port ( in_signal: in STD_LOGIC_VECTOR(3 downto 0);
				reset: in STD_LOGIC;
				clk: in STD_LOGIC;
				enable: in STD_LOGIC;
				reciever: in STD_LOGIC;
				lmp: out STD_LOGIC_VECTOR(3 downto 0);
				transmitter : out  STD_LOGIC);
end send;

architecture Behavioral of send is	


component counter is
	Port (	clk: in STD_LOGIC;
				reset: in STD_LOGIC;
				done: out STD_LOGIC);
end component;

type state_type is (start,s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17);
signal state_tr, nstate_tr, state_re, nstate_re: state_type;
signal count: STD_LOGIC_VECTOR(7 downto 0);
signal en: STD_LOGIC;
signal pause: STD_LOGIC;
signal readytoread: STD_LOGIC;
begin
	p0: process(clk, reset)
	begin
		if reset = '0' then
			state_tr <= start;
		elsif clk'event and clk = '1' then
		if en = '1' and pause = '0' then
			state_tr <= nstate_tr;
		end if;
	end if;
	end process p0;

	p1: process(state_tr,enable,en,clk)
	begin
		readytoread <= '0';
		if enable = '0' and state_tr = start then
			lmp(0) <= '1';
			nstate_tr <= s0;
		else
			case state_tr is
				when s0 => nstate_tr <= s1; transmitter <= '1';
				when s1 => nstate_tr <= s2; transmitter <= '0';
				when s2 => nstate_tr <= s3; transmitter <= '1';
				when s3 => nstate_tr <= s4; transmitter <= '0';
				when s4 => nstate_tr <= s5; transmitter <= '1';
				when s5 => nstate_tr <= s6; transmitter <= '0';
				when s6 => nstate_tr <= s7; transmitter <= '1';
				when s7 => nstate_tr <= s8; transmitter <= '0';
				when s8 => nstate_tr <= s9; transmitter <= '1';
				when s9 => nstate_tr <= s10; transmitter <= '0';
				when s10 => nstate_tr <= s11; transmitter <= '1';
				when s11 => nstate_tr <= s12; transmitter <= '0';
				when s12 => nstate_tr <= s13; transmitter <= '1';
				when s13 => nstate_tr <= s14; transmitter <= in_signal(0);
				when s14 => nstate_tr <= s15; transmitter <= in_signal(1);
				when s15 => nstate_tr <= s16; transmitter <= in_signal(2);
				when s16 => nstate_tr <= s17; transmitter <= in_signal(3);
				when s17 => nstate_tr <= start; transmitter <= '0'; readytoread <= '1';
				when others => 	
			end case;
		end if;
	end process p1;
	
	
	-------------------------------------------------------------------- Recieve data
	
	
		p2: process(clk, reset)
	begin
		if clk'event and clk = '1' then
			if reset = '0' then
				state_re <= start;
			end if;
			if readytoread = '1' then 
			state_re <= s0;
			elsif en = '1' then
				state_re <= nstate_re;
			end if;
		end if;
	end process p2;

	p3: process(state_re, reciever,en,reset,pause)
	begin
			if reset = '0' then
				pause <= '0';
			end if;
	
		case state_re is
			when s0 => if reciever = '1' then nstate_re <= s1; pause <= '1';  else nstate_re <= s0; pause <= '1'; end if; 
			when s1 => if reciever = '0' then nstate_re <= s2; else nstate_re <= s1; end if;
			when s2 => if reciever = '1' then nstate_re <= s3; else nstate_re <= s0; end if;
			when s3 => if reciever = '0' then nstate_re <= s4; else nstate_re <= s1; end if;
			when s4 => if reciever = '1' then nstate_re <= s5; else nstate_re <= s0; end if; 
			when s5 => if reciever = '0' then nstate_re <= s6; else nstate_re <= s1; end if;
			when s6 => if reciever = '1' then nstate_re <= s7; else nstate_re <= s0; end if;
			when s7 => if reciever = '0' then nstate_re <= s8; else nstate_re <= s1; end if;
			when s8 => if reciever = '1' then nstate_re <= s9; else nstate_re <= s0; end if; 
			when s9 => if reciever = '0' then nstate_re <= s10; else nstate_re <= s1; end if;
			when s10 => if reciever = '1' then nstate_re <= s11; else nstate_re <= s0; end if;
			when s11 => if reciever = '0' then nstate_re <= s12; else nstate_re <= s1; end if;
			when s12 => if reciever = '1' then nstate_re <= s13; else nstate_re <= s0; end if;
			when s13 => nstate_re <= s14; --lmp(0) <= reciever; --DATTA
			when s14 => nstate_re <= s15; --lmp(1) <= reciever; --DATTA
			when s15 => nstate_re <= s16; --lmp(2) <= reciever; --DATTA
			when s16 => nstate_re <= s17; --lmp(3) <= reciever; --DATTA
			when s17 => if reciever = '0' then nstate_re <= s0; pause <= '0'; end if;
			when others =>
		end case;
	end process p3;
	
	x3: counter port map(clk, reset, en);
end Behavioral;
