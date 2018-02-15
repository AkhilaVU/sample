create or replace trigger trigger63
before insert on product_master63
for each row
declare
prp product_master63.profit_percent%type;
begin
select MAX(profit_percent) into prp from product_master63;
if(:NEW.profit_percent<prp) then
RAISE_APPLICATION_ERROR(-20001,'New profit percent must be greater than maximum profit percent');
end if;
end;
/


/*

SQL> @tri22@

Trigger created.

SQL> update product_master63 set profit_percent=59 where product_no='p00001';

1 row updated.

SQL> update product_master63 set profit_percent=10 where product_no='p00001';

ERROR at line 1:
ORA-20001: New percentage must be greater than old percentage
ORA-06512: at "USER1.PRO_PERCENT63", line 2
ORA-04088: error during execution of trigger 'USER1.PRO_PERCENT63'


*/
