library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity game is
port(clk, reset, rb   : IN std_logic;
    win, lose         : OUT std_logic;
    disp1, disp2      : OUT std_logic_vector(6 downto 0));
end game;
architecture final of game is
  signal s  : std_logic_vector(1 downto 0);
  signal tmpsum : std_logic_vector(3 downto 0);
  signal tmpcnt1, tmpcnt2 : std_logic_vector(3 downto 0);
  component DiceGame is
     port (Rb, Reset, CLK: in std_logic;
           Sum: in std_logic_vector(3 downto 0);
           Roll, Win, Lose: out std_logic);
  end component;
  component Counter is
    port(Clk, Roll: in std_logic;
         Cnt1, Cnt2: out std_logic_vector(3 downto 0));
  end component;
  component slow_clk is
    port (In_Clk: in std_logic;
          Out_Clk: out std_logic);
  end component;
  component Display IS
  port (count: in std_logic_vector(3 downto 0);
        segs : out std_logic_vector(6 downto 0));
  END component;
begin

  clock: slow_clk port map(In_Clk=>Clk, Out_Clk=>s(0));
  cntr: counter port map(Clk=>s(0), roll=>s(1), cnt1=>tmpcnt1, cnt2=>tmpcnt2);
  tmpsum <= tmpcnt1 + tmpcnt2;
  controller: DiceGame port map(Rb=>rb, Reset=>reset, clk=>s(0), sum=>tmpsum, Roll=>s(1), Win=>win, Lose=>lose);
  display1: Display port map (count=>tmpcnt1, segs=>disp1);
  display2: Display port map (count=>tmpcnt2, segs=>disp2);
end architecture;

