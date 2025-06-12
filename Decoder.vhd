library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_1_to_32 is
    Port (
        sel : in  STD_LOGIC_VECTOR(4 downto 0);  
        Y0  : out STD_LOGIC;
        Y1  : out STD_LOGIC;
        Y2  : out STD_LOGIC;
        Y3  : out STD_LOGIC;
        Y4  : out STD_LOGIC;
        Y5  : out STD_LOGIC;
        Y6  : out STD_LOGIC;
        Y7  : out STD_LOGIC;
        Y8  : out STD_LOGIC;
        Y9  : out STD_LOGIC;
        Y10 : out STD_LOGIC;
        Y11 : out STD_LOGIC;
        Y12 : out STD_LOGIC;
        Y13 : out STD_LOGIC;
        Y14 : out STD_LOGIC;
        Y15 : out STD_LOGIC;
        Y16 : out STD_LOGIC;
        Y17 : out STD_LOGIC;
        Y18 : out STD_LOGIC;
        Y19 : out STD_LOGIC;
        Y20 : out STD_LOGIC;
        Y21 : out STD_LOGIC;
        Y22 : out STD_LOGIC;
        Y23 : out STD_LOGIC;
        Y24 : out STD_LOGIC;
        Y25 : out STD_LOGIC;
        Y26 : out STD_LOGIC;
        Y27 : out STD_LOGIC;
        Y28 : out STD_LOGIC;
        Y29 : out STD_LOGIC;
        Y30 : out STD_LOGIC;
        Y31 : out STD_LOGIC
    );
end Decoder_1_to_32;

architecture Behavioral of Decoder_1_to_32 is
begin
    process(sel)
    begin
        
        Y0 <= '0';
        Y1 <= '0';
        Y2 <= '0';
        Y3 <= '0';
        Y4 <= '0';
        Y5 <= '0';
        Y6 <= '0';
        Y7 <= '0';
        Y8 <= '0';
        Y9 <= '0';
        Y10 <= '0';
        Y11 <= '0';
        Y12 <= '0';
        Y13 <= '0';
        Y14 <= '0';
        Y15 <= '0';
        Y16 <= '0';
        Y17 <= '0';
        Y18 <= '0';
        Y19 <= '0';
        Y20 <= '0';
        Y21 <= '0';
        Y22 <= '0';
        Y23 <= '0';
        Y24 <= '0';
        Y25 <= '0';
        Y26 <= '0';
        Y27 <= '0';
        Y28 <= '0';
        Y29 <= '0';
        Y30 <= '0';
        Y31 <= '0';

        
        case sel is
    when "00000" => Y0 <= '1';
    when "00001" => Y1 <= '1';
    when "00010" => Y2 <= '1';
    when "00011" => Y3 <= '1';
    when "00100" => Y4 <= '1';
    when "00101" => Y5 <= '1';
    when "00110" => Y6 <= '1';
    when "00111" => Y7 <= '1';
    when "01000" => Y8 <= '1';
    when "01001" => Y9 <= '1';
    when "01010" => Y10 <= '1';
    when "01011" => Y11 <= '1';
    when "01100" => Y12 <= '1';
    when "01101" => Y13 <= '1';
    when "01110" => Y14 <= '1';
    when "01111" => Y15 <= '1';
    when "10000" => Y16 <= '1';
    when "10001" => Y17 <= '1';
    when "10010" => Y18 <= '1';
    when "10011" => Y19 <= '1';
    when "10100" => Y20 <= '1';
    when "10101" => Y21 <= '1';
    when "10110" => Y22 <= '1';
    when "10111" => Y23 <= '1';
    when "11000" => Y24 <= '1';
    when "11001" => Y25 <= '1';
    when "11010" => Y26 <= '1';
    when "11011" => Y27 <= '1';
    when "11100" => Y28 <= '1';
    when "11101" => Y29 <= '1';
    when "11110" => Y30 <= '1';
    when "11111" => Y31 <= '1';
    when others =>  
        Y0 <= '0';  
        Y1 <= '0';
        Y2 <= '0';
        Y3 <= '0';
        Y4 <= '0';
        Y5 <= '0';
        Y6 <= '0';
        Y7 <= '0';
        Y8 <= '0';
        Y9 <= '0';
        Y10 <= '0';
        Y11 <= '0';
        Y12 <= '0';
        Y13 <= '0';
        Y14 <= '0';
        Y15 <= '0';
        Y16 <= '0';
        Y17 <= '0';
        Y18 <= '0';
        Y19 <= '0';
        Y20 <= '0';
        Y21 <= '0';
        Y22 <= '0';
        Y23 <= '0';
        Y24 <= '0';
        Y25 <= '0';
        Y26 <= '0';
        Y27 <= '0';
        Y28 <= '0';
        Y29 <= '0';
        Y30 <= '0';
        Y31 <= '0';
end case;

    end process;
end Behavioral;
