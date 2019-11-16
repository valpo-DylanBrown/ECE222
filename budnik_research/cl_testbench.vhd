library ieee;
use ieee.std_logic_1164.all;

entity CL_TB is
end CL_TB;

architecture test of CL_TB is

  signal A,B : std_logic_vector(1 downto 0);
  signal Cin : std_logic;
  signal S   : std_logic_vector(1 downto 0);
  signal Co  : std_logic;

  component cl_adder is
    port(A, B : IN std_logic_vector(1 downto 0)
        Cin   : IN std_logic;
        S     : OUT std_logic_vector(1 downto 0)
        Cout  : OUT std_logic);
  end component;

begin
  uut : cl_adder port map(A=>A, B=>B, Cin=>Cin, S=>S, Cout=>Co);

  process
  begin
    A<="00";
    B<="00";
    Cin<='0';
    wait for 10ns;
    A<="01";
    B<="01";
    Cin<='0';
    wait for 10ns;
    A<="01";
    B<="10";
    Cin<='0';
    wait for 10ns;
    A<="01";
    B<="11";
    Cin<='0';
    wait for 10ns;
    A<="10";
    B<="10";
    Cin<='0';
    wait for 10ns;
    A<="10";
    B<="11";
    Cin<='0';
    wait for 10ns;
    A<="11";
    B<="11";
    Cin<='0';
    wait for 10ns;
    A<="00";
    B<="00";
    Cin<='1';
    wait for 10ns;
    A<="01";
    B<="01";
    Cin<='1';
    wait for 10ns;
    A<="01";
    B<="10";
    Cin<='1';
    wait for 10ns;
    A<="01";
    B<="11";
    Cin<='1';
    wait for 10ns;
    A<="10";
    B<="10";
    Cin<='1';
    wait for 10ns;
    A<="10";
    B<="11";
    Cin<='1';
    wait for 10ns;
    A<="11";
    B<="11";
    Cin<='1';
    wait;
end process;

end test;
