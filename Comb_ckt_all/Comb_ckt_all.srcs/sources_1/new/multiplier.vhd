--------------------------------------------------------
-- Example of doing multiplication showing
-- (1) how to use variable with in process
-- (2) how to use for loop statement
-- (3) algorithm of multiplication
--
-- by Weijun Zhang, 05/2001
--------------------------------------------------------
LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity multiplier is
port(
int1,int2: in STD_LOGIC_VECTOR(1 downto 0);
resMul: out STD_LOGIC_VECTOR(3 downto 0));
end entity;

architecture behavioural of multiplier is
begin
proc: process(int1,int2)
variable res: STD_LOGIC_VECTOR(5 downto 0); 
variable num1reg: STD_LOGIC_VECTOR(2 downto 0); 
begin

num1reg := '0' & int1;
res := "0000" & int2;

 -- use variables doing computation
  -- algorithm is to repeat shifting/adding
  for i in 1 to 3 loop
    if res(0)='1' then
	  res(5 downto 3) := res(5 downto 3) + num1reg(2 downto 0);
	end if;
	res(5 downto 0) := '0' & res(5 downto 1);
  end loop;
  
  -- assign the result of computation back to output signal
  resMul <= res(3 downto 0);
end process;
end  behavioural;