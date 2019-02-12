-- ***********
-- Probelm 4.45
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
