-- ch2 LIKE ep 07
select *
from customers
where last_name LIKE 'b%';

select *
from customers
where last_name LIKE '%b%';

select *
from customers
where last_name LIKE '_____y';

-- % any number of characters
-- a '_' means a single character 

-- excersise
-- get the customers whose
-- addresses contain TRAIL or AVENUE
-- phone number end with 9
select *
from customers
where (phone LIKE '%9') ;

select *
from customers
where(address like '%Trail%' or address like '%Avenue%');