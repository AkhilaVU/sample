DECLARE
	month number :=&month;
	total_billed number;
BEGIN
	total_billed := ques13(month);
	dbms_output.put_line('Sum total of all billed orders of the given month: '||'   '||total_billed);


END;
	
/
