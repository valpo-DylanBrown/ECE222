-- ***********
-- Probelm 2.50
-- Dylan Brown
-- ***********

entity problem250 is
  port(x1,x2,x3 : IN  BIT;
       f        : OUT BIT);
end problem250;

architecture dataflow of problem250 is
  begin
    f<=(x1 XOR x3) OR (NOT x2);
end dataflow;



-- ***********
-- Probelm 2.51
-- Dylan Brown
-- ***********

entity problem251 is
  port(x1,x2,x3,x4 : IN  BIT;
       f1,f2       : OUT BIT);
end problem251;

architecture dataflow of problem251 is
  begin
    f1<=(x1 AND NOT x3) OR (x2 AND NOT x3) OR (NOT x3 AND NOT x4) OR (x1 AND x2) OR (x1 AND NOT x4);
    f2<=(x1 OR NOT x3) AND (x1 OR x2 OR NOT x4) AND (x2 OR NOT x3 OR NOT x4);
end dataflow;



-- ***********
-- Probelm 4.45
-- Dylan Brown
-- ***********

entity problem445 is
  port(x1,x2,x3,x4,x5 : IN  BIT;
       f              : OUT BIT);
end problem445;

architecture dataflow of problem445 is
  signal g,k          : BIT
  begin
    g<=x1 OR x2 OR x5;
    k<=(x3 AND NOT x4) OR (NOT x3 AND x4);
    f<=(g AND k) OR (NOT g AND NOT k);
end dataflow;
