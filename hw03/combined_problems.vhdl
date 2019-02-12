-- ***********
-- Probelm 2.50
-- Dylan Brown
-- ***********

entity problemA is
  port(x1,x2,x3 : IN  BIT;
       f        : OUT BIT);
end problemA;

architecture dataflow of problemA is
  begin
    f<=(x1 XOR x3) OR (NOT x2);
end dataflow;



-- ***********
-- Probelm 2.51
-- Dylan Brown
-- ***********

entity problemB is
  port(x1,x2,x3,x4 : IN  BIT;
       f1,f2       : OUT BIT);
end problemB;

architecture dataflow of problemB is
  begin
    f1<=(x1 AND NOT x3) OR (x2 AND NOT x3) OR (NOT x3 AND NOT x4) OR (x1 AND x2) OR (x1 AND NOT x4);
    f2<=(x1 OR NOT x3) AND (x1 OR x2 OR NOT x4) AND (x2 OR NOT x3 OR NOT x4);
end dataflow;



-- ***********
-- Probelm 4.45
-- Dylan Brown
-- ***********

entity problemC is
  port(x1,x2,x3,x4,x5 : IN  BIT;
       f              : OUT BIT);
end problemC;

architecture dataflow of problemC is
  signal g,k          : BIT
  begin
    g<=x1 OR x2 OR x5;
    k<=(x3 AND NOT x4) OR (NOT x3 AND x4);
    f<=(g AND k) OR (NOT g AND NOT k);
end dataflow;
