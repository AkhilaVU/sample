DECLARE 
   C_no Client_master61.Client_no%type;
   Client_name Client_master61.Name%type;
   Add1 Client_master61.Address1%type;
   Add2 Client_master61.Address2%type;
   City_c Client_master61.City%type;
   Pin Client_master61.Pincode%type;
   Stat Client_master61.State%type;
   Bal Client_master61.Bal_due%type;




   CURSOR Client is 
      SELECT * FROM Client_master61 WHERE State ='Maharashtra';
BEGIN 
   OPEN Client; 
   LOOP 

   FETCH Client into C_no,Client_name,Add1,Add2,City_c,Pin,Stat,Bal;
      EXIT WHEN Client%notfound; 
      dbms_output.put_line(C_no || ' ' || Client_name || ' ' || Add1 || ' ' || Add2 || ' ' || City_c || ' ' || Pin || ' ' || Stat || ' ' || Bal); 
   END LOOP; 
   CLOSE Client; 
END; 
/

/*out put
c00001 Ivan bayross wandon worli mumbai 450005 Maharashtra 15000
c00003 Pramadajagust Mondon bDadar mumbai 450007 Maharashtra 5000
c00004 basu navindgi jerome juhu mumbai 450009 Maharashtra 0
c00006 rukmini rourk bandra mumbai 450002 Maharashtra 0

PL/SQL procedure successfully completed.

*/
