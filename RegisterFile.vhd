library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


use IEEE.NUMERIC_STD.ALL;
use work.MyPackage.all;

entity RegisterFile is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  reset:in STD_LOGIC
			  );
end RegisterFile;
architecture Behavioral of RegisterFile is
    type reg_array is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0);  
    signal register_outputs : reg_array := (others => (others => '0'));  
	  

    type dec_array is array (0 to 31) of STD_LOGIC;
    signal dec_out          : dec_array;  
	 
	 
begin

    
    Decoder_inst: Decoder_1_to_32
        port map (
            sel => write_sel,  
            Y0  => dec_out(0),
            Y1  => dec_out(1),
            Y2  => dec_out(2),
            Y3  => dec_out(3),
            Y4  => dec_out(4),
            Y5  => dec_out(5),
            Y6  => dec_out(6),
            Y7  => dec_out(7),
            Y8  => dec_out(8),
            Y9  => dec_out(9),
            Y10 => dec_out(10),
            Y11 => dec_out(11),
            Y12 => dec_out(12),
            Y13 => dec_out(13),
            Y14 => dec_out(14),
            Y15 => dec_out(15),
            Y16 => dec_out(16),
            Y17 => dec_out(17),
            Y18 => dec_out(18),
            Y19 => dec_out(19),
            Y20 => dec_out(20),
            Y21 => dec_out(21),
            Y22 => dec_out(22),
            Y23 => dec_out(23),
            Y24 => dec_out(24),
            Y25 => dec_out(25),
            Y26 => dec_out(26),
            Y27 => dec_out(27),
            Y28 => dec_out(28),
            Y29 => dec_out(29),
            Y30 => dec_out(30),
            Y31 => dec_out(31)
        );

    

   
 REG0: Register0
        generic map (n => 32)  
        port map (
            D    => (others => '0'),  
            Q    => register_outputs(0),  
            clk  => clk,             
            rst  => reset,             
            load => '0'              
        );
   

   
    gen_reg: for i in 1 to 31 generate
        REG: Registers
            generic map (n => 32)  
            port map (
                D    => write_data,          
                Q    => register_outputs(i),      
                clk  => clk,                 
                rst  => reset,                 
                load => dec_out(i) and write_ena  
            );
    end generate;



    
    MUX1: MUX_32_V2
        port map (
            I0 => register_outputs(0),
            I1 => register_outputs(1),
            I2 => register_outputs(2),
            I3 => register_outputs(3),
            I4 => register_outputs(4),
            I5 => register_outputs(5),
            I6 => register_outputs(6),
            I7 => register_outputs(7),
            I8 => register_outputs(8),
            I9 => register_outputs(9),
            I10 => register_outputs(10),
            I11 => register_outputs(11),
            I12 => register_outputs(12),
            I13 => register_outputs(13),
            I14 => register_outputs(14),
            I15 => register_outputs(15),
            I16 => register_outputs(16),
            I17 => register_outputs(17),
            I18 => register_outputs(18),
            I19 => register_outputs(19),
            I20 => register_outputs(20),
            I21 => register_outputs(21),
            I22 => register_outputs(22),
            I23 => register_outputs(23),
            I24 => register_outputs(24),
            I25 => register_outputs(25),
            I26 => register_outputs(26),
            I27 => register_outputs(27),
            I28 => register_outputs(28),
            I29 => register_outputs(29),
            I30 => register_outputs(30),
            I31 => register_outputs(31),
            sel => read_sel1,  
            Y   => data1       
        );

    
    MUX2: MUX_32_V2
        port map (
            I0 => register_outputs(0),
            I1 => register_outputs(1),
            I2 => register_outputs(2),
            I3 => register_outputs(3),
            I4 => register_outputs(4),
            I5 => register_outputs(5),
            I6 => register_outputs(6),
            I7 => register_outputs(7),
            I8 => register_outputs(8),
            I9 => register_outputs(9),
            I10 => register_outputs(10),
            I11 => register_outputs(11),
            I12 => register_outputs(12),
            I13 => register_outputs(13),
            I14 => register_outputs(14),
            I15 => register_outputs(15),
            I16 => register_outputs(16),
            I17 => register_outputs(17),
            I18 => register_outputs(18),
            I19 => register_outputs(19),
            I20 => register_outputs(20),
            I21 => register_outputs(21),
            I22 => register_outputs(22),
            I23 => register_outputs(23),
            I24 => register_outputs(24),
            I25 => register_outputs(25),
            I26 => register_outputs(26),
            I27 => register_outputs(27),
            I28 => register_outputs(28),
            I29 => register_outputs(29),
            I30 => register_outputs(30),
            I31 => register_outputs(31),
            sel => read_sel2,  
            Y   => data2       
        );

end Behavioral;
