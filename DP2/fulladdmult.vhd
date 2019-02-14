--*************
-- Dylan Brown
-- ECE222 DP 2
-- Due 2/18
--*************

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
