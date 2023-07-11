-- MULTIPLEXER 4:1 using 2:1

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


ENTITY MUX_2 IS
PORT(
    in1,in2: in STD_LOGIC;
    sel: in STD_LOGIC;
    out1: out STD_LOGIC
     );
END ENTITY;

ARCHITECTURE behavioural of MUX_2 is
begin

out1 <=  ((NOT sel) AND in1 ) OR (sel AND in2);

end behavioural;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY MUX IS
PORT(
    in1,in2,in3,in4: in STD_LOGIC;
    sel: in STD_LOGIC_VECTOR(1 downto 0);
    out1: out STD_LOGIC
     );
END ENTITY;

ARCHITECTURE behavioural of MUX is

component MUX_2 IS
PORT(
    in1,in2: in STD_LOGIC;
    sel: in STD_LOGIC;
    out1: out STD_LOGIC
     );
end component;

SIGNAL sigVar1 : STD_LOGIC;
SIGNAL sigVar2 : STD_LOGIC;
begin

MUX2_1 : MUX_2 port map(in1,in2,sel(0), sigVar1);
MUX2_2 : MUX_2 port map(in3,in4,sel(0), sigVar2);
MUX2_3 : MUX_2 port map(sigVar1, sigVar2,sel(1), out1);
end behavioural;
