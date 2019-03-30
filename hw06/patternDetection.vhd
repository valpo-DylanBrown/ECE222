library ieee;
use ieee.std_logic_1164.all;

entity pattern is
  port(x, clk, clr  : IN std_logic;
      z             : OUT std_logic);
end pattern;

architecture detection of pattern is
  component JKFF is
    port(j, k, s, c, clk  : IN std_logic;
        Q, Qbar      : OUT std_logic);
  end component;
  signal Ja, Ka, Jb, Kb : std_logic;
  signal A, B, NOTA, NOTB : std_logic;

  begin
    JKA: JKFF port map(j=>Ja, k=>Ka, s=>'0', c=>clr, clk=>clk, Q=>A, Qbar=>NOTA);
    JKB: JKFF port map(j=>Jb, k=>Kb, s=>'0', c=>clr, clk=>clk, Q=>B, Qbar=>NOTB);
    Ja <= B and x;
    Ka <= not x;
    Jb <= NOTA and x;
    Kb <= '1';
    z <= A and not(x);
end detection;
