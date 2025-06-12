----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:13:27 12/17/2024 
-- Design Name: 
-- Module Name:    signExtend - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity signExtend is
    Port ( I : in  STD_LOGIC_VECTOR (15 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end signExtend;

architecture Behavioral of signExtend is
begin
O <= x"0000" & I when I(15) = '0' else x"FFFF" & I;
end Behavioral;