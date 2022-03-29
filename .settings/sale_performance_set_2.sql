select sum(QUANTITYORDERED) as products_quan,year_id  
from sales where status='Shipped' group by year_id;

select sum(QUANTITYORDERED) as products_supplied 
from sales where status='Shipped' and ORDER_DATE between '24-feb-03' and   '11-nov-03';

select count(*) as ordered_classic_product from sales
where PRODUCTLINE='Classic Cars';

select count(*) as ordered_classic_product from sales
where PRODUCTLINE='Classic Cars' and year_id=2003;

select distinct(productline) as unique_product
from sales order by productline asc;