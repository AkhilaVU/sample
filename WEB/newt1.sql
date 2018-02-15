create or replace trigger trigger61
before insert on prodct_mastr61
for each row
declare
prp prodct_mastr61.PROFTI_PERCENT%type;
begin
select MAX(PROFTI_PERCENT) into prp from prodct_mastr61;
if(:NEW.PROFTI_PERCENT<prp) then
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
