library ieee;
use ieee.std_logic_1164.all;

entity OneBitAdder is
  port(a, b, cin  : IN std_logic;
      s, co       : OUT std_logic);
end OneBitAdder;

architecture dataflow of OneBitAdder is

  begin
    s<= a xor b xor cin;
    co<= (a AND b) OR (a AND cin) OR (b AND cin);

end dataflow;
library ieee;
use ieee.std_logic_1164.all;
entity Adders is
  generic(N: integer:=1);
  port(a, b  : IN std_logic_vector(N-1 downto 0);
      cin    : IN std_logic;
      co     : OUT std_logic;
      s      : OUT std_logic_vector(N-1 downto 0));
end Adders;

architecture struct of Adders is
  signal int_carry : std_logic_vector(n downto 0);
  component OneBitAdder is
    port(a, b, cin  : IN std_logic;
        s, co       : OUT std_logic);
  end component;
  begin
    FA_0:OneBitAdder port map(a=>a(0), b=>b(0), cin=>cin, s=>s(0), co=>int_carry(1));
    g1: for i in 1 to N-1 generate
      FA_i:OneBitAdder port map(a=>a(i), b=>b(i), cin=>int_carry(i), s=>s(i), co=>int_carry(i+1));
    end generate;
    co <= int_carry(N);
end struct;
library ieee;
use ieee.std_logic_1164.all;
-- MY BIRTHDAY IS 07/12/99
-- SO I NEED A 12 BIT ADDER
entity testbench is
  port(x, y   : IN std_logic_vector(11 downto 0);
      sum     : OUT std_logic_vector(11 downto 0);
      cout      : OUT std_logic);
end testbench;
architecture brown of testbench is
  signal GND : std_logic;
  component Adders is
    generic(N: integer:=1);
    port(a, b  : IN std_logic_vector(N-1 downto 0);
        cin    : IN std_logic;
        co     : OUT std_logic;
        s      : OUT std_logic_vector(N-1 downto 0));
  end component;
  begin
    GND<='0';
    test_adder: Adders generic map(12) port map(a=>x, b=>y, cin=>GND, co=>cout, s=>sum);
end brown;
