library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MyPackage3 is
	
	component dmem is
		port( clk, we: in STD_LOGIC;
		a, wd: in STD_LOGIC_VECTOR (31 downto 0);
		rd: out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component imem is
		port( a: in STD_LOGIC_VECTOR(5 downto 0);
		rd: out STD_LOGIC_VECTOR(31 downto 0));
	end component;
	
	component mips is
		port( clk, reset: in STD_LOGIC;
		instr: in STD_LOGIC_VECTOR(31 downto 0);
		readdata: in STD_LOGIC_VECTOR(31 downto 0);
		pc: out STD_LOGIC_VECTOR(31 downto 0);
		memwrite: out STD_LOGIC;
		aluout, writedata: out STD_LOGIC_VECTOR(31 downto 0));
	end component;

end MyPackage3;