
--*************
-- Dylan Brown
-- ECE222 DP 2
-- Due 2/18
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
