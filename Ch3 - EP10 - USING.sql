-- Ch3 - EP10 - USING 
select 
	o.order_id,
    c.first_name,
    sh.shipper_id
from orders o
join customers c
	-- on o.customer_id = c.customer_id
    using (customer_id)
join shippers sh
	using (shipper_id);
    

-- exercise
-- payments table 
select 
	p.date,
    p.amount,
    c.name as client,
    pm.name
from payments p
join payment_methods pm 
	on p.payment_method = pm.payment_method_id
join clients c
	using (client_id)