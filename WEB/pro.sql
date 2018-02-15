DECLARE 
   
    min_cost Prodct_mastr61.COST_PRICE%type;
    max_cost Prodct_mastr61.COST_PRICE%type;  
PROCEDURE findMin_Max(min_cost OUT Prodct_mastr61.Cost_price%type ,max_cost OUT Prodct_mastr61.Cost_price%type) IS 
BEGIN 
 SELECT min(COST_PRICE) into min_cost from prodct_mastr61;
   SELECT max(COST_PRICE) into max_cost from prodct_mastr61;
    
  
END;   
BEGIN 
   
   findMin_Max(min_cost,max_cost); 
   dbms_output.put_line(' Minimum  product price : ' || min_cost ); 
   dbms_output.put_line(' Maximum  product price : ' || max_cost ); 
END; 
/
/*
Minimum  product price : 500
Maximum  product price : 10680

PL/SQL procedure successfully completed.
*/

