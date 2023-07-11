----------------------------------------------------------------------------------
-- Create Date: 05/11/2023 10:21:44 AM
-- Module Name: adder - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


entity adder is
generic(n:natural:=2);
    Port ( input1 : in STD_LOGIC_VECTOR (n-1 downto 0);
           input2 : in STD_LOGIC_VECTOR (n-1 downto 0);
           resCarry : out STD_LOGIC;
           resSum: out STD_LOGIC_VECTOR(n-1 downto 0));
end adder;

architecture Behavioral of adder is
signal res : STD_LOGIC_VECTOR(n downto 0) ;
begin

res <= ('0' & input1) + ('0' & input2);
resCarry <= res(n);
resSum <= res(n-1 downto 0);

end Behavioral;
