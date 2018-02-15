/* set serveroutput on;
 @tri
*/
Trigger created.

SQL> update product_master63 set profit_percent=15 where product_no='p00001';

1 row updated.

/*SQL> update product_master63 set profit_percent=5 where product_no='p00001';
update product_master63 set profit_percent=5 where product_no='p00001'
       *
ERROR at line 1:
ORA-20001: New percentage must be greater than old percentage
ORA-06512: at "USER1.PRO_PERCENT63", line 2
ORA-04088: error during execution of trigger 'USER1.PRO_PERCENT63'


/*SQL> @tri2*/

Trigger created.

SQL> update product_master63 set profit_percent=21 where product_no='p00001';

1 row updated.

SQL> update product_master63 set profit_percent=10 where product_no='p00001';
update product_master63 set profit_percent=10 where product_no='p00001'
       *
ERROR at line 1:
ORA-20001: New percentage must be greater than old percentage
ORA-06512: at "USER1.PRO_PERCENT63", line 2
ORA-04088: error during execution of trigger 'USER1.PRO_PERCENT63'
*/

