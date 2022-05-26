-- Ch7 - EP03 - date function

select now(),curdate(),curtime();

select year(now()),month(now()),day(now()); -- hour/minute/second

select dayname(now()),monthname(now());

select extract(day from now()); -- year/month/day from timevalue

-- exercise
select *
from orders
where year(order_date) =year(now());