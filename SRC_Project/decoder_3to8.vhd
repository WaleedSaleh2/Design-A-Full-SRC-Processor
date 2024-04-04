library ieee;
use ieee.std_logic_1164.all;

entity decoder_3to8 is
  port (
    input  : in  std_logic_vector(2  downto 0);           
    output : out std_logic_vector(7 downto 0)               
    );
end decoder_3to8;

architecture rtl of decoder_3to8 is

begin  

process(input) is
begin
	case input is
		when "000" => 
			output <= "00000001";
		when "001" => 
			output <= "00000010";
		when "010" => 
			output <= "00000100";	
		when "011" => 
			output <= "00001000";
		when "100" => 
			output <= "00010000";
		when "101" => 
			output <= "00100000";
		when others => 
			output <= "XXXXXXXX";
		end case;
end process;

end rtl;
