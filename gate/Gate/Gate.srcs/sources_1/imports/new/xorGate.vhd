----------------------------------------------------------------------------------
-- Create Date: 05/10/2023 09:12:54 AM
-- Module Name: xorGate - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity xorGate is
  Port (
  input1 : in STD_LOGIC;
  input2 : in STD_LOGIC;
  output1: out STD_LOGIC
   );
end xorGate;

architecture Behavioral of xorGate is

begin

process(input1, input2)
begin
    if((input1 = '1' and input2 = '1') OR (input1 = '0' and input2 = '0')) then
        output1 <= '0';
     else
        output1 <= '1';
    end if;
end process;
end Behavioral;
