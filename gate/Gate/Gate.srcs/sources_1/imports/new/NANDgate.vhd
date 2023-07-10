----------------------------------------------------------------------------------
-- Create Date: 05/10/2023 09:14:34 AM
-- Module Name: NANDgate - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY nandGate is
port(
input1: in STD_LOGIC;
input2: in STD_LOGIC;
output1: out STD_LOGIC
);
end entity;

ARCHITECTURE behaviour of NandGate is
begin

NANADprocess: process(input1, input2)
begin
    if (input1 = '1' and input2 ='1') then
        output1 <= '0';
    else
        output1 <= '1';
    end if;        
end process;
end behaviour; 