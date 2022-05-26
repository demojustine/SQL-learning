-- Ch7 - EP06 - ifnull and coalesce functions
use sql_store;

select 
	order_id,
    ifnull(shipper_id, 'not assigned') as shipper
from orders;

select 
	order_id,
    coalesce(shipper_id, comments, 'not assigned') as shipper
from orders;

-- exercise
select 
	concat(first_name, ' ', last_name) as customer,
    ifnull(phone, 'Unknown') as phone
from customers