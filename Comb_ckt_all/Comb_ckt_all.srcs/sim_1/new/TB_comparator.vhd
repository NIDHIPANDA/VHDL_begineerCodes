----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2023 03:42:01 PM
-- Design Name: 
-- Module Name: TB_comparator - Behavioral
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



entity TB_comparator is
--  Port ( );
end TB_comparator;

architecture Behavioral of TB_comparator is

component comp is
port(
input1:in STD_LOGIC;
input2:in STD_LOGIC;
less:out STD_LOGIC;
greater: out STD_LOGIC;
equal: out STD_LOGIC);
end component;
SIGNAL input1: STD_LOGIC;
SIGNAL input2: STD_LOGIC;
SIGNAL less: STD_LOGIC;
SIGNAL greater:  STD_LOGIC;
SIGNAL equal:  STD_LOGIC;

begin

UUT: comp port map (input1 => input1, input2 => input2, less => less, greater => greater, equal=> equal);

stimulus: process
begin
input1 <= '0';
input2 <= '0';
wait for 10 ns;
input1 <= '0';
input2 <= '1';
wait for 10 ns;
input1 <= '1';
input2 <= '1';
wait for 10 ns;
input1 <= '1';
input2 <= '0';
wait;
end process;
end Behavioral;
