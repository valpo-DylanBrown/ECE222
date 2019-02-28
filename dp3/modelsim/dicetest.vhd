--    Modified from Charles Roth "Digital Systems Design Using VHDL"
--
-- Input Vector Generator
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity GameTest is

   port(Rb, Reset:  out std_logic;
        Sum: out std_logic_vector(3 downto 0);
        CLK: inout std_logic;
        Roll, Win, Lose: in std_logic);

end GameTest;

architecture dicetest of GameTest is

  signal Tstate, Tnext: integer range 0 to 4 := 0;
  signal Trig1: std_logic;
  type arr is array(0 to 11) of integer;
  constant Sumarray:arr := (7,11,2,4,7,5,6,7,6,8,9,6);
  constant Tcycle : time := 40 ns;

begin

  -- Process to create input signals
  process(Roll, Win, Lose, Tstate)
    variable i: natural;		-- i is initialized to
  begin
    case Tstate is
      when 0 => Rb <= '0';		--wait for Roll
              if i>=12 then Tnext <= 4;
              elsif Roll = '1' then
                  case Sumarray(i) is
			when 2 => Sum <= "0010";
                        when 3 => Sum <= "0011";
                        when 4 => Sum <= "0100";
                        when 5 => Sum <= "0101";
                        when 6 => Sum <= "0110";
                        when 7 => Sum <= "0111";
                        when 8 => Sum <= "1000";
                        when 9 => Sum <= "1001";
                        when 10 => Sum <= "1010";
                        when 11 => Sum <= "1011";
                        when 12 => Sum <= "1100";
                        when others => Sum <= "0010";
	          end case;

                  i:=i+1;
                  Tnext <= 1;
              end if;
      when 1 => Rb <= '1'; Tnext <= 2;
      when 2 => Tnext <= 3;
		    Trig1 <= not Trig1;	-- toggle Trig1
                if (Win or Lose) = '1' then
                    Reset <= '0';
                end if;
      when 3 => Reset <= '1'; tnext <= 0;
      when 4 => null;
    end case;
  end process;

  -- Clock generator
  clk_gen: process
  begin
    CLK <= '1' after Tcycle/2, '0' after Tcycle;
    wait until CLK = '0';
  end process clk_gen;

  -- Process to control when dice are rolled
  process(CLK)
  begin
    if CLK = '1' then
       Tstate <= Tnext;
    end if;
  end  process;

end dicetest;

--
-- Testbench
--
library ieee;
use ieee.std_logic_1164.all;

entity tester is
  -- no ports in testbench
end tester;

architecture brown of tester is

  -- component declaration
  component GameTest
    port(Rb, Reset:  out std_logic;
       Sum: out std_logic_vector(3 downto 0);
       CLK: inout std_logic;
       Roll, Win, Lose: in std_logic);
  end component;

  component DiceGame
    port (Rb, Reset, CLK: in std_logic;
         Sum: in std_logic_vector(3 downto 0);
         Roll, Win, Lose: out std_logic);
  end component;

  -- signal declaration
  signal rb1, reset1, roll1, win1, lose1: std_logic;
  signal clk1 : std_logic := '0';
  signal sum1: std_logic_vector(3 downto 0);

begin

  -- component instantiation
  Dice: Dicegame port map(rb1,reset1,clk1,sum1,roll1,win1,lose1);
  Dicetest: GameTest port map(rb1,reset1,sum1,clk1,roll1,win1,lose1);

end brown;
