library ieee;
use ieee.std_logic_1164.all;

entity eightToThree is
  port(din : IN std_logic_vector(7 downto 0);
      y   : OUT std_logic_vector(2 downto 0));
end eightToThree;

architecture Brown of eightToThree is

begin
  y <= "000" when (din = X"01") else
          "001" when (din = X"02") else
          "010" when (din = X"04") else
          "011" when (din = X"08") else
          "100" when (din = X"10") else
          "101" when (din = X"20") else
          "110" when (din = X"40") else
          "111" when (din = X"80") else
          "XXX";
end Brown;
