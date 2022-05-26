-- Ch7 - EP08 - case operator
select 
	order_id,
    order_date,
    case 
		when year(order_date) = year(date_sub(now(), interval 3 year)) then 'active' 
		when year(order_date) = year(date_sub(now(), interval 3 year)) -1 then 'lastyear' 
		when year(order_date) < year(date_sub(now(), interval 3 year)) then 'archived' 
        else '???'
	end as category
from orders;

-- exercise
select 
	concat(first_name, ' ', last_name) as customer,
    points,
    case
		when points <= 2000 then 'bronze'
        when points > 3000 then 'gold'
        when points > 2000 and points < 3000 then 'silver'
        else '???'
	end as category
from customers
order by points desc
