----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:49:37 12/06/2024 
-- Design Name: 
-- Module Name:    Main_Decoder - Behavioral 
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
entity Main_Decoder is
    Port ( op : in  STD_LOGIC_VECTOR (5 downto 0);
           memtoreg : out  STD_LOGIC;
           memwrite : out  STD_LOGIC;
           branch : out  STD_LOGIC;
           alusrc : out  STD_LOGIC;
           regdst : out  STD_LOGIC;
           regwrite : out  STD_LOGIC;
           jump : out  STD_LOGIC;
           aluop : out  STD_LOGIC_VECTOR (1 downto 0));
end Main_Decoder;

architecture Behavioral of Main_Decoder is
signal controls: STD_LOGIC_VECTOR (8 downto 0);
begin
PROCESS(op)
begin
case op is
	when "000000"=> controls <="110000010";
	when "100011"=> controls <="101001000";
	when "101011"=> controls <="001010000";
	when "000100"=> controls <="000100001";
	when "001000"=> controls <="101000000";
	when "000010"=> controls <="000000100";
	when others=> controls <="---------";
end case;
end PROCESS;
(regwrite, regdst, alusrc, branch, memwrite, memtoreg, jump, aluop(1), aluop(0))<= controls;
end Behavioral;