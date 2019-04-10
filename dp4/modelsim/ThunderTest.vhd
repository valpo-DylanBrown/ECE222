library ieee;
use ieee.std_logic_1164.all;

Entity ThunderTest is
    -- No Ports in test benches
end ThunderTest;

Architecture brown of ThunderTest is

component Thunderbird is
  port(clk, clr : IN std_logic;
      turn      : IN std_logic_vector(1 downto 0);
      lights    : OUT std_logic_vector(5 downto 0));
end component;

signal clk: std_logic:='0';
signal clr: std_logic:='0';
signal x: std_logic_vector(1 downto 0):="00";
signal z: std_logic_vector(5 downto 0);

begin

    uut: Thunderbird port map(clk=>clk,clr=>clr,turn=>x,lights=>z);

    clk <= not clk after 50 ns;

    StimProcess: process
    begin
        wait for 70 ns;
        x <= "01";
        wait for 500 ns;
        x <= "10";
        wait for 900 ns;
        x <= "11";
        wait;
    end process;
end brown;
