LIBRARY ieee;
use IEEE.std_logic_1164.all;

entity Tb_adder is
end entity;

architecture adder1 of Tb_adder is

component adder is
generic(n:natural:=2);
    Port ( input1 : in STD_LOGIC_VECTOR (n-1 downto 0);
           input2 : in STD_LOGIC_VECTOR (n-1 downto 0);
           resCarry : out STD_LOGIC;
           resSum: out STD_LOGIC_VECTOR(n-1 downto 0));
end component;
SIGNAL n : natural := 2;
SIGNAL input1 :  STD_LOGIC_VECTOR(n-1 downto 0);
SIGNAL input2 :  STD_LOGIC_VECTOR(n-1 downto 0);
SIGNAL resCarry :STD_LOGIC;
SIGNAL resSum:   STD_LOGIC_VECTOR(n-1 downto 0);
begin

UUT: adder port map(input1 => input1, input2 => input2, resCarry => resCarry, resSum => resSum);

stimulus: process
begin
input1 <= "00";
input2 <= "01";
wait for 10 ns;
input1 <= "01";
input2 <= "01";
wait for 10 ns;
input1 <= "01";
input2 <= "01";
wait for 10 ns;
input1 <= "10";
input2 <= "01";
wait for 10 ns;
input1 <= "11";
input2 <= "11";
wait;
end process;


end adder1;