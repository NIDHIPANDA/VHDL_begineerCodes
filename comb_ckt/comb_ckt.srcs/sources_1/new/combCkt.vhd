----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2023 12:45:54 AM
-- Design Name: 
-- Module Name: combCkt - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- Create Date: 05/10/2023 09:08:33 AM
-- Module Name: ORgate - Behavioral
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ORgate is
   Port (   
   input1: in std_logic;
   input2: in std_logic;
   output1: out std_logic
   );
end ORgate;

architecture Behavioral of ORgate is

begin

OrgateProcess: process(input1,input2) 
begin
if (input1 = '0' AND input2 = '0')then
output1 <= '0';
else
output1 <= '1';
end if;
end process;
end Behavioral;

------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- Create Date: 05/10/2023 09:12:16 AM
-- Module Name: andGate - Behavioral 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
entity ANDGATE is
port(

input1: in std_logic;
input2: in std_logic;
output1 : out std_logic
);
end ANDGATE;

ARCHITECTURE behavioural of ANDGATE is
begin

process(input1, input2)
begin

if (input1 ='1' AND input2 ='1') then
    output1 <= '1';
else
    output1<= '0';
end if;    
end process;
end behavioural;
------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity combCkt is
    Port ( input1 : in STD_LOGIC;
           input2 : in STD_LOGIC;
           input3 : in STD_LOGIC;
           output1 : out STD_LOGIC);
end combCkt;

architecture Behavioral of combCkt is
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
SIGNAL var1: STD_LOGIC;
begin

ormap:ANDGATE port map(input1 => input1, input2 => input2, output1=>var1);
andmap:ORgate port map(input1 => var1, input2 => input3, output1=>output1);  

end Behavioral;
