----------------------------------------------------------------------------------
-- Create Date: 05/10/2023 09:13:26 AM
-- Module Name: inverter - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity inverter is
  Port (
  input1: in STD_LOGIC;
  output1: out STD_LOGIC
   );
end inverter;

architecture Behavioral of inverter is

begin

process(input1)
begin
    if(input1 = '1') then
        output1 <= '0';
    else
        output1 <= '1';
    end if;
end process;

end Behavioral;
