-- Ch3 - EP10 - Natural Joins
select 
	o.order_id,
    c.first_name
from orders o 
natural join customers c