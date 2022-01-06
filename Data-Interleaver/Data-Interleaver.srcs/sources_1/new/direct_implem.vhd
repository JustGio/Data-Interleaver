

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

entity direct_implem is
  Port ( clk: in std_logic;
         rst: in std_logic;
         P_0: in std_logic_vector(7 downto 0);
         P_1: in std_logic_vector(7 downto 0);
         a: in std_logic_vector(7 downto 0):="00000001";
         P_f: out std_logic_vector(16 downto 0) );
         attribute use_dsp48: string;
         attribute use_dsp48 of P_f: signal is "yes";
end direct_implem;

architecture Behavioral of direct_implem is
signal output1, output2: std_logic_vector(16 downto 0);
signal count: integer:= 0;
begin

process (clk)
begin

if (rising_edge(clk)) then
    
    if (rst = '1') then
        count <= 0;
    else
        output1 <= std_logic_vector(resize(signed(P_0) * signed(a),17));
        output2 <= std_logic_vector(resize((127-signed(a)) * signed(P_1), 17));
    end if;
        
    P_f <= std_logic_vector(signed(output1) + signed(output2));

end if;


end process;



end Behavioral;
