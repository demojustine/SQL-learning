-- Ch5 - EP03 - the having clause
select 
	client_id,
    sum(invoice_total) as total_sales
from invoices
group by client_id
having total_sales>500;

select 
	client_id,
    sum(invoice_total) as total_sales,
    count(*) as number_of_invoives
from invoices
group by client_id
having total_sales>500 and number_of_invoives >5;

-- exercise
-- get customers located in virginia | who have spent more than 100$
use sql_store;
select c.customer_id,c.state,sum(oi.quantity*oi.unit_price) as total_spent
from order_items oi
join orders o on o.order_id = oi.order_id
join customers c on c.customer_id = o.customer_id
where c.state = 'VA'
group by c.customer_id
having total_spent >100