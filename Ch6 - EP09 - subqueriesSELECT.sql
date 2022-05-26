-- Ch6 - EP09 - subqueries in the SELECT clause
-- if not use subqueries only return 1 line of result
select 
	invoice_id,
    invoice_total,
    avg(invoice_total) as invoice_avg
from invoices;

select 
	invoice_id,
    invoice_total,
    (select avg(invoice_total)
		from invoices )as invoice_avg,
	invoice_total - (select invoice_avg) as differences
from invoices;

-- exercise
select c.client_id,c.name,
	(select sum(invoice_total) from invoices where c.client_id = client_id) as total_sales,
    (select avg(invoice_total) from invoices ) as in_average,
	(select total_sales) - (select in_average) as differences
from clients c