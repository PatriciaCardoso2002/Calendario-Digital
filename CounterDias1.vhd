library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CounterDias1 is
	port(clk : in std_logic;
			upDown : in std_logic; --  1: up,  0: down
--			reset : in std_logic;
			count : out std_logic_vector(4 downto 0);
			TC : out std_logic);
end CounterDias1;

architecture v1 of CounterDias1 is
	signal s_count : unsigned(4 downto 0);

begin 
	process(clk)
	begin	
		if(rising_edge(clk)) then
--			if(reset = '1') then
--				s_count <= "00000";
			if(upDown = '0') then
				s_count <= s_count - 1;
			else
				s_count <= s_count + 1;
			end if;
			if(s_count <= "00001") then
				TC <= '1';
			else
				TC <= '0';
			end if;
			if(s_count >= "11111") then
--				reset <= '1'
				s_count <= "00000";
			end if;
		end if;
	end process;
	count <= std_logic_vector(s_count);
end v1;