Declare
	    a number;
	    b number;
	    c number;
	Begin
	    
		a:=&a;
	    
		b:=&b;
	    
		c:=&C;
	
	if (a>b) and (a>c)
	    then
	    dbms_output.put_line('A is GREATEST');
	elsif (b>a) and (b>c)
	    then
	    dbms_output.put_line('B is GREATEST');
	else
	    dbms_output.put_line('C is GREATEST');
	end if;
	End;
	/
