-- Ch3 - EP08 - outer join between multiple tables 
select 
	c.customer_id, 
    c.first_name, 
    o.order_id,
    sh.name as shipper
from customers c
left join orders o 
	on c.customer_id = o.customer_id
left join shippers sh 
	on o.shipper_id = sh.shipper_id
order by c.customer_id;


-- exercise
--
select 
	oo.order_date,
    oo.order_id,
	cc.first_name ,
    ss.name as shipper,
	os.name as status
from orders oo
left join order_statuses os 
	on oo.status = os.order_status_id
left join customers cc
	on oo.customer_id = cc.customer_id
left join shippers ss
	on oo.shipper_id = ss.shipper_id
order by os.name
    