-- Ch6 - EP03 - subqueries vs joins 
use sql_invoicing;
select *
from clients
where client_id not in (
select distinct client_id
from invoices
);

use sql_invoicing;
select *
from clients
left join invoices using (client_id)
where invoice_id is null;

-- exercise
-- find customers who have ordered lettuce (id=3)
--  select 
use sql_store;
select distinct c.customer_id, c.first_name, c.last_name
-- , o.order_id,oi.product_id
from orders o
join customers c using (customer_id)
join order_items oi using (order_id)
where oi.product_id =3;

select customer_id, first_name, last_name
from customers
where customer_id in (
select o.customer_id
from orders o
join order_items oi using (order_id)
where oi.product_id =3
);