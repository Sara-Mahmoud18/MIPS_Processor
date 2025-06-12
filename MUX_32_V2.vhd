library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MUX_32_V2 is
    Port (
        I0  : in  STD_LOGIC_VECTOR (31 downto 0);
        I1  : in  STD_LOGIC_VECTOR (31 downto 0);
        I2  : in  STD_LOGIC_VECTOR (31 downto 0);
        I3  : in  STD_LOGIC_VECTOR (31 downto 0);
        I4  : in  STD_LOGIC_VECTOR (31 downto 0);
        I5  : in  STD_LOGIC_VECTOR (31 downto 0);
        I6  : in  STD_LOGIC_VECTOR (31 downto 0);
        I7  : in  STD_LOGIC_VECTOR (31 downto 0);
        I8  : in  STD_LOGIC_VECTOR (31 downto 0);
        I9  : in  STD_LOGIC_VECTOR (31 downto 0);
        I10 : in  STD_LOGIC_VECTOR (31 downto 0);
        I11 : in  STD_LOGIC_VECTOR (31 downto 0);
        I12 : in  STD_LOGIC_VECTOR (31 downto 0);
        I13 : in  STD_LOGIC_VECTOR (31 downto 0);
        I14 : in  STD_LOGIC_VECTOR (31 downto 0);
        I15 : in  STD_LOGIC_VECTOR (31 downto 0);
        I16 : in  STD_LOGIC_VECTOR (31 downto 0);
        I17 : in  STD_LOGIC_VECTOR (31 downto 0);
        I18 : in  STD_LOGIC_VECTOR (31 downto 0);
        I19 : in  STD_LOGIC_VECTOR (31 downto 0);
        I20 : in  STD_LOGIC_VECTOR (31 downto 0);
        I21 : in  STD_LOGIC_VECTOR (31 downto 0);
        I22 : in  STD_LOGIC_VECTOR (31 downto 0);
        I23 : in  STD_LOGIC_VECTOR (31 downto 0);
        I24 : in  STD_LOGIC_VECTOR (31 downto 0);
        I25 : in  STD_LOGIC_VECTOR (31 downto 0);
        I26 : in  STD_LOGIC_VECTOR (31 downto 0);
        I27 : in  STD_LOGIC_VECTOR (31 downto 0);
        I28 : in  STD_LOGIC_VECTOR (31 downto 0);
        I29 : in  STD_LOGIC_VECTOR (31 downto 0);
        I30 : in  STD_LOGIC_VECTOR (31 downto 0);
        I31 : in  STD_LOGIC_VECTOR (31 downto 0);
        sel : in  STD_LOGIC_VECTOR (4 downto 0);    
        Y   : out STD_LOGIC_VECTOR (31 downto 0)   
    );
end MUX_32_V2;

architecture Behavioral of MUX_32_V2 is
begin
    process(sel, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15,
                  I16, I17, I18, I19, I20, I21, I22, I23, I24, I25, I26, I27, I28, I29, I30, I31)
    begin
        case sel is
            when "00000" => Y <= I0;
            when "00001" => Y <= I1;
            when "00010" => Y <= I2;
            when "00011" => Y <= I3;
            when "00100" => Y <= I4;
            when "00101" => Y <= I5;
            when "00110" => Y <= I6;
            when "00111" => Y <= I7;
            when "01000" => Y <= I8;
            when "01001" => Y <= I9;
            when "01010" => Y <= I10;
            when "01011" => Y <= I11;
            when "01100" => Y <= I12;
            when "01101" => Y <= I13;
            when "01110" => Y <= I14;
            when "01111" => Y <= I15;
            when "10000" => Y <= I16;
            when "10001" => Y <= I17;
            when "10010" => Y <= I18;
            when "10011" => Y <= I19;
            when "10100" => Y <= I20;
            when "10101" => Y <= I21;
            when "10110" => Y <= I22;
            when "10111" => Y <= I23;
            when "11000" => Y <= I24;
            when "11001" => Y <= I25;
            when "11010" => Y <= I26;
            when "11011" => Y <= I27;
            when "11100" => Y <= I28;
            when "11101" => Y <= I29;
            when "11110" => Y <= I30;
            when "11111" => Y <= I31;
            when others => Y <= (others => '0');
        end case;
    end process;
end Behavioral;
