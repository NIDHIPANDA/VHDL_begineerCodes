----------------------------------------------------------------------------------
-- Create Date: 05/10/2023 09:13:54 AM
-- Module Name: NORgate - Behavioral
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NORgate is
port(
input1: in STD_LOGIC;
input2: in STD_LOGIC;
output1: out STD_LOGIC
);
end entity;

Architecture behavioural of NorGate is
begin

processTitle: process(input1, input2)
begin
    if(input1 ='0' and input2 = '0') then
        output1 <= '1';
    else
        output1 <= '0';
    end if;
end process;
end behavioural;