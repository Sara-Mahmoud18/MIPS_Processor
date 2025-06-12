----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:09:04 11/19/2024 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
    Port ( data1: in  STD_LOGIC_VECTOR(31 downto 0);
           data2: in  STD_LOGIC_VECTOR(31 downto 0);
			  aluop: in std_logic_vector (3 downto 0);
			 
           dataout : buffer  STD_LOGIC_VECTOR (31 downto 0);
           zflag : out  STD_LOGIC
			);
end ALU;

architecture Behavioral of ALU is

signal sum : STD_LOGIC_VECTOR (31 downto 0);
signal bbar : STD_LOGIC_VECTOR (31 downto 0);
signal abar : STD_LOGIC_VECTOR (31 downto 0);
signal state : STD_LOGIC_VECTOR (31 downto 0);


begin
sum  <= abar + bbar + aluop(2);
bbar <= data2 when aluop(2) = '0' else not data2;
abar <= data1 when aluop(3) = '0' else not data1;

state  <=  abar and bbar when aluop(1 downto 0) = "00" else
			abar or bbar when aluop(1 downto 0) = "01" else
			sum when aluop(1 downto 0) = "10" else
			(X"0000000" & "000" & sum(31)) WHEN aluop(1 downto 0) = "11" ELSE  
			(others => 'Z');

zflag <= '1' when state = x"00000000" else '0';			
dataout <= state;

end Behavioral;