----------------------------------------------------------------------------------
-- Create Date: 05/12/2023 10:36:58 AM
-- Module Name: TBmux - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TBmux is
--  Port ( );
end TBmux;

architecture Behavioral of TBmux is

component MUX IS
PORT(
    in1,in2,in3,in4: in STD_LOGIC;
    sel: in STD_LOGIC_VECTOR(1 downto 0);
    out1: out STD_LOGIC
     );
END component;
SIGNAl in1,in2,in3,in4:  STD_LOGIC;
SIGNAl sel:  STD_LOGIC_VECTOR(1 downto 0);
SIGNAl out1: STD_LOGIC;
begin

UUT: MUX port map (in1,in2,in3,in4,sel,out1);

process
begin
    in1 <= '0';
    in2 <= '0';
    in3 <= '1';
    in4 <= '0';
    sel <= "00";
    wait for 10 ns;
    in1 <= '0';
    in2 <= '0';
    in3 <= '1';
    in4 <= '1';
    sel <= "00";
    wait for 10 ns;
    in1 <= '0';
    in2 <= '0';
    in3 <= '1';
    in4 <= '1';
    sel <= "01";
    wait for 10 ns;
    in1 <= '0';
    in2 <= '1';
    in3 <= '1';
    in4 <= '1';
    sel <= "10";
    wait for 10 ns;
    in1 <= '1';
    in2 <= '0';
    in3 <= '1';
    in4 <= '1';
    sel <= "01";
    wait for 10 ns;
    in1 <= '1';
    in2 <= '1';
    in3 <= '1';
    in4 <= '1';
    sel <= "11";
    wait;
    
end process;

end Behavioral;
