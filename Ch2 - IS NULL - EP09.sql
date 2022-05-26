-- ch2 IS NULL ep 09
select *
from customers 
where phone is null; 

select *
from customers 
where phone is not null; 

-- exercise
-- get the orders that are not shipped
select *
from orders
where shipped_date is null; 