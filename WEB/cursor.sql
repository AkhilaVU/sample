DECLARE 
   p_no prodct_mastr61.PRODUCT_NO%type; 
   p_description prodct_mastr61.DESCRIPTION%type; 
   p_profit prodct_mastr61.PROFTI_PERCENT%type; 
   p_unit prodct_mastr61.UNIT_MEASURE%type;
   p_qty_onh prodct_mastr61.QTY_ON_HAND%type;
   p_reorder prodct_mastr61.REORDER_LVL%type;
   p_selp prodct_mastr61.SELL_PRICE%type;
   p_cstp prodct_mastr61.COST_PRICE%type;
   CURSOR prodct_mastr is 
      SELECT PRODUCT_NO, DESCRIPTION,PROFTI_PERCENT,UNIT_MEASURE,QTY_ON_HAND,REORDER_LVL,SELL_PRICE,COST_PRICE FROM prodct_mastr61; 
   prodct_mstr prodct_mastr%rowtype; 
BEGIN 
   OPEN prodct_mastr; 
   LOOP 
   FETCH prodct_mastr into p_no, p_description, p_profit, p_unit, p_qty_onh, p_reorder, p_selp, p_cstp; 
      EXIT WHEN prodct_mastr%notfound; 
      dbms_output.put_line(p_no || '  ' || p_description || '   ' || p_profit || '  ' || p_unit || '  ' || p_qty_onh || '  ' || p_reorder || '  ' || p_selp || '  ' || p_cstp); 
   END LOOP; 
   CLOSE prodct_mastr; 
END; 
/
/*
output 
p03453	monitors   6  piece  10  3  12000  10680
p45789	mouse	5  piece  20  5  1050  1000
p44783	keyboards   5  piece  100  20  3150  3050
p45123	cd drive   2  piece  10  3  5250  5100
p35412	540 HDD   2.5  piece  10  3  8400  8000
p00001	1.44 floppies	5  piece  100  20  525	500

*/
