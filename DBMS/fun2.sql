CREATE or REPLACE FUNCTION ques13(month in integer) 
RETURN number IS
    total_billed number;
BEGIN
    select sum(qty_ordered*product_rate) into total_billed from sales_odr61 S, sales_odr_details61 SD where SD.order_no=S.order_no and billed_yn='Y' and EXTRACT(MONTH FROM order_date)= month;
    return total_billed;
END;
/
