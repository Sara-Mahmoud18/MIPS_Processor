library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.MyPackage2.all;

entity mips is
	port( clk, reset: in STD_LOGIC;
	instr: in STD_LOGIC_VECTOR(31 downto 0);
	readdata: in STD_LOGIC_VECTOR(31 downto 0);
	pc: out STD_LOGIC_VECTOR(31 downto 0);
	memwrite: out STD_LOGIC;
	aluout, writedata: buffer STD_LOGIC_VECTOR(31 downto 0));
end mips;

architecture Behavioral of mips is


signal zero       : STD_LOGIC;
signal memtoreg   : STD_LOGIC;
signal pcsrc      : STD_LOGIC;
signal alusrc     : STD_LOGIC;
signal regdst     : STD_LOGIC;
signal regwrite   : STD_LOGIC;
signal jump       : STD_LOGIC;
signal alucontrol : STD_LOGIC_VECTOR(3 downto 0);
signal pc_signal, alu_out, write_data : STD_LOGIC_VECTOR(31 downto 0);
begin

datapath : entity work.datapath
    port map (
        clk        => clk,
        reset      => reset,
        memtoreg   => memtoreg,
        pcsrc      => pcsrc,
        alusrc     => alusrc,
        regdst     => regdst,
        regwrite   => regwrite,
        jump       => jump,
        alucontrol => alucontrol,
        zero       => zero,
        pc         => pc_signal, 
        instr      => instr,
        aluout     => alu_out,
        writedata  => write_data,
        readdata   => readdata
    );

controller : entity work.Controller
    port map (
        op         => instr(31 downto 26),
        funct      => instr(5 downto 0),
        zero       => zero,
        memtoreg   => memtoreg,
        memwrite   => memwrite,
        pcsrc      => pcsrc,
        alusrc     => alusrc,
        regdst     => regdst,
        regwrite   => regwrite,
        jump       => jump,
        alucontrol => alucontrol
    );

pc <= pc_signal;
aluout <= alu_out;
writedata <= write_data;
end Behavioral;

