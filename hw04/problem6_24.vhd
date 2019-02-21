library ieee;
use ieee.std_logic_1164.all;

entity eightToThree is
  port(din : IN std_logic_vector(7 downto 0);
      y   : OUT std_logic_vector(2 downto 0));
end eightToThree;

architecture Brown of eightToThree is

begin
  y <= "000" when (din(0) = '1') else
          "001" when (din(1) = '1') else
          "010" when (din(2) = '1') else
          "011" when (din(3) = '1') else
          "100" when (din(4) = '1') else
          "101" when (din(5) = '1') else
          "110" when (din(6) = '1') else
          "111" when (din(7) = '1') else
          "XXX";
end Brown;
