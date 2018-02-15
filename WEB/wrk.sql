DECLARE 

    namee client_master61.name%type;
    na varchar2 :=&na;
    number i;
    
PROCEDURE find(namee OUT client_master61.NAME%typenamee,na OUT varchar2)
IS 
BEGIN 
 for i in 0..10
 loop
	if(namee[i]:==na)
	then

 		SELECT name into namee from client_master61;
	end if;
 end loop; 
      
END;   
BEGIN 
   
   find(namee,na); 
   
END; 
/

