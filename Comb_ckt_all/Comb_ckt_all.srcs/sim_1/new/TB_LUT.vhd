----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/12/2023 11:37:00 AM
-- Design Name: 
-- Module Name: TB_LUT - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_LUT is
--  Port ( );
end TB_LUT;

architecture Behavioral of TB_LUT is
component ALUckt is
port(
in1,in2: in std_logic_vector(1 downto 0);
sel: in std_logic_vector(1 downto 0);
out1: out std_logic_vector(1 downto 0));
end component;
SIGNAL in1,in2:  std_logic_vector(1 downto 0);
SIGNAL sel:  std_logic_vector(1 downto 0);
SIGNAL out1: std_logic_vector(1 downto 0);

begin

UUT: ALUckt port map(in1,in2,sel,out1);

process
begin
    in1 <= "00";
    in2 <= "00";
    sel <= "00";
    wait for 10 ns;
    in1 <= "01";
    in2 <= "01";
    sel <= "11";
    wait for 10 ns;
    in1 <= "10";
    in2 <= "10";
    sel <= "10";
    wait for 10 ns;
    in1 <= "11";
    in2 <= "11";
    sel <= "01";
    wait for 10 ns;
    in1 <= "10";
    in2 <= "01";
    sel <= "10";
    wait for 10 ns;
    in1 <= "01";
    in2 <= "10";
    sel <= "00";
    wait;
    
end process;

end Behavioral;
