-- Ch3 - EP12 - cross joins
select 
	c.first_name as customer,
    p.name as product
from customers c
cross join products p
order by c.first_name;

select *
from customers c, orders o 
order by c.first_name;

-- exercise
-- cross join between shipper and products 
-- using the implicit syntax
-- using the explicit syntax
select *
from shippers s
cross join products p
order by s.shipper_id;

select *
from shippers s, products p
order by s.shipper_id