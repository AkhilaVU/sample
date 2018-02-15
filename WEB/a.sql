DECLARE 
   p_no prodct_mastr61.product_no%type; 
   p_description prodct_mastr61.description%type; 
   p_profit prodct_mastr61.profit_percent%type; 
   p_unit prodct_mastr61.unit_measure%type;
   p_qty_onh prodct_mastr61.qty_on_hand%type;
   p_reorder prodct_mastr61.reorder_lvl%type;
   p_selp prodct_mastr61.sell_price%type;
   p_cstp prodct_mastr61.cost_price%type;
   CURSOR prodct_mastr is 
      SELECT product_no, description, profit_percent, unit_measure, qty_on_hand, reorder_lvl, sell_price, cost_price FROM prodct_mastr61; 
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


