-- Ch5 - EP04 - the ROLLUP operator
select 
	state,
    city,
    sum(invoice_total) as total_sales
from invoices i 
join clients c using(client_id)
group by state,city with rollup;

-- exercise
select 
	pm.name, sum(p.amount) as total
from payments p
join payment_methods pm on p.payment_method = pm.payment_method_id
group by pm.name with rollup