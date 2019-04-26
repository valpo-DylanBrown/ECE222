library ieee;
use ieee.std_logic_1164.all;

entity outside_lock is
  port(y : IN std_logic_vector(3 downto 0);
      clk, clr : IN std_logic;
       z : OUT std_logic_vector(1 downto 0));
end entity outside_lock;

architecture behav of outside_lock is
  type state is (S0, S1, S2);
  signal PS : state :=S0;
  Signal FS : state;

begin
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
  process(PS, y)
  begin
    case PS is
      when S0 =>
        if (y = "0001") then
          FS <= S1;
        else
          FS <= S0;
        end if;
        z<= "00";
      when S1=>
        if(y = "0111") then
          FS<= S2;
        else
          FS <= S0;
        end if;
        z <= "00";
      when S2=>
        if(y="0001") then
          FS<= S0;
          z<= "10";
        else
          FS<= S0;
          z <= "00";
      end if;
    end case;
  end process;
end behav;
