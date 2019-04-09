library ieee;
use ieee.std_logic_1164.all;

entity Elevator is
  port(x  : IN std_logic_vector(1 downto 0);
      clk, clr  : IN std_logic;
      z   : OUT std_logic_vector(2 downto 0));
end Elevator;

architecture behav of Elevator is
  type state is (S0, S1, S2, S3);
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
        if(x = "00") then
          FS <= S0;
          z <= "000";
        elsif (x = "01") then
          FS <= S1;
          z <= "001";
        elsif (x = "10") then
          FS <= S2;
          z <= "010";
        else
          FS <= S3;
          z <= "011";
        end if;
      when S1 =>
        if(x = "00") then
          FS <= S0;
          z <= "111";
        elsif (x = "01") then
          FS <= S1;
          z <= "000";
        elsif (x = "10") then
          FS <= S2;
          z <= "001";
        else
          FS <= S3;
          z <= "010";
        end if;
      when S2 =>
        if(x = "00") then
          FS <= S0;
          z <= "110";
        elsif (x = "01") then
          FS <= S1;
          z <= "111";
        elsif (x = "10") then
          FS <= S2;
          z <= "000";
        else
          FS <= S3;
          z <= "001";
        end if;
      when S3 =>
        if(x = "00") then
          FS <= S0;
          z <= "101";
        elsif (x = "01") then
          FS <= S1;
          z <= "110";
        elsif (x = "10") then
          FS <= S2;
          z <= "111";
        else
          FS <= S3;
          z <= "000";
        end if;
      end case;
    end process;
end behav;
