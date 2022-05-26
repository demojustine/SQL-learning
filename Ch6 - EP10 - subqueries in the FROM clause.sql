-- Ch6 - EP10 - subqueries in the FROM clause
select *
from (
	select c.client_id,c.name,
	(select sum(invoice_total) 
		from invoices 
        where c.client_id = client_id) as total_sales,
    (select avg(invoice_total) 
		from invoices ) as in_average,
	(select total_sales) - (select in_average) as differences
	from clients c
) as sales_summary
where total_sales is not null