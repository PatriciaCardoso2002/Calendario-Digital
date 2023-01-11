library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Dec5_BCDmes is
	port( 
--			inputs : in std_logic_vector(4 downto 0);
			output1 : out std_logic_vector(3 downto 0);
			output2 : out std_logic_vector(3 downto 0));
end Dec5_BCDmes;

architecture v1 of Dec5_BCDmes is
	signal pp : std_logic_vector(3 downto 0);
	signal clk : std_logic;
	signal upDown : std_logic;
	signal inp : unsigned(3 downto 0);
begin

u1:	entity work.CounterMeses(v2)
			port map(clk => clk,
						upDown => upDown,
						Q => pp);
	process(pp)
	begin
	inp <= unsigned(pp);
	
	if(inp > "1001") then
		output1 <= "0001";
		output2 <=  "0000" when pp = "1010" else
						"0001" when pp = "1011" else
						"0010";-- when inp = "1100";
							
	end if;
	if(inp < "1010") then
		output1 <= "0001";
		output2 <=  "0001" when pp = "0001" else
						"0010" when pp = "0010" else
						"0011" when pp = "0011" else
						"0100" when pp = "0100" else
						"0101" when pp = "0101" else
						"0110" when pp = "0110" else
						"0111" when pp = "0111" else
						"1000"; --when inp = "1000" ;		
						
	end if;
	
	end process;
--	inputs <= std_logic_vector(inp);
end v1;
