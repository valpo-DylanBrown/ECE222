library ieee;
use ieee.std_logic_1164.all;

entity FSM is
  port(x, clk, clr : IN std_logic;
       z           : OUT std_logic);
end FSM;

architecture behavioral of FSM is
  type state is (S0, S1, S2, S3, S4, S5);
  signal PS : state := S0;
  signal FS : state;
begin
  --process for setting ps
  process(clk, clr)
  begin
    if(clr = '1') then
      PS <= S0;
    else
      if(rising_edge(clk)) then
        PS <= FS;
      end if;
    end if;
  end process;
  -- process for setting fs and z
  process(PS, x)
  begin
    case PS is
      when S0=>
        if(x = '0') then
          FS<=S0;
          z <= '0';
        else
          FS<=S1;
          z<='0';
        end if;
        when S1=>
          if(x = '0') then
            FS<=S2;
            z <= '0';
          else
            FS<=S4;
            z<='0';
          end if;
        when S2=>
          if(x = '0') then
            FS<=S3;
            z <= '0';
          else
            FS<=S1;
            z<='0';
          end if;
        when S3=>
          if(x = '0') then
            FS<=S0;
            z <= '0';
          else
            FS<=S1;
            z<='1';
          end if;
        when S4=>
          if(x = '0') then
            FS<=S2;
            z <= '0';
          else
            FS<=S5;
            z<='0';
          end if;
        when S5=>
          if(x = '0') then
            FS<=S2;
            z <= '0';
          else
            FS<=S5;
            z<='1';
          end if;
      end case;
  end process;
end behavioral;
