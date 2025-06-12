----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:35:01 12/07/2024 
-- Design Name: 
-- Module Name:    Controller - Behavioral 
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
library work;
use work.MyPackage1.all;

entity Controller is
    Port ( op : in  STD_LOGIC_VECTOR (5 downto 0);
           funct : in  STD_LOGIC_VECTOR (5 downto 0);
           zero : in  STD_LOGIC;
           memtoreg : out  STD_LOGIC;
           memwrite : out  STD_LOGIC;
           pcsrc : out  STD_LOGIC;
           alusrc : out  STD_LOGIC;
           regdst : out  STD_LOGIC;
           regwrite : out  STD_LOGIC;
           jump : out  STD_LOGIC;
           alucontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end Controller;

architecture Behavioral of Controller is
	signal aluop: STD_LOGIC_VECTOR (1 downto 0);
	signal branch: STD_LOGIC;
begin
Main_Decoder : entity work.Main_Decoder
port map(
			op => op,
			aluop => aluop,
			memtoreg => memtoreg,
			memwrite => memwrite,
			branch => branch,
			alusrc => alusrc,
			regdst => regdst,
			regwrite => regwrite,
			jump => jump
			);
			
ALUdecoder : entity work.ALUdecoder
port map(
			funct => funct,
			aluop => aluop,
			alucontrol => alucontrol);
			 
pcsrc <= branch and zero;

end Behavioral;

