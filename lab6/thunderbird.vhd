library ieee;
use ieee.std_logic_1164.all;

entity thunderbird is
  port(clk : IN std_logic;
      turn      : IN std_logic_vector(1 downto 0);
      lights    : OUT std_logic_vector(5 downto 0));
end thunderbird;

architecture struct of thunderbird is

  signal int_clock : std_logic;
  component controller is
    port(clk, clr : IN std_logic;
        turn      : IN std_logic_vector(1 downto 0);
        lights    : OUT std_logic_vector(5 downto 0));
  end component;
  component slow_clk is
    port (In_Clk: in std_logic;
          Out_Clk: out std_logic);
  end component;
begin
  slow: slow_clk port map(In_Clk=>clk,Out_Clk=>int_clock);
  cont: controller port map(clk=>int_clock,clr=>'0',turn=>turn,lights=>lights);

end struct;
