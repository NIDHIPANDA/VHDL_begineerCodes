----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2023 09:14:59 AM
-- Design Name: 
-- Module Name: XNORgate - Behavioral
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


entity XNORgate is
  Port (
input1 : in STD_LOGIC;
input2 : in STD_LOGIC;
output1: out STD_LOGIC
 );
end XNORgate;

architecture Behavioral of XNORgate is

begin
process(input1, input2)
begin
    if((input1 = '1' and input2 = '1') OR (input1 = '0' and input2 = '0')) then
        output1 <= '1';
     else
        output1 <= '0';
    end if;
end process;

end Behavioral;
