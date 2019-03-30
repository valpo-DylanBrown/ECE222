library ieee;
use ieee.std_logic_1164.all;

entity JKFF is
  port(j, k, s, c, clk  : IN std_logic;
      Q, Qbar      : OUT std_logic);
end entity JKFF;

architecture flip of JKFF is

  signal Qint : std_logic;

begin
process(clk, s, c)
begin
  if(s = '1') then
    Qint <= '1';
  elsif(c = '1') then
    Qint <= '0';
  else
    if(rising_edge(clk)) then
      Qint <= (j AND NOT Qint) OR (NOT k AND Qint);
    end if;
  end if;
end process;
Q <= Qint;
Qbar <= NOT Qint;
end flip;
