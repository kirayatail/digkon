
-- VHDL Instantiation Created from source file one_bit.vhd -- 14:59:08 11/27/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT one_bit
	PORT(
		in_signal : IN std_logic;
		reset : IN std_logic;
		clk : IN std_logic;
		enable : IN std_logic;          
		on_lamp : OUT std_logic;
		enable_lamp : OUT std_logic;
		test_lamp : OUT std_logic;
		transmitter : OUT std_logic
		);
	END COMPONENT;

	Inst_one_bit: one_bit PORT MAP(
		in_signal => ,
		reset => ,
		clk => ,
		enable => ,
		on_lamp => ,
		enable_lamp => ,
		test_lamp => ,
		transmitter => 
	);


