library ieee;
use ieee.std_logic_1164.all;

entity decoder_5to32 is
  port (
    input  : in  std_logic_vector(4  downto 0);           
    output : out std_logic_vector(31 downto 0)               
    );
end decoder_5to32;

architecture rtl of decoder_5to32 is

begin  

process(input) is
begin
	case input is
		when "00000" => 
			output <= "00000000000000000000000000000001";
		when "00001" => 
			output <= "00000000000000000000000000000010";
		when "00010" => 
			output <= "00000000000000000000000000000100";	
		when "00011" => 
			output <= "00000000000000000000000000001000";
		when "00100" => 
			output <= "00000000000000000000000000010000";
		when "00101" => 
			output <= "00000000000000000000000000100000";
		when "00110" => 
			output <= "00000000000000000000000001000000";
		when "00111" => 
			output <= "00000000000000000000000010000000";
		when "01000" => 
			output <= "00000000000000000000000100000000";
		when "01001" => 
			output <= "00000000000000000000001000000000";
		when "01010" => 
			output <= "00000000000000000000010000000000";
		when "01011" => 
			output <= "00000000000000000000100000000000";
		when "01100" => 
			output <= "00000000000000000001000000000000";
		when "01101" => 
			output <= "00000000000000000010000000000000";
		when "01110" => 
			output <= "00000000000000000100000000000000";
		when "01111" => 
			output <= "00000000000000001000000000000000";
		when "10000" => 
			output <= "00000000000000010000000000000000";
		when "10001" => 
			output <= "00000000000000100000000000000000";
		when "10010" => 
			output <= "00000000000001000000000000000000";
		when "10011" => 
			output <= "00000000000010000000000000000000";
		when "10100" => 
			output <= "00000000000100000000000000000000";
		when "10101" => 
			output <= "00000000001000000000000000000000";
		when "10110" => 
			output <= "00000000010000000000000000000000";
		when "10111" => 
		   output <= "00000000100000000000000000000000";
		when "11000" => 
			output <= "00000001000000000000000000000000";
		when "11001" => 
			output <= "00000010000000000000000000000000";
		when "11010" => 
			output <= "00000100000000000000000000000000";
		when "11011" => 
			output <= "00001000000000000000000000000000";
		when "11100" => 
			output <= "00010000000000000000000000000000";
		when "11101" => 
			output <= "00100000000000000000000000000000";
		when "11110" => 
			output <= "01000000000000000000000000000000";
		when "11111" => 
			output <= "10000000000000000000000000000000";
		when others =>
			output <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
		end case;
end process;

end rtl;
