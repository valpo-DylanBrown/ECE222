library ieee;
use ieee.std_logic_1164.all;
entity safetyLock is
  port(set  : IN std_logic;
       clk  : IN std_logic;
       x,y   : IN std_logic_vector(1 downto 0);
       lock, gps : OUT std_logic);
end safetyLock;

architecture behav of safetyLock is

  signal int_lock : std_logic;

begin
  process(clk, set)
  begin
    if(set = '1') then -- if set
      lock <= '1';
    else
      if(rising_edge(clk)) then --open if rising edge
        if(int_lock = '0') then --if lock state
          if(x = "01") then -- check pattern
            int_lock<='1';
          elsif(y = "10") then
            int_lock<='1';
          else
            int_lock <= '0';
          end if; --end pattern check
        else
          if(x = "01") then --check pattern
            int_lock<='0';
          elsif(y = "10") then
            int_lock<='0';
          else
            int_lock <= '1';
          end if; --end pattern check
        end if; -- end lock state
        if(x = "11") then --if GPS state
          gps<='1';
        else
          gps<= '0';
        end if; -- end GPS state
      end if; --end if set
    end if; -- end if rising edge
  end process;
end behav;
