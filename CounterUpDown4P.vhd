library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CounterUpDown4P is
	port(clk : in std_logic;
			upDown : in std_logic; --  1: up,  0: down
			reset : in std_logic;
			count : out std_logic_vector(3 downto 0));
end CounterUpDown4P;

architecture v1 of CounterUpDown4P is
	signal s_count : unsigned(3 downto 0);
begin 
	process(clk)
	begin	
		if(rising_edge(clk)) then
			if(reset = '1') then
				s_count <= "0000";
			elsif(upDown = '0') then
				s_count <= s_count - 1;
			else
				s_count <= s_count + 1;
			end if;
		end if;
	end process;
	count <= std_logic_vector(s_count);
end v1;