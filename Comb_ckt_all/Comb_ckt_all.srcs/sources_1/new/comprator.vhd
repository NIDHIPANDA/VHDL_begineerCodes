----------- Comparator in VHDL 11 MAY *12.46 PM)

library IEEE;
use IEEE.std_logic_1164.all;

entity comp is
port(
input1:in STD_LOGIC;
input2:in STD_LOGIC;
less:out STD_LOGIC;
greater: out STD_LOGIC;
equal: out STD_LOGIC);
end entity;

Architecture behavioural of comp is 
begin
proc: process(input1, input2)begin
    if(input1 > input2)then
        greater <= '1';
        less <= '0';
        equal <= '0';
    elsif(input1 < input2) then
        greater <= '0';
        less <= '1';
        equal <= '0';
    else
        greater <= '0';
        less <= '0';
        equal <= '1'; 
    end if;    
end process;

end behavioural;
