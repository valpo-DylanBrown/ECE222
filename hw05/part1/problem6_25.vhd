library ieee;
use ieee.std_logic_1164.all;

entity eightToThree is
  port(din : IN std_logic_vector(7 downto 0);
       y   : OUT std_logic_vector(2 downto 0));
end eightToThree;

architecture BHV of eightToThree is

begin
  process(din)
  begin
    if din(0) = '1' then y<="000";
    elsif din(1) = '1' then y<="001";
    elsif din(2) = '1' then y<="010";
    elsif din(3) = '1' then y<="011";
    elsif din(4) = '1' then y<="100";
    elsif din(5) = '1' then y<="101";
    elsif din(6) = '1' then y<="110";
    elsif din(7) = '1' then y<="111";
    else y<="XXX";
    end if;
  end process;
end BHV;
