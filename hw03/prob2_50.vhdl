-- ***********
-- Probelm 2.50
-- ***********

entity problemA is
  port(x1,x2,x3 : IN  BIT;
       f        : OUT BIT);
end problemA;

architecture dataflow of problemA is
  begin
    f<=(x1 XOR x3) OR (NOT x2);
end dataflow;
