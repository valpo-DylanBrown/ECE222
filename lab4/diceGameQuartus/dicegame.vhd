library ieee;
use ieee.std_logic_1164.all;

entity DiceGame is
   port (Rb, Reset, CLK: in std_logic;
         Sum: in std_logic_vector(3 downto 0);
         Roll, Win, Lose: out std_logic);
end DiceGame;

architecture dataflow of DiceGame is

  signal Sp,Eq,D7,D711,D2312: std_logic:='0';
  signal FA,FB,FC,A,B,C :std_logic:='0';
  signal Point: std_logic_vector(3 downto 0):="0001";

begin

   -- Clock Process
   process(Clk)
   begin
     if (Clk'EVENT AND clk='1') then
       A <= FA;  B <= FB;   C <= FC;
       if Sp = '1' then Point <= Sum; end if;
     end if;
   end process;

   -- Equations for Tester Logic and comparator (D7, D711, D2312, Eq)
   D7 <= '1' when sum = "0111" else
         '0';
   D711 <= '1' when sum = "1011" else
           '1' when sum = "0111" else
           '0';
   D2312 <= '1' when sum = "0010" else
            '1' when sum = "0011" else
            '1' when sum = "1100" else
            '0';
   Eq <= '1' when sum = point else
         '0';
         

   -- Equations for Next State Logic and to save Point value (FA, FB, FC, Sp, Win, Lose, Roll)
   FA <= (Rb AND NOT D711 AND NOT D2312 AND NOT A AND NOT B AND C) OR (NOT D7 AND NOT Eq AND A) OR (A AND NOT C) OR (NOT Rb AND A);
   FB <= (Rb AND NOT D711 AND D2312 AND NOT A AND NOT B AND C) OR (Rb AND D711 AND NOT A AND NOT B AND C) OR (Rb AND D7 AND NOT Eq AND A AND C) OR (Rb AND Eq AND A AND C) OR (Reset AND B);
   FC <= (Rb AND NOT D711 AND D2312 AND NOT A AND NOT B AND C) OR (Rb AND D7 AND NOT Eq AND A AND C) OR (Reset AND B AND C) OR (NOT Rb AND NOT B);
   Win <= (B AND NOT C);
   Lose <= (B AND C);
   Roll <= (NOT Rb AND NOT B AND C);
   Sp <= (Rb AND NOT D711 AND NOT D2312 AND NOT A AND NOT B AND C);

end dataflow;
