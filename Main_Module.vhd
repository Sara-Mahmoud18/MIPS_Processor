library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use work.MyPackage3.all;
use work.all;

entity Main_Module is
    Port (
        clk       : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        writedata : out STD_LOGIC_VECTOR(31 downto 0);
        dataadr   : out STD_LOGIC_VECTOR(31 downto 0);
        memwrite  : out STD_LOGIC
    );
end Main_Module;

architecture Behavioral of Main_Module is
    signal pc        : STD_LOGIC_VECTOR(31 downto 0);
    signal instr     : STD_LOGIC_VECTOR(31 downto 0);
    signal readdata  : STD_LOGIC_VECTOR(31 downto 0);
    signal dataadrt : STD_LOGIC_VECTOR(31 downto 0);
    signal writedatat : STD_LOGIC_VECTOR(31 downto 0);
    signal memwritet : STD_LOGIC;

begin
	memwrite<=memwritet;
	dataadr<=dataadrt;
	writedata<=writedatat;
    
MIPS_Processor : entity work.mips
     port map ( clk => clk,
     reset => reset,
     pc => pc,
     instr => instr,
     memwrite => memwritet,
     aluout => dataadrt,
     writedata => writedatat,
     readdata  => readdata);

   
Instruction_Memory : entity work.imem
        port map (
            a  => pc(7 downto 2), 
            rd => instr);

Data_Memory : entity work.dmem
      port map ( clk => clk,
		we  => memwritet,
		a => dataadrt,
		wd => writedatat,
		rd => readdata);
end Behavioral;