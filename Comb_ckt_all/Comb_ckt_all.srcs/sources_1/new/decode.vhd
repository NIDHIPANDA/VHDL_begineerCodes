--------decode code in VHDL. For N input lines decoder gives (2^N) output lines. (2 to 4 decoder) 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


entity decode is
port(input1, input2: in STD_LOGIC;
output1: out STD_LOGIC_VECTOR(3 downto 0)
);
end entity;

ARCHITECTURE behavioural of decode is
begin

process(input1, input2)
variable var1: STD_LOGIC_VECTOR(1 downto 0);
begin
var1 := (input1 & input2);
case var1 is

when "00" => 
output1<= "0001";
when "01" => 
output1<= "0010";
when "10" => 
output1<= "0100";
when "11" => 
output1<= "1000";
when others => 
output1<= "XXXX";
end case;

end process;
end behavioural;