CREATE OR REPLACE TRIGGER newtrigge
BEFORE INSERT ON product_master48 
FOR EACH ROW 
DECLARE 
prp product_master48.profit_percent%type; 
BEGIN
Select max(profit_percent) into prp from product_master48;
if(:NEW.profit_percent < prp) then
  RAISE_APPLICATION_ERROR( -20001,'New profit percent must be greater than Maximum profit percent' );
end if;
end;
/ 
/*
insert into product_master63 values('p45501','mouse',10,'piece',220,5,1050,1000)
            *
ERROR at line 1:
ORA-20001: New profit percent must be greater than maximum profit percent
ORA-06512: at "USER1.TRIGGER63", line 6
ORA-04088: error during execution of trigger 'USER1.TRIGGER63'

*/
