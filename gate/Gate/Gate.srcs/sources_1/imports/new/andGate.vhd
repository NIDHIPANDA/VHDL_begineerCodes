----------------------------------------------------------------------------------
-- Create Date: 05/10/2023 09:12:16 AM
-- Module Name: andGate - Behavioral 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
entity ANDGATE is
port(

input1: in std_logic;
input2: in std_logic;
output1 : out std_logic
);
end ANDGATE;

ARCHITECTURE behavioural of ANDGATE is
begin

process(input1, input2)
begin

if (input1 ='1' AND input2 ='1') then
    output1 <= '1';
else
    output1<= '0';
end if;    
end process;
end behavioural;

