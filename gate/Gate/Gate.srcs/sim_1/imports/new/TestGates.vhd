----------------------------------------------------------------------------------
-- Create Date: 05/10/2023 05:03:34 PM
-- Module Name: TestGates - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TestGates is
--  Port ( );
end TestGates;

architecture Behavioral of TestGates is

component NORgate is
port(
input1: in STD_LOGIC;
input2: in STD_LOGIC;
output1: out STD_LOGIC
);
end component;

component ANDGATE is
port(

input1: in std_logic;
input2: in std_logic;
output1 : out std_logic
);
end component;

component ORgate is
   Port (   
   input1: in std_logic;
   input2: in std_logic;
   output1: out std_logic
   );
end component;

component xorGate is
  Port (
  input1 : in STD_LOGIC;
  input2 : in STD_LOGIC;
  output1: out STD_LOGIC
   );
end component;

component XNORgate is
  Port (
input1 : in STD_LOGIC;
input2 : in STD_LOGIC;
output1: out STD_LOGIC
 );
end component;

component nandGate is
port(
input1: in STD_LOGIC;
input2: in STD_LOGIC;
output1: out STD_LOGIC
);
end component;

component inverter is
  Port (
  input1: in STD_LOGIC;
  output1: out STD_LOGIC
   );
end component;

SIGNAL input1:STD_LOGIC;
SIGNAL input2:STD_LOGIC;
SIGNAL outputOR:STD_LOGIC;
SIGNAL outputAND:STD_LOGIC;
SIGNAL outputNAND:STD_LOGIC;
SIGNAL outputNOR:STD_LOGIC;
SIGNAL outputXOR:STD_LOGIC;
SIGNAL outputXNOR:STD_LOGIC;
SIGNAL outputNOT:STD_LOGIC;


begin
gate_OR:   ORgate port map (input1 => input1, input2 => input2, output1 => outputOR);
gate_AND:  ANDGATE port map (input1 => input1, input2 => input2, output1 => outputAND);
gate_NAND: nandGate port map (input1 => input1, input2 => input2, output1 => outputNAND);
gate_NOR:  NORgate port map (input1 => input1, input2 => input2, output1 => outputNOR);
gate_XOR:  xorGate port map (input1 => input1, input2 => input2, output1 => outputXOR);
gate_XNOR: XNORgate port map (input1 => input1, input2 => input2, output1 => outputXNOR);
gate_NOT:  inverter port map (input1 => input1, output1 => outputNOT);

process
begin
    input1 <= '0';
    input2 <= '0';
    wait for 10 ns;
    input1 <= '1';
    input2 <= '0';
    wait for 10 ns;
    input1 <= '0';
    input2 <= '1';
    wait for 10 ns;
    input1 <= '1';
    input2 <= '1';
    wait for 10 ns;
    input1 <= '0';
    input2 <= '1';
    wait;
    
    
end process;
end Behavioral;
