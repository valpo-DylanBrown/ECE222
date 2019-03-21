library ieee;
use ieee.std_logic_1164.all;
ENTITY Display IS
port (count: in std_logic_vector(3 downto 0);
      segs : out std_logic_vector(6 downto 0));
END Display;
ARCHITECTURE dataflow OF Display IS
BEGIN
    with count select
      segs<=  "0000001" when "0000",
              "1001111" when "0001",
              "0010010" when "0010",
              "0000110" when "0011",
              "1001100" when "0100",
              "0100100" when "0101",
              "0100000" when "0110",
              "1111111" when OTHERS;
END dataflow;
