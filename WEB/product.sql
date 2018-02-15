DECLARE 
   prod Prodct_mastr61.Product_no%type:= '&product_no'; 
   cost Prodct_mastr61.COST_PRICE%type;
   subtract Prodct_mastr61.COST_PRICE%type;
ex_invalid_id  EXCEPTION; 
BEGIN 
   SELECT COST_PRICE INTO cost FROM Prodct_mastr61 WHERE Product_no = prod;  
   subtract:= cost - 200;
   dbms_output.put_line('Old Price: ' || cost);
   if subtract>=3000 then 
UPDATE Prodct_mastr61 SET Cost_Price = subtract WHERE Product_no = prod;
dbms_output.put_line('New Price: ' || subtract);
else 
RAISE ex_invalid_id;
end
if;
EXCEPTION 
   WHEN ex_invalid_id THEN 
      dbms_output.put_line('New cost price is less than 3000'); 
end;
/ 

/*
OUTPUT
Enter value for product_no: p03453
old   2:    prod Prodct_mastr61.Product_no%type:= '&product_no';
new   2:    prod Prodct_mastr61.Product_no%type:= 'p03453';
Old Price: 11280
New Price: 11080

*/
