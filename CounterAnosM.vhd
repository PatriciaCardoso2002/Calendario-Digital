library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CounterAnosM is
	port( 
			upDown : in std_logic;
			clk : in std_logic;
			Q : out std_logic_vector(3 downto 0));
end CounterAnosM;

architecture v2 of CounterAnosM is
	signal s_count : unsigned(3 downto 0);
	signal en : std_logic;
begin
u1: entity work.CounterAnosC(v2)
		port map( clk => clk,
					 TC => en,
					 upDown => upDown);
	process(en, upDown)
	begin
		
	if(en = '1') then
		if(upDown = '0') then
			s_count <= s_count -1;
		else
			s_count <= s_count + 1;
		end if;
		if(s_count >= "1010") then
			s_count <= "0000";
		end if;
	end if;
	end process;
	Q <= std_logic_vector(s_count);
end v2;
		
		
		
					 