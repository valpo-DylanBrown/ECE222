library ieee;
use ieee.std_logic_1164.all;

entity inside_lock is
  port(x : IN std_logic_vector(3 downto 0);
      clk, clr : IN std_logic;
       z : OUT std_logic_vector(1 downto 0));
end entity inside_lock;

architecture behav of inside_lock is
  type state is (S0, S1, S2, S3, S4);
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
  process(PS, x)
  begin
    case PS is
      when S0 =>
        if(x = "1001") then
          FS <= S1;
        elsif(x = "0001") then
          FS <= S3;
        else
          FS <= S0;
        end if;
        z<= "00";
      when S1 =>
        if(x = "0001") then
          FS <= S2;
        else
          FS <= S0;
        end if;
        z<= "00";
      when S2=>
        if(x = "0001") then
          FS <= S0;
          z <= "11";
        else
          FS<= S0;
          z <= "00";
        end if;
      when S3=>
        if(x = "0111") then
          FS<= S4;
        else
          FS <= S0;
        end if;
        z <= "00";
      when S4=>
        if(x="0001") then
          FS<= S0;
          z<= "01";
        else
          FS<= S0;
          z <= "00";
        end if;
      end case;
    end process;
end behav;
