create or replace PROCEDURE ESTADISTICA AS 



  numero Integer ;
  n  Integer ;
  l Integer;
  cant integer;
  sum1 integer;
  sum2 integer;
  sum3 float ;
  sum4 float ;
  CURSOR datos is
  
  select * from cabpres c order by tipcte;

  Rdatos datos%ROWTYPE;
  
  CURSOR datos2 is
  
  select * from datosest da;
  
  Rdat datos2%ROWTYPE;
 

BEGIN
numero:=0;
n:=0;

  
    OPEN datos;

    LOOP 
      FETCH datos INTO Rdatos;
      Exit WHEN datos%NOTFOUND;
      
    
      select count(*) into l from datosest d where d.XI = Rdatos.TIPCTE; 
     
      if l > 0 then
      select FI into cant  from DATOSEST d where d.XI = Rdatos.TIPCTE; 
      update DATOSEST  d set FI = cant+1 where d.XI = Rdatos.TIPCTE;
      else 
        insert into DATOSEST (XI,FI )values (Rdatos.TIPCTE,1);
      end if;
      
     n:=n+1;
      end LOOP;
      CLOSE datos;
      
    sum2:=0;
    sum4:=0;
    OPEN datos2;

    LOOP 
      FETCH datos2 INTO Rdat;
      Exit WHEN datos2%NOTFOUND;
      
    
      
      sum2:= sum2+Rdat.FI;
      update datosest d set FR= (Rdat.FI/n)*100   where d.XI = Rdat.XI;
      update datosest d set FA = sum2 where d.XI=Rdat.XI;
      
      select FR into sum3 from datosest d where d.XI= Rdat.XI;
      sum4:=sum4 +sum3;
      update datosest d set d.FRA=sum4 where d.XI= Rdat.XI;
      
      end LOOP;
      CLOSE datos2;
   

     dbms_output.put_line(sum2);
END ESTADISTICA;