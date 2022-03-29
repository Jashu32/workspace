
select distinct(PRODUCTLINE) as Unique_product_name from sales
order by PRODUCTLINE   asc;

select distinct(PRODUCTLINE) as products_name from sales 
where year_id=2004;

select productline,sum(QUANTITYORDERED) as Highest_sales from sales
where year_id=2004 
group by productline
order by Highest_sales desc
FETCH FIRST 1 ROWS ONLY;

select productline,sum(QUANTITYORDERED) as lowest_sales from sales 
where year_id=2004 
group by productline
order by lowest_sales asc
FETCH FIRST 1 ROWS ONLY;


select count(QUANTITYORDERED) as total_product_sold_usa from sales
where country='USA' and status='Shipped';