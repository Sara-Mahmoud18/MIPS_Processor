library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity for a flip-flop with reset and load enable (FLOPR)
entity Registers is
    generic(
        n: NATURAL := 32  -- Width of the register
    );
    port(
        D    : in  STD_LOGIC_VECTOR(n-1 downto 0);  -- Data input
        Q    : out STD_LOGIC_VECTOR(n-1 downto 0);  -- Data output
        clk  : in  STD_LOGIC;                       -- Clock signal
        rst  : in  STD_LOGIC;                       -- Reset signal (active high)
        load : in  STD_LOGIC                        -- Load enable signal
    );
end Registers;

architecture Behavioral of Registers is
begin
    PROCESS(clk, rst)
    begin
        if rst = '1' then
            Q <= (others => '0');  -- Reset output to all zeros
        elsif rising_edge(clk) then
            if load = '1' then
                Q <= D;  -- Load new data into the register
            end if;
        end if;
    end PROCESS;
end Behavioral;
