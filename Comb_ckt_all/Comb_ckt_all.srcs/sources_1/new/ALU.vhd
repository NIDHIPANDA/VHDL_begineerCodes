---------- ALU design in VHDL. This code do the addition, subtraction via 2's compliment method and 
-------AND  and OR gate implementation.

LIBRARY IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all; 

entity ALUckt is
port(
in1,in2: in std_logic_vector(1 downto 0);
sel: in std_logic_vector(1 downto 0);
out1: out std_logic_vector(1 downto 0));
end entity;

ARCHITECTURE behavioural of ALUckt is
begin
process(in1,in2,sel)
begin
    case sel is
    when "00"=>
    out1 <= in1 + in2; ----------addition operation
    when"01" =>
    out1 <=  in1 + not(in2)+1; ----------substraction via 2's compliment method, carry is ignored
    when"10" =>
    out1 <= in1 OR in2;
    when"11"=>
    out1 <= in1 AND in2;
    when others =>
    out1 <= "XX";
    end case;   

end process;
end behavioural;
