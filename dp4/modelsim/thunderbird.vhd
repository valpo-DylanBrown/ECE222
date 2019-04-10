library ieee;
use ieee.std_logic_1164.all;

entity Thunderbird is
  port(clk, clr : IN std_logic;
      turn      : IN std_logic_vector(1 downto 0);
      lights    : OUT std_logic_vector(5 downto 0));
end Thunderbird;

architecture behav of Thunderbird is
  type state is (S0, SH, SL1, SL2, SL3, SR1, SR2, SR3);
  signal PS : state := S0;
  signal FS : state;

begin
  FS <= SH when (PS = S0 AND turn = "11") else
        SL1 when (PS = S0 AND turn = "10") else
        SL2 when (PS = SL1 AND turn = "10") else
        SL3 when (PS = SL2 AND turn = "10") else
        SR1 when (PS = S0 AND turn = "01") else
        SR2 when (PS = SR1 AND turn = "01") else
        SR3 when (PS = SR2 AND turn = "01") else
        S0;
 lights <= "111111" when PS = SH else
           "001000" when PS = SL1 else
           "011000" when PS = SL2 else
           "111000" when PS = SL3 else
           "000100" when PS = SR1 else
           "000110" when PS = SR2 else
           "000111" when PS = SR3 else
           "000000";
process(clk, clr)
begin
  if(clr = '1') then
    PS <= S0;
  else
    if(rising_edge(clk)) then
      PS <= FS;
    end if;
  end if;
end process;
end behav;
