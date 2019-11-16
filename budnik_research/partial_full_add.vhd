library ieee;
use ieee.std_logic_1164.all;

entity partial_full_add is
  port(X,Y: in std_logic;
      Ci  : in std_logic;
      S,P,G : out std_logic);
end partial_full_add;

architecture behav of partial_full_add is

begin

    P <= X XOR Y;
    G <= X AND Y;
    S <= P XOR Ci;

end behav;
