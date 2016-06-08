 --SELECT trim(to_char(fecha,'Day')) ||' '|| trim(to_char(fecha,' month')) ||' '|| trim(to_char(fecha,'yyyy')) FROM  CABPRES WHERE trim(to_char(fecha,'Day'))='Lunes';
 --Select * from cabpres where trim(to_char(fecha,'Month'))='Enero' And tipo='090' And tipcte='01' And trim(to_char(fecha,'yyyy'))='2012' ;
 --select distinct tipcte from cabpres where tipo= '090'  and tipcte in(select tipcte from cabpres where tipo='089') ;
 --select * from cabpres c,detpres d where c.id=d.id; 
 --select * from cabpres c where c.tipo='090' union ALL select * from cabpres c  where c.tipo='096'; 
 --select d.*, d.rowid from detpres d where importe=0;  
 /*select decode(trim(to_char(sysdate,'MM')),
                            '01','Enero',
                            '02', 'Febrero',
                            '03', 'Marzo',
                            '04', 'Abril',
                            '05','Mayo',
                            '06','Junio',
                            '07','Julio',
                            '08','Agosto',
                            '09','Septiembre',
                            '10','Octubre',
                            '11','Noviembre',
                            '12','Diciembre','ERROR' ),
                            
case when (trim(to_char(sysdate,'MM'))) = '01' then 'Enero'
  Else case when (trim(to_char(sysdate,'MM')))= '02' Then 'Febrero'
    else case when (trim(to_char(sysdate,'MM')))= '03' Then 'Marozo'
    Else case when (trim(to_char(sysdate,'MM')))= '04' Then 'Abril'
    Else 'ERROR'
    end
    end
    end
    end
    
 from dual;*/

--select to_char(fecha,'yyyy') from cabpres group by to_char(fecha,'yyyy')  order  by 1 ;
--select tipo,max(descripcion) ,count(*) numero, sum(monto) monto ,max(monto) maximo  , min (monto) minimo , avg(monto) promedio from cabpres group by tipo order by 1 ;
/*select to_char(fecha,'month'),sum(monto) monto, sum(decode (to_char(fecha,'yyyy'),'2008' ,monto,0)) A2008,
                              sum(decode (to_char(fecha,'yyyy'),'2009' ,monto,0)) A2009,
                              sum(decode (to_char(fecha,'yyyy'),'2010' ,monto,0)) A2010,
                              sum(decode (to_char(fecha,'yyyy'),'2011' ,monto,0)) A2011,
                              sum(decode (to_char(fecha,'yyyy'),'2012' ,monto,0)) A2012,
                              sum(decode (to_char(fecha,'yyyy'),'2013' ,monto,0)) A2013

from cabpres group by to_char(fecha,'month')  order by 1*/

/*select 'Bimestre ' || ceil(to_number(to_char(fecha,'mm'))/2) Bimestre,sum(monto) monto, sum(decode (to_char(fecha,'yyyy'),'2008' ,monto,0)) A2008,
                              sum(decode (to_char(fecha,'yyyy'),'2009' ,monto,0)) A2009,
                              sum(decode (to_char(fecha,'yyyy'),'2010' ,monto,0)) A2010,
                              sum(decode (to_char(fecha,'yyyy'),'2011' ,monto,0)) A2011,
                              sum(decode (to_char(fecha,'yyyy'),'2012' ,monto,0)) A2012,
                              sum(decode (to_char(fecha,'yyyy'),'2013' ,monto,0)) A2013

from cabpres group by ceil(to_number(to_char(fecha,'mm'))/2)  order by 1;*/

/*select 'Trimestre ' || ceil(to_number(to_char(fecha,'mm'))/3) Bimestre,sum(monto) monto, sum(decode (to_char(fecha,'yyyy'),'2008' ,monto,0)) A2008,
                              sum(decode (to_char(fecha,'yyyy'),'2009' ,monto,0)) A2009,
                              sum(decode (to_char(fecha,'yyyy'),'2010' ,monto,0)) A2010,
                              sum(decode (to_char(fecha,'yyyy'),'2011' ,monto,0)) A2011,
                              sum(decode (to_char(fecha,'yyyy'),'2012' ,monto,0)) A2012,
                              sum(decode (to_char(fecha,'yyyy'),'2013' ,monto,0)) A2013

from cabpres group by ceil(to_number(to_char(fecha,'mm'))/3)  order by 1;*/


 /*select 'cuatrimestre ' || ceil(to_number(to_char(fecha,'mm'))/4) Cuatrimestre,sum(monto) monto, sum(decode (to_char(fecha,'yyyy'),'2008' ,monto,0)) A2008,
                              sum(decode (to_char(fecha,'yyyy'),'2009' ,monto,0)) A2009,
                              sum(decode (to_char(fecha,'yyyy'),'2010' ,monto,0)) A2010,
                              sum(decode (to_char(fecha,'yyyy'),'2011' ,monto,0)) A2011,
                              sum(decode (to_char(fecha,'yyyy'),'2012' ,monto,0)) A2012,
                              sum(decode (to_char(fecha,'yyyy'),'2013' ,monto,0)) A2013

from cabpres group by ceil(to_number(to_char(fecha,'mm'))/4)  order by 1;*/

/*select to_char(fecha,'mm') numero,to_char(fecha, 'Month') mes, 'quincena' || ceil(to_number(to_char(fecha,'dd'))/15) quincena ,sum(monto) monto, sum(decode (to_char(fecha,'yyyy'),'2008' ,monto,0)) A2008,
                              sum(decode (to_char(fecha,'yyyy'),'2009' ,monto,0)) A2009,
                              sum(decode (to_char(fecha,'yyyy'),'2010' ,monto,0)) A2010,
                              sum(decode (to_char(fecha,'yyyy'),'2011' ,monto,0)) A2011,
                              sum(decode (to_char(fecha,'yyyy'),'2012' ,monto,0)) A2012,
                              sum(decode (to_char(fecha,'yyyy'),'2013' ,monto,0)) A2013

from cabpres group by to_char(fecha,'mm') ,to_char(fecha, 'Month'),ceil(to_number(to_char(fecha,'dd'))/15)  order by 1,3;*/

/*select to_char(fecha,'mm') numero,to_char(fecha, 'Month') mes, 'semana' || ceil(to_number(to_char(fecha,'dd'))/8) semana ,sum(monto) monto, sum(decode (to_char(fecha,'yyyy'),'2008' ,monto,0)) A2008,
                              sum(decode (to_char(fecha,'yyyy'),'2009' ,monto,0)) A2009,
                              sum(decode (to_char(fecha,'yyyy'),'2010' ,monto,0)) A2010,
                              sum(decode (to_char(fecha,'yyyy'),'2011' ,monto,0)) A2011,
                              sum(decode (to_char(fecha,'yyyy'),'2012' ,monto,0)) A2012,
                              sum(decode (to_char(fecha,'yyyy'),'2013' ,monto,0)) A2013

from cabpres  group by to_char(fecha,'mm') ,to_char(fecha, 'Month'),ceil(to_number(to_char(fecha,'dd'))/8)  order by 1*/;

/*select  cabpres.id ,cabpres.TIPO tipo ,min(cabpres.DESCRIPCION) descripcion,  sum(decode(detpres.MOVTO,'C',detpres.IMPORTE,0)) cargo ,sum(decode(detpres.MOVTO,'A',detpres.IMPORTE,0)) abono , sum(detpres.IMPORTE) saldo
from detpres join cabpres on detpres.id = cabpres.id group by cabpres.id , cabpres.TIPO,cabpres.DESCRIPCION  order by 1 ;*/

 --select  * from detpres join cabpres on detpres.id = cabpres.id;
 /*select 'semana'||to_char(fecha,'ww') semana ,sum(monto) monto, 
                              sum(decode (to_char(fecha,'yyyy'),'2008' ,monto,0)) A2008,
                              sum(decode (to_char(fecha,'yyyy'),'2009' ,monto,0)) A2009,
                              sum(decode (to_char(fecha,'yyyy'),'2010' ,monto,0)) A2010,
                              sum(decode (to_char(fecha,'yyyy'),'2011' ,monto,0)) A2011,
                              sum(decode (to_char(fecha,'yyyy'),'2012' ,monto,0)) A2012,
                              sum(decode (to_char(fecha,'yyyy'),'2013' ,monto,0)) A2013,
                              count(*) numero

from cabpres group by to_char(fecha,'ww') having count(*)>=100  order by 1;*/
/*select * from(
select 'semana'||to_char(fecha,'ww') semana ,sum(monto) monto, 
                              sum(decode (to_char(fecha,'yyyy'),'2008' ,monto,0)) A2008,
                              sum(decode (to_char(fecha,'yyyy'),'2009' ,monto,0)) A2009,
                              sum(decode (to_char(fecha,'yyyy'),'2010' ,monto,0)) A2010,
                              sum(decode (to_char(fecha,'yyyy'),'2011' ,monto,0)) A2011,
                              sum(decode (to_char(fecha,'yyyy'),'2012' ,monto,0)) A2012,
                              sum(decode (to_char(fecha,'yyyy'),'2013' ,monto,0)) A2013,
                              count(*) numero

from cabpres group by to_char(fecha,'ww')   order by 1
 ) where numero >=100;*/
 
 /*select 'semana'||to_char(fecha,'ww') semana ,sum(monto) monto, 
                              sum(decode (to_char(fecha,'yyyy'),'2008' ,monto,0)) A2008,sum(decode (to_char(fecha,'yyyy'),'2008' ,1,0)) del2008,
                              sum(decode (to_char(fecha,'yyyy'),'2009' ,monto,0)) A2009,sum(decode (to_char(fecha,'yyyy'),'2009' ,1,0)) del2009,
                              sum(decode (to_char(fecha,'yyyy'),'2010' ,monto,0)) A2010,sum(decode (to_char(fecha,'yyyy'),'2010' ,1,0)) del2010,
                              sum(decode (to_char(fecha,'yyyy'),'2011' ,monto,0)) A2011,sum(decode (to_char(fecha,'yyyy'),'2011' ,1,0)) del2011,
                              sum(decode (to_char(fecha,'yyyy'),'2012' ,monto,0)) A2012,sum(decode (to_char(fecha,'yyyy'),'2012' ,1,0)) del2012,
                              sum(decode (to_char(fecha,'yyyy'),'2013' ,monto,0)) A2013,sum(decode (to_char(fecha,'yyyy'),'2013' ,1,0)) del2013
                              
                              

from cabpres group by to_char(fecha,'ww')  having  count(*)>=100  order by 1*/;

/*select 'semana'||to_char(fecha,'ww') semana ,sum(monto) monto, 
                              sum(decode (to_char(fecha,'yyyy'),'2008' ,monto,0)) A2008,
                              sum(decode (to_char(fecha,'yyyy'),'2009' ,monto,0)) A2009,
                              sum(decode (to_char(fecha,'yyyy'),'2010' ,monto,0)) A2010,
                              sum(decode (to_char(fecha,'yyyy'),'2011' ,monto,0)) A2011,
                              sum(decode (to_char(fecha,'yyyy'),'2012' ,monto,0)) A2012,
                              sum(decode (to_char(fecha,'yyyy'),'2013' ,monto,0)) A2013,
                              count(1) numero
                              

from cabpres group by to_char(fecha,'ww')   order by 1*/

/*select  cabpres.id ,cabpres.TIPO tipo ,min(cabpres.DESCRIPCION) descripcion,  sum(decode(detpres.MOVTO,'C',detpres.IMPORTE,0)) cargo ,sum(decode(detpres.MOVTO,'A',detpres.IMPORTE,0)) abono , sum(detpres.IMPORTE) saldo
from detpres join cabpres on detpres.id = cabpres.id group by cabpres.id , cabpres.TIPO,cabpres.DESCRIPCION  order by 1 ;*/

/*select v.id , max(v.tipo) tipo,max(v.descripcion) descripcion,
sum(decode(movto,'C',importe,0)) carcos,
sum(decode(movto,'A',importe,0)) abonos ,
sum(importe) saldo  
from Cabpres v , Detpres D where d.id = v.id  
group by v.id ;*/

/*select to_char(c.id) credito, (c.tipo) tipo , (c.descripcion) descripcion,
c.fecha fecha , 0.00 cargos , 0.00 abonos , 0.00 saldo
from cabpres c
where id=26905
union all*/
/*select --' ',' ',' ',
d.id,d.idd,d.fecha,
(decode (movto,'C',importe,0)) cargos,



(decode (movto,'A',importe,0)) abonos,
(select sum(importe) from detpres l where l.fecha <= d.fecha and l.id=d.id) saldo
from detpres d
where d.id=26905
;*/

--create view clasificacion as
/*select v.id , max(tipo) tipo,max(descripcion) descripcion,
sum(decode(movto,'C',importe,0)) carcos,
sum(decode(movto,'A',importe,0)) abonos ,
sum(importe) saldo  ,
case when sum(importe) < '5000' then 'bajos '
else case when sum(importe) >= '5000' and sum(IMPORTE) <= '12000' then 'Medios'
else case when sum(IMPORTE) >'12000' then 'Altos'
end 
end
end clasificacion
from Cabpres v , Detpres D where d.id = v.id  
group by v.id ;*/

/*select clasificacion,
count(saldo) cantidad ,
sum(saldo)  total,
max(saldo) maximo,
min(saldo) minimo,
avg(saldo) promedio
from clasificacion group by clasificacion;*/

/*select to_char(d.fecha,'mm'),to_char(d.fecha,'month') mes ,sum(importe) monto, sum(decode (to_char(d.fecha,'yyyy'),'2008' ,importe,0)) A2008,
                              sum(decode (to_char(d.fecha,'yyyy'),'2009' ,importe,0)) A2009,
                              sum(decode (to_char(d.fecha,'yyyy'),'2010' ,importe,0)) A2010,
                              sum(decode (to_char(d.fecha,'yyyy'),'2011' ,importe,0)) A2011,
                              sum(decode (to_char(d.fecha,'yyyy'),'2012' ,importe,0)) A2012,
                              sum(decode (to_char(d.fecha,'yyyy'),'2013' ,importe,0)) A2013

from Cabpres c , Detpres d  
where d.id = c.id 
group by to_char(d.fecha,'mm'),to_char(d.fecha,'month')  order by 1*/

/*select to_char(fecha,'yyyy') AÑO,sum(monto) monto, 
                             sum(decode (to_char(fecha,'mm'),'01' ,monto,0)) ENERO,
                              sum(decode (to_char(fecha,'mm'),'02' ,monto,0)) FEBREO,
                              sum(decode (to_char(fecha,'mm'),'03' ,monto,0)) MARZO,
                              sum(decode (to_char(fecha,'mm'),'04' ,monto,0)) ABRIL,
                              sum(decode (to_char(fecha,'mm'),'05' ,monto,0)) MAYO,
                              sum(decode (to_char(fecha,'mm'),'06' ,monto,0)) JUNIO,
                              sum(decode (to_char(fecha,'mm'),'07' ,monto,0)) JULIO,
                              sum(decode (to_char(fecha,'mm'),'08' ,monto,0)) AGOSTO,
                              sum(decode (to_char(fecha,'mm'),'09' ,monto,0)) SEPTIEMPRE,
                              sum(decode (to_char(fecha,'mm'),'10' ,monto,0)) OCTUBRE,
                              sum(decode (to_char(fecha,'mm'),'11' ,monto,0)) NOVIRMBRE,
                              sum(decode (to_char(fecha,'mm'),'12' ,monto,0)) DICIEMBRE

from cabpres group by to_char(fecha,'yyyy')  order by 1;*/


/*select v.id , max(tipo) tipo,max(descripcion) descripcion,
sum(decode(movto,'C',importe,0)) carcos,
sum(decode(movto,'A',importe,0)) abonos ,
sum(importe) saldo,
((monto - sum(importe))/v.DESCUENTO) faltantes
from Cabpres v , Detpres D where d.id = v.id  
group by v.id;*/

