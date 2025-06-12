library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MyPackage is

component Decoder_1_to_32
  Port (
        sel : in  STD_LOGIC_VECTOR(4 downto 0);  -- 5-bit selection input
        Y0  : out STD_LOGIC;
        Y1  : out STD_LOGIC;
        Y2  : out STD_LOGIC;
        Y3  : out STD_LOGIC;
        Y4  : out STD_LOGIC;
        Y5  : out STD_LOGIC;
        Y6  : out STD_LOGIC;
        Y7  : out STD_LOGIC;
        Y8  : out STD_LOGIC;
        Y9  : out STD_LOGIC;
        Y10 : out STD_LOGIC;
        Y11 : out STD_LOGIC;
        Y12 : out STD_LOGIC;
        Y13 : out STD_LOGIC;
        Y14 : out STD_LOGIC;
        Y15 : out STD_LOGIC;
        Y16 : out STD_LOGIC;
        Y17 : out STD_LOGIC;
        Y18 : out STD_LOGIC;
        Y19 : out STD_LOGIC;
        Y20 : out STD_LOGIC;
        Y21 : out STD_LOGIC;
        Y22 : out STD_LOGIC;
        Y23 : out STD_LOGIC;
        Y24 : out STD_LOGIC;
        Y25 : out STD_LOGIC;
        Y26 : out STD_LOGIC;
        Y27 : out STD_LOGIC;
        Y28 : out STD_LOGIC;
        Y29 : out STD_LOGIC;
        Y30 : out STD_LOGIC;
        Y31 : out STD_LOGIC
    );
end component;

component MUX_32_V2
     Port (
        I0  : in  STD_LOGIC_VECTOR (31 downto 0);
        I1  : in  STD_LOGIC_VECTOR (31 downto 0);
        I2  : in  STD_LOGIC_VECTOR (31 downto 0);
        I3  : in  STD_LOGIC_VECTOR (31 downto 0);
        I4  : in  STD_LOGIC_VECTOR (31 downto 0);
        I5  : in  STD_LOGIC_VECTOR (31 downto 0);
        I6  : in  STD_LOGIC_VECTOR (31 downto 0);
        I7  : in  STD_LOGIC_VECTOR (31 downto 0);
        I8  : in  STD_LOGIC_VECTOR (31 downto 0);
        I9  : in  STD_LOGIC_VECTOR (31 downto 0);
        I10 : in  STD_LOGIC_VECTOR (31 downto 0);
        I11 : in  STD_LOGIC_VECTOR (31 downto 0);
        I12 : in  STD_LOGIC_VECTOR (31 downto 0);
        I13 : in  STD_LOGIC_VECTOR (31 downto 0);
        I14 : in  STD_LOGIC_VECTOR (31 downto 0);
        I15 : in  STD_LOGIC_VECTOR (31 downto 0);
        I16 : in  STD_LOGIC_VECTOR (31 downto 0);
        I17 : in  STD_LOGIC_VECTOR (31 downto 0);
        I18 : in  STD_LOGIC_VECTOR (31 downto 0);
        I19 : in  STD_LOGIC_VECTOR (31 downto 0);
        I20 : in  STD_LOGIC_VECTOR (31 downto 0);
        I21 : in  STD_LOGIC_VECTOR (31 downto 0);
        I22 : in  STD_LOGIC_VECTOR (31 downto 0);
        I23 : in  STD_LOGIC_VECTOR (31 downto 0);
        I24 : in  STD_LOGIC_VECTOR (31 downto 0);
        I25 : in  STD_LOGIC_VECTOR (31 downto 0);
        I26 : in  STD_LOGIC_VECTOR (31 downto 0);
        I27 : in  STD_LOGIC_VECTOR (31 downto 0);
        I28 : in  STD_LOGIC_VECTOR (31 downto 0);
        I29 : in  STD_LOGIC_VECTOR (31 downto 0);
        I30 : in  STD_LOGIC_VECTOR (31 downto 0);
        I31 : in  STD_LOGIC_VECTOR (31 downto 0);
        sel : in  STD_LOGIC_VECTOR (4 downto 0);    -- 5-bit select signal
        Y   : out STD_LOGIC_VECTOR (31 downto 0)   -- 32-bit output
    );
end component;

component Registers
 generic(
        n: NATURAL := 32  -- Width of the register
    );
    port(
        D    : in  STD_LOGIC_VECTOR(n-1 downto 0);  -- Data input
        Q    : out STD_LOGIC_VECTOR(n-1 downto 0);  -- Data output
        clk  : in  STD_LOGIC;                       -- Clock signal
        rst  : in  STD_LOGIC;                       -- Reset signal (active high)
        load : in  STD_LOGIC                        -- Load enable signal
    );
end component;

component Register0
generic(
        n: NATURAL := 32
		  );
port(
		  D    : in  STD_LOGIC_VECTOR(n-1 downto 0);  -- Data input
        Q    : out STD_LOGIC_VECTOR(n-1 downto 0);  -- Data output
        clk  : in  STD_LOGIC;                       -- Clock signal
        rst  : in  STD_LOGIC;
		  load : in STD_LOGIC
		  );
end component;
	
component SL2
generic(
        n: NATURAL := 32
		  );
port(	  I : in  STD_LOGIC_VECTOR (n-1 downto 0);
        O : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component signExtend
port(	  I : in  STD_LOGIC_VECTOR (15 downto 0);
        O : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component MUX_2
generic(
        n: NATURAL := 32
		  );
port(	 data1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           data2 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           selector : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component Adder
port(	 I1 : in  STD_LOGIC_VECTOR (31 downto 0);
           I2 : in  STD_LOGIC_VECTOR (31 downto 0);
           dataout : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

end MyPackage;