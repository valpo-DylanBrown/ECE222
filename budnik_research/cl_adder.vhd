library ieee;
use ieee.std_logic_1164.all;

entity cl_adder is
  port(A, B : IN std_logic_vector(1 downto 0)
      Cin   : IN std_logic;
      S     : OUT std_logic_vector(1 downto 0)
      Cout  : OUT std_logic);
end cl_adder;

architecture struct of cl_adder is

  signal carry : std_logic;
  signal p,g     : std_logic_vector(1 downto 0);

  component partial_full_add is
    port(X,Y: in std_logic;
        Ci  : in std_logic;
        S,P,G : out std_logic);
  end component;

begin

  PFA0: partial_full_add port map(X=>A(0), Y=>B(0), Ci=>Cin, S=>S(0), P=>p(0), G=>g(0));
  PFA1: partial_full_add port map(X=>A(1), Y=>B(1), Ci=>carry, S=>S(1), P=>p(1), G=>g(1));

  carry <= (p(0) AND Cin) OR g(0);

  Cout <=  (p(1) AND ((p(0) AND Cin) OR g(0))) OR g(1);


end struct;
