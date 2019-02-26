--*************
-- Dylan Brown
-- ECE222 Lab 3
-- Due 2/25
--*************


entity fulladd is
  port(a, b, ci: IN  BIT;
      s, co      : OUT BIT);
end fulladd;

architecture brown of fulladd is

begin
  s<= a XOR b XOR ci;
  co<= (a AND b) OR (a AND ci) or (b AND ci);
end brown;


entity fulladdmult is
  port(a, x, y, ci: IN  BIT;
      s, co      : OUT BIT);
end fulladdmult;

architecture brown of fulladdmult is

  signal b  : BIT;

begin
  b<= x AND y;
  s<= a XOR b XOR ci;
  co<= (a AND b) OR (a AND ci) or (b AND ci);
end brown;


entity VHDLMultiplier is
  port(m, q   : IN BIT_VECTOR(3 downto 0);
      p       : OUT BIT_VECTOR(7 downto 0));
end VHDLMultiplier;

architecture brown of VHDLMultiplier is

  signal GND : BIT;
  signal sig0, sig1, sig2, sig3, sig4, sig5, sig6, sig7, sig8, sig9, sig10, sig11, sig12, sig13, sig14, sig15 : BIT;
  signal cout0, cout1, cout2, cout3, cout4, cout5, cout6, cout7, cout8, cout9, cout10, cout11, cout12, cout13, cout14, cout15 : BIT;
  component fulladdmult is
    port(a, x, y, ci: IN  BIT;
        s, co      : OUT BIT);
  end component;

  begin
    GND <= '0';
    inst : fulladdmult port map(a=>GND, x=>m(0), y=>q(0), ci=>'0', s=>sig0, co=>cout0);
    inst1 : fulladdmult port map(a=>GND, x=>m(1), y=>q(0), ci=>cout0, s=>sig1, co=>cout1);
    inst2 : fulladdmult port map(a=>GND, x=>m(2), y=>q(0), ci=>cout1, s=>sig2, co=>cout2);
    inst3 : fulladdmult port map(a=>GND, x=>m(3), y=>q(0), ci=>cout2, s=>sig3, co=>cout3);
    inst4 : fulladdmult port map(a=>sig1, x=>m(0), y=>q(1), ci=>'0', s=>sig4, co=>cout4);
    inst5 : fulladdmult port map(a=>sig2, x=>m(1), y=>q(1), ci=>cout4, s=>sig5, co=>cout5);
    inst6 : fulladdmult port map(a=>sig3, x=>m(2), y=>q(1), ci=>cout5, s=>sig6, co=>cout6);
    inst7 : fulladdmult port map(a=>cout3, x=>m(3), y=>q(1), ci=>cout6, s=>sig7, co=>cout7);
    inst8 : fulladdmult port map(a=>sig5, x=>m(0), y=>q(2), ci=>'0', s=>sig8, co=>cout8);
    inst9 : fulladdmult port map(a=>sig6, x=>m(1), y=>q(2), ci=>cout8, s=>sig9, co=>cout9);
    inst10 : fulladdmult port map(a=>sig7, x=>m(2), y=>q(2), ci=>cout9, s=>sig10, co=>cout10);
    inst11 : fulladdmult port map(a=>cout7, x=>m(3), y=>q(2), ci=>cout10, s=>sig11, co=>cout11);
    inst12 : fulladdmult port map(a=>sig9, x=>m(0), y=>q(3), ci=>'0', s=>sig12, co=>cout12);
    inst13 : fulladdmult port map(a=>sig10, x=>m(1), y=>q(3), ci=>cout12, s=>sig13, co=>cout13);
    inst14 : fulladdmult port map(a=>sig11, x=>m(2), y=>q(3), ci=>cout13, s=>sig14, co=>cout14);
    inst15 : fulladdmult port map(a=>cout11, x=>m(3), y=>q(3), ci=>cout14, s=>sig15, co=>cout15);
    p(0)<=sig0;
    p(1)<=sig4;
    p(2)<=sig8;
    p(3)<=sig12;
    p(4)<=sig13;
    p(5)<=sig14;
    p(6)<=sig15;
    p(7)<=cout15;
end brown;
