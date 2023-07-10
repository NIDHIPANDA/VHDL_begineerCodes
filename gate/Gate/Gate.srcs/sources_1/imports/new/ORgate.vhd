----------------------------------------------------------------------------------
-- Create Date: 05/10/2023 09:08:33 AM
-- Module Name: ORgate - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ORgate is
   Port (   
   input1: in std_logic;
   input2: in std_logic;
   output1: out std_logic
   );
end ORgate;

architecture Behavioral of ORgate is

begin

OrgateProcess: process(input1,input2) 
begin
if (input1 = '0' AND input2 = '0')then
output1 <= '0';
else
output1 <= '1';
end if;
end process;
end Behavioral;
