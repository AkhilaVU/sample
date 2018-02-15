
create or replace trigger pro_percent61
before update on prodct_mastr61
for each row
when (NEW.profit_percent<OLD.profti_percent)
begin
RAISE_APPLICATION_ERROR(-20001,'New percentage must be greater than old percentage');
end;
/

