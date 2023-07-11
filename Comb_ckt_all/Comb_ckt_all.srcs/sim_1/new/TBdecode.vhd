----------------------------------------------------------------------------------
-- Create Date: 05/30/2023 07:53:56 AM
-- Module Name: TBdecode - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TBdecode is
--  Port ( );
end TBdecode;

architecture Behavioral of TBdecode is
component decode is
port(input1, input2: in STD_LOGIC;
output1: out STD_LOGIC_VECTOR(3 downto 0)
);
end component;
SIGNAL input1, input2:  STD_LOGIC;
SIGNAL output1: STD_LOGIC_VECTOR(3 downto 0);
begin

UUT: decode port map (input1=> input1, input2=> input2, output1 => output1);

stimulus: process
begin
    input1 <= '0';
    input2 <= '0';
    wait for 10 ns;
    input1 <= '0';
    input2 <= '1';
    wait for 10 ns;
    input1 <= '1';
    input2 <= '0';
    wait for 10 ns;
    input1 <= '1';
    input2 <= '1';
    wait for 10 ns;
    input1 <= '0';
    input2 <= '1';
    wait for 10 ns;
    input1 <= '1';
    input2 <= '0';
    wait ;
end process;
end Behavioral;
