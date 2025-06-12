----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:05:13 12/17/2024 
-- Design Name: 
-- Module Name:    MUX_2 - Behavioral 
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
-----------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity MUX_2 is
		Generic (n :integer:= 32);
    Port ( data1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           data2 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           selector : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (n-1 downto 0));
end MUX_2;

architecture Behavioral of MUX_2 is

begin
dataout <= data1 when selector = '0' else data2;
end Behavioral;

