library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Register0 is
    generic(
        n: NATURAL := 32  
    );
    port(
        D    : in  STD_LOGIC_VECTOR(n-1 downto 0);  
        Q    : out STD_LOGIC_VECTOR(n-1 downto 0);  
        clk  : in  STD_LOGIC;                       
        rst  : in  STD_LOGIC;
		  load : in STD_LOGIC
    );
end Register0;

architecture Behavioral of Register0 is
 signal internal_D : STD_LOGIC_VECTOR(n-1 downto 0);
begin
    PROCESS(clk, rst)
    begin
        if rst = '1' then
            Q <= (others => '0'); 
        elsif rising_edge(clk) then
		         internal_D <= D;
		        Q<=(others=>'0');
           
            
        end if;
    end PROCESS;
end Behavioral;

