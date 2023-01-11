library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SyncGen is
	generic(numberSteps	: positive := 8;
			  progClk	: natural  := 2;
			  timeClk	: natural  := 2;
			  dispClk 	: natural := 2);
	port(clock_50		: in  std_logic;
		  pulseOut0	: out std_logic;
		  pulseOut1	: out std_logic;
		  pulseOut2 : out std_logic);
end SyncGen;

architecture v1 of SyncGen is

	subtype TCounter is natural range 0 to (numberSteps - 1);

	signal s_counter : TCounter;

begin
	count_proc : process(clkIn)
	begin
		if (rising_edge(clkIn)) then
			if (s_counter >= (numberSteps - 1)) then
				s_counter <= 0;
			else
				s_counter <= s_counter + 1;
			end if;
		end if;
	end process;

	pulseOut0 <= '1' when ((s_counter rem progClk) = 0) else
					 '0';

	pulseOut1 <= '1' when ((s_counter rem timeClk) = 0) else
					 '0';

	pulseOut2 <= '1' when ((s_counter rem dispClk) = 0) else
					 '0';
end v1;
