library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MyPackage2 is

	component datapath is
		port(  clk, reset: in STD_LOGIC;
			memtoreg, pcsrc: in STD_LOGIC;
			alusrc, regdst: in STD_LOGIC;
			regwrite, jump: in STD_LOGIC;
			alucontrol: in STD_LOGIC_VECTOR(3 downto 0);
			instr: in STD_LOGIC_VECTOR(31 downto 0);
			readdata: in STD_LOGIC_VECTOR(31 downto 0);
			zero: out STD_LOGIC;
			pc: buffer STD_LOGIC_VECTOR(31 downto 0);
			aluout, writedata: buffer STD_LOGIC_VECTOR(31 downto 0));
	end component;
	
	component Controller is
		port( op : in  STD_LOGIC_VECTOR (5 downto 0);
           funct : in  STD_LOGIC_VECTOR (5 downto 0);
           zero : in  STD_LOGIC;
           memtoreg : out  STD_LOGIC;
           memwrite : out  STD_LOGIC;
           PCsrc : out  STD_LOGIC;
           alusrc : out  STD_LOGIC;
           regdst : out  STD_LOGIC;
           regwrite : out  STD_LOGIC;
           jump : out  STD_LOGIC;
           alucontrol : out  STD_LOGIC_VECTOR (3 downto 0));
		end component; 
end MyPackage2;

package body MyPackage2 is
 
end MyPackage2;
