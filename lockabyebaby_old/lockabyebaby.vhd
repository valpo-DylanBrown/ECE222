library ieee;
use ieee.std_logic_1164.all;

entity Child_lock is
  port(insidePad, outsidePad     : IN std_logic_vector(3 downto 0);
      parent, clk, clr           : IN std_logic;
      lock, gps                  : OUT std_logic;
      innerDisplay, outerDisplay : OUT std_logic_vector(6 downto 0);
      pattern1, pattern2         : OUT std_logic_vector(1 downto 0));
end Child_lock;

architecture struct of Child_lock is
  --declare components
  --done
  component slow_clk is
    port (In_Clk: in std_logic;
          Out_Clk: out std_logic);
  end component;
  --done
  component Display IS
  port (count: in std_logic_vector(3 downto 0);
        segs : out std_logic_vector(6 downto 0));
  END component;

  component LCD_Display IS
  	GENERIC(Num_Hex_Digits: Integer:= 2);
  	PORT(reset, clk_48Mhz			: IN	STD_LOGIC;
  		 Hex_Display_Data			: IN    STD_LOGIC_VECTOR((Num_Hex_Digits*4)-1 DOWNTO 0);
  		 LCD_RS, LCD_E				: OUT	STD_LOGIC;
  		 LCD_RW						: OUT   STD_LOGIC;
  		 DATA_BUS					: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0));

  END component;
  --done
  component inside_lock is
    port(x : IN std_logic_vector(3 downto 0);
         clk, clr : IN std_logic;
         z : OUT std_logic_vector(1 downto 0));
  end component;
  --done
  component outside_lock is
    port(y : IN std_logic_vector(3 downto 0);
        clk, clr : IN std_logic;
         z : OUT std_logic_vector(1 downto 0));
  end component;

  component safetyLock is
    port(set  : IN std_logic;
         clk  : IN std_logic;
         x,y   : IN std_logic_vector(1 downto 0);
         lock, gps : OUT std_logic);
  end component;
  --declare signals
  signal int_clk : std_logic;
  signal int_pattern1 : std_logic_vector(1 downto 0);
  signal int_pattern2 : std_logic_vector(1 downto 0);

  begin
    slowclk : slow_clk port map(In_Clk=>clk, Out_Clk=>int_clk);
    innerLock: inside_lock port map(x => insidePad, clk => int_clk, clr => clr, z=> int_pattern1);
    outerLock: outside_lock port map(y => outsidePad, clk => int_clk, clr => clr, z=> int_pattern2);
    insideDisplay: display port map(count => insidePad, segs=>innerDisplay);
    outsideDisplay: display port map(count => outsidePad, segs=>outerDisplay);
    lock : safetyLock port map(set=>parent, clk=>int_clk, x=>int_pattern1, y=>int_pattern2, lock=>lock, gps=>gps);
    pattern1 <= int_pattern1;
    pattern2 <= int_pattern2;
end struct;
