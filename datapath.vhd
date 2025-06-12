library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.MyPackage.all;

entity datapath is
    Port (
        clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
		  memtoreg, pcsrc: in STD_LOGIC;
		  alusrc, regdst: in STD_LOGIC;
		  jump: in STD_LOGIC;
        instr      : in  STD_LOGIC_VECTOR(31 downto 0);
        alucontrol : in STD_LOGIC_VECTOR(3 downto 0);
        regwrite   : in  STD_LOGIC;
        zero       : out STD_LOGIC;
		  pc: buffer STD_LOGIC_VECTOR(31 downto 0);
        aluout, writedata     : buffer STD_LOGIC_VECTOR(31 downto 0);
		  readdata: in STD_LOGIC_VECTOR(31 downto 0)
    );
end datapath;

architecture Behavioral of datapath is
    
    signal reg_read_data1 : STD_LOGIC_VECTOR(31 downto 0);
    signal reg_read_data2 : STD_LOGIC_VECTOR(31 downto 0);
    signal reg_write_data : STD_LOGIC_VECTOR(31 downto 0);
    signal reg_read_addr1 : STD_LOGIC_VECTOR(4 downto 0); -- rs
    signal reg_read_addr2 : STD_LOGIC_VECTOR(4 downto 0); -- rt
    signal reg_write_addr : STD_LOGIC_VECTOR(4 downto 0); -- rd
	 signal write_reg : STD_LOGIC_VECTOR(4 downto 0); -- mux out
	 signal pc_in, pc_out,pc_plus4,pc_brunch, pc_brunch2,alu_out, se_imm, alu_in, jumpaddr , shifted: STD_LOGIC_VECTOR(31 downto 0);
begin
    
    regfile_inst : entity work.RegisterFile
        port map (
            read_sel1  => reg_read_addr1,  
            read_sel2  => reg_read_addr2,  
            write_sel  => write_reg,  
            write_ena  => regwrite,        
            clk        => clk,             
            write_data => reg_write_data,  
            data1      => reg_read_data1,  
            data2      => reg_read_data2,
				reset=>reset
				
        );

    
    alu_inst : entity work.ALU
        port map (
            data1    => reg_read_data1,   
            data2    => alu_in,   
            aluop    => alucontrol,     
            dataout  => alu_out,           
            zflag    => zero
        );

    
	 se : signExtend port map (instr(15 downto 0), se_imm);
	 rewrite_mux : MUX_2 generic map (5) port map (reg_read_addr2, reg_write_addr, regdst, write_reg );
 	 alu_input_mux : MUX_2 generic map (32) port map (reg_read_data2, se_imm, alusrc, alu_in );
	 writeDataMux : MUX_2 generic map (32) port map (alu_out, readdata, memtoreg, reg_write_data );
	 
	 pcregister : Registers generic map (32) port map (pc_in, pc_out, clk, reset ,'1' );
	 pcAdder : Adder port map (pc_out, x"00000004", pc_plus4);
	 jumpaddr <= pc_plus4 (31 downto 28) & instr (25 downto 0) & "00";
	 shiftleft2 : SL2 generic map (32) port map (se_imm, shifted);
	 brunchAdder : Adder port map (pc_plus4, shifted, pc_brunch);
	 pcBrunchMUX : MUX_2 generic map (32) port map (pc_plus4, pc_brunch, pcsrc, pc_brunch2 );
	 pcJumpMUX : MUX_2 generic map (32) port map (pc_brunch2, jumpaddr, jump, pc_in );


	 
    reg_read_addr1 <= instr(25 downto 21); 
    reg_read_addr2 <= instr(20 downto 16); 
    reg_write_addr <= instr(15 downto 11); 
    writedata <= reg_read_data2;
		aluout <= alu_out;
		pc <= pc_out;
end Behavioral;