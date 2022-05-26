-- Ch7 - EP07 - if functions
-- if(expression, if true first value, if flase secon value)

select 
	order_id,
    order_date,
    if(
		year(order_date) = year(date_sub(now(), 
						   interval 3 year)), 'active','archived') as y_status
from orders;

-- exercise
select 
	product_id,
    name,
    (select count(order_id) from order_items where product_id = p.product_id) as y_orders,
    if( (select y_orders) = 1, 'once','many times') as frequency
from products p
having (select y_orders) >0
order by product_id;

select 
	product_id,
    name,
    count(*) as orders,
    if ( count(*) > 1, 'many times','once') as frequency
from products p
join order_items using (product_id)
group by product_id,name