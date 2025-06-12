----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:05:36 12/06/2024 
-- Design Name: 
-- Module Name:    ALUdecoder - Behavioral 
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
entity ALUdecoder is
    Port ( aluop : in  STD_LOGIC_VECTOR (1 downto 0);
           funct : in  STD_LOGIC_VECTOR (5 downto 0);
           alucontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end ALUdecoder;

architecture Behavioral of ALUdecoder is

begin
PROCESS (aluop, funct)
begin
case aluop is 
	when "00"=> alucontrol <="0010";
	when "01"=> alucontrol <="0110";
	when others=>
	case funct is
		when "100000"=> alucontrol <="0010";
		when "100010"=> alucontrol <="0110";
		when "100100"=> alucontrol <="0000";
		when "100101"=> alucontrol <="0001";
		when "101010"=> alucontrol <="0111";
		when others=> alucontrol <="----";
	end case;
end case;
end PROCESS;
end Behavioral;