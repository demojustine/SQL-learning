-- ch2 ORDER BY ep 010
select *
from customers
order by first_name DESC;

select *
from customers
order by state DESC, first_name;

select first_name, last_name
from customers
order by birth_date;

select first_name, last_name
from customers
order by 1,2 ;

-- exercise
-- table : order_items
-- order_id is 2 
-- sort by total price with desc
select order_id, product_id, quantity, unit_price, quantity* unit_price AS total_price
from order_items
where order_id = 2
order by total_price DESC;

select *, quantity*unit_price AS total_price
from order_items
where order_id = 2
order by total_price DESC;