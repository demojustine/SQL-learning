-- ch3 ep 06 implicit join syntax 隐式连接语法

-- origin origin
select *
from orders o
join customers c on o.customer_id = c.customer_id;

-- implicit
select *
from orders o,  customers c 
where o.customer_id = c.customer_id;