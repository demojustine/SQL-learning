-- Ch5 - EP02 - the group by clause
select
	client_id,
	sum(invoice_total) as total_sales
from invoices
where invoice_date >= '2019-07-01'
group by client_id
order by total_sales desc;

select
	state,
    city,
	sum(invoice_total) as total_sales
from invoices i 
join clients using (client_id)
group by state, city;

-- exercise
-- date payment_method total_payment
select p.date, sum(p.amount) as total_payment, pm.name
from payments p
left join payment_methods pm on p.payment_method = pm.payment_method_id
group by pm.name, p.date
order by p.date