library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; 

entity Counter is
  port(Clk, Roll: in std_logic;
       Cnt1, Cnt2: out std_logic_vector(3 downto 0));
end Counter;

architecture Count of Counter is
begin

  process (Clk)
  
  variable count1, count2: integer range 1 to 7:=1; 
  begin
    if Clk='1' then
      if Roll='1' then
         count1 := count1 + 1;
         if count1 = 7 then
			count1 := 1;
			count2 := count2 + 1;
			if count2 = 7 then
				count2 := 1;
			end if;
		 end if;
	  end if;
	  Cnt1 <= conv_std_logic_vector(count1, 4);
	  Cnt2 <= conv_std_logic_vector(count2, 4);
	end if;
  end process;
end Count;
