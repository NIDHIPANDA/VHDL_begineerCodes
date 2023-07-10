----------------------------------------------------------------------------------
-- Create Date: 05/11/2023 12:51:09 AM
-- Module Name: TestComb_ckt - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity TestComb_ckt is
end TestComb_ckt;

architecture Behavioral of TestComb_ckt is
component combCkt is
Port( input1 : in STD_LOGIC;
      input2 : in STD_LOGIC;
      input3 : in STD_LOGIC;
      output1 : out STD_LOGIC);
end component;

SIGNAL in1:STD_LOGIC; 
SIGNAL in2:STD_LOGIC; 
SIGNAL in3:STD_LOGIC; 
SIGNAL out1:STD_LOGIC; 
begin

UUT: combCkt port map(input1 => in1, input2 => in2, input3 =>in3, output1 => out1);

process
begin
in1 <= '0';
in2<= '0';
in3 <= '0';
wait for 10 ns;

in1 <= '0';
in2<= '0';
in3 <= '1';
wait for 10 ns;

in1 <= '0';
in2<= '1';
in3 <= '0';
wait for 10 ns;

in1 <= '1';
in2<= '0';
in3 <= '0';
wait for 10 ns;

in1 <= '1';
in2<= '1';
in3 <= '1';
wait for 10 ns;

in1 <= '1';
in2<= '1';
in3 <= '0';
wait for 10 ns;

in1 <= '0';
in2<= '1';
in3 <= '1';
wait for 10 ns;

in1 <= '1';
in2<= '0';
in3 <= '1';
wait;
end process;

end Behavioral;
