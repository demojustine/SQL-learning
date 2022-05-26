-- Ch6 - EP03 - the IN operator
-- find the products that have never been odered

use sql_store;
select *
from products
where product_id not in (
select distinct product_id
from order_items
);

-- exercise
-- find the clients without invoices
use sql_invoicing;
select *
from clients
where client_id not in (
select distinct client_id
from invoices
)

