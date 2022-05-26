-- Ch6 - EP08 - the EXISTS operator
-- select clients that have a invoice

use sql_invoicing;
select *
from invoices
where client_id in (
	select distinct client_id
    from invoices
);

select *
from clients c
where exists (
	select client_id
    from invoices
    where client_id = c.client_id
);

select *
from clients
where client_id in (1,2,3,5);

-- exercise
-- find the product that have never been ordered
use sql_store;

select *
from products p
where not exists (
	select product_id 
    from order_items oi
    where p.product_id = oi.product_id 
);



