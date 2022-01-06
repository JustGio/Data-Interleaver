----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/05/2022 10:25:10 PM
-- Design Name: 
-- Module Name: direct_imp_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity direct_imp_tb is
--  Port ( );
end direct_imp_tb;

architecture Behavioral of direct_imp_tb is
component direct_implem is
Port ( clk: in std_logic;
         rst: in std_logic;
         P_0: in std_logic_vector(7 downto 0);
         P_1: in std_logic_vector(7 downto 0);
         a: in std_logic_vector(7 downto 0):="00000001";
         P_f: out std_logic_vector(16 downto 0) );
end component direct_implem;
type data_array is array(0 to 119) of integer;

signal clk_tb, rst_tb: std_logic;
signal P_0_tb, P_1_tb, a_tb: std_logic_vector(7 downto 0);
signal P_f_tb: std_logic_vector(16 downto 0);
constant CLK_P: time:= 12.5ns;
signal count, count_s: integer:=0;
signal switch: std_logic:='0';

begin

uut: direct_implem port map (clk=>clk_tb, rst=>rst_tb, P_0=>P_0_tb, P_1=>P_1_tb, a=>a_tb, P_f=>P_f_tb);

process(clk_tb)
begin
    if (rising_edge(clk_tb)) then
        if (count = 119) then
             count <= 0;
        else
            count <= count + 1;
        end if;
    end if;
end process;


process (clk_tb)
begin
    if (rising_edge(clk_tb)) then
        if (count_s = 239) then
            switch <= not switch;
            count_s <= 0;
        else
            count_s <= count_s + 1;
        end if;
    end if;
end process;


process (clk_tb)
variable sin_wave_a1: data_array:=(0,6,13,20,26,33,39,45,52,58,64,69,75,80,85,90,95,99,103,107,110,114,116,119,121,123,125,126,127,127,127,
127,127,126,125,123,121,119,116,114,110,107,103,99,95,90,85,80,75,69,64,58,52,45,39,33,26,20,13,6,
0,-7,-14,-21,-27,-34,-40,-46,-53,-59,-64,-70,-76,-81,-86,-91,-96,-100,-104,-108,-111,-115,-117,-120,
-122,-124,-126,-127,-128,-128,-128,-128,-128,-127,-126,-124,-122,-120,-117,-115,-111,-108,-104,-100,-96,-91,
-86,-81,-76,-70,-65,-59,-53,-46,-40,-34,-27,-21,-14,-7);
begin
if (rising_edge(clk_tb)) then
    P_0_tb <= std_logic_vector(to_signed(sin_wave_a1(count),8));
end if;
end process;

process (clk_tb)
variable sin_wave_a_half: data_array:=(0,3,6,10,13,16,19,22,26,29,32,34,37,40,42,45,47,49,51,53,55,57,58,59,60,61,62,63,63,63,64,63,63,63,62,61,60,59,58,57
,55,53,51,49,47,45,42,40,37,34,32,29,26,22,19,16,13,10,6,3,0,-4,-7,-11,-14,-17,-20,-23,-27,-30,-32,-35,-38,-41,-43,-46,-48,-50,-52,-54,
-56,-58,-59,-60,-61,-62,-63,-64,-64,-64,-64,-64,-64,-64,-63,-62,-61,-60,-59,-58,
-56,-54,-52,-50,-48,-46,-43,-41,-38,-35,-32,-30,-27,-23,-20,-17,-14,-11,-7,-4);
begin
if (rising_edge(clk_tb)) then
    P_1_tb <= std_logic_vector(to_signed(sin_wave_a_half(count),8));
end if;
end process;


process(clk_tb)
begin
    if (rising_edge(clk_tb)) then
        if (switch = '1') then
            a_tb <= "01111111"; --alpha = 127
        else
            a_tb <= (others => '0'); --alpha = 0
         end if;
    end if;

end process;

process
begin
rst_tb<='1';
wait for CLK_P;
rst_tb<='0';
wait;

end process;



process
begin
clk_tb <= '0';
wait for CLK_P/2;
clk_tb<='1';
wait for CLK_P/2;

end process;

end Behavioral;
