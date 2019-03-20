library ieee;
use ieee.std_logic_1164.all;
entity if2to4 is
  port(en : IN std_logic;
       a  : IN std_logic_vector(1 downto 0);
       y   : OUT std_logic_vector(3 downto 0));
end if2to4;

architecture behav of if2to4 is
begin
  process(en, a)
  begin
    if en = '1' then
      if a = "00" then y<="0001";
      elsif a = "01" then y<="0010";
      elsif a = "10" then y<="0100";
      elsif a = "11" then y<= "1000";
      end if;
    else
      y<="0000";
    end if;
  end process;
end behav;

library ieee;
use ieee.std_logic_1164.all;
entity h3to8 is
  port(en : IN std_logic;
       b  : IN std_logic_vector(2 downto 0);
       z   : OUT std_logic_vector(7 downto 0));
end h3to8;

architecture behav of h3to8 is
component if2to4 is
  port(en : IN std_logic;
       a  : IN std_logic_vector(1 downto 0);
       y   : OUT std_logic_vector(3 downto 0));
end component;

begin
  inst1: if2to4 port map(en=>(NOT b(2) AND en), a(0)=>b(0), a(1)=>b(1), y=>z(3 downto 0));
  inst2: if2to4 port map(en=>(b(2) AND en), a(0)=>b(0), a(1)=>b(1), y=>z(7 downto 4));

end behav;
