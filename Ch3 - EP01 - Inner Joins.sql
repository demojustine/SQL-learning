-- ch3 ep 01 Inner joins
select order_id, first_name, last_name, orders.customer_id
from orders
INNER JOIN customers ON orders.customer_id = customers.customer_id;

select order_id, first_name, last_name, o.customer_id
from orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;

-- exercise
-- table : order_items + products
-- order_id , product_id, quantity, unit_price
select order_id, o.product_id, quantity, o.unit_price
from order_items o
INNER JOIN products p
ON o.product_id = p.product_id
