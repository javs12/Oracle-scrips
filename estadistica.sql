create or replace PROCEDURE ESTADISTICAINT AS 


  numero Integer ;
  n  Integer ;
  l Integer;
  cant integer;
  sum1 integer;
  sum2 integer;
  sum3 float ;
  sum4 float ;
  maximo float;
  minimo float;
  R integer ;
  m float;
  A1 float;
  Ra float;
  xa float;
  lipe float;
  lsui float;
  xi integer;
  ca float;
  
  CURSOR datos is
  
  select * from datosest ;

  Rdatos datos%ROWTYPE;
  
  CURSOR datos2 is
  
  select * from datosest da;
  
  Rdat datos2%ROWTYPE;
  
BEGIN
numero:=0;
n:=0;
lipe:=0;
m:=0;
A1:=0;
xa:=0;
lsui:=0;
Ra:=0;
R:=0;
maximo:=0;
minimo:=0;
xi:=0;
ca:=0;

 select max(monto) into maximo from cabpres ;
  select min(monto) into minimo from cabpres ;
  select count(*) into n from cabpres;
  R:= maximo - minimo;
  m:= trunc(1+(3.3*log(10,n)));
  A1:= round((R/m)+1,2);
  Ra:=m*A1;
  xa:=Ra-R;
  lipe:= minimo - (xa/2);
  lsui:= maximo + (xa);
  
  xi:=(maximo+minimo)/2;
  
  
  --insert into DATOSEST (LI,L2)values (lipe,lsui);
  
  /*dbms_output.put_line(lipe);
  dbms_output.put_line(lsui);
  dbms_output.put_line(A1);
  dbms_output.put_line(R);
  dbms_output.put_line(maximo);
  dbms_output.put_line(minimo);
  dbms_output.put_line(xi);
  dbms_output.put_line(m);
  dbms_output.put_line(Ra);*/
  delete  from datosest;

  
  ca := round(lipe,2);
  
  for i in 1..m
  loop 
    insert into  datosest(LI,LS,XI) values(ca, ca+A1 , (ca+A1)/2);
    ca:=ca+A1;
  end loop;
  
  
    OPEN datos;

    LOOP 
      FETCH datos INTO Rdatos;
      Exit WHEN datos%NOTFOUND;
      
      select count(monto) into cant from cabpres C where C.monto >= Rdatos.LI and C.monto < Rdatos.LS;
      update datosest d set FI =cant where Rdatos.XI= d.XI;
      
    end loop;
    close datos;
    
     sum2:=0;
    sum4:=0;
    OPEN datos2;

    LOOP 
      FETCH datos2 INTO Rdat;
      Exit WHEN datos2%NOTFOUND;
      
    
      
      sum2:= sum2+Rdat.FI;
      update datosest d set FR= round((Rdat.FI/n)*100,2)   where d.XI = Rdat.XI;
      update datosest d set FA = sum2 where d.XI=Rdat.XI;
      
      select FR into sum3 from datosest d where d.XI= Rdat.XI;
      sum4:=round(sum4 +sum3,2);
      update datosest d set d.FRA=sum4 where d.XI= Rdat.XI;
      
      end LOOP;
      CLOSE datos2;
   dbms_output.put_line(n);
    commit;
END ESTADISTICAINT;