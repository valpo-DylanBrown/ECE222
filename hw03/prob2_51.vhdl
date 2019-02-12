-- ***********
-- Probelm 2.51
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
