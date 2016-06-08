create or replace FUNCTION MONTOANIO 
(
  anio IN number
, t IN number
) RETURN NUMBER AS 

m Integer;
BEGIN
    select  sum(decode (to_char(fecha,'yyyy'),anio ,monto,0)) into m from cabpres  c where c.TIPCTE = t;
    
  RETURN m;
END MONTOANIO;