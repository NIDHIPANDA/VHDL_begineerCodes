----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/30/2023 08:02:20 AM
-- Design Name: 
-- Module Name: TBmultiplier - Behavioral
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


entity TBmultiplier is
--  Port ( );
end TBmultiplier;

architecture Behavioral of TBmultiplier is
component multiplier is
port(
int1,int2: in STD_LOGIC_VECTOR(1 downto 0);
resMul: out STD_LOGIC_VECTOR(3 downto 0));
end component;

SIGNAL int1,int2:  STD_LOGIC_VECTOR(1 downto 0);
SIGNAL resMul:  STD_LOGIC_VECTOR(3 downto 0);

begin

UUT: multiplier port map (int1, int2, resMul);

stimulus: process
begin
    int1 <= "00";
    int2 <= "00";
    wait for 10 ns;
    int1 <= "00";
    int2 <= "01";
    wait for 10 ns;
    int1 <= "10";
    int2 <= "01";
    wait for 10 ns;
    int1 <= "10";
    int2 <= "01";
    wait for 10 ns;
    int1 <= "11";
    int2 <= "11";
    wait for 10 ns;
    int1 <= "10";
    int2 <= "10";
    wait for 10 ns;
    int1 <= "10";
    int2 <= "10";
    wait for 10 ns;
        

    
    
end process;

end Behavioral;
