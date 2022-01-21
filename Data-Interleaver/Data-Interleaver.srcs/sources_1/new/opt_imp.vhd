library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity opt_imp is
  Port ( clk: in std_logic;
         rst: in std_logic;
         a: in std_logic_vector(7 downto 0):="00000001";
         P_0: in std_logic_vector(7 downto 0);
         P_1: in std_logic_vector(7 downto 0);
         P_f: out std_logic_vector(16 downto 0)
          );
end opt_imp;

architecture Behavioral of opt_imp is

component clk_wiz_0 is
port
 (
  clk_out1          : out    std_logic;
  clk_out2          : out    std_logic;
  clk_in1           : in     std_logic;
  reset : in STD_LOGIC;
  locked : out STD_LOGIC
  
 );
end component clk_wiz_0;

--clock manager outputs
signal clk_1x : std_logic := '0';
signal clk_2x : std_logic := '0';

--controlled under clk_1x
signal mux1 : std_logic := '0';
signal s0: std_logic_vector(7 downto 0);
signal s1: std_logic_vector(7 downto 0);
signal a_reg: std_logic_vector(7 downto 0);
signal one_minus_alpha: std_logic_vector(7 downto 0);
signal a0: std_logic_vector(7 downto 0);
signal b0: std_logic_vector(7 downto 0);

--controlled under clk_2x
signal mux2 : std_logic := '0';
signal mult_reg : std_logic_vector(15 downto 0);
signal add_reg  : std_logic_vector(16 downto 0);
signal out_reg  : std_logic_vector(16 downto 0);
signal a_ff        : std_logic_vector(7 downto 0);
signal b_ff        : std_logic_vector(7 downto 0);

signal locked: std_logic:='1';

--Force to use DSP 
attribute  use_dsp48             : string;
attribute  use_dsp48 of mult_reg : signal is "yes";

begin
clk_manager: clk_wiz_0 port map (clk_out1=>clk_1x, clk_out2=>clk_2x, clk_in1=>clk, reset=>'0', locked=>locked);


clk_1x_process: process(clk_1x,rst)
begin 
    if rising_edge(clk_1x) then
        if(rst = '1') then
            s0 <= (others => '0');
            s1 <= (others => '0');
            out_reg <= (others => '0');
            a_reg <= (others => '0'); 
            one_minus_alpha <= (others => '0');
            mux1 <= '0';
        else
            a_reg <= a;
            one_minus_alpha <= std_logic_vector((127 - signed(a)));
            s0 <= p_0;
            s1 <= p_1;
            out_reg <= add_reg;
            mux1 <= not mux1;
        end if;
        end if;
 end process; 
 
 clk_2x_process: process(clk_2x)
 begin
     if rising_edge(clk_2x) then
        if(rst = '1') then
            a_ff <= (others => '0');
            b_ff <= (others => '0');
            add_reg <= (others => '0');
            mult_reg <= (others => '0');
            mux2 <= '0';
        else
            a_ff <= a0;
            b_ff <= b0;
            mult_reg <= std_logic_vector(to_unsigned(to_integer(signed(a_ff))*to_integer(signed(b_ff)),16));
            
                if(mux2 = '0') then
                     add_reg <= std_logic_vector(to_unsigned(to_integer(signed(mult_reg))+0,17));
                 else 
                     add_reg <= std_logic_vector(to_unsigned(to_integer(signed(mult_reg))+to_integer(signed(add_reg)),17));
                 end if;
                 
            mux2 <= not mux2;
        end if;
    end if;
end process;

a0 <= s0 when mux1 = '0' else s1 when mux1 = '1';
b0 <= a_reg when mux1 = '0' else one_minus_alpha when mux1 = '1';
P_f <= out_reg;
end Behavioral;
